#!/bin/bash
# compile_rv.sh INPUT OUTPUT [extra flags...]  - exact kprofC RV64 Gemmini flag set (provenance.json "rv"),
# PRECFLAGS='' drops kprofC's four precision flags (fixW/resnet/compile.sh did not pass them).
# fixW build-numerics iree-compile (sha256 6394f9d7...), execution model async-internal.
set -euo pipefail
W=/scratch/loren/f2cyc
export LD_LIBRARY_PATH=$W/compiler/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
IN=$1; OUT=$2; shift 2
CPUS=${CPUS:-24-39}; NT=${NT:-16}
exec nice -n 10 taskset -c $CPUS $W/compiler/tools/iree-compile "$IN" \
  --iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu \
  --iree-execution-model=${EXEC_MODEL:-async-internal} \
  --iree-opt-data-tiling=false --iree-dispatch-creation-data-tiling=false \
  --iree-llvmcpu-enable-ukernels=none --iree-llvmcpu-link-ukernel-bitcode=false \
  --iree-llvmcpu-number-of-threads=$NT \
  ${PRECFLAGS---iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false} \
  --iree-llvmcpu-target-triple=riscv64-unknown-elf --iree-llvmcpu-target-abi=lp64d \
  --iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c --iree-llvmcpu-target-vector-width-in-bytes=8 \
  --iree-llvmcpu-link-embedded=true \
  --iree-plugin=gemmini --iree-gemmini-enable --iree-gemmini-lower-back-to-iree=false \
  --iree-gemmini-use-loop-ws=true --iree-gemmini-mx-format=disabled \
  --iree-gemmini-dim=16 --iree-gemmini-addr-len=32 --iree-gemmini-bank-num=4 \
  --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-gemmini-elem-bits=8 --iree-gemmini-acc-bits=32 \
  '--iree-preprocessing-pass-pipeline=builtin.module(util.func(iree-preprocessing-convert-conv-to-channels-last),util.func(iree-global-opt-quantized-conv-to-conv),util.func(iree-global-opt-convert-conv2d-to-img2col))' \
  "$@" -o "$OUT"
