# ResNet-50 Gemmini execution
2026-10-27 UTC. In progress. All writes isolated to gemR; <=6 cores. Golden is passing fixK CPU output; unchanged gate atol .8 rtol .1 and top1 21. Spike cycles are functional, not hardware latency.

## Build evidence
`bash compile_model.sh > compile.log 2>&1`: PASS. fixK compiler, six workers on CPUs24–29, no executable hook or graph rewrite, unchanged default 32768-byte compiler stack-allocation gate. Explicit DIM16/i8/i32/addr32/4 banks/2048 rows/512 accumulator rows/LOOP_WS. Scalar +m,+a,+f,+d,+c, vector width8. This reproduces the firesim_shuttle_gemmini target's resolved flags directly; no merlin-dev conda environment required.

`build_runtime.sh` records runtime configure/build command. Runtime source is the read-only fixK independent source copy's IREE submodule, same upstream runtime as snapshot. Plugin is gemR-local minimal CMake target using historical runner copy. Added CheckCSourceCompiles include to COPY of toolchain after initial configure failure. Set IREE_HOST_BIN_DIR after build tried cross-building flatcc host tool. GCC link initially failed because supplied toolchain lacks libiconv.so.2; fetching GNU libiconv1.18 and building entirely in gemR/deps, without modifying chipyard. Failed attempts preserved in configure.log, build.log, build-retry.log.

Runner uses CPU golden from fixK/models/resnet/output.npy (bit-identical to protected resnet50/artifacts/iree_output.npy per fixK). Compare all1000 finite outputs with unchanged numpy allclose gate abs(error)<=.8+.1*abs(golden), require top1=21. Raw IEEE754 words printed AFTER timed invocation allow exact FPGA readback check. ONE iree_vm_invoke, no warmup. 128MiB heap /8MiB runtime stack as historical package; this does not widen compiler allocation limit. Public weights/synthetic seeded input differ from historical assets, so cycle comparison is contextual.

Startup diagnosis: Spike requires dtc; downloaded Ubuntu device-tree-compiler deb and extracted into gemR/deps (`apt-get download device-tree-compiler`, `dpkg-deb -x ... deps`). Disabling DTB is NOT a valid workaround: reset ROM is absent and execution faults at0x1000, so those attempts were stopped. Normal boot then trapped with misaligned load in supplied newlib `strncmp` (pc0x8005576c, literal address0x80063d1d). Retained startup-trace.log proves this. Added gemR-local `libc_strict.c` bytewise strncmp override, using volatile byte loads; same runner/model math/gate. No --misaligned simulator relaxation, so artifact remains suitable for hardware.

## Optional exact-integer diagnostic
Copied historical defuse_ort_qlinear.py and generate_portable_int8_golden.py. `oracle_optimize.py` creates ORT_ENABLE_EXTENDED optimized graph (initial ALL attempt introduced channels_last unsupported by standard ConvInteger; oracle-transform.log retains checker rejection). Commands: `OMP_NUM_THREADS=5 taskset -c 25-29 runs/locked-env/.venv/bin/python runs/gemR/oracle_optimize.py`; same Python/affinity `defuse_ort_qlinear.py --conv-mode integer`; then `generate_portable_int8_golden.py --model runs/gemR/resnet50.q.int8.ort_convinteger_qdq.onnx --input runs/resnet50/artifacts/resnet50_input.f32 --output runs/gemR/oracle-exact.f32`. Generator only changed thread settings5/1. PASS: optimization enabled/disabled bit-identical, top1=21; exact oracle hash41dc5867e09c0c2747b145c392926053d34d9867566bdeb8b566d2e7c02d2b3b. It differs from CPU golden in572/1000 logits, max_abs .2928805351. This diagnostic does NOT replace required CPU golden or alter gate.

Status before FPGA: `fpga-status` confirms hw_config f2_gemmini_rocket_ddr3llc_60mhz, active0. Dispatch script uses unique gemR-resnet50-20261027-a1,2h cap, us-east-1, gemR/fpga destination. Watcher dispatches immediately when Spike emits numeric result.

## Spike full-model result — FAIL
`bash run_spike.sh > spike.log 2>&1`: exit1, timed invoke **864,621,908 functional cycles**, wall1:20.16,1000 finite logits,302/1000 fail unchanged CPU gate, max_abs5.85760915, RMSE.99290539, top1 **0 vs21**. Raw output hash30048da58c0fbec7786104fb4b56a9000286f31449e74840040dcdabd1da4fe3. `analyze.py spike.log spike` independently checks raw readback. Historical939,242,971 ratio.9205519 (7.945% lower), but incorrect result and different model assets mean NO valid speedup/acceptance claim.

F2 dispatched immediately at17:18UTC through `bash dispatch_fpga.sh > fpga-dispatch-a1.log 2>&1`, runId gemR-resnet50-20261027-a1, SSM53bcfe89-5c18-4eba-ac59-bb59a1e61a9b. Uploaded ELF SHA25628c7afcf83f71018...; full hash in manifest. Required ddr3llc60MHz config confirmed before dispatch. Numerical failure does not trigger infrastructure retry; FPGA result pending.

