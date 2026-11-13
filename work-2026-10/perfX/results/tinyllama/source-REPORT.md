# TinyLlama INT8 performance — agent TL

2026-10-27 UTC. Work isolated to `/home/loren/work/runs/perfTL`. Required reports read. No protected directory changed. Budget CPUs 0–27, build -j28; Spike two single-core tasks. Corrected merged N+W VMFB copied from perfX, no model compilation or tolerance changes. Gate atol=rtol=1e-3 vs protected quantized PyTorch; also require exact CPU-golden and existing Spike payload identity.

Copied perfX instrumented runtime, runner with static 16 MiB full stdout buffering, payloads, assembly, plotting/finalization pipeline. Build commands: `bash build.sh plain > build-plain.log 2>&1`, `bash build.sh trace > build-trace.log 2>&1`. Builds pending. No F2 submission yet.

2026-10-27T21:33:21.447544+00:00 Both builds PASS. Full Spike launched in parallel: `bash run_spike.sh tinyllama plain 0 > tinyllama/spike-plain-TL.log 2> tinyllama/spike-plain-TL.stderr` and trace CPU1 equivalent. Tool sessions plain/trace retained. Artifact hashes in artifact-manifest.json. Locked FsimRunElf document has no loader selection (saved locked-dispatch.json); standard load path retained. No F2 yet.

Verification command after both Spike runs finish: `OPENBLAS_NUM_THREADS=1 PYTHONDONTWRITEBYTECODE=1 taskset -c 2 /home/loren/work/runs/perfX/venv/bin/python verify.py`. Source/output/VMFB remain copied locally; perfX Python environment used read-only. Own Spike sessions 47890/98143. Build session81226. Initial F2 check: one registered active run, hw_config correct; fresh checks required at submission. No model code or arithmetic changed.

21:36 UTC: both Spike tool sessions still running; startup banners only. Full buffering means no incremental trace/output is expected during invoke. No hardware result or acceptance inferred.

2026-10-27T21:38:19.917869+00:00 Full buffered Spike plain AND trace PASS, exact output identity vs CPU golden and previous Spike, unchanged PyTorch gate. [{"model": "tinyllama", "kind": "spike-plain", "top1_matches": 16, "top1_total": 16, "source": "/home/loren/work/runs/perfTL/tinyllama/spike-plain-TL.log", "cycles": 4751658908, "seconds_60MHz": null, "numerics": "PASS", "failed_elements": 0, "finite_elements": 512000, "max_abs": 2.288818359375e-05, "rmse": 2.1938664308687575e-06, "atol": 0.001, "rtol": 0.001, "reference": "/home/loren/work/runs/perfTL/tinyllama/pytorch-reference.npy", "output_sha256": "bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39", "dispatch_count": null, "gemmini_dispatches": null, "scalar_dispatches": null, "gemmini_dispatch_cycles": null, "scalar_dispatch_cycles": null, "unattributed_cycles": null, "gemmini_busy_percent_estimate": null, "scalar_dispatch_percent": null, "gemmini_algorithmic_macs": null, "gemmini_mac_util_percent_estimate": null, "overall_mac_util_percent_estimate": null}, {"model": "tinyllama", "kind": "spike-trace", "top1_matches": 16, "top1_total": 16, "source": "/home/loren/work/runs/perfTL/tinyllama/spike-trace-TL.log", "cycles": 4751696797, "seconds_60MHz": null, "numerics": "PASS", "failed_elements": 0, "finite_elements": 512000, "max_abs": 2.288818359375e-05, "rmse": 2.1938664308687575e-06, "atol": 0.001, "rtol": 0.001, "reference": "/home/loren/work/runs/perfTL/tinyllama/pytorch-reference.npy", "output_sha256": "bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39", "dispatch_count": 1457, "gemmini_dispatches": 154, "scalar_dispatches": 1303, "gemmini_dispatch_cycles": 418163378, "scalar_dispatch_cycles": 4331009607, "unattributed_cycles": 2523812, "gemmini_busy_percent_estimate": 8.800295891438378, "scalar_dispatch_percent": 91.14659019772469, "gemmini_algorithmic_macs": 15502147584, "gemmini_mac_util_percent_estimate": 14.481245174942124, "overall_mac_util_percent_estimate": 1.2743924241595501}]
Spike Gantt preview is functional cycles, not hardware latency.

