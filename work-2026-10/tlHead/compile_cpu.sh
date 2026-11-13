#!/bin/bash
set -euo pipefail
source /home/loren/work/runs/tlHead/env.sh
variant=${1:?variant}
input=${2:-$R/$variant/model.mlir}
taskset -c 0-15 "$BIN/iree-compile" "$input" \
 --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host \
 --iree-llvmcpu-number-of-threads=16 \
 -o "$R/$variant/model.cpu.vmfb"
