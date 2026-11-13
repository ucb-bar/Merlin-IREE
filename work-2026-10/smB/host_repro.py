from pathlib import Path
import numpy as np,subprocess,json
R=Path('/home/loren/work/runs/smB');D=R/'runtime'
x=np.random.default_rng(174).normal(size=(12,4,512)).astype('f4');x.tofile(D/'input.bin')
cmd=['taskset','-c','24-47',str(R.parent/'fixW/build-numerics/tools/iree-compile'),str(R/'repro.mlir'),'--iree-hal-target-backends=llvm-cpu','--iree-llvmcpu-target-cpu=host','--iree-opt-numeric-precision-reduction=false','--iree-llvmcpu-reassociate-fp-reductions=false','--iree-llvmcpu-skip-intermediate-roundings=false','-o',str(R/'repro-host.vmfb')];subprocess.run(cmd,check=True)
cmd=['taskset','-c','24-47','/home/loren/work/iree-latest/bin/iree-run-module','--module='+str(R/'repro-host.vmfb'),'--device=local-task','--task_topology_group_count=24','--input=12x4x512xf32=@'+str(D/'input.bin'),'--output=@'+str(D/'golden.f32')];subprocess.run(cmd,check=True)
