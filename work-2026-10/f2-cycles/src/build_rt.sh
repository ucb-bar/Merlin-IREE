#!/bin/bash
# build_rt.sh VARIANT(plain|trace) APP...   -> $W/build-VARIANT/<app>.elf
set -euo pipefail
W=/scratch/loren/f2cyc; V=$1; shift
export RISCV_TOOLCHAIN_ROOT=$W/clang
export RISCV_NEWLIB_SYSROOT=/scratch/loren/core-aten-snap/phase1-prep/toolchain/.conda-env/riscv-tools/riscv64-unknown-elf
PX=OFF; [ "$V" = trace ] && PX=ON
APPS="kernels;resnet;tiny;smol;resnetfx"
B=$W/build-$V
if true; then  # always (re)configure so newly added apps get targets
cmake -G Ninja -S $W/src -B $B -DCMAKE_TOOLCHAIN_FILE=$W/kit/toolchain/riscv_firesim.toolchain.cmake \
  -DCMAKE_BUILD_TYPE=Release -DIREE_SRC=$W/iree-latest/source/Merlin-IREE/third_party/iree_bar \
  -DIREE_RISCV_BARE_METAL_FEATURES=0 -DIREE_HOST_BIN_DIR=$W/iree-latest/prebuilt/bin -DPERFX=$PX \
  -DAPP_DIR=$W/apps "-DAPPS=$APPS" -DHEAP_kernels=1610612736 -DHEAP_resnet=268435456 -DHEAP_tiny=1073741824 -DHEAP_smol=1073741824 -DHEAP_resnetfx=268435456
fi
T=(); for a in "$@"; do T+=($a.elf); done
nice -n 10 taskset -c 24-39 ninja -C $B -j16 "${T[@]}"
for a in "$@"; do sha256sum $B/$a.elf; done
