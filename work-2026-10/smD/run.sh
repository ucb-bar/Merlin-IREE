#!/bin/bash
set -euo pipefail
cd /home/loren/work
G=$PWD/chipyard/.conda-env/riscv-tools
export PATH=$PWD/runs/gemT/deps/usr/bin:$PATH
export LD_LIBRARY_PATH=$PWD/runs/gemT/deps/lib:$PWD/chipyard/generators/gemmini/software/libgemmini:$G/lib
for variant in original table; do
 taskset -c 84 "$G/bin/riscv64-unknown-elf-gcc" -O2 -march=rv64gc_zicntr -mabi=lp64d -mcmodel=medany -static -specs="$G/riscv64-unknown-elf/lib/htif.specs" -T$PWD/runs/perfX/toolchain/htif.ld -Wl,--defsym=__merlin_heap_size=1073741824 runs/smD/probe.c runs/smD/projection-$variant.s -o runs/smD/projection-$variant.elf
 taskset -c 84 "$G/bin/spike" -m4096 --isa=rv64gc_zicntr --extension=gemmini runs/smD/projection-$variant.elf > runs/smD/$variant.stdout 2> runs/smD/$variant.stderr
done
