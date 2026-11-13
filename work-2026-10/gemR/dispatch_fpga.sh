#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/gemR
export FSIM_RESULTS_DIR=$PWD/fpga
export FSIM_REGION=us-east-1
exec /home/loren/bin/fpga-run-elf --max-hours 2 --run-id gemR-resnet50-20261027-a1 "$PWD/resnet50-gemR.elf"
