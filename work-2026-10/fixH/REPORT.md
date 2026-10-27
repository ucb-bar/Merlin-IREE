# Agent H — residual SmolVLA BF16 investigation

2026-10-27 UTC. Read required top-level report, SPEC.md, TinyLlama report and fixA report. Work restricted to this directory; protected trees and other agents' directories read-only. CPU affinity 80–95, 16 threads. Existing smolvla venv read-only; bundled compiler/runtime. No tolerance changes: all 1600 outputs must be finite and satisfy abs(actual-reference)<=0.001+0.001*abs(reference). Full BF16 unquantized compute is required.

Starting graph: ../fixA/bf16-inline.mlir (scalar numeric mapping corrected; 194 byte-preserving resource substitutions). fixA establishes valid first masks and finite first vision attention but full model still has 1600 NaNs, even under strict arithmetic flags. Investigating dependency slices further down. Commands/scripts/logs retained here. env.sh sets thread/cache variables; compile.sh applies taskset and 16 compiler threads. No compiler rebuild.

## Reproduction commands

From /home/loren/work:
```bash
source runs/fixH/env.sh
taskset -c 80-95 "$PY" "$R/slice_mlir.py" runs/fixA/bf16-inline.mlir "$R/coarse.mlir" '%597,%987,%1379,%1578,%1580,%1581' > "$R/coarse-slice.log"
bash "$R/compile.sh" "$R/coarse.mlir" "$R/coarse.vmfb" > "$R/coarse-compile.log" 2>&1
taskset -c 80-95 "$PY" -u "$R/reference.py" > "$R/reference.log" 2>&1
```
First reference controls complete: repeated 16-thread execution and 1/8 threads each match saved PyTorch BF16 output bitwise, all 1600 finite. Hooks saved for each camera's vision attention/MLP and connector. Higher precision control pending. Coarse compilation pending; `%987` is a scalar checkpoint (second connector is `%988`, corrected in next slice). Compiler/version files saved locally.

## BF16 reference controls and first residual defect

reference-results.json: 16-thread repeat and 1/8-thread runs are bitwise identical to saved PyTorch BF16, zero gate failures. Higher precision control first rounds checkpoint to BF16 (same weights), then promotes model/float inputs to double, retaining model's explicit FP32 casts. All four BF16 runs vs that control: max_abs=0.6979563409345815, RMSE=0.09698150554301542, 1550/1600 outside original gate. This is substantial deterministic BF16 rounding error, **not run-to-run variance**, and does not justify changing compiler-vs-BF16 acceptance.

Coarse dependency slice: `%597` first camera scaled connector and `%1379` third camera scaled connector all finite (61440 each). First language raw logits `%1578`, masked logits `%1580`, and observed FP32 softmax `%1581` all finite (1270215 each). Exposing the FP32 softmax itself prevents a single-use rewrite and thus can hide the defect described below; casts/matmuls are separately checked.

Minimal reproducer softmax-probe.mlir takes FP32 [1,4,4] logits and bool mask, applies where(mask,x,FP32-min), FP32 softmax, then BF16 output cast. First row all masked. PyTorch semantics give uniform [0.25]*4. Bundled compiler gives four NaNs. Strict flags (numeric precision reduction false, FP reduction reassociation false, skip intermediate roundings false) give the same NaNs. Commands in probe-command.json and probe-ir.log command below. Local explicit stable FP32 decomposition gives [0.25]*4 and all 16 finite (probe-results.json).

Exact defective source under snapshot (read-only): third_party/iree_bar/third_party/torch-mlir/lib/Dialect/Torch/Transforms/DecomposeComplexOps.cpp, `FoldSoftmaxIntConvertElementTypeOp` (~2535–2598), and `DecomposeAtenSoftmaxIntOp` fast path (~2617–2670). Both move a trailing f32->bf16/f16 cast **before** the FP32 softmax and perform softmax in low precision. This changes semantics, rounds FP32 minimum to BF16 -Inf, and produces -Inf - -Inf for fully masked rows. It is independent of backend numeric precision flags. probe-ir.log shows the first change at DecomposeComplexOps: f32 where -> bf16 cast -> bf16 max/sub/exp/sum/div. Correct fix is to preserve original FP32 softmax compute and trailing cast (remove/guard both fast paths); no compiler rebuild here.

