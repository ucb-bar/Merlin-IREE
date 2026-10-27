#!/bin/bash
set -euo pipefail
cd /home/loren/work
export PATH=/home/loren/work/runs/gemT/deps/usr/bin:$PATH
export LD_LIBRARY_PATH=/home/loren/work/runs/gemT/deps/lib:/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib
exec taskset -c 24 /usr/bin/time -v /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike -m16384 --isa=rv64gc_zicntr --extension=gemmini "${1:?ELF}"
