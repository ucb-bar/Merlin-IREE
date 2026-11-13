#!/bin/bash
set -euo pipefail
cd /home/loren/work
export OMP_NUM_THREADS=24 MKL_NUM_THREADS=24 OPENBLAS_NUM_THREADS=24
exec taskset -c 24-47 runs/fixW/build-numerics/tools/iree-compile runs/smolvla/fp32/smolVLA.q.int8.mlir --torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads=24 --torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false --iree-llvmcpu-number-of-threads=24 --iree-execution-model=async-internal --compile-to=input -o runs/smB/full-input.mlir