2026-10-27T21:38:32.654468+00:00 Dispatched buffered pair concurrently via `FSIM_REGION=us-east-1 FSIM_RESULTS_DIR=/home/loren/work/runs/perfTL/fpga fpga-run-elf --max-hours 6 --run-id zTL-tinyllama-{plain,trace} build-{plain,trace}/tinyllama.elf`. Capacity before pair: physical 1, registered 2. No retry. ETA roughly 75–110 minutes from dispatch, dominated by standard TSI model load; six-hour hard cap.

2026-10-27T21:38:33.749859+00:00 Full buffered Spike plain AND trace PASS, exact output identity vs CPU golden and previous Spike, unchanged PyTorch gate. [{"model": "tinyllama", "kind": "spike-plain", "top1_matches": 16, "top1_total": 16, "source": "/home/loren/work/runs/perfTL/tinyllama/spike-plain-TL.log", "cycles": 4751658908, "seconds_60MHz": null, "numerics": "PASS", "failed_elements": 0, "finite_elements": 512000, "max_abs": 2.288818359375e-05, "rmse": 2.1938664308687575e-06, "atol": 0.001, "rtol": 0.001, "reference": "/home/loren/work/runs/perfTL/tinyllama/pytorch-reference.npy", "output_sha256": "bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39", "dispatch_count": null, "gemmini_dispatches": null, "scalar_dispatches": null, "gemmini_dispatch_cycles": null, "scalar_dispatch_cycles": null, "unattributed_cycles": null, "gemmini_busy_percent_estimate": null, "scalar_dispatch_percent": null, "gemmini_algorithmic_macs": null, "gemmini_mac_util_percent_estimate": null, "overall_mac_util_percent_estimate": null}, {"model": "tinyllama", "kind": "spike-trace", "top1_matches": 16, "top1_total": 16, "source": "/home/loren/work/runs/perfTL/tinyllama/spike-trace-TL.log", "cycles": 4751696797, "seconds_60MHz": null, "numerics": "PASS", "failed_elements": 0, "finite_elements": 512000, "max_abs": 2.288818359375e-05, "rmse": 2.1938664308687575e-06, "atol": 0.001, "rtol": 0.001, "reference": "/home/loren/work/runs/perfTL/tinyllama/pytorch-reference.npy", "output_sha256": "bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39", "dispatch_count": 1457, "gemmini_dispatches": 154, "scalar_dispatches": 1303, "gemmini_dispatch_cycles": 418163378, "scalar_dispatch_cycles": 4331009607, "unattributed_cycles": 2523812, "gemmini_busy_percent_estimate": 8.800295891438378, "scalar_dispatch_percent": 91.14659019772469, "gemmini_algorithmic_macs": 15502147584, "gemmini_mac_util_percent_estimate": 14.481245174942124, "overall_mac_util_percent_estimate": 1.2743924241595501}]
Spike Gantt preview is functional cycles, not hardware latency.

21:40 UTC: both actual SSM submissions confirmed at21:38:51 UTC. Plain command3ad58568-c811-4ed0-bfc9-487a733a9f80; trace3a950185-3f99-4339-a62f-0ef05391041a. Both InProgress. Exact run IDs zTL-tinyllama-plain / zTL-tinyllama-trace. ETA22:55–23:30 UTC, load-rate estimate only; max-hours6. Prepair registry2, physical inventory saved instances-before-pair.json. No retry. Spike Gantt visually inspected; legend and footnote have reserved margins; preview axis explicitly functional cycles and no seconds conversion.

21:42 UTC: independently extracted/hash-streamed vmfb_payload_start..end from the exact original perfX/build-plain/tinyllama.elf PT_LOAD; SHA256 matches private copied VMFB. vmfb-identity.json records addresses/bytes/hash. No compiler invocation for model. F2 still pending.

