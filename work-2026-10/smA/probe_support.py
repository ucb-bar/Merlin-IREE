import os,re,json,sys,subprocess,shutil,hashlib,time
from pathlib import Path
import numpy as np
R=Path(__file__).resolve().parent;W=R.parent;SRC=W/'smolvla/fp32/smolVLA.q.int8.mlir';PY=W/'smolvla/venv/bin/python';M=json.loads((W/'fixF/smol/mapping.json').read_text());F=W/'fixF/smol'
os.environ.update(OMP_NUM_THREADS='8',OPENBLAS_NUM_THREADS='1',PYTHONDONTWRITEBYTECODE='1')
FLAGS=['--torch-pytorch-cpu-numerics','--torch-pytorch-cpu-reference-threads=24','--torch-pytorch-cpu-constant-math-library='+str(W/'smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so'),'--iree-opt-numeric-precision-reduction=false','--iree-llvmcpu-reassociate-fp-reductions=false','--iree-llvmcpu-skip-intermediate-roundings=false','--iree-input-demote-f64-to-f32=false','--iree-opt-const-eval=false']
def command(cmd,D,log):
 with (D/log).open('w') as f:
  t=time.time();p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT)
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(dict(cmd=list(map(str,cmd)),exit=p.returncode,seconds=time.time()-t))+'\n')
 if p.returncode:raise RuntimeError(f'{log} exit{p.returncode}')
def load():
 global defs,parts,globs,header
 parts=[];globs={};header=''
 for l in SRC.open():
  if 'func.func @main(' in l:header=l;continue
  if header:
   if l.startswith('  }'):break
   parts.append(l)
  elif 'util.global private' in l:globs[re.search(r'@([^ ]+)',l)[1]]=l
 defs={m[1]:l for l in parts if (m:=re.match(r'\s*(%[^ :]+)(?::\d+)? = ',l))}
def typ(v):
 if v.startswith('%arg'):return dict(re.findall(r'(%arg\d+): (!torch.vtensor<[^>]+>)',header))[v]
 l=defs[v.split('#')[0]];ts=re.findall(r'!torch.vtensor<[^>]+>',l.split(' -> ')[-1]);return ts[int(v.split('#')[1])] if '#' in v else ts[-1]
def spec(T):
 sh,dt=re.search(r'!torch.vtensor<\[([^]]*)\],([^>]+)>',T).groups();return [int(i) for i in sh.split(',') if i],{'si64':'i64'}.get(dt,dt)
def slice_make(name,cuts,targets,refs):
 D=R/name;D.mkdir(exist_ok=True);needed=set();selected=set();gn=set();args=set()
 def visit(v):
  if v in needed:return
  needed.add(v)
  if v in cuts or v.startswith('%arg'):args.add(v);return
  l=defs[v.split('#')[0]];selected.add(l)
  for a in re.findall(r'%[\w.$-]+(?:#\d+)?',l.split(' = ',1)[1]):visit(a)
  for a in re.findall(r'@([^ :]+)',l):gn.add(a)
 for v in targets:visit(v)
 args=sorted(args,key=lambda v: int(v[4:]) if v.startswith('%arg') else 10000+list(cuts).index(v)); resources=set()
 for l in list(selected)+[globs[a] for a in gn]:resources.update(re.findall(r'dense_resource<([^>]+)>',l))
 with (D/'model.mlir').open('w') as f:
  f.write('module @module {\n');f.writelines(globs[a] for a in globs if a in gn)
  f.write('func.func @main('+', '.join(v+': '+typ(v) for v in args)+') -> ('+', '.join(typ(v) for v in targets)+') attributes {torch.assume_strict_symbolic_shapes} {\n')
  f.writelines(l for l in parts if l in selected);f.write('return '+', '.join(targets)+' : '+', '.join(typ(v) for v in targets)+'\n}\n}\n{-#\ndialect_resources: { builtin: {\n')
  rs=[]
  for l in SRC.open():
   m=re.match(r'\s+([^ :]+): "0x',l)
   if m and m[1] in resources:rs.append(l.strip().rstrip(','))
  f.write(',\n'.join(rs)+'\n}}\n#-}\n')
 orig=json.loads((W/'smolvla/fp32/smolVLA.q.int8.mlir.reference/inputs.json').read_text());inputs=[]
 for i,v in enumerate(args):
  sh,dt=spec(typ(v));p=D/f'input{i}.bin'
  if v.startswith('%arg'):shutil.copyfile(orig[int(v[4:])].split('=@')[1],p)
  else:
   x=np.load(cuts[v]);assert list(x.shape)==sh;(x).tofile(p)
  inputs.append(dict(ssa=v,shape=sh,dtype=dt,path=str(p)))
 meta=dict(source=str(SRC),cuts={k:str(v) for k,v in cuts.items()},inputs=inputs,outputs=[dict(ssa=v,shape=spec(typ(v))[0],dtype=spec(typ(v))[1],reference=str(refs.get(v,''))) for v in targets],ops=len(selected))
 (D/'meta.json').write_text(json.dumps(meta,indent=2));print(name,len(selected),'ops',flush=True)
