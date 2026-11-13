STATUS: IN PROGRESS (2026-10-28 12:45 UTC) - all runs done except SmolVLA plain (f2-c) + trace (f2-a), whose single invoke is expected to take ~3.4 h of FireSim wall time (ends ~14:50-15:00 UTC; hard stop 15:28 by RUN_TIMEOUT)
NEEDS: none blocking. (Defaults taken; see Decisions.)

# F2 cycle campaign: three models + 16 kernels (Set A int8, Set B native dtype)

## Running now (11:30 UTC)
- f2-a: c1-zK-kprof-plain-rerun (calibration), r2-resnetfx-trace
- f2-b: r1-tiny-plain, r1-tiny-trace
- f2-c: r1-kernels-trace, r2-resnetfx-plain
- compute-1: SmolVLA RV64 compile (since 11:16)
- ResNet 1.85x vs old perfX 2.09G: the old fixW ResNet compile (fixW/resnet/compile.sh) did NOT pass kprofC's four precision flags
  (--iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false
  --iree-input-demote-f64-to-f32=false), which I applied to every compile. Same MLIR recompiled without them (apps/resnetfx, vmfb 5eede686...)
  gives a fused requant epilogue in e.g. dispatch_13 whose instruction histogram equals the old fixW one; dispatch set otherwise identical
  (97 vs 97 non-initializer dispatches, 54 Gemmini). r2-resnetfx-* measure it on F2 (controlled check).

## Decisions (defaults taken, Loren asleep)
1. Run path: b89be5a used fpga-run-elf -> firesim-manager + S3 upload (both forbidden for this task). Using the f2run stack already installed on merlin-p1-f2-{a,b,c}
   (/opt/f2run, FireSim-f2 driver, f2-exec slot locking). Probe of f2-a: AGFI agfi-02410ef1a8461b435 = f2_gemmini_rocket_ddr3llc_60mhz
   (same image as the b89be5a profile), driver bundle FRFCFS16GBQuadRankLLC4MB_BaseF2Config, 2 slots, RUN_TIMEOUT 14400 s. ELFs go compute-1 -> F2 over the VPC with ssh (no S3).
2. Models: the 16 kernel shapes are the kprofC/kprofM kernels of the IREE/Gemmini campaign, whose models are ResNet-50 INT8 (ONNX QDQ),
   TinyLlama-1.1B INT8 (torchao dyn-act/int8-weight, batch 1 seq 16, no KV cache) and SmolVLA INT8 (one denoise step). The Merlin SY_model_* capsules
   are compiled by Merlin's own whole_model_build (not the IREE/Gemmini backend), SY_model_tiny_llama is seq 8 (not 16) and SY_model_resnet50 is an
   f32 interface (int8 only in the classifier). => use the IREE-flow models (perfX/fixW recipe), re-exported tonight on compute-1 (originals live on iree-wh, not ours).
3. Compiler: exact fixW build-numerics iree-compile (same binary as the b89be5a profile; copied from garden), kprofC flag set (DIM16, 2048 bank rows, 512 acc rows, LOOP_WS, RV64GC, img2col preprocessing).
   Runtime: Merlin-IREE snapshot iree_bar runtime (bundle iree-latest), bare-metal local-sync, prebuilt clang-23, newlib from phase1-prep riscv-tools.
4. Batch: both ResNet-50 models in this flow are batch 1, so the b4 kernel shapes do not occur in-model; in-model rows use the shapes as they occur (b1) and say so.
5. Kernel conv: the direct linalg.conv_2d_nhwc_hwcf(_q) i8xi8->i32 named op fails in iree-global-opt-convert-conv2d-to-img2col
   ("'arith.addi' op requires the same type for all operands and results", addi(i8,i32)); kernels use explicit pad + im2col gather + i8 matmul (what that pass emits).