21:46 UTC: direct SSM get-command-invocation queries confirm both InProgress/ResponseCode -1, no completed UART/measurements yet. No retries. Own finalizer session43169, pair wrapper session59991. Read-only progress S3 run.log is not yet published (404 retained in plain-progress.stderr); that is not evidence of infrastructure failure.

21:53 UTC: both submitted commands remain InProgress. EC2 health snapshot confirms own instances i-<redacted> (plain), i-<redacted> (trace) each system/instance checks ok. No completed manager log published yet; no infrastructure failure established, no retry. Numerical gates remain unchanged. Spike largest interval is scalar FP32 final output head3,868,279,519 functional cycles; not a hardware timing claim.

21:57 UTC: protected reference identity confirmed directly: tinyllama2/int8/reference.npy and local tinyllama/pytorch-reference.npy SHA256f2cfc88514119288cde7b57a96b02aeb1bb1d25496c41a4f9b8a3d0b6fbf77f9. Evidence protected-reference-identity.json. Both own EC2s remain running; no hardware result yet.

22:01 UTC: both original SSM commands remain InProgress/ResponseCode-1; no TL infrastructure failure, no retry. Hardware result fields remain pending. All local numerical checks passed with original tolerances. Waiting on standard locked loader/run completion.

22:07 UTC: plain/trace original submissions still InProgress; no completed S3 run log for trace either. No retry, no extra F2. Finalization pipeline remains waiting; no hardware cycles or numerics claimed from status alone.

22:11 UTC: both original F2 commands remain InProgress. Fresh EC2 health checks both ok/ok. Waiting; no observed failure and no retry. No loaded/invoke progress inferred from elapsed time. Own finalization and cleanup verification remain required.

22:16 UTC: direct SSM refresh both InProgress/ResponseCode-1. Still awaiting hardware output. No failure, retry, extra submission, or model/gate/reference modification. ETA remains estimated, not observed progress.

22:21 UTC: own-instances-latest.json confirms both own EC2s running; both SSM wrappers still InProgress. No phase progress inferred, no retry. Awaiting returned numerical/timing/trace artifacts before acceptance. Both six-hour hard caps remain in force.

22:26 UTC: direct SSM status refresh both InProgress/-1. Neither returned artifact set yet. No retry or additional submission; await completion and cleanup. Numerical acceptance is pending on F2, not inferred from successful Spike or EC2 state.


22:35 UTC resumed-session update. Reused both original submissions; no redispatch. Confirmed SSM command IDs against the recorded manager i-<redacted>; both remain InProgress/ResponseCode -1 at 22:35:02 UTC. Their own f2.6xlarge instances were still running in the last inventory (i-<redacted> plain; i-<redacted> trace), and fpga-status showed the global cap full at four, including two other agents. No completion artifacts or hardware values are available yet. Direct S3 listing is denied for this caller; no artifact files were copied, and no failure is inferred from that access limit. Will collect through the locked runner result path once SSM finishes.

Spike-trace finalization preview completed in this session: generated results/tinyllama/gantt.{png,svg} from the existing validated Spike trace JSON, then visually inspected the PNG. Legend and footnote have separate bottom margins; F2 finalizer can redraw directly from the FireSim trace. Updated summary remains explicit that FireSim measurements/numerics are pending. This generation command used perfX Python read-only, taskset CPU 1, OPENBLAS_NUM_THREADS=1, and local MPLCONFIGDIR.

22:37 UTC poll: both original manager SSM invocations remain InProgress/ResponseCode -1, with no execution start/end timestamp exposed yet. Own F2 instances are still running (both launched 21:39:11 UTC). Exact-key S3 HeadObject probes for `run.log`, `meta.json`, and `uartlog` return 404, so no run artifacts have been published at those keys yet. No retry, replacement submission, instance termination, or result inference.

