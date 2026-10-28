#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/fixW/smolvla
bash compile_numerics.sh /home/loren/work/runs/smolvla/fp32/smolVLA.q.int8.mlir numerics.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/fixW/smolvla/numerics-intermediates --torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads=24 --torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false