## Numerical failure localization (compiler evidence)
Final classifier emitted LLVM saved as classifier-lowering.ll. Workgroup ID is multiplied by8 (%24) and used to index only the bias quantization loop. Gemmini A/B/C addresses passed to LOOP_WS are derived from base %6/%10/%19 and fixed binding offsets; no %24-dependent tile offset reaches B or C, and B row stride is8 rather than full1000. Every8-column tile therefore writes the same first8 output bytes while using a different bias tile. This is concrete evidence of lost subview offsets/strides in bounded Gemmini lowering, consistent with first8 corrupted logits and744 zero outputs. It is a likely root cause, not proof that all earlier layers are correct or the only defect. No protected compiler modified; no successful numeric fix claimed. This explains why compile-only54/0 coverage did not establish correct execution.

## F2 FireSim result — executed, numerics FAIL
Run gemR-resnet50-20261027-a1 completed2026-10-27T17:36:10UTC on **f2_gemmini_rocket_ddr3llc_60mhz**, AGFI agfi-02410ef1a8461b435 (confirmed meta.json and HW_CFG_SUMMARY). Chipyard157dd69e49b9866be2bf8db390ee78bc38cd4438; FireSim e1bdea8bb042b900995436ecc3d7c44100eb9da0. Region us-east-1.

| Measurement | Result |
|---|---:|
| FPGA timed invoke rdcycle delta | **1,760,982,669** |
| Timed invoke at60MHz |29.34971115s target time|
| Emulation wall time (includes loading/startup/readback) |617.0s|
| FMR |1.01|
| Effective target frequency |59.395MHz|
| Total emulated cycles (NOT invoke latency) |36,647,104,202|
| Manager dispatch wall (started→finished) |1087s|
| Finite logits |1000/1000|
| Failed unchanged CPU gate |302/1000|
| Max absolute error / RMSE |5.85760915 / .99290539|
| Top1 |0 (required21)|
| FPGA readback bit-identical to Spike |**YES,1000/1000 raw words**|

Normalized UART with `replace(b"\r\n",b"\n")`; original preserved under fpga/, normalized fpga-uart-normalized.log. `analyze.py <uartlog> fpga` independently recovers raw4000-byte output, exact SHA25630048da58c0fbec7786104fb4b56a9000286f31449e74840040dcdabd1da4fe3, identical to Spike. CPU and optional integer oracle both differ. No tolerance widened, no golden switched.

Infrastructure completed successfully; SSM/meta exit0 means manager success, **NOT model acceptance**: UART target workload exits1/DATA_LOSS. No infrastructure failure and **zero retries**. run.log says0/1 instances running and terminaterunfarm complete. Final fpga-status removes gemR from active list (another agent's gemT remains active and is untouched). Own EC2 i-<redacted> is shutting-down, not running; ec2-final.json records independent check. Latest independent EC2 check2026-10-27T17:38:47UTC still reports shutting-down. Termination was requested by manager and own instance is NOT running; no other run was stopped. Terminal terminated state is not claimed.

## Deliverables and reproduction
ELF: resnet50-gemR.elf SHA256 **28c7afcf83f71018de20a8ed2af0ca2918b15241b6a26fe2da81d83e9ab4d4a6**. Deployable but **FAILED NUMERICS**, not an accepted model. All deliverables in gemR; snapshot/chipyard/other runs read-only.

Reproduce from gemR: `bash compile_model.sh > compile.log 2>&1`; `bash build_runtime.sh > build-final.log 2>&1`; `bash run_spike.sh > spike.log 2>&1`. Scripts pin source/tool paths/flags/affinity6. Golden conversion used protected smolVLA venv NumPy: `np.load('/home/loren/work/runs/fixK/models/resnet/output.npy').astype('<f4').tofile('golden.f32')`. Embed assembly contains exact absolute paths. `build_runtime.sh` copies final linked binary into deliverable. `dispatch_fpga.sh` is exact command used (do not reuse same runId for new paid run). analysis commands: smolVLA venv Python `analyze.py spike.log spike`, `analyze.py fpga/gemR-resnet50-20261027-a1/dispatch-gemR-resnet50-20261027-a10/uartlog fpga`.

Dependency recovery: `curl -L --fail --max-time 60 https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.18.tar.gz -o libiconv-1.18.tar.gz`; extracted/configured `./configure --prefix=/home/loren/work/runs/gemR/deps`, `taskset -c24-29 make -j6`, `make install`. Dtc downloaded with `apt-get download device-tree-compiler`, extracted with dpkg-deb into deps. GCC16.1.0 supplied toolchain; Clang23.0.0git RISC-V backend; compiler LLVM23.0.0git optimized assertions. CMake4.4.4/Ninja1.13.2 reused read-only fixC tools-env. Hash manifests cover input/export/golden/compiler/runtime helper/toolchain/ELF/results. Audit:1 runner invoke,2 runner rdcycle,0 RVV setup/load/store,396 assembly loop_ws textual mentions. Heap end0x899db000 and stack end0x8a1db000 are below0x90000000; no enlarged DRAM window needed.

**Outcome: end-to-end execution and FPGA comparison complete; numerical acceptance FAILS on both targets.** Lost tiled addresses/strides in emitted classifier are preserved as actionable compiler evidence. Spike cycle comparison939,242,971→864,621,908 is functional only; no hardware speedup claim.