22:40 UTC global-cap note: a fresh `fpga-status` unexpectedly reports six active runs (the four previously listed plus zSM3-smolvla-plain and zSM3-smolvla-trace, launched 22:38 UTC). This exceeds the shared MAX_F=4 limit due to activity outside this directory. I submitted no additional runs and will not terminate or interfere with another agent's F2s. My two pre-existing TinyLlama runs remain InProgress; monitoring and collection only.
22:41 UTC cross-check: AWS EC2 inventory for pending/running f2.* shows exactly four physical instances: this agent's two TinyLlama instances and zSM3-smolvla plain/trace (both owned outside this directory). The other two entries counted by `fpga-status` (zSM-smolvla-plain-retry1 and zSM-smolvla-trace) are registry entries without matching running EC2 instances, so the physical cap is currently at four, not six. No action taken on other agents' runs.
22:44 UTC: both original SSM invocations still InProgress/ResponseCode -1; own instances remain running. No `run.log` artifact is published yet. This is still within the expected ~75–110 minute ETA from dispatch and the six-hour limit. No failure, numerical outcome, or hardware cycle count inferred.
22:49 UTC: both jobs still InProgress, their two own EC2 instances still running, and exact `run.log` keys remain unpublished. Elapsed time from dispatch is ~71 minutes. No evidence of model failure or infrastructure failure; no retry allowed/attempted.

## FireSim plain result — PASS
Completed 2026-10-27T22:52:50Z (manager SSM exit 0; run.log confirms 0/1 instances running and successful FireSim exit). Plain artifacts collected from `s3://fsim-artifacts-<AWS_ACCOUNT_ID>/firesim-runs/zTL-tinyllama-plain/` into `fpga/zTL-tinyllama-plain/`; meta ELF SHA256 matches local ELF `42810cb48e55a4662fec71ed0fcec98d584c47bc8edc4e4b1d1bb019035523f8`, hw_config is correct. FireSim timed-invoke delta **13,362,634,591 cycles** (222.7106 target seconds at 60MHz); total target cycles emulated **244,218,467,537** (includes boot/setup/output/teardown, not invoke); FMR 1.04; emulation wall time 4,244.8s. Plain numerical gate PASS: 512,000/512,000 finite, 0 failed at unchanged atol=rtol=1e-3 vs protected CPU reference, max_abs 2.288818359375e-05, RMSE 2.1938664308687575e-06, 16/16 top-1 matches. Raw FPGA output SHA256 `bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39`, bit-identical to both Spike outputs and CPU golden. Plain F2 instance i-<redacted> entered shutting-down at 22:52:44Z per EC2; still checking for terminal cleanup. Trace SSM invocation remains InProgress at 22:53 UTC; no trace output/cycles/numerics/utilization claimed yet.

## Resumed F2 pair finalized (2026-10-27 UTC)

The pre-existing SSM invocations completed successfully; no command was
redispatched. Run artifacts were downloaded from their existing S3 prefixes and
`finish_run.py tinyllama {plain,trace} zTL-tinyllama-{plain,trace}` validated
ELF provenance and the unchanged TinyLlama FP32/INT8 contract. Both FireSim runs
PASS: 0/512,000 failures, all finite, max_abs=2.288818359375e-05,
RMSE=2.1938664308687575e-06, top-1 16/16. Plain cycles 13,362,634,591;
trace cycles 13,360,147,904. Outputs are bitwise equal across plain, trace, and
admitted Spike output (SHA256 `bdbd364bbf947b0d52bdd0c8be9a1740bab2a46d1db3d3ef456f986431877a39`).

Trace parsed 1,457 dispatches (154 Gemmini / 1,303 Rocket scalar), with
1,585,375,842 Gemmini dispatch cycles, 11.86645427% Gemmini dispatch occupancy
estimate, 3.81961566% Gemmini algorithmic MAC utilization estimate, and
0.45325295% overall MAC utilization estimate. These are software interval/MAC
estimates, not hardware busy counters. The observed trace-minus-plain cycle
difference is -0.01860926%; it is run-to-run variation, not a speedup claim.
Gantt artifacts: `results/tinyllama/gantt.png` and `.svg`; per-run numerical,
provenance, simulator, output, UART and dispatch records are under
`results/tinyllama/`. Aggregates are in `results/summary.{csv,json,md}`. No
instance shutdown was issued.
