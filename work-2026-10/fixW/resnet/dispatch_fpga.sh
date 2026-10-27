#!/bin/bash
set -euo pipefail
if ! mkdir /home/loren/work/runs/fixW/resnet/fpga-attempt1-claimed 2>/dev/null; then echo "FPGA attempt1 already claimed; refusing duplicate dispatch" >&2; exit 3; fi
cd /home/loren/work/runs/fixW/resnet
export FSIM_RESULTS_DIR=/home/loren/work/runs/fixW/fpga
export FSIM_REGION=us-east-1
exec /home/loren/bin/fpga-run-elf --max-hours 2 --run-id gemW-resnet50-20261027-a1 "$PWD/resnet50-gemR.elf"
