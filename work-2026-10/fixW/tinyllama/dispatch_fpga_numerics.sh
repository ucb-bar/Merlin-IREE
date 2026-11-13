#!/bin/bash
set -euo pipefail
if ! mkdir /home/loren/work/runs/fixW/tinyllama/fpga-attempt1-claimed 2>/dev/null; then echo "FPGA attempt1 already claimed; refusing duplicate dispatch" >&2; exit 3; fi
export FSIM_RESULTS_DIR=/home/loren/work/runs/fixW/fpga
export FSIM_REGION=us-east-1
exec /home/loren/bin/fpga-run-elf --max-hours 12 --run-id gemW-tinyllama-20261027-a1 /home/loren/work/runs/fixW/tinyllama/build/tinyllama-numerics.elf