Run-local rewrite_softmax.py replaces the 24 explicit FP32 softmax ops with stable FP32 max/sub/exp/sum/div, preserving each original BF16 boundary cast. This matches the original exported operation's math and precision; it does not promote the BF16 model globally. Original BF16 weights, linears and vision SDPA remain unchanged. Full compile pending.

Additional exact commands:
```bash
TARGETS=$("$PY" "$R/make_checkpoints.py")
taskset -c 80-95 "$PY" "$R/slice_mlir.py" runs/fixA/bf16-inline.mlir "$R/softmaxes.mlir" "$TARGETS" > "$R/softmaxes-slice.log"
bash "$R/compile.sh" "$R/softmaxes.mlir" "$R/softmaxes.vmfb" > "$R/softmaxes-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/slice_mlir.py" runs/fixA/bf16-inline.mlir "$R/first-language.mlir" '%1585,%1746,%1834' > "$R/first-language-slice.log"
bash "$R/compile.sh" "$R/first-language.mlir" "$R/first-language.vmfb" > "$R/first-language-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/run_slice.py" first-language > "$R/first-language-run.log" 2>&1
bash "$R/compile.sh" "$R/softmax-probe.mlir" "$R/softmax-probe.vmfb" > "$R/softmax-probe-compile.log" 2>&1
taskset -c 80-95 "$BIN/iree-compile" "$R/softmax-probe.mlir" --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --mlir-print-ir-after-all -o "$R/probe-strict.vmfb" > "$R/probe-ir.log" 2>&1
taskset -c 80-95 "$PY" "$R/rewrite_softmax.py" "$R/softmax-probe.mlir" "$R/probe-fixed.mlir" > "$R/probe-rewrite.log"
bash "$R/compile.sh" "$R/probe-fixed.mlir" "$R/probe-fixed.vmfb" > "$R/probe-fixed-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/rewrite_softmax.py" runs/fixA/bf16-inline.mlir "$R/bf16-softmax.mlir" > "$R/rewrite-softmax.log"
bash "$R/compile.sh" "$R/bf16-softmax.mlir" "$R/bf16-softmax.vmfb" > "$R/compile-bf16-softmax.log" 2>&1
```
Slice helper adapted locally to handle comma-separated SSA results (min.dim). Initial attempted `%1835` target was a list rather than tensor and failed before compile; corrected to `%1834`. No graph math changed by slicing.

## First residual nonfinite operation confirmed

first-language-stats.json: without observing the FP32 softmax, first language attention `%1585` has 38400/279360 NaNs (40 query rows x 15 heads x 64); next attention `%1746` and cross-attention `%1834` are entirely NaN. Replaying exact compiled masked logits `%1580` in softmax-fullshape.mlir isolates first nonfinite at `%1581` lowered via its single BF16 cast `%1582`: 174600 NaNs in probabilities, exactly 600 fully masked head/query rows x 291 keys. PyTorch on these identical logits is all finite, uniform masked-row BF16 probability 0.0034332275390625 (rounded 1/291). first-nonfinite.json records exact coincidence of masked and NaN rows. This independently excludes upstream weights/constant handling as the cause of these NaNs.

All 24 observed FP32 softmax checkpoints are finite (softmaxes-stats.json); observation disables the erroneous single-use cast fold. This is an instrumentation effect, not a contradiction. The standalone full-shape replay retains the original single-use pattern.

## Full softmax fix removes NaNs, gate still fails

`taskset -c 80-95 "$PY" "$R/validate.py" bf16-softmax /home/loren/work/runs/fixA/bf16.mlir.reference bf16 > "$R/validate-bf16-softmax.log" 2>&1`: all 1600 finite, **1022 failures**, max_abs 0.0625, RMSE 0.0109294951. Exact runtime command in bf16-softmax-command.json. Gate unchanged.

