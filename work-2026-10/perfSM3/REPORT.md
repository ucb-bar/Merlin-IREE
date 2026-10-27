# SMF3 smolVLA buffered FireSim delivery

Updated 2026-10-27 22:39 UTC. Work only in `/home/loren/work/runs/perfSM3` plus requested shared handoff `/home/loren/work/runs/probeSUMMARY/SMF3.txt`. Read the required top-level REPORT, smolVLA SPEC, TinyLlama REPORT, probeSPL REPORT and all probeSUMMARY notes first. Also read smB, smA, smD, smK, smK2, smK3 reports. Protected model/compiler snapshots were not modified. F2 launches were held until the smK3 exact cleanup confirmation.

## Current state

- Buffered plain and trace ELFs built from a local copy of smB's validated runner, runtime instrumentation, exact payload and goldens. No model IR/VMFB was rebuilt or rewritten.
- Short WG0 output check: buffered plain output matches smB’s matching WG0 diagnostic and this copy's trace diagnostic bitwise (1600/1600 words; SHA256 of concatenated hex words `dad00e7b7b96329d82c22372411027826d946855f368f9aaf81ef7db67298002`). This is deliberately partial altered computation; the numerical gate fails as expected and is not acceptance evidence.
- Independent SPL-style trace scaling: **17,953 dispatches; 430,334,661,263 estimated instructions**, exactly matching smB's report; all 17,953 current rows also match `smB/full-dispatches.json` dispatch-by-dispatch (same ordinals, names, shapes, workgroup costs and scaled costs; identical JSON SHA256 `ed73c4e9f7238524b37ae7d9de0e9209b33ab8dbf8462a76934a454e1b90923e`). The prior SPL baseline is 3,488,170,271,254; <=1e11 is still not reached.
- F2 pair `zSM3-smolvla-plain` and `zSM3-smolvla-trace` dispatched concurrently at 2026-10-27T22:37:57Z with `--max-hours 8`. SSM command IDs: plain `14dc0617-3f13-4b5f-b139-0b0814ecd661`; trace `24c8066c-432d-48a8-b944-fe7a2140b600`. Both were InProgress at 22:38:14Z (ResponseCode -1). ETA at launch: ~3–4 hours invoke at 58.6 MHz plus ~25–30 minutes image load (estimate only).
- Full plain buffered Spike run started at 22:38 UTC, taskset CPU 34, 16 GiB Spike memory. It will check all 1600 output values against embedded CPU golden and PyTorch reference; runner additionally enforces bitwise CPU equality and unchanged atol=rtol=1e-3 PyTorch gate. No full Spike result yet.
- No F2 output, hardware cycles, utilization, Gantt, or full Spike numerical result is claimed yet. Continue monitoring until both F2 runs terminate and artifacts are collected.

## Buffered build and identity

The smD projection rewrite was intentionally omitted: its report says the full assembly rewrite was not integrated into a full ELF and it has no full-model numerical verification. The selected artifact is smB’s existing bitwise-qualified host build with RV64 slices and full model VMFB.


Copied into `full-runtime/`: smB `runner.c`, `CMakeLists.txt`, `embed.S`, payload VMFB, 11 input files, CPU golden and PyTorch golden. The only path edits are local include/`.incbin` paths from smB to perfSM3. Runner has a static 16 MiB stdout buffer and a final flush after the full output dump. The trace runtime source contains the existing PERFX callback instrumentation; it is a symlink to smB's read-only runtime copy. No change to compute graph, inputs, or gate.

VMFB SHA256: `e078de2049f71da0c2e1132500cbd2078ffb2434336217d131b8f2710aab7615` (same as smB). CPU and PyTorch golden files each SHA256 `74c9c6c5a16b91f6a918f11146813366eb39c65dabd59c62b01620c982d14a7b`.

Plain ELF SHA256 `355673e836cc8d50300df611d7ff38ed481492a514e4620a90283a8ca9358fee`; trace ELF SHA256 `a8eaf980d9244195fa1b12ca364e356489267d5deedae818912d190b1d798c8c`.