def host(D):
 command(['taskset','-c','24-47',str(W/'fixJ/build/tools/iree-compile'),str(D/'model.mlir'),'--iree-hal-target-backends=llvm-cpu','--iree-llvmcpu-target-cpu=host','--iree-llvmcpu-number-of-threads=8',*FLAGS,'-o',str(D/'host.vmfb')],D,'host-compile.log')
 m=json.loads((D/'meta.json').read_text());cmd=['taskset','-c','24-47',str(W.parent/'iree-latest/bin/iree-run-module'),'--module='+str(D/'host.vmfb'),'--device=local-task','--task_topology_group_count=8']
 cmd+=['--input='+'x'.join(map(str,x['shape']))+'x'+x['dtype']+'=@'+x['path'] for x in m['inputs']];cmd+=['--output=@'+str(D/f'host{i}.bin') for i in range(len(m['outputs']))];command(cmd,D,'host-run.log')
def runtime(D):
 B=R/os.environ.get('PROBE_RUNTIME','runtime');m=json.loads((D/'meta.json').read_text());s=(R/'runner-template.c').read_text();s=s.replace('module.main_graph','module.main')
 a=s.index('  const size_t input_bytes');b=s.index('  iree_vm_instance_t* instance',a);s=s[:a]+s[b:]
 a=s.index('  iree_hal_dim_t shape[2]');b=s.index('  fprintf(stdout,',a)
 code='iree_vm_list_t *inputs=NULL,*outputs=NULL;\n IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 16, iree_allocator_system(), &inputs));\n IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 16, iree_allocator_system(), &outputs));\n'
 for i,x in enumerate(m['inputs']):
  sh=x['shape'];dtype={'f32':'FLOAT_32','bf16':'BFLOAT_16','i64':'SINT_64','i1':'BOOL_8','i8':'SINT_8'}[x['dtype']]
  code+=f'''{{extern const uint8_t inp{i}_start[],inp{i}_end[]; iree_hal_dim_t sh[]={{{','.join(map(str,sh))}}}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),{len(sh)},sh,IREE_HAL_ELEMENT_TYPE_{dtype},IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp{i}_start,inp{i}_end-inp{i}_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}}\n'''
 s=s[:a]+code+s[b:];a=s.index('  iree_hal_buffer_view_t* output_view');b=s.index('  iree_vm_list_release(inputs)',a)
 code='int errors=0;\n'
 for i,x in enumerate(m['outputs']):
  assert x['dtype']=='f32';n=int(np.prod(x['shape']));code+=f'''{{iree_hal_buffer_view_t* view=iree_vm_list_get_buffer_view_assign(outputs,{i}); uint32_t* result=malloc({n}*4);
 IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(device,iree_hal_buffer_view_buffer(view),0,result,{n}*4,IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,iree_infinite_timeout()));
 printf("OUTPUT {i} {n}\\n");for(int j=0;j<{n};++j){{printf("%08x",result[j]);if(j%32==31)putchar('\\n');}}putchar('\\n');free(result);}}\n'''
 code+='printf("CYCLES %lu\\n",(unsigned long)cycles);\n';s=s[:a]+code+s[b:];(B/'runner.c').write_text(s)
 asm='.section .rodata\n.balign 16\n.global _binary_resnet50_gemmini_embedded_vmfb_start\n.global _binary_resnet50_gemmini_embedded_vmfb_end\n_binary_resnet50_gemmini_embedded_vmfb_start:\n.incbin "'+str(D/'rv.vmfb')+'"\n_binary_resnet50_gemmini_embedded_vmfb_end:\n'
 for i,x in enumerate(m['inputs']):asm+=f'.balign 16\n.global inp{i}_start\n.global inp{i}_end\ninp{i}_start:\n.incbin "{x["path"]}"\ninp{i}_end:\n'
 (B/'embed.S').write_text(asm);command(['taskset','-c','24-47','bash',str(B/'build_runtime.sh')],D,'build.log');shutil.copyfile(B/'resnet50-gemR.elf',D/'probe.elf')
def rv(D,compiled=False):
 if not compiled: command(['bash',str(R/'compile_rv.sh'),str(D/'model.mlir'),str(D/'rv.vmfb'),*FLAGS,'--iree-gemmini-bank-rows=2048','--iree-gemmini-acc-rows=512','--iree-hal-dump-executable-intermediates-to='+str(D/'ir')],D,'rv-compile.log')
 runtime(D)
 env=os.environ.copy();env['PATH']=str(R/'runtime/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib'
 cmd=['taskset','-c',os.environ.get('SPIKE_CPU','24'),'timeout','600','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m2048',str(D/'probe.elf')]
 with (D/'spike.log').open('w') as f:
  t=time.time();p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(dict(cmd=cmd,exit=p.returncode,seconds=time.time()-t))+'\n')
 if p.returncode:raise RuntimeError('spike exit '+str(p.returncode))
