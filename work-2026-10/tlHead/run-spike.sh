#!/usr/bin/env bash
set -u
cd /home/loren/work
export PATH=$PWD/runs/tlHead/spike/deps/usr/bin:$PATH
export LD_LIBRARY_PATH=$PWD/chipyard/generators/gemmini/software/libgemmini:$PWD/runs/tlHead/spike/deps/lib:$PWD/chipyard/.conda-env/riscv-tools/lib
/usr/bin/time -v taskset -c 0 $PWD/chipyard/.conda-env/riscv-tools/bin/spike -m4096 --isa=rv64gc_zicntr --extension=gemmini runs/tlHead/spike/build/tinyllama-numerics.elf > runs/tlHead/spike/spike.log 2> runs/tlHead/spike/spike.stderr
rc=$?
echo "$rc" > runs/tlHead/spike/spike.exit
exit $rc
