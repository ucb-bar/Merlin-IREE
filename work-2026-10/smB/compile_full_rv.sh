#!/bin/bash
set -euo pipefail
cd /home/loren/work
bash runs/smB/compile_rv.sh runs/smB/full-barrier.mlir runs/smB/full-barrier.vmfb --compile-from=input --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/smB/full-barrier-ir
