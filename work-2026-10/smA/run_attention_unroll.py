import pathlib,json,subprocess,shutil,time,os,re
import numpy as np
from probe_support import runtime
R=pathlib.Path(__file__).resolve().parent;D=R/'attention-unroll';D.mkdir(exist_ok=True);S=R.parent/'probeP2/attention-layer0'
for n in ['model.mlir','meta.json']:shutil.copyfile(S/n,D/n)
base=json.load(open(R/'flag-results.json'))[0]['command'];base=[x for x in base if not x.startswith('--iree-hal-dump-executable-intermediates-to=')]+['--iree-llvmcpu-loop-unrolling=true','--unroll-add-parallel-reductions=false']
def run(src,out,flags,log):
 cmd=[x.replace(str(R/'softmax.mlir'),str(src)).replace(str(R/'baseline/model.vmfb'),str(out)) for x in base]+flags
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(cmd)+'\n')
 with (D/log).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
run(D/'model.mlir',D/'global.mlir',['--compile-to=global-optimization'],'stage.log')
subprocess.run(['python3',str(R/'materialize.py'),str(D/'global.mlir'),str(D/'barrier.mlir')],check=True)
subprocess.run(['python3',str(R/'restore_resources.py'),str(D/'model.mlir'),str(D/'barrier.mlir')],check=True)
run(D/'barrier.mlir',D/'rv.vmfb',['--compile-from=global-optimization','--iree-hal-dump-executable-intermediates-to='+str(D/'ir')],'compile.log');runtime(D)
env=os.environ.copy();env['PATH']=str(R/'runtime/deps/usr/bin')+':'+env['PATH'];env['LD_LIBRARY_PATH']=str(R/'runtime/deps/lib')+':/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib'
cmd=['taskset','-c','26','timeout','600','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike','--isa=rv64gc_zicntr','--extension=gemmini','-m2048',str(D/'probe.elf')];t=time.time()
with (D/'spike.log').open('w') as f:p=subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT)
s=(D/'spike.log').read_text();rec=dict(command=cmd,exit=p.returncode,wall=time.time()-t,outputs=[])
if not p.returncode:
 rec['cycles']=int(re.search(r'CYCLES (\d+)',s)[1]);meta=json.loads((D/'meta.json').read_text())
 for i,x in enumerate(meta['outputs']):
  n=int(np.prod(x['shape']));z=re.search(rf'OUTPUT {i} {n}\n([0-9a-f\n]+)',s)[1].replace('\n','');assert len(z)==n*8
  a=np.array([int(z[j:j+8],16) for j in range(0,len(z),8)],dtype='u4');a.tofile(D/f'output{i}.bin');b=np.fromfile(S/f'rv{i}.bin',dtype='u4');c=np.load(x['reference']).ravel().view('u4');rec['outputs'].append(dict(elements=n,vs_prior_rv_different_bits=int((a!=b).sum()),vs_pytorch_different_bits=int((a!=c).sum())))
(D/'result.json').write_text(json.dumps(rec,indent=2));print(rec,flush=True)