Exact build command, from `/home/loren/work`:
```bash
bash runs/perfSM3/full-runtime/build.sh plain > runs/perfSM3/build-plain.log 2>&1
bash runs/perfSM3/full-runtime/build.sh trace > runs/perfSM3/build-trace.log 2>&1
```
Build script copied from smB and changed only run root and job affinity/count (CPUs 24–31, `ninja -j8`). Toolchain: Clang 23.0.0git; CMake 4.4.4; Ninja 1.13.2.git.kitware.jobserver-pipe-1. `iree-compile` used to produce the selected VMFB is the fixW merged compiler at `/home/loren/work/runs/fixW/build-numerics/tools/iree-compile`; this task reused smB's final VMFB without recompilation. Spike: `Spike RISC-V ISA Simulator 1.1.1-dev`, `rv64gc_zicntr`, Gemmini extension. Full runner build retains Gemmini stack allocation configuration; no stack/tolerance changes.

## Short check and instruction count

The checkable commands and raw logs are retained:
```bash
python3 runs/perfSM3/patch_onewg.py runs/perfSM3/full-runtime/build-trace/smolvla.elf runs/perfSM3/full-runtime/build-trace/smolvla-onewg.elf
taskset -c 32 /usr/bin/time -v /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike -m16384 --isa=rv64gc_zicntr --extension=gemmini runs/perfSM3/full-runtime/build-trace/smolvla-onewg.elf > runs/perfSM3/onewg-trace.stdout 2> runs/perfSM3/onewg-trace.stderr
python3 runs/perfSM3/scale_trace_local.py runs/perfSM3/onewg-trace.stdout sm3-trace
python3 runs/perfSM3/patch_onewg.py runs/perfSM3/full-runtime/build-plain/smolvla.elf runs/perfSM3/full-runtime/build-plain/smolvla-onewg.elf
taskset -c 33 /usr/bin/time -v /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike -m16384 --isa=rv64gc_zicntr --extension=gemmini runs/perfSM3/full-runtime/build-plain/smolvla-onewg.elf > runs/perfSM3/onewg-plain.stdout 2> runs/perfSM3/onewg-plain.stderr
```
The patch clamps only three checked HAL workgroup loop bounds to one; trace records preserve true dispatch workgroup counts. The parser matches invocation record index, export ordinal/name and shapes using the SPL method. It returns exactly 17,953 records and 430,334,661,263 scaled instructions. Full per-dispatch rows and aggregate comparison: `sm3-trace-dispatches.json`, `sm3-trace-summary.json`, `sm3-trace-comparison.md`. Diagnostic stdout gate fails by design (one workgroup only); do not read it as full-model pass/fail.

Dominant dispatch aggregates, inherited unchanged smB exact before/after trace accounting:

| Dispatch group | SPL baseline | smB materialized VMFB |
|---|---:|---:|
| Full invocation estimate | 3,488,170,271,254 | 430,334,661,263 |
| `elementwise_1572864_f32` / materialized softmax+exp consumers | 2,802,397,741,056 | 16,944,247,296 for `elementwise_3072x512_f32`, plus separately traced max/sum stages |
| `elementwise_broadcast_3072x64_f32` / materialized PV groups | 408,577,175,808 | 88,212,291,648 + 88,120,762,368 for split PV/rescale groups |
| QK `batch_matmul_12x256x512x64_f32` | 102,483,099,648 | 102,542,966,784 |
| 3 patch projection dispatches | 61,687,431,168 | 61,667,057,664 |

WG0 scaling caveats: edge workgroups and data-dependent branches can vary; scaled per-call trace overhead and initialization/VM/output costs are not included. Estimate is not a hardware timing claim.

## Capacity gate and dispatch

Read smK3 report: exact `zSM-smolvla-plain-retry1` SSM cancellation returned Cancelled/137 and manager reported instance termination; fresh exact EC2 pending/running filter was empty. Fresh pre-dispatch EC2 inventory at 22:37:57 UTC showed exactly `zTL-tinyllama-plain` and `zTL-tinyllama-trace` as pending/running F2s, with no retry1. Adding our pair uses four physical F2 slots. `fpga-status` still displays terminated legacy zSM entries as active, so both physical inventory and retry exact filter were recorded in `f2-capacity-before.json`; no registry mutation was made.

