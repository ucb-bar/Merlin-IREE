#!/bin/bash
# Run from workspace; uses only24 CPUs. No FPGA dispatch.
set -euo pipefail
cd /home/loren/work
bash runs/smB/lower_full.sh > runs/smB/lower-full.log 2>&1
python3 runs/smB/rewrite_barriers.py runs/smB/full-input.mlir runs/smB/full-barrier.mlir
python3 runs/smB/restore_resources.py runs/smolvla/fp32/smolVLA.q.int8.mlir runs/smB/full-barrier.mlir > runs/smB/restore-full.json
bash runs/smB/compile_full_rv.sh > runs/smB/full-barrier-compile.log 2>&1
python3 runs/smB/setup_full_runtime.py
cp runs/smB/full-barrier.vmfb runs/smB/full-runtime/payload-model.vmfb
touch runs/smB/full-runtime/embed.S
bash runs/smB/full-runtime/build.sh plain > runs/smB/full-runtime-build-plain.log 2>&1
bash runs/smB/full-runtime/build.sh trace > runs/smB/full-runtime-build-trace.log 2>&1
python3 runs/smB/patch_onewg.py runs/smB/full-runtime/build-trace/smolvla.elf runs/smB/full-onewg.elf
# This deliberately altered diagnostic may return1 after failed numerics.
set +e
bash runs/smB/run_full_spike.sh runs/smB/full-onewg.elf > runs/smB/full-onewg.log 2> runs/smB/full-onewg.stderr
rc=$?
set -e
printf '%s\n' "$rc" > runs/smB/full-onewg-exit.txt
python3 runs/smB/scale_trace.py runs/smB/full-onewg.log full
