import pathlib,subprocess,json,re,time,os
import numpy as np
R=pathlib.Path('/home/loren/work/runs/smA');D=R/'host';D.mkdir(exist_ok=True);C='/home/loren/work/runs/fixW/build-numerics/tools/iree-compile';env=os.environ.copy();env['LD_LIBRARY_PATH']='/home/loren/work/runs/fixW/build-numerics/lib';env['OMP_NUM_THREADS']='24';env['OPENBLAS_NUM_THREADS']='1'
flags=json.load(open(R/'flag-results.json'))[0]['command'][4:];flags=[x for x in flags if not x.startswith('--iree-gemmini-') and not x.startswith('--iree-hal-dump-') and x!='--mlir-disable-threading']
base=['taskset','-c','24-47',C,'--iree-hal-target-backends=llvm-cpu','--iree-llvmcpu-target-cpu=host','--iree-llvmcpu-number-of-threads=24','--mlir-disable-threading','--iree-llvmcpu-enable-ukernels=none','--iree-llvmcpu-link-ukernel-bitcode=false',*flags]
def run(cmd,log):
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(cmd)+'\n')
 t=time.time()
 with (D/log).open('w') as f:p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
 if p.returncode:raise RuntimeError((log,p.returncode))
 return time.time()-t
run(base+[str(R/'softmax.mlir'),'--compile-to=global-optimization','-o',str(D/'small.mlir')],'small.log')
line=next(x for x in (D/'small.mlir').read_text().splitlines(True) if 'util.global private @__device_0 =' in x)
with (R/'full/barrier.mlir').open() as src,(D/'barrier.mlir').open('w') as out:
 count=0
 for l in src:
  if 'compilation_info' in l and 'gemmini-lower-tile-to-isa' in l:
   l,n=re.subn(r' \{compilation_info = #iree_codegen\.compilation_info<.*>>>\} ins\(', ' ins(',l);assert n==1;count+=n
  out.write(line if 'util.global private @__device_0 =' in l else l)
(D/'host-target-adjustments.json').write_text(json.dumps(dict(gemmini_compilation_info_attributes_removed=count,target_device_replaced=True,arithmetic_modified=False),indent=2))
# Keep full RV build at top priority; host starts after its compile finishes.
while not (R/'full/compile-result.json').exists():time.sleep(5)
seconds=run(base+[str(D/'barrier.mlir'),'--compile-from=global-optimization','-o',str(D/'model.vmfb')],'compile.log')
inputs=json.loads((R.parent/'smolvla/fp32/smolVLA.q.int8.mlir.reference/inputs.json').read_text())
cmd=['taskset','-c','24-47','/home/loren/work/iree-latest/bin/iree-run-module','--module='+str(D/'model.vmfb'),'--device=local-task','--task_topology_group_count=24','--function=main']+['--input='+x for x in inputs]+['--output=@'+str(D/'output.bin')]
wall=run(cmd,'run.log');a=np.fromfile(D/'output.bin',dtype='f4');b=np.fromfile(R.parent/'fixJ/smol-fp32-peeled/output.bin',dtype='f4');p=np.load(R.parent/'smolvla/fp32/smolVLA.q.int8.mlir.reference/pytorch.npy').ravel();assert a.shape==b.shape==p.shape
rec=dict(compile_seconds=seconds,run_seconds=wall,elements=a.size,finite=int(np.isfinite(a).sum()),cpu_different_bits=int((a.view('u4')!=b.view('u4')).sum()),cpu_gate_failures=int((~np.isfinite(a)|(abs(a-b)>.001+.001*abs(b))).sum()),pytorch_different_bits=int((a.view('u4')!=p.view('u4')).sum()),pytorch_gate_failures=int((~np.isfinite(a)|(abs(a-p)>.001+.001*abs(p))).sum()),pytorch_max_abs=float(abs(a-p).max()))
(D/'result.json').write_text(json.dumps(rec,indent=2));print(rec,flush=True)
