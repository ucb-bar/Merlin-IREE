#!/bin/bash
set -euo pipefail
cd /home/loren/work
export RISCV_TOOLCHAIN_ROOT=$PWD/runs/fixW/tinyllama/llvm CHIPYARD_ROOT=$PWD/chipyard
export LD_LIBRARY_PATH=$PWD/runs/fixW/tinyllama/deps/lib
runs/fixC/tools-env/bin/cmake -S runs/fixW/tinyllama -B runs/fixW/tinyllama/build -G Ninja -DCMAKE_MAKE_PROGRAM=$PWD/runs/fixC/tools-env/bin/ninja -DCMAKE_TOOLCHAIN_FILE=$PWD/runs/fixW/tinyllama/toolchain/riscv_firesim.toolchain.cmake -DIREE_RISCV_BARE_METAL_FEATURES=0 -DCMAKE_BUILD_TYPE=Release -DIREE_HOST_BIN_DIR=$PWD/iree-latest/prebuilt/bin
taskset -c 4-23 runs/fixC/tools-env/bin/ninja -C runs/fixW/tinyllama/build -j20 tinyllama-numerics.elf
