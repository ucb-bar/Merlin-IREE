#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/gemR
export PATH=$PWD/deps/usr/bin:$PATH
export LD_LIBRARY_PATH=$PWD/deps/lib:/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib
exec taskset -c 24 /usr/bin/time -v /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike --isa=rv64gc_zicntr --extension=gemmini "$PWD/resnet50-gemR.elf"
