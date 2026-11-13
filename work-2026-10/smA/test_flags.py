import subprocess,pathlib,json,time
R=pathlib.Path('/home/loren/work/runs/smA')
base=['--torch-pytorch-cpu-numerics','--torch-pytorch-cpu-reference-threads=24','--torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so','--iree-opt-numeric-precision-reduction=false','--iree-llvmcpu-reassociate-fp-reductions=false','--iree-llvmcpu-skip-intermediate-roundings=false','--iree-input-demote-f64-to-f32=false','--iree-opt-const-eval=false','--iree-gemmini-bank-rows=2048','--iree-gemmini-acc-rows=512']
cases={'baseline':[], 'noaggressive':['--iree-dispatch-creation-enable-aggressive-fusion=false'],'nomultiuse':['--iree-dispatch-creation-fuse-multi-use=false'],'nomultireduce':['--iree-dispatch-creation-element-wise-fuse-multi-reduction=false'],'nodecomposefuse':['--iree-llvmcpu-use-decompose-softmax-fuse=false'],'opt0':['--iree-dispatch-creation-opt-level=O0']}
records=[]
for name,flags in cases.items():
 d=R/name;d.mkdir(exist_ok=True)
 cmd=['bash',str(R/'compile.sh'),str(R/'softmax.mlir'),str(d/'model.vmfb'),*base,*flags,'--iree-hal-dump-executable-intermediates-to='+str(d/'ir'),'--mlir-disable-threading']
 t=time.time()
 with (d/'compile.log').open('w') as f:p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT)
 records.append(dict(name=name,command=cmd,exit=p.returncode,seconds=time.time()-t));(R/'flag-results.json').write_text(json.dumps(records,indent=2))
 print(records[-1],flush=True)
