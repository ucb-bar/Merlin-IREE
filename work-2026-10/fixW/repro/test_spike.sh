#!/bin/bash
set -euo pipefail
R=/home/loren/work/runs/fixW/repro
cd /home/loren/work
for mode in baseline fixed; do
  bash "$R/compile_${mode}.sh" "$R/model.mlir" "$R/resnet.vmfb" --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 > "$R/compile-${mode}.log" 2>&1
  cp "$R/resnet.vmfb" "$R/${mode}.vmfb"
  touch "$R/embed.S"
  bash "$R/build_runtime.sh" > "$R/build-${mode}.log" 2>&1
  status=0
  bash "$R/run_spike.sh" > "$R/spike-${mode}.log" 2>&1 || status=$?
  if [ "$mode" = fixed ]; then test "$status" = 0; else test "$status" = 1; fi
done
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 /home/loren/work/runs/smolvla/venv/bin/python "$R/check.py"