Concurrent commands (launched by `dispatch_pair.py`):
```bash
FSIM_REGION=us-east-1 FSIM_RESULTS_DIR=/home/loren/work/runs/perfSM3/fpga fpga-run-elf --max-hours 8 --run-id zSM3-smolvla-plain /home/loren/work/runs/perfSM3/full-runtime/build-plain/smolvla.elf
FSIM_REGION=us-east-1 FSIM_RESULTS_DIR=/home/loren/work/runs/perfSM3/fpga fpga-run-elf --max-hours 8 --run-id zSM3-smolvla-trace /home/loren/work/runs/perfSM3/full-runtime/build-trace/smolvla.elf
```
Both direct SSM checks returned `InProgress` / response code -1 immediately after dispatch. Logs: `dispatch-plain.log`, `dispatch-trace.log`; run metadata: `dispatches.json`. At most one retry per run, only for a documented infrastructure failure. No other F2 or instance was targeted.

## Pending finalization

When each wrapper returns, confirm no pending/running EC2 instance for its exact run ID, verify returned ELF hashes match the above, run the unchanged CPU/PyTorch numerical gate on plain and trace, and require plain/trace output bit identity. Record timed invoke cycles and whole-emulation cycles separately. Parse trace with perfX software-occupancy method, preserving dispatch occupancy and not fabricating lanes. Generate Gantt PNG and SVG with non-overlapping legend/footnote. Keep artifacts in `runs/perfSM3/results/smolvla/` for zperf integration and update this report, including any infrastructure or numerical failure as observed.

2026-10-27T22:39:46Z monitor: both exact SSM commands remain InProgress. Exact EC2 filters show plain `i-<redacted>` and trace `i-<redacted>` running. No completion or infrastructure failure observed. Full Spike remains running with banner-only buffered output, which is expected during the invocation.

2026-10-27T22:41:12Z monitor: both SSM runs remain InProgress / ResponseCode -1. Full plain Spike remains active; the static buffered runner has emitted only its initial banner, expected until invocation and dump complete. No failure inferred.

2026-10-27T22:42:47Z monitor: SSM commands remain InProgress (ResponseCode -1). Full Spike remains active after ~4.5 minutes; stdout is unchanged at the single startup banner due 16 MiB static buffering. This is consistent with the runner design and not a liveness conclusion. Parser staging completed: assembly catalog classifies 10,987 functions (444 Gemmini, 10,543 scalar); final FireSim parser will independently require 1600 outputs, bitwise CPU golden, unchanged 1e-3 PyTorch gate, and plain/trace bit identity.

2026-10-27T22:43Z short-check correction: exact comparison used `runs/smB/full-onewg.log`; all 1600 WG0 words match plain/trace and smB. Per-dispatch estimate JSON matches smB byte-for-byte.

2026-10-27T22:44:32Z monitor: both SSM runs remain InProgress / ResponseCode -1. No failure or returned data yet. Plain Spike continues; full output is still held by stdio buffer.

2026-10-27T22:45:53Z capacity/liveness check: exactly four physical F2s running, the two TinyLlama IDs and this pair; both smolVLA jobs still InProgress. No extra F2 is present. Full Spike output remains at the pre-invoke banner; no numerical result inferred.

2026-10-27T22:46Z ELF embedding audit: `python3 runs/perfSM3/verify_embedded_payload.py` independently hashed the full `.vmfb_data` segment in each new ELF. Plain and trace each embed exactly 557,989,519 bytes with SHA256 `e078de2049f71da0c2e1132500cbd2078ffb2434336217d131b8f2710aab7615`, equal to the copied VMFB. Full identity record: `embedded-payload-identity.json`.

2026-10-27T22:48:44Z monitor: both SSM invocations remain InProgress / ResponseCode -1; no retry condition or result artifact. Full plain Spike remains active with buffered stdout.

Full plain Spike ETA from its 22:38 UTC start is approximately 23:38–00:08 UTC based on the supplied 1–1.5 hour estimate; it remains buffered and active at 22:50 UTC.

2026-10-27T22:52:02Z exact run-ID EC2 check: both smolVLA instances remain running. No termination or result yet.

2026-10-27T22:53:48Z physical inventory: 3 pending/running F2s total (our plain + trace and TinyLlama trace); both own SSM commands remain under observation. No other ID was targeted.

2026-10-27T22:55:42Z SSM invocation detail has empty stdout/stderr while both remain InProgress / -1; not evidence of failure. The wrapper will fetch run artifacts after terminal status.

2026-10-27T22:57:26Z exact run-ID check: plain and trace F2 instances are still running. Spike remains in the invocation; no output or numerical gate result yet.
