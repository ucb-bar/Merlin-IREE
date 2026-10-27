"""Run-local TorchAO 0.16 symmetric per-token legalization; no compiler changes.
Streaming text transformation. Rejects unimplemented custom quant options.
"""
import re,sys,json
from pathlib import Path

def rewrite(src,dst):
 constants={};lists={};aliases={};counts={'choose':0,'quantize':0,'int_mm':0};serial=0
 def typ(shape,dt):return '!torch.vtensor<['+','.join(map(str,shape))+'],'+dt+'>'
 with open(src) as f,open(dst,'w') as out:
  for line in f:
   if len(line)>100000:
    out.write(line);continue
   m=re.search(r'(%[\w.$-]+) = torch.constant.(int|float|str|bool|none)(?: (.*?))?\s*$',line)
   if m:
    k,t,v=m.groups();constants[k]=None if t=='none' else (v.strip('"') if t in ['str','bool'] else float(v) if t=='float' else int(v))
   m=re.search(r'(%[\w.$-]+) = torch.prim.ListConstruct (.*?) :',line)
   if m: lists[m[1]]=[constants.get(v.strip(),v.strip()) for v in m[2].split(',')]
   if len(line)<100000:
    for old,new in aliases.items():
     if old in line:line=re.sub(re.escape(old)+r'(?![\w#])',new,line)
   if 'torch.aten._int_mm' in line:
    counts['int_mm']+=line.count('torch.aten._int_mm');line=line.replace('torch.aten._int_mm','torch.aten.mm')
   if 'torch.torchao.' not in line:out.write(line);continue
   m=re.match(r'\s*(%[\w.$-]+)(:2)? = torch.operator "torch.torchao.(\w+)"\((.*?)\) : (.*?) -> (.*?)\s*$',line)
   if not m:raise ValueError('unparsed custom op '+line[:500])
   lhs,_,op,args,types,result=m.groups();a=[x.strip() for x in args.split(',')]
   ts=re.findall(r'!torch.vtensor<\[([^]]*)\],([^>]+)>',types)
   shape=[int(x) for x in ts[0][0].split(',')];dt=ts[0][1];T=typ(shape,dt);reduced=shape[:-1];R=typ(reduced,dt);broadcast=typ(reduced+[1],dt)
   assert dt in ('f32','bf16'),dt
   block=lists[a[2] if op=='choose_qparams_affine' else a[1]]
   assert block==[1]*(len(shape)-1)+[shape[-1]],(op,shape,block)
   serial+=1;p=f'%fixB{serial}_';lines=[]
   def emit(name,rhs):
    v=p+name;lines.append('    '+v+' = '+rhs+'\n');return v
   def ci(name,v):return emit(name,f'torch.constant.int {v}')
   def cf(name,v):return emit(name,f'torch.constant.float {v:.17e}')
   none=emit('none','torch.constant.none');false=emit('false','torch.constant.bool false');true=emit('true','torch.constant.bool true')
   if op=='choose_qparams_affine':
    assert constants[a[1]]=='SYMMETRIC'
    assert constants[a[3]]==1 and constants[a[4]]==-127 and constants[a[5]]==127
    assert constants[a[7]] is None and constants[a[8]] is None and constants[a[9]]=='false'
    assert result==f'({R}, {R})',(result,R)
    dim=ci('dim',len(shape)-1);dims=emit('dims',f'torch.prim.ListConstruct {dim} : (!torch.int) -> !torch.list<int>')
    ab=emit('abs',f'torch.aten.abs {a[0]} : {T} -> {T}')
    mx=emit('max',f'torch.aten.amax {ab}, {dims}, {false} : {T}, !torch.list<int>, !torch.bool -> {R}')
    divisor=cf('divisor',127);scale=emit('scale0',f'torch.aten.div.Scalar {mx}, {divisor} : {R}, !torch.float -> {R}')
    eps=a[6]
    assert isinstance(constants[eps],float)
    scale=emit('scale',f'torch.aten.clamp {scale}, {eps}, {none} : {R}, !torch.float, !torch.none -> {R}')
    zp=emit('zp',f'torch.aten.zeros_like {scale}, {none}, {none}, {none}, {none}, {none} : {R}, !torch.none, !torch.none, !torch.none, !torch.none, !torch.none -> {R}')
    aliases[lhs+'#0']=scale;aliases[lhs+'#1']=zp;counts['choose']+=1
   elif op=='quantize_affine':
    assert constants[a[4]]==1 and constants[a[5]]==-127 and constants[a[6]]==127
    assert ts[1:]==[(','.join(map(str,reduced)),dt)]*2,ts
    dim=ci('dim',len(shape)-1)
    scale=emit('scale',f'torch.aten.unsqueeze {a[2]}, {dim} : {R}, !torch.int -> {broadcast}')
    zp=emit('zp',f'torch.aten.unsqueeze {a[3]}, {dim} : {R}, !torch.int -> {broadcast}')
    if dt=='bf16':
     ftype=typ(shape,'f32');btype=typ(reduced+[1],'f32');fdtype=ci('fdtype',6)
     def upcast(name,v,old,new):return emit(name,f'torch.aten.to.dtype {v}, {fdtype}, {false}, {false}, {none} : {old}, !torch.int, !torch.bool, !torch.bool, !torch.none -> {new}')
     def bfround(name,v,sh):
      # Explicit IEEE RNE BF16 boundary, expressed with standard tensor arith.
      # A cast alone is folded through elementwise fusion by this snapshot.
      ft=typ(sh,'f32');bt='tensor<'+('x'.join(map(str,sh)))+'xf32>';it=bt.replace('f32','i32')
      b=emit(name+'b',f'torch_c.to_builtin_tensor {v} : {ft} -> {bt}')
      bits=emit(name+'bits',f'arith.bitcast {b} : {bt} to {it}')
      c16=emit(name+'c16',f'arith.constant dense<16> : {it}')
      c1=emit(name+'c1',f'arith.constant dense<1> : {it}')
      bias=emit(name+'bias',f'arith.constant dense<32767> : {it}')
      mask=emit(name+'mask',f'arith.constant dense<-65536> : {it}')
      shr=emit(name+'shr',f'arith.shrui {bits}, {c16} : {it}')
      lsb=emit(name+'lsb',f'arith.andi {shr}, {c1} : {it}')
      add=emit(name+'a',f'arith.addi {bits}, {bias} : {it}')
      add=emit(name+'a1',f'arith.addi {add}, {lsb} : {it}')
      masked=emit(name+'masked',f'arith.andi {add}, {mask} : {it}')
      f=emit(name+'f',f'arith.bitcast {masked} : {it} to {bt}')
      return emit(name,f'torch_c.from_builtin_tensor {f} : {bt} -> {ft}')
     sx=upcast('scale32',scale,broadcast,btype);xx=upcast('input32',a[0],T,ftype)
     inv=emit('reciprocal32',f'torch.aten.reciprocal {sx} : {btype} -> {btype}')
     inv=bfround('invbf',inv,reduced+[1])
     mul=emit('mul32',f'torch.aten.mul.Tensor {xx}, {inv} : {ftype}, {btype} -> {ftype}')
     mul=bfround('mulbf',mul,shape)
     rounded=emit('round32',f'torch.aten.round {mul} : {ftype} -> {ftype}')
     bdtype=ci('bdtype',15)
     rnd=emit('round',f'torch.aten.to.dtype {rounded}, {bdtype}, {false}, {false}, {none} : {ftype}, !torch.int, !torch.bool, !torch.bool, !torch.none -> {T}')
    else:
     inv=emit('reciprocal',f'torch.aten.reciprocal {scale} : {broadcast} -> {broadcast}')
     mul=emit('mul',f'torch.aten.mul.Tensor {a[0]}, {inv} : {T}, {broadcast} -> {T}')
     rnd=emit('round',f'torch.aten.round {mul} : {T} -> {T}')
    one=ci('one',1);add=emit('add',f'torch.aten.add.Tensor {rnd}, {zp}, {one} : {T}, {broadcast}, !torch.int -> {T}')
    clamp=emit('clamp',f'torch.aten.clamp {add}, {a[5]}, {a[6]} : {T}, !torch.int, !torch.int -> {T}')
    cast=emit('cast',f'torch.aten.to.dtype {clamp}, {a[4]}, {false}, {false}, {none} : {T}, !torch.int, !torch.bool, !torch.bool, !torch.none -> {result}')
    aliases[lhs]=cast;counts['quantize']+=1
   else:raise ValueError('unsupported op '+op)
   out.writelines(lines)
 return counts
if __name__=='__main__':print(json.dumps(rewrite(*sys.argv[1:]),indent=2))