6b. b/c host edit: merlin-p1-f2-b/-c had the old 1 GiB-cap f2-exec and RUN_TIMEOUT 1800; replaced with f2-a's f2-exec (md5 7a7a6b45..., = tooling/merlin-p1/f2host/f2-exec) and RUN_TIMEOUT 14400 (backups f2-exec.pre-8gib, f2run.conf.pre-timeout on each host), so the 1.5 GB TinyLlama ELF can run there.
6. Kernel variant: Set A = raw i8 x i8 -> i32 (the profile's "A" variant). The requant-epilogue "B" variant of the old profile is not re-run.

## Results
(pending)

## Calibration (DONE)
c1-zK-kprof-plain-rerun: the exact b89be5a ELF (sha256 17c00bda..., zK-kprof-plain) re-run on merlin-p1-f2-a reproduces all 36 kernels' cold
AND warm cycle counts EXACTLY (0.000% delta on every case; calib/calib-compare.csv vs iree/results/kprofC/results-final/raw/plain/uartlog).
=> tonight's F2 host/driver/AGFI path is cycle-identical to the b89be5a profile's path; numbers are directly comparable.

## Second handback (forced by harness, ~11:35 UTC) - what remains
- In flight: f2-b r1-tiny-plain / r1-tiny-trace (TinyLlama context load alone = 21.7G cycles; invokes running), f2-c r1-kernels-trace + r2-resnetfx-plain,
  f2-a r2-resnetfx-trace. compute-1: SmolVLA compile (apps/smol/compile-smol.log).
- Finish: tools/sync; python3 src/collect.py .; python3 src/make_tables.py . (repeat as runs end).
  SmolVLA after compile RC 0: on compute-1 `python3 src/gen_app.py apps/smol smolvla_int8 module.main 2 0.001 0.001 --vmfb $W/apps/smol/model.vmfb`
  + 11 `--in models/smolvla/inputs/inputN.bin:<bf16|i1|i64|f32>:<shape>` per inputs.json + `--ref models/smolvla/pytorch.f32.bin`; touch apps/smol/payload.stamp;
  python3 src/classify_dispatches.py apps/smol/ir/*.s apps/smol/dispatch-classes.json; bash src/build_rt.sh plain smol; bash src/build_rt.sh trace smol;
  (ssh -A) bash src/f2submit.sh <free host IP> r1-smol-plain build-plain/smol.elf (and trace).
- Then confirm all three merlin-p1-f2-* STOPPED (idle timer = 30 min after last f2-exec; else `aws ec2 stop-instances --region us-east-1 --instance-ids i-<redacted> i-<redacted> i-<redacted>` from garden).

## ResNet controlled check (DONE, 11:30)
r2-resnetfx-*: same resnet50.q.int8.mlir compiled with the fixW ResNet flag set (no kprofC precision flags) -> cold invoke 2,088,074,157 cycles
(plain) / 2,088,696,169 (trace), instret 866,740,542 = old perfX FireSim 2,088,208,536 (-0.006%) and old Spike 866,737,398 instructions.
=> the 1.85x was ENTIRELY the four precision flags (they make the fused fp32 requant epilogues inside Gemmini dispatches exact-rounding and much
slower). Primary ResNet number = fixW recipe (resnetfx); the kprofC-flag build is kept as a second variant. Both pass the output gate (top-1 21).
TinyLlama/SmolVLA follow their fixW recipes, which DO pass those flags (fixW compile_numerics_model.sh).

## SmolVLA run expectation (12:45 UTC)
r1-smol-plain / r1-smol-trace started 11:28 UTC; context load done (load_cycles 5,265,698,402); the timed invoke prints nothing until it ends.
This is not a hang: the compiled program keeps all SmolVLA attention in fp32 on Rocket (288 batch_matmul_12x256x512x64_f32 vision dispatches +
30 VLM/expert ones; Set B measured fp32 batch_matmul at ~0.1 MAC/cycle). Vision attention alone is 36 x 2 x 12x1024x1024x64 = 58 G MACs
-> ~500 G cycles, so one invoke is ~550-650 G cycles = ~3.1-3.7 h at the measured ~49 MHz effective FireSim rate. Invoke 0 (cold) should
finish before RUN_TIMEOUT=14400 s (15:28 UTC); the 2nd (warm) invoke will be cut by that timeout (rc 124) and is reported as not measured.
