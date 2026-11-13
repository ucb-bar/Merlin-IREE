#!/usr/bin/env bash
set -euo pipefail
R=/home/loren/work/runs/tlHead
C=/home/loren/work/runs/fixW/build-numerics/tools/iree-compile
export LD_LIBRARY_PATH=/home/loren/work/runs/fixW/build-numerics/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
taskset -c 0-15 "$C" "$R/int8_head/model.mlir" \
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
  --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 \
  --torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads=16 \
  --torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so \
  --iree-opt-numeric-precision-reduction=false \
  --iree-llvmcpu-reassociate-fp-reductions=false \
  --iree-llvmcpu-skip-intermediate-roundings=false \
  --iree-input-demote-f64-to-f32=false \
  --iree-hal-dump-executable-intermediates-to="$R/int8_head/gemmini-intermediates" \
  --iree-hal-dump-executable-sources-to="$R/int8_head/gemmini-sources" \
  -o "$R/int8_head/gemmini.vmfb"
