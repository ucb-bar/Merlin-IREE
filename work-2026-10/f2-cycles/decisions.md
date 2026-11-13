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
7. Model compile recipes follow fixW per model (ResNet: no precision flags; TinyLlama/SmolVLA: fixW numerics flags incl. the precision flags and --torch-pytorch-cpu-numerics with torch 2.10.0 libtorch_cpu.so). Kernels use the kprofC flag set (no fp epilogues, so the flags do not matter; calibration exact).
8. Model invokes: 1 cold + 1 warm per ELF; plain build for totals, PERFX trace build for per-dispatch intervals (trace overhead on totals <0.03%).
9. Attention in Set A: per-head rank-2 matmuls (kprofC form, Gemmini) are the primary rows; the linalg.batch_matmul int8 form compiles to Rocket scalar code and is listed as an extra.
10. kernel mm_gu_pair: runner CHECK flag 1 came from a closure bug in gen_kernels.py's expected checksum; fixed generator (verify/cases.fixed.json) equals the device checksums bitwise; MLIR/inputs unchanged.


## ResNet controlled check (DONE, 11:30)
r2-resnetfx-*: same resnet50.q.int8.mlir compiled with the fixW ResNet flag set (no kprofC precision flags) -> cold invoke 2,088,696,169 cycles
(plain) / 2,088,074,157 (trace), instret 866,737,786 (plain) = old perfX FireSim 2,088,208,536 (+0.02%) and old Spike 866,737,398 instructions.
=> the 1.85x was ENTIRELY the four precision flags (they make the fused fp32 requant epilogues inside Gemmini dispatches exact-rounding and much
slower). Primary ResNet number = fixW recipe (resnetfx); the kprofC-flag build is kept as a second variant. Both pass the output gate (top-1 21).
TinyLlama/SmolVLA follow their fixW recipes, which DO pass those flags (fixW compile_numerics_model.sh).


## SmolVLA outcome (FAILED: timeout, recorded)
- r1-smol-plain (f2-c, slot 1, ELF sha256 3230671075798be3...) and r1-smol-trace (f2-a, slot 0, ELF 51a8d79de44c38e2...), both 11:28 -> 15:29 UTC,
  rc 124: `f2-exec: wall timeout 14400s on slot N; reflashing it` / `f2-exec: slot N rc 124` (runs/r1-smol-*/driver.err).
- Model context load completed (load_cycles 5,265,698,402 plain / 5,265,934,231 trace); the timed invoke 0 never completed, so NO SmolVLA cycle count
  was measured. The driver was killed, so there is no 'Target Cycles Emulated' line. Rough lower bound (ESTIMATE ONLY, not in any cycles column):
  14,400 s wall x the 48.9-57 MHz effective rates of tonight's other runs => the invoke exceeds roughly 0.65-0.8 T target cycles.
- Root cause (from the compiled program, apps/smol/dispatch-classes.json): only the 443 int8 linear matmuls run on Gemmini; ALL attention stays fp32 on
  Rocket scalar code (288 x batch_matmul_12x256x512x64_f32 in the vision tower = 36 SDPA x tiles, plus 23 VLM/expert batch_matmuls), and the patch conv is fp32.
  Set B measures fp32 batch_matmul at ~0.1 MAC/cycle on Rocket; vision attention alone is ~58 G MACs. My 3.1-3.7 h estimate was too low.
- Not rerun (default; see NEEDS). ELFs remain on compute-1: build-plain/smol.elf, build-trace/smol.elf; vmfb dcd6273ae215fd49...
