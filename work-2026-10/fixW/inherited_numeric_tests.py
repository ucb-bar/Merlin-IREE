import json,os,subprocess,time,argparse
from pathlib import Path
import numpy as np
import torch
parser=argparse.ArgumentParser()
parser.add_argument('--compiler',default=os.environ.get('IREE_COMPILE','iree-compile'))
parser.add_argument('--runtime',default=os.environ.get('IREE_RUN_MODULE','iree-run-module'))
parser.add_argument('--constant-math-library',default='')
parser.add_argument('--cpus',default=','.join(map(str,sorted(os.sched_getaffinity(0))[:30])))
parser.add_argument('--workers',type=int,default=30)
parser.add_argument('--work-dir',type=Path,default=Path('pytorch-cpu-numeric-tests'))
args=parser.parse_args();D=args.work_dir.resolve();D.mkdir(parents=True,exist_ok=True)
torch.set_num_threads(16);rng=np.random.default_rng(20261027)
flags=['--iree-hal-target-backends=llvm-cpu','--iree-llvmcpu-target-cpu=host',f'--iree-llvmcpu-number-of-threads={args.workers}','--iree-opt-numeric-precision-reduction=false','--iree-llvmcpu-reassociate-fp-reductions=false','--iree-llvmcpu-skip-intermediate-roundings=false','--iree-input-demote-f64-to-f32=false','--torch-pytorch-cpu-numerics','--torch-pytorch-cpu-reference-threads=16']
if args.constant_math_library:flags.append('--torch-pytorch-cpu-constant-math-library='+args.constant_math_library)
commands=[];results=[]
def run(cmd,log):
 commands.append(cmd);(D/'commands.json').write_text(json.dumps(commands,indent=2))
 with log.open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
def case(name,x,body,outshape,reference,exact=True):
 d=D/name;d.mkdir(exist_ok=True)
 def tt(s,dt='f32'):return '!torch.vtensor<['+','.join(map(str,s))+'],'+dt+'>'
 dtype='si8' if x.dtype==np.int8 else 'f32';ity=tt(x.shape,dtype);oty=tt(outshape,'si32' if reference.dtype==np.int32 else 'f32')
 text='module {func.func @main(%arg: '+ity+') -> '+oty+' {\n'+body.replace('$I',ity).replace('$O',oty)+'\nreturn %result : '+oty+'\n}}\n';(d/'input.mlir').write_text(text);x.tofile(d/'input.bin');np.save(d/'reference.npy',reference)
 cmd=['taskset','-c',args.cpus,args.compiler,str(d/'input.mlir'),*flags,'-o',str(d/'model.vmfb')];run(cmd,d/'compile.log')
 shape='x'.join(map(str,x.shape));ty='i8' if dtype=='si8' else 'f32';run(['taskset','-c',args.cpus,args.runtime,'--module='+str(d/'model.vmfb'),'--device=local-task',f'--task_topology_group_count={args.workers}','--function=main',f'--input={shape}x{ty}=@{d}/input.bin','--output=@'+str(d/'output.npy')],d/'run.log')
 y=np.load(d/'output.npy');diff=np.abs(y.astype(np.float64)-reference);bits=int(np.count_nonzero(y.view(np.uint32)!=reference.view(np.uint32)));fail=int(np.count_nonzero(~np.isclose(y,reference,atol=.001,rtol=.001)));ok=bool(np.isfinite(y).all() and (bits==0 if exact else fail==0));r=dict(name=name,pass_test=ok,exact_required=exact,bit_mismatches=bits,failed_gate=fail,max_abs=float(diff.max()));results.append(r);(D/'results.json').write_text(json.dumps(results,indent=2));print(r,flush=True)
for width in [720,2048,5632]:
 x=(rng.normal(size=(1,16,width))**2).astype('f4');ref=torch.from_numpy(x).mean(-1,True).numpy();case('mean'+str(width),x,'''%axis = torch.constant.int -1
%ds = torch.prim.ListConstruct %axis : (!torch.int) -> !torch.list<int>
%keep = torch.constant.bool true
%none = torch.constant.none
%result = torch.aten.mean.dim %arg, %ds, %keep, %none : $I, !torch.list<int>, !torch.bool, !torch.none -> $O''',(1,16,1),ref)
x=rng.normal(size=(1,32,16,16)).astype('f4');case('softmax16',x,'''%axis = torch.constant.int -1
%none = torch.constant.none
%result = torch.aten.softmax.int %arg, %axis, %none : $I, !torch.int, !torch.none -> $O''',x.shape,torch.from_numpy(x).softmax(-1).numpy())
case('softmax16-explicit-f32',x,'''%axis = torch.constant.int -1
%dtype = torch.constant.int 6
%result = torch.aten.softmax.int %arg, %axis, %dtype : $I, !torch.int, !torch.int -> $O''',x.shape,torch.from_numpy(x).softmax(-1).numpy())
x=rng.normal(size=(1,16,5632)).astype('f4');case('silu-tails',x,'%result = torch.aten.silu %arg : $I -> $O',x.shape,torch.nn.functional.silu(torch.from_numpy(x)).numpy())
x=rng.integers(-128,128,size=(16,32),dtype=np.int8);w=rng.integers(-128,128,size=(32,17),dtype=np.int8);raw=w.tobytes().hex();body=f'%w = torch.vtensor.literal(dense<"0x{raw}"> : tensor<32x17xsi8>) : !torch.vtensor<[32,17],si8>\n%result = torch.aten._int_mm %arg, %w : $I, !torch.vtensor<[32,17],si8> -> $O';case('int-mm',x,body,(16,17),x.astype('i4')@w.astype('i4'))
x=rng.normal(size=(32768,3)).astype('f4')
case('separate-rounding',x,'''%axis = torch.constant.int 1
%zero = torch.constant.int 0
%one = torch.constant.int 1
%two = torch.constant.int 2
%a = torch.aten.select.int %arg, %axis, %zero : $I, !torch.int, !torch.int -> $O
%b = torch.aten.select.int %arg, %axis, %one : $I, !torch.int, !torch.int -> $O
%c = torch.aten.select.int %arg, %axis, %two : $I, !torch.int, !torch.int -> $O
%p = torch.aten.mul.Tensor %a, %b : $O, $O -> $O
%result = torch.aten.add.Tensor %p, %c, %one : $O, $O, !torch.int -> $O''',(32768,),x[:,0]*x[:,1]+x[:,2])
if args.constant_math_library:
 x=rng.normal(size=(1,16,64)).astype('f4')
 for trig in ['sin','cos']:
  body=f'%c = torch.vtensor.literal(dense<"0x{x.tobytes().hex()}"> : tensor<1x16x64xf32>) : $I\n%result = torch.aten.{trig} %c : $I -> $O'
  case('static-'+trig,x,body,x.shape,getattr(torch,trig)(torch.from_numpy(x)).numpy())
sys_exit=0 if all(r['pass_test'] for r in results) else 2
raise SystemExit(sys_exit)
