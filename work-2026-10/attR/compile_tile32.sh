#!/bin/bash
set -euo pipefail
export LD_LIBRARY_PATH=/home/loren/work/runs/fixW/build/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
exec taskset -c 0-7 /home/loren/work/runs/fixW/build/tools/iree-compile /home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir \
 --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu \
 --iree-llvmcpu-target-triple=riscv64-unknown-elf --iree-llvmcpu-target-abi=lp64d \
 --iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c --iree-llvmcpu-target-vector-width-in-bytes=8 \
 --iree-opt-data-tiling=false --iree-dispatch-creation-data-tiling=false \
 --iree-llvmcpu-enable-ukernels=none --iree-llvmcpu-link-ukernel-bitcode=false \
 --iree-execution-model=async-external --iree-llvmcpu-link-embedded=true \
 --iree-plugin=gemmini --iree-gemmini-enable --iree-gemmini-lower-back-to-iree=false \
 --iree-gemmini-use-loop-ws=true --iree-gemmini-mx-format=disabled \
 --iree-llvmcpu-number-of-threads=8 --iree-gemmini-dim=16 --iree-gemmini-addr-len=32 \
 --iree-gemmini-bank-num=4 --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 \
 --iree-gemmini-elem-bits=8 --iree-gemmini-acc-bits=32 \
 '--iree-preprocessing-pass-pipeline=builtin.module(util.func(iree-preprocessing-convert-conv-to-channels-last),util.func(iree-global-opt-quantized-conv-to-conv),util.func(iree-global-opt-convert-conv2d-to-img2col))' \
 "$@" \
 --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/attR/compile/tile32/intermediates \
 -o /home/loren/work/runs/attR/compile/tile32/resnet.vmfb
