#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/gemR
export CHIPYARD_ROOT=/home/loren/work/chipyard
export RISCV_TOOLCHAIN_ROOT=$PWD/clang
export LD_LIBRARY_PATH=$PWD/deps/lib:$CHIPYARD_ROOT/.conda-env/riscv-tools/lib
/home/loren/work/runs/fixC/tools-env/bin/cmake -G Ninja -S /home/loren/work/runs/fixK/src/third_party/iree_bar -B "$PWD/build" -DCMAKE_TOOLCHAIN_FILE="$PWD/toolchain/riscv_firesim.toolchain.cmake" -DCMAKE_MAKE_PROGRAM=/home/loren/work/runs/fixC/tools-env/bin/ninja -DCMAKE_BUILD_TYPE=Release -DIREE_BUILD_COMPILER=OFF -DIREE_BUILD_TESTS=OFF -DIREE_BUILD_SAMPLES=OFF -DIREE_BUILD_TOOLS=OFF -DIREE_BUILD_BINDINGS_PYTHON=OFF -DIREE_CMAKE_PLUGIN_PATHS="$PWD" -DIREE_RISCV_BARE_METAL_FEATURES=0 -DIREE_ENABLE_THREADING=OFF -DIREE_HOST_BIN_DIR=/home/loren/work/iree-latest/prebuilt/bin
taskset -c 24-29 /home/loren/work/runs/fixC/tools-env/bin/ninja -C build -j6 resnet
cp build/runtime/plugins/resnet resnet50-gemR.elf
