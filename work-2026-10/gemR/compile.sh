#!/bin/bash
set -euo pipefail
INPUT=$1; OUTPUT=$2; shift 2
taskset -c 24-29 /home/loren/work/runs/fixK/build/tools/iree-compile "$INPUT" \
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
  --iree-llvmcpu-number-of-threads=6 "$@" -o "$OUTPUT"
