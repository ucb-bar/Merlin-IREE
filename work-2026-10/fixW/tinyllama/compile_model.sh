#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/fixW/tinyllama
bash compile.sh /home/loren/work/runs/tinyllama2/int8/model.mlir model.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/fixW/tinyllama/intermediates
