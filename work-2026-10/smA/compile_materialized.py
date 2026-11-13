#!/usr/bin/env python3
"""Reproducible pass-level workaround, without changing source/export arithmetic.
Usage: python3 compile_materialized.py INPUT.mlir OUTPUT.vmfb [extra compiler flags]
Creates OUTPUT.stages/{global.mlir,barrier.mlir,...}; large original blobs retained.
RV64GC/Gemmini, fixW strict numerics,32768-byte gate; at most24 cores.
"""
import pathlib,sys,json,subprocess,time
R=pathlib.Path(__file__).resolve().parent;src=pathlib.Path(sys.argv[1]).resolve();out=pathlib.Path(sys.argv[2]).resolve();D=out.with_suffix('.stages');D.mkdir(parents=True,exist_ok=True)
flags=['--torch-pytorch-cpu-numerics','--torch-pytorch-cpu-reference-threads=24','--torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so','--iree-opt-numeric-precision-reduction=false','--iree-llvmcpu-reassociate-fp-reductions=false','--iree-llvmcpu-skip-intermediate-roundings=false','--iree-input-demote-f64-to-f32=false','--iree-opt-const-eval=false','--iree-gemmini-bank-rows=2048','--iree-gemmini-acc-rows=512',*sys.argv[3:]]
def call(cmd,name):
 t=time.time()
 with (D/(name+'.log')).open('w') as f:p=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT)
 with (D/'commands.jsonl').open('a') as f:f.write(json.dumps(dict(command=cmd,exit=p.returncode,seconds=time.time()-t))+'\n')
 if p.returncode:sys.exit(p.returncode)
call(['bash',str(R/'compile.sh'),str(src),str(D/'global.mlir'),*flags,'--compile-to=global-optimization'],'stage')
call(['taskset','-c','24','python3',str(R/'materialize.py'),str(D/'global.mlir'),str(D/'barrier.mlir')],'materialize')
call(['taskset','-c','24','python3',str(R/'restore_resources.py'),str(src),str(D/'barrier.mlir')],'resources')
call(['bash',str(R/'compile.sh'),str(D/'barrier.mlir'),str(out),*flags,'--compile-from=global-optimization'],'compile')
