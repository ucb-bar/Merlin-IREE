#!/bin/bash
# Run after successful full RV64 compilation; emits reviewable final ELF and diagnostic.
set -euo pipefail
cd /home/loren/work
cp runs/smB/full-barrier.vmfb runs/smB/full-runtime/payload-model.vmfb
touch runs/smB/full-runtime/embed.S
bash runs/smB/full-runtime/build.sh trace > runs/smB/full-runtime-build-trace.log 2>&1
bash runs/smB/full-runtime/build.sh plain > runs/smB/full-runtime-build-plain.log 2>&1
python3 runs/smB/patch_onewg.py runs/smB/full-runtime/build-trace/smolvla.elf runs/smB/full-onewg.elf > runs/smB/full-onewg-patch.txt
set +e
bash runs/smB/run_full_spike.sh runs/smB/full-onewg.elf > runs/smB/full-onewg.log 2> runs/smB/full-onewg.stderr
rc=$?
set -e
printf '%s\n' "$rc" > runs/smB/full-onewg-exit.txt
python3 runs/smB/scale_trace.py runs/smB/full-onewg.log full > runs/smB/full-summary.txt
