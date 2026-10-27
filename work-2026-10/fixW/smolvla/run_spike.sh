#!/bin/bash
set -uo pipefail
R=/home/loren/work/runs/fixW/smolvla
export PATH="$R/deps/usr/bin:$PATH"
export LD_LIBRARY_PATH="$R/deps/lib:/home/loren/work/chipyard/.conda-env/riscv-tools/lib"
/usr/bin/time -v taskset -c 1 /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike -m16384 --isa=rv64gc_zicntr --extension=gemmini "$R/build/smolvla-gemmini.elf" > "$R/spike.log" 2> "$R/spike-time.log"
rc=$?
printf '%s\n' "$rc" > "$R/spike-exit.txt"
exit "$rc"
