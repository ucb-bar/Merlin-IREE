#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/fixW/smolvla
bash compile.sh /home/loren/work/runs/smolvla/fp32/smolVLA.q.int8.mlir model.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/fixW/smolvla/intermediates