GELU correction build: rewrite_gelu.py adapted from fixA with correct beta and FP32 kernel intermediate math for BF16 input/output (as PyTorch's fused BF16 GELU does). All 36 GELUs rewritten. `bf16-softmax-gelu` full validation: all 1600 finite, **1085 failures**, max_abs 0.109375, RMSE 0.0115657272. This change alone does not repair remaining BF16 kernel errors.

First vision detailed slice and PyTorch hooks show initial convolution differs in 57/786432 values, max 0.001953125, RMSE 4.33247e-6; embeddings differ 19 values. At first layernorm error rises to max 0.0625 / RMSE 0.002527 / 365244 different values. Snapshot DecomposeAtenNativeLayerNormOp (~8157 onward in same file) computes reductions, centering, variance, reciprocal square root and affine in BF16, whereas PyTorch CPU uses FP32 kernel intermediates. DecomposeAtenLinearOp emits BF16 matmul rounded before bias addition; PyTorch fused bias linear accumulates/adds before rounding. These additional rounding paths are being investigated separately from the now-fixed NaNs.

Diagnostic rewrite_accum.py uses FP32 internal math for 75 layer norms, 221 bias linears, 36 SDPAs and 33 SiLUs, with **original BF16 inputs/outputs and weights retained** and a BF16 cast at every original operator boundary. Non-bias BF16 linears are unchanged. This is an explicit diagnostic of PyTorch kernel accumulation semantics, not a globally FP32 model or an accepted replacement yet. front-opmath-comparisons.json shows first norm RMSE drops from 0.002527 to 0.0000353; first attention output RMSE drops from 0.005832 to 0.0002106. Residual early convolution differences and operation association remain. Full-model diagnostic compile pending.

## Additional commands and controls

```bash
taskset -c 80-95 "$PY" "$R/test_probe.py" > "$R/test-probe.log" 2>&1
bash "$R/compile.sh" "$R/softmax-fullshape.mlir" "$R/softmax-fullshape.vmfb" > "$R/softmax-fullshape-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/check_first_nonfinite.py" > "$R/check-first-nonfinite.log" 2>&1
taskset -c 80-95 "$PY" "$R/reference_front.py" > "$R/reference-front.log" 2>&1
taskset -c 80-95 "$PY" "$R/slice_mlir.py" runs/fixA/bf16-inline.mlir "$R/front-detail.mlir" '%19,%48,%63,%66,%83,%89,%94,%97,%98,%101' > "$R/front-detail-slice.log"
bash "$R/compile.sh" "$R/front-detail.mlir" "$R/front-detail.vmfb" > "$R/front-detail-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/run_slice.py" front-detail > "$R/front-detail-run.log" 2>&1
taskset -c 80-95 "$PY" "$R/compare_front.py"
taskset -c 80-95 "$PY" "$R/rewrite_gelu.py" "$R/bf16-softmax.mlir" "$R/bf16-softmax-gelu.mlir" > "$R/rewrite-gelu.log"
bash "$R/compile.sh" "$R/bf16-softmax-gelu.mlir" "$R/bf16-softmax-gelu.vmfb" > "$R/compile-bf16-softmax-gelu.log" 2>&1
taskset -c 80-95 "$PY" "$R/validate.py" bf16-softmax-gelu /home/loren/work/runs/fixA/bf16.mlir.reference bf16 > "$R/validate-bf16-softmax-gelu.log" 2>&1
taskset -c 80-95 "$PY" "$R/rewrite_accum.py" "$R/bf16-softmax-gelu.mlir" "$R/bf16-opmath.mlir" > "$R/rewrite-opmath.log"
taskset -c 80-95 "$PY" "$R/slice_mlir.py" "$R/bf16-opmath.mlir" "$R/front-opmath.mlir" '%19,%48,%63,%66,%83,%89,%94,%97,%98,%101' > "$R/front-opmath-slice.log"
bash "$R/compile.sh" "$R/front-opmath.mlir" "$R/front-opmath.vmfb" > "$R/front-opmath-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/run_slice.py" front-opmath > "$R/front-opmath-run.log" 2>&1
taskset -c 80-95 "$PY" "$R/compare_front_opmath.py" > "$R/front-opmath-compare.log"
bash "$R/compile.sh" "$R/bf16-opmath.mlir" "$R/bf16-opmath.vmfb" > "$R/compile-bf16-opmath.log" 2>&1
taskset -c 80-95 "$PY" "$R/validate.py" bf16-opmath /home/loren/work/runs/fixA/bf16.mlir.reference bf16 > "$R/validate-bf16-opmath.log" 2>&1
taskset -c 80-95 "$PY" "$R/kernel_controls.py" > "$R/kernel-controls.log" 2>&1
taskset -c 80-95 "$PY" "$R/kernel_controls_sdpa.py" > "$R/kernel-controls-sdpa.log" 2>&1
taskset -c 80-95 "$PY" "$R/opmath_control.py" > "$R/opmath-control.log" 2>&1
taskset -c 80-95 "$BIN/iree-compile" "$R/bf16-opmath.mlir" --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=16 --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false -o "$R/bf16-opmath-strict.vmfb" > "$R/compile-bf16-opmath-strict.log" 2>&1
```

Full `bf16-opmath` diagnostic: all 1600 finite, **993 gate failures**, max_abs 0.03125, RMSE 0.0088332323. It is not an accepted fix. Kernel controls explain one limit of this diagnostic: on identical first-attention inputs, PyTorch BF16 SDPA vs FP32 SDPA cast back to BF16 differs in 158648/786432 values (RMSE 0.0001246864, max 0.0078125). An explicit FP32 softmax with BF16 probabilities is worse (218502 different, RMSE 0.0002564795), so merely choosing a different probability dtype is not an exact reconstruction of the native BF16 kernel. This is deterministic algorithm/rounding sensitivity, not random variance. All figures retained in kernel-controls-sdpa.json. First layernorm BF16 kernel vs equivalent FP32 kernel cast back differs in just 33 values (RMSE 0.00001847); compare original compiler's 365244 differences. Norm low-precision intermediates are a real additional discrepancy, but fixing them does not establish full-model agreement.

softmax-source-proposal.patch removes both unsafe cast-before-softmax fast paths and their registration. It is a **source proposal**, not a rebuilt/tested compiler patch; executable run-local fix is rewrite_softmax.py, tested with bundled compiler. reproduce_softmax_fix.sh reproduces finite full BF16 output and intentionally exits 2 on its residual gate failure.

## Strict arithmetic and native attention controls

`bf16-opmath-strict` compiled and ran successfully against the **protected reference named by SPEC.md**: all 1600 finite, 993 failures, max_abs 0.03125, RMSE 0.0088332323, identical metrics to non-strict. Exact command saved in bf16-opmath-strict-command.json. The authoritative minimal softmax-fix build was also rerun against that protected reference: 1022 failures, same metrics. A local reference-equality check separately verifies fixA's saved reference and every input equal the protected baseline byte-for-byte.

opmath-control.json records a causal PyTorch control applying the diagnostic FP32 kernel intermediates with original BF16 boundaries: it differs from original PyTorch BF16 in 931 output values, max_abs 0.05029296875, RMSE 0.0082000680. IREE diagnostic vs that controlled PyTorch still has 957 failures, max_abs 0.03125, RMSE 0.0086529246. Neither control is an acceptance reference. This establishes both rounding sensitivity and residual compiler differences; it does not excuse either.

sdpa-native-comparison.json replays **identical saved PyTorch BF16 q/k/v** at full first vision shape [1,12,1024,64], all-zero valid mask. Bundled native BF16 SDPA: all 786432 finite, 691005 differ, max_abs 0.1640625, RMSE 0.0046707359, 210088 outside original elementwise gate. Thus native BF16 attention remains numerically discrepant even with upstream normalization errors removed. Promoting only its kernel internals improves agreement substantially, but PyTorch's native BF16 kernel is not bitwise the FP32 kernel cast back; no exact replacement claimed.

Additional exact commands:
```bash
bash "$R/compile.sh" "$R/sdpa-native.mlir" "$R/sdpa-native.vmfb" > "$R/sdpa-native-compile.log" 2>&1
taskset -c 80-95 "$PY" "$R/test_sdpa.py" > "$R/test-sdpa.log" 2>&1
taskset -c 80-95 "$PY" "$R/validate.py" bf16-softmax /home/loren/work/runs/smolvla/patched/smolVLA.mlir.reference bf16 > "$R/validate-bf16-softmax-final.log" 2>&1
taskset -c 80-95 "$PY" "$R/validate.py" bf16-opmath-strict /home/loren/work/runs/smolvla/patched/smolVLA.mlir.reference bf16 > "$R/validate-bf16-opmath-strict.log" 2>&1
taskset -c 80-95 "$PY" "$R/rewrite_accum.py" "$R/bf16-softmax-gelu.mlir" "$R/bf16-kernels.mlir" --keep-bf16-sdpa > "$R/rewrite-kernels.log"
bash "$R/compile.sh" "$R/bf16-kernels.mlir" "$R/bf16-kernels.vmfb" > "$R/compile-bf16-kernels.log" 2>&1
```
The narrower final diagnostic keeps original native BF16 attention while correcting softmax, GELU and selected kernel accumulation. Its full-model compilation is pending at this report update. No new tolerance, reference substitution, quantization, layer omission or precomputed-output substitution.

## Final outcome — NaNs fixed; required full-model gate NOT achieved

Final narrower `bf16-kernels` compile succeeded; validation exited 2, all 1600 finite, 1062 failures, max_abs 0.078125, RMSE 0.0107296864. Native BF16 attention retention did not improve acceptance. Every launched compile/run has completed. No background work is needed to interpret this report.

| Full-model variant | Finite /1600 | Failed at unchanged gate | max_abs | RMSE |
|---|---:|---:|---:|---:|
| fixA baseline (prior evidence) | 0 | 1600 | undefined | undefined |
| **Minimal semantics-preserving FP32 softmax decomposition** | **1600** | **1022** | **0.0625** | **0.0109294951** |
| Softmax + correct GELU kernel decomposition | 1600 | 1085 | 0.109375 | 0.0115657272 |
| Broader FP32 kernel-intermediate diagnostic | 1600 | 993 | 0.03125 | 0.0088332323 |
| Same diagnostic, strict arithmetic | 1600 | 993 | 0.03125 | 0.0088332323 |
| Narrower kernel diagnostic retaining native BF16 SDPA | 1600 | 1062 | 0.078125 | 0.0107296864 |

Strict and non-strict broader diagnostic output bytes are identical (strict-equality.json). All observed FP32 softmax checkpoints are finite, but their observation prevents the unsafe cast fold; isolated replay and cast/matmul slices establish the original nonfinite operation without relying on that misleading observation alone.

**Delivered fix:** rewrite_softmax.py preserves the original 24 FP32 softmax computations and trailing BF16 casts. It fixes the identified first residual nonfinite operator and removes all 1600 full-model NaNs without changing any model weight, quantization, layer, input, output dtype or tolerance. Focused small probe matches PyTorch bitwise. softmax-source-proposal.patch identifies both compiler optimizations requiring correction; it was not built.

**Not delivered:** a BF16 model passing all 1600 elements against its original PyTorch BF16 reference. Remaining BF16 normalization/attention rounding discrepancies are documented with module hooks, exact-input attention replay, and controls. Kernel-intermediate diagnostics do not justify replacing the reference or claiming acceptance. Exact matching of the native PyTorch BF16 kernels and resolving residual accumulation/association differences remain open; no particular remaining pass is blamed without evidence.

PyTorch BF16 run-to-run/thread spread tested here is **zero**, despite large deterministic difference vs the higher precision control. The gate therefore remains failed; no variance-based tolerance argument is made.

Final commands:
```bash
taskset -c 80-95 "$PY" "$R/validate.py" bf16-kernels /home/loren/work/runs/smolvla/patched/smolVLA.mlir.reference bf16 > "$R/validate-bf16-kernels.log" 2>&1
taskset -c 80-95 "$PY" "$R/manifest.py" > "$R/manifest.log" 2>&1
```

artifact-hashes.json records SHA256s and sizes of scripts, VMFBs, primary rewritten graphs, proposal patch and numerical results. reference-equality.json verifies fixA reference plus all 11 input byte files equal the protected SPEC baseline. Python 3.12.3, torch 2.10.0+cpu, turbine 3.9.0, bundled compiler unknown IREE version / LLVM 23.0.0git; full package versions in versions.json. Provenance remains the pinned baseline, no downloads. CPU affinity 80–95 and 16 worker/thread limits throughout intensive work. No protected-tree or other-agent edits; no compiler rebuild; no numerical pass claimed.
