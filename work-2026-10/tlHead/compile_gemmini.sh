#!/bin/bash
set -euo pipefail
source /home/loren/work/runs/tlHead/env.sh
mkdir -p "$R/gemmini_head"
taskset -c 0-15 "$BIN/iree-compile" "$R/int8_head/model.mm.mlir" \
  --iree-hal-target-device=local \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-llvmcpu-target-triple=riscv64-unknown-elf \
  --iree-llvmcpu-target-abi=lp64d \
  --iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c \
  --iree-llvmcpu-target-vector-width-in-bytes=8 \
  --iree-opt-data-tiling=false \
  --iree-dispatch-creation-data-tiling=false \
  --iree-llvmcpu-enable-ukernels=none \
  --iree-llvmcpu-link-ukernel-bitcode=false \
  --iree-execution-model=async-external \
  --iree-llvmcpu-link-embedded=true \
  --iree-plugin=gemmini --iree-gemmini-enable \
  --iree-gemmini-lower-back-to-iree=false \
  --iree-gemmini-use-loop-ws=true \
  --iree-gemmini-mx-format=disabled \
  --iree-llvmcpu-number-of-threads=16 \
  --mlir-print-ir-after=gemmini-attach-compilation-info \
  --mlir-elide-elementsattrs-if-larger=16 --mlir-elide-resource-strings-if-larger=64 \
  --iree-hal-dump-executable-sources-to="$R/gemmini/sources" \
  -o "$R/gemmini/model.vmfb"
