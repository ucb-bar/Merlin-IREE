# All-INT8 kernel profile on FireSim Gemmini: final results

Files: kernels.md (tables + interpretation), kernels.csv (original columns unchanged + trace-derived columns appended), kernels_trace_split.csv (36 kernels, per-kernel trace splits, cold and warm), kernels.png/svg (warm cycles A vs B, MAC % of peak, log scales), kernels_split.png/svg (Gemmini / Rocket / outside split), dispatches.csv (every dispatch interval, Spike and FireSim), parsed.json, hardware-status.json, raw/ (both uartlogs and meta.json), README-repro.md (original harness/reproduction notes), final_*.py (derivation scripts, run in this order: summarize.py in the parent dir, final_analyze.py, final_build.py, final_md.py).

## Provenance
- Plain run: zK-kprof-plain, ELF sha256 17c00bda23eb0225cc5499fcdad3e78ba6535b9ec874d5ed12160a973e12b2dd, 2026-10-28 05:05-05:13 UTC, exit 0. Authoritative for all timing.
- Trace run: zK-kprof-trace, ELF sha256 e5764057b338d3fae3dbeb3df6478adb5d2f33a1630e47b9fd80259701872b4c, 2026-10-28 05:15-05:27 UTC, exit 0. Source of per-dispatch intervals only (uartlog retrieved from s3://fsim-artifacts-<AWS_ACCOUNT_ID>/firesim-runs/zK-kprof-trace/).
- Hardware: f2_gemmini_rocket_ddr3llc_60mhz, AGFI agfi-02410ef1a8461b435 (both meta.json confirm it), chipyard 157dd69e49b9866be2bf8db390ee78bc38cd4438, firesim e1bdea8bb042b900995436ecc3d7c44100eb9da0. Gemmini DIM16, 2048 bank rows, 512 accumulator rows, LOOP_WS, 256 MAC/cycle peak.
- Compiler: /home/loren/work/runs/fixW/build-numerics/tools/iree-compile sha256 6394f9d7889cf24f1d6a5de8a835ed3cc7d3e19696c84b1e019163e2ded766ad (fixW merged compiler fixes, patch sha256 80696ecd...). RV64 flags: llvm-cpu, riscv64-unknown-elf, lp64d, +m,+a,+f,+d,+c, link-embedded, gemmini plugin (--iree-gemmini-enable, use-loop-ws, dim=16, bank-rows=2048, acc-rows=512), data tiling and ukernels off, preprocessing conv->channels-last, quantized-conv-to-conv, conv2d-to-img2col. Full command: logs/compile-rv.command.json; hashes of VMFB, runner.c, cases.json, kernels.mlir in provenance.json.
- Method: one cold + five warm iree_vm_invoke per kernel, rdcycle interval, resident inputs; 36 executed cases; plain and trace both report CHECK 0 for all 36 (bitwise vs NumPy), KPROF_DONE 0.

## Verification done in this final stage
- Trace uartlog parsed (CRLF stripped): 216 PERFX_TRACE records (36 kernels x 6 invokes), all dropped=0, all dispatches classified Gemmini or Rocket (0 unknown).
- Measured plain numbers (cold/warm/min/max) in kernels.csv were recomputed and are unchanged from the earlier plain-only results; only columns were added.
- Trace vs plain invoke cycles: warm median +0.09% (range -0.43% to +2.41%), cold median +0.06% (range -0.30% to +1.18%).
- Spot checks of 5 table values against raw uartlog CASE and PERFX lines all match (see end of kernels.md).
- Software intervals, not hardware counters. Gemmini-class dispatches can contain fused scalar work. mm_gu_pair rows are derived 2x sums. Prior note in provenance.json "AGFI_verification: pending" is resolved: both meta.json state agfi-02410ef1a8461b435.
