#!/bin/bash
set -euo pipefail
R=/home/loren/work/runs/fixW/tinyllama
while [ ! -f "$R/spike-numerics.exit" ]; do sleep 3; done
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 taskset -c 3 /home/loren/work/runs/smolvla/venv/bin/python "$R/check_numerics.py" > "$R/final-gate.log" 2>&1
bash "$R/dispatch_fpga_numerics.sh" > "$R/fpga-dispatch.log" 2>&1
