#!/bin/bash
set -u
cd /home/loren/work
export PATH=$PWD/runs/fixW/tinyllama/deps/usr/bin:$PATH
export LD_LIBRARY_PATH=$PWD/chipyard/generators/gemmini/software/libgemmini:$PWD/runs/fixW/tinyllama/deps/lib
/usr/bin/time -v taskset -c 1 chipyard/.conda-env/riscv-tools/bin/spike -m4096 --isa=rv64gc_zicntr --extension=gemmini runs/fixW/tinyllama/build/tinyllama.elf > runs/fixW/tinyllama/spike.log 2> runs/fixW/tinyllama/spike.stderr
rc=$?
echo "$rc" > runs/fixW/tinyllama/spike.exit
