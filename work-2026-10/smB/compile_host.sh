#!/bin/bash
set -euo pipefail
cd /home/loren/work
exec taskset -c 24-47 runs/fixW/build-numerics/tools/iree-compile runs/smB/full-barrier.mlir --compile-from=input --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=24 --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false -o runs/smB/full-barrier-host.vmfb
