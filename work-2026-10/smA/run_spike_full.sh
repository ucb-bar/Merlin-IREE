#!/bin/bash
# Full, unaltered workgroups; potentially long. Never dispatches hardware.
set -euo pipefail
R=/home/loren/work/runs/smA
export PATH="$R/runtime-full/deps/usr/bin:$PATH"
export LD_LIBRARY_PATH="$R/runtime-full/deps/lib:/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib"
exec taskset -c 25 /usr/bin/time -v /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike -m16384 --isa=rv64gc_zicntr --extension=gemmini "$R/full/smolvla.elf"
