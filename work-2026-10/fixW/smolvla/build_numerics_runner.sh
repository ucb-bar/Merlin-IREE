#!/bin/bash
set -euo pipefail
R=/home/loren/work/runs/fixW/smolvla
export CHIPYARD_ROOT=/home/loren/work/chipyard RISCV_TOOLCHAIN_ROOT="$R/tools" LD_LIBRARY_PATH="$R/deps/lib:/home/loren/work/chipyard/.conda-env/riscv-tools/lib"
/home/loren/work/runs/fixC/tools-env/bin/cmake -S "$R" -B "$R/build" -G Ninja -DCMAKE_MAKE_PROGRAM=/home/loren/work/runs/fixC/tools-env/bin/ninja -DCMAKE_TOOLCHAIN_FILE="$R/firesim/riscv_firesim.toolchain.cmake" -DCMAKE_BUILD_TYPE=Release -DIREE_BUILD_COMPILER=OFF -DIREE_BUILD_TESTS=OFF -DIREE_BUILD_SAMPLES=OFF -DIREE_BUILD_TOOLS=OFF -DIREE_BUILD_PYTHON_BINDINGS=OFF -DIREE_RISCV_BARE_METAL_FEATURES=0 -DIREE_SYNCHRONIZATION_DISABLE_UNSAFE=ON -DIREE_HOST_BIN_DIR=/home/loren/work/iree-latest/prebuilt/bin
taskset -c 4-23 /home/loren/work/runs/fixC/tools-env/bin/ninja -C "$R/build" -j20 smolvla-gemmini-numerics.elf
