# smolVLA numerics fix specification

Updated 2026-10-27 UTC. This is a specification and investigation, not an implemented compiler fix. No compiler rebuild was performed. All new scripts, probes, inputs and outputs are in this directory; existing smolVLA artifacts, the snapshot, and tinyllama2 were not edited.

## Decision and effort ranking

Keep the preselected elementwise gate `abs(actual-reference) <= 1e-3 + 1e-3*abs(reference)`. **All three failures have demonstrated semantic defects; none justifies widening tolerance.** Fix and verify in this order:

| Rank | Failure | Confirmed cause | Estimated engineering effort, including focused tests |
|---|---|---|---|
| 1 | (a) true FP32 | Incorrect tanh GELU coefficient in TorchToLinalg | 0.5–1 day; full-model rerun additional |
| 2 | (b) BF16 NaNs | Export patch maps BF16 to integer transport for a numeric singleton conversion, turning scalar 1 into a subnormal | 1–2 days; allow another 1–2 days if resource type conversion still fails after removing the workaround |
| 3 | (c) INT8, both compute precisions | Custom quant pass substitutes constant scale=1, zero-point=0 for dynamic qparams; quantize also truncates instead of rounding | 3–5 days for the exercised symmetric per-token path and regressions; 1–2 weeks for a general affine implementation |

Estimates exclude a compiler build, CI and rollout, and assume familiarity with MLIR. Fixing these defects is necessary, not a claim that an untested corrected full graph already passes. After each fix rerun its own gate and retain any remaining failure.

## Scope, baselines and provenance

Pinned weights and versions are those in `../smolvla/hf-provenance.json`, `../smolvla/versions.json` and REPORT.md Goal 4. Default seed=0, batch=1, three cameras, 8 prompt tokens, original image flags 256x256 (preprocessing gives 512x512), one denoising step without cache, output `[1,50,32]`. This is not full iterative policy validation. Quantized comparisons use the exact quantized PyTorch model, not unquantized output.

Protected baseline comparisons:

* `../smolvla/fp32/smolVLA.default.comparison.json`: 1/1600 fails, max_abs 0.002187252, RMSE 0.000194033. Strict arithmetic flags produce the same output.
* `../smolvla/patched/smolVLA.comparison.json`: 1600/1600 NaNs.
* `../smolvla/patched/smolVLA.q.int8.comparison.json`: cosine -0.05069, max_abs 6.234375.
* `../smolvla/fp32/smolVLA.q.int8.comparison.json`: cosine -0.03254, max_abs 6.43117.

PyTorch quantization error is separate: BF16/FP32 RMSE 0.02855/0.02302, cosine approximately 0.9999. It cannot explain the compiler disagreement.

## Reproduction tools and commands

Run from `/home/loren/work`. `rg` is unavailable; inspection used grep/find/Python. The existing probes were reused on restart. Python environment: `runs/smolvla/venv/bin/python`. No network fetch is needed. Reference reloads set `HF_HOME=/home/loren/work/runs/hf-cache`, `HF_HUB_OFFLINE=1` and import the pinned Understanding-PI0 checkout. Their scripts contain these settings.

Small reproducer compile template (replace STEM):

```bash
iree-latest/bin/iree-compile runs/smolvla-numerics/STEM.mlir \
  --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host \
  -o runs/smolvla-numerics/STEM.vmfb
```

`finish_probes.py` compiles BF16 scalar and INT8 qparams independently in parallel and saves exact runtime commands and outputs in `small-probes.json`:

```bash
OMP_NUM_THREADS=8 runs/smolvla/venv/bin/python runs/smolvla-numerics/finish_probes.py
OMP_NUM_THREADS=24 runs/smolvla/venv/bin/python runs/smolvla-numerics/reference_probe.py
OMP_NUM_THREADS=24 runs/smolvla/venv/bin/python runs/smolvla-numerics/gelu_control_modules.py
OMP_NUM_THREADS=8 runs/smolvla/venv/bin/python runs/smolvla-numerics/gelu_compare.py
```

Reference runs exercised 1/8/24/48 PyTorch threads. Slice runtimes use `--device=local-task --task_topology_group_count=24`; small probes use 8. Compilation is dependency-truncated rather than repeatedly compiling the multi-GB full model; no source rebuild. Scripts and command JSONs are the executable reproduction record.

## (a) True FP32: confirmed incorrect GELU constant

### Evidence and causality

`reference-probe.json` and `torch-{threads1,threads8,threads24,threads48,f64}.npy` record controls on the identical saved input bytes. PyTorch thread-count variation from saved FP32 is at most 1.90735e-6. At `[0,0,4]`, the higher precision reference is -0.9516514917065357; saved FP32 is -0.9516494274, while IREE is -0.9494622. Saved FP32 vs higher precision max_abs is 2.39552e-6 / RMSE 4.11713e-7; IREE vs higher precision max_abs is 0.002189316 / RMSE 0.000194030. The higher precision control converts loaded checkpoint values upward and preserves explicit float32 casts inside the model; it is not a claim of wholly FP64 execution or recovery of pre-checkpoint precision. Thread spread alone is not a proof about every possible association, but the causal control below establishes a bug.

The first vision-layer slice (`fp32-front.mlir`) agrees through patch convolution, position embedding, layernorm and first MLP linear: maxima 7.15e-7, 7.15e-7, 3.81e-6 and 2.55e-5 respectively. At GELU its RMSE rises to 2.67e-5, max_abs 7.03e-5 (`front-comparisons.json`).

Source inspection: under `iree-latest/source/Merlin-IREE/`, file

`third_party/iree_bar/third_party/torch-mlir/lib/Conversion/TorchToLinalg/Uncategorized.cpp:746`

in `createLinalgPayloadCalculationForElementwiseOp`, the `AtenGeluOp`, `approximate == "tanh"` case uses beta **0.7977240352174656**, whereas the formula immediately above requires `sqrt(2/pi)` = **0.7978845608028654**.

Isolated `gelu.mlir` with `gelu-input.bin` (4097 FP32 values from -8 to 8) gives max_abs 5.126e-5 vs PyTorch, but only 9.537e-7 vs the formula with the incorrect beta (`gelu-comparison.json`).

**Full-model causal control:** `gelu_control_modules.py` makes each transformers `GELUTanh.act` use the bad beta in PyTorch, with weights and inputs unchanged. Full output then agrees with IREE to max_abs **8.10623e-6**, RMSE **1.39186e-6**, and zero gate failures. Correct beta restores the original disagreement, max_abs 0.002187848 and one failure (`gelu-control-modules.log`). This explains essentially the entire discrepancy, not just one isolated activation. The older `gelu_control.py` only patched the functional symbol after modules had captured a partial; its unchanged outputs were an ineffective control and are superseded by the module-level control.

### Minimal reproducer and proposed fix

Use `gelu.mlir`, `gelu-input.bin`, `gelu-reference.npy`; compile with the template and run `gelu_compare.py`. The test should enforce approximately 2e-6 absolute error for this finite FP32 sweep (current backend's bad-formula agreement supports this), rather than the model's much looser 1e-3 gate, which cannot catch the local defect.

Change the beta constant in the exact TorchToLinalg file/case above to a correctly rounded representation of `sqrt(2/pi)`. Add a conversion regression in `third_party/iree_bar/third_party/torch-mlir/test/Conversion/TorchToLinalg/elementwise.mlir` and an executable numerical test covering positive/negative values near 1.3, zero and tails. No reassociation change or tolerance relaxation is proposed. An exporter-side explicit correct GELU decomposition is a possible temporary workaround, not the preferred compiler fix.

Verification: isolated sweep passes; unmodified PyTorch FP32 reference vs newly compiled full graph passes **all 1600 values at the original gate**. Record float64 and per-layer errors again; do not compare acceptance against the intentionally incorrect PyTorch control.

## (b) BF16: confirmed exporter scalar corruption, first nonfinite at attention

### Bisect and inlining audit

`bf16-front.mlir` exposes dependency-closed original SSA outputs `%19,%48,%57,%59,%63,%66,%83`. `bf16-front-stats.json` shows finite patch convolution, embeddings, layernorm and q projection. The mask construction `%57` is -1 everywhere instead of zero for valid positions, `%59` is BF16 minimum everywhere, and the first attention output `%83` has **786432/786432 NaNs**. Thus the first nonfinite op on this first vision branch is `torch.aten.scaled_dot_product_attention`; the preceding semantic error is already in the exported scalar literal. This localizes the initial failure without claiming every later independent scalar is sound.

Original BF16 export contains `%6 = torch.vtensor.literal(dense<9.183550e-41> : tensor<bf16>)`. That should represent 1. It is cloned, valid-mask BF16 ones are subtracted, the nonzero result is converted to bool, and `where` sets all mask entries to BF16 minimum. The retained `bf16-attention.mlir` isolates attention with `[1,1,4,4]` BF16 ones and a BF16-min mask: **16/16 NaNs** (`bf16-attention-stats.json`). The exact downstream overflow/softmax transformation is not separately attributed to a backend pass; invalidly masking every valid position is already explained by the exported graph. This attention probe characterizes the consequence, not a requirement that every all-masked representation have these semantics.

`inline-audit.json`: every one of **194** small-resource substitutions in the unquantized graph equals the original resource payload after removing its 4-byte alignment prefix; **zero payload mismatches**. `inline_small_bf16.py` does not touch scalar dense literals. The scalar bug reproduces with no resource or inlining at all. Thus the workaround is not the cause of this failure. The audit establishes byte preservation, not correctness of every compiler resource conversion.

### Minimal reproducer and precise origin

`scalar_export.py` exports a module containing BF16 buffer `one=1` and `forward(x)=one-x`, using the existing `apply_all_iree_ocp_patches`. Result: `bf16-scalar.mlir`, input `bf16-scalar-input.bin` = four BF16 ones, expected output zero, compiled output **four -1s** (`small-probes.json`). This file has no resource constants.

The relevant exporter file is

`runs/smolvla/third_party/Understanding-PI0/understanding_pi0/common/iree_ocp_patch.py`, `_patch_fx_importer`.

It overwrites `fx_importer.TORCH_DTYPE_TO_NPY_TYPE[torch.bfloat16]` with `np.int16`. The active importer

`runs/smolvla/venv/lib/python3.12/site-packages/iree/compiler/extras/fx_importer.py`, `_make_vtensor_literal_op`, lines approximately 2596–2609,

handles singletons with `np.array(tensor.tolist()).astype(npy_dtype)`, then passes that buffer to a BF16 `DenseElementsAttr`. Numerically casting 1 to int16 gives bits `0x0001`, which mean 9.18355e-41 in BF16, rather than BF16-one bits `0x3f80`. Integer transport is valid for copied raw buffers, not numeric conversion from a Python list.

`scalar_export_control.py` changes only that dictionary entry back to `ml_dtypes.bfloat16` after applying patches. `bf16-scalar-control.mlir` now contains `dense<1.000000e+00>` and compiled execution returns four exact zeros (`bf16-scalar-control-output.bin`). This is an isolated diagnostic control, not a deployed exporter change.

### Proposed fix and verification

In `_patch_fx_importer`, preserve the upstream numeric BF16 dtype mapping (`ml_dtypes.bfloat16`). Keep raw-byte transport local to resource construction; do not globally substitute an integer dtype for a numeric conversion. If singleton handling must be changed, use a real BF16 NumPy scalar/array or an explicit bit-preserving construction, with the logical type and shape supplied explicitly. Audit `_patch_turbine_conversions` separately; its global integer mapping must not reach analogous numeric singleton conversion paths. `_to_numpy_transport_array`/`create_tensor_global` intentionally use views of raw storage and are distinct from this faulty list conversion.

If a reusable importer guard is preferred, the corresponding snapshot source is `third_party/iree_bar/third_party/torch-mlir/python/torch_mlir/extras/fx_importer.py`; ensure `_make_vtensor_literal_op` distinguishes numeric dtype conversion from byte transport. The immediate defect belongs to the external exporter patch, not a reason to change the compiler's meaning of BF16 literals.

Tests: singleton BF16 0, 1, -1, epsilon, tiny, max finite, signed zero, Inf/NaN; scalar and one-element shapes; nonuniform resource payloads and repeated constants. Verify exact expected bits. Reexport BF16 from pinned inputs; compile with bundled tools and the byte-preserving small-resource workaround only if still necessary. Expose original mask and attention points again: valid positions zero, padded positions minimum, finite first attention. Full unquantized BF16 vs its saved exact PyTorch reference must pass all 1600 values at the original gate (and be finite). A residual compiler/resource type failure or residual numerical failure must remain open; do not silently substitute FP32 compute. The GELU correction from (a) may also be needed for final acceptance.

## (c) INT8: confirmed custom quantization lowering defects

### First divergent operation and chain checks

`hooks.py int8` registers first-invocation module hooks and saves exact quantized-model tensors. `int8-hook-final.npy` equals the protected quantized FP32-compute reference bitwise. `int8-front.mlir` exposes `%19,%48,%63,%65#0,%65#1,%67,%76,%84`: convolution, embeddings, first norm, qparams, quantized activations, integer accumulator and first q projection. Correspondence is recorded in `int8-front-slice.log` and `front-comparisons.json`.

Convolution/embedding errors <=7.153e-7 and norm error <=3.815e-6. **First semantic divergence is `%65`, `torch.torchao.choose_qparams_affine`**: expected per-token scales 0.01561494–0.05638329, actual every scale 1. Zero-point 0 is appropriate for this symmetric case. 753289/786432 activation integers differ (max integer error 126). First q projection max_abs 4.81905 / RMSE 0.611024; this precedes attention or subsequent layers.

The exact offending source, relative to `iree-latest/source/Merlin-IREE/`, is

`third_party/iree_bar/third_party/torch-mlir/lib/Dialect/TorchConversion/Transforms/ConvertCustomQuantOp.cpp`.

`ConvertTorchAoChooseQParamsAffineOp` (lines 348–425) emits scale=1 and zeroPoint=0 fills, ignoring the input values, block size and mapping semantics. `ConvertTorchAoQuantizeAffineOp` (approximately 577–597) divides/adds/clamps and emits FPToSI/UI without a rounding operation. It therefore truncates toward zero instead of TorchAO round-to-nearest-even. Both are confirmed implementation defects in `ConvertCustomQuantOpPass` / `createConvertCustomQuantOpPass`.

Alternative explanations checked:

* `rewrite_int_mm.py` changes only the op spelling, preserving explicit i8 inputs/i32 result. Prior protected small and full-range signed [16,768]x[768,768] probes match int32 matmul bitwise (`../smolvla/mm-large-comparison.json`). New `check_int8_chain.py` decodes the exact first-layer weight resource, transposes it as the graph does, and multiplies the actual IREE quantized activations: matches `%76` **bitwise** (`int8-chain.json`). Thus accumulation, signedness and weight layout are correct for the first affected layer.
* The same check reconstructs dequantization `acc.float()*activation_scale*weight_scale+bias`, using actual scale=1 and exported per-channel scales: max_abs **4.76837e-7** vs `%84`. Dequant broadcast/layout is correct locally; the input scale is wrong. This does not prove every later layer is correct.
* Vision rewrite equality was already bitwise verified in both unquantized and quantized PyTorch (`../smolvla/vision-rewrite-check.json`); compiled embedding hooks also match before the failure. No vision branch was dropped. No evidence supports reverting this rewrite to fix quantization.
* Both BF16- and FP32-compute INT8 exports contain the same custom qparams ops and use the same confirmed broken conversion. The detailed runtime bisect is on FP32 compute to avoid BF16 scalar confounding. It establishes a shared defect, not a claim that BF16 has no additional export errors.

### Minimal reproducers

`int8-qparams.mlir` takes `int8-qparams-input.bin`, FP32 `[[-2,-.6,.6,2],[-4,-1.5,1.5,4]]`, block `[1,4]`, SYMMETRIC, range [-127,127], epsilon 1e-5. Expected scales `[2/127,4/127]`, zeros 0, integers `[[-127,-38,38,127],[-127,-48,48,127]]`. Actual scales `[1,1]`, integers `[[-2,0,0,2],[-4,-1,1,4]]`; saved in `small-probes.json`.

`int8-rounding.mlir` removes dynamic qparam selection and supplies known scales=1/zeros=0. Same inputs should quantize to `[[-2,-1,1,2],[-4,-2,2,4]]`, but `int8-rounding-q.bin` contains truncations `[[-2,0,0,2],[-4,-1,1,4]]`. This independently demonstrates the second defect; correcting qparam selection alone is insufficient.

### Proposed fix and verification

Implement real input reductions for the exercised symmetric per-token block shape in `ConvertTorchAoChooseQParamsAffineOp`: reduce the designated block dimensions, compute absmax, scale=max(absmax/127,epsilon) for this range, cast to requested scale dtype, and supply matching zero-point shape/dtype. General asymmetric ranges and mappings must follow the pinned TorchAO semantics, not extrapolate this symmetric formula. Honor block_size, quant_min/max, epsilon, mapping/preserve_zero and requested dtypes. Reject unimplemented combinations explicitly instead of silently returning unit scale. Dynamic shape support must derive reduced shapes from block semantics, not blindly copy input leading dimensions.

In `ConvertTorchAoQuantizeAffineOp`, implement the pinned TorchAO operation order and round-to-nearest-even before conversion, with correct clamp/saturation and signedness. Current zero-point=0 cannot validate nonzero zero-point semantics; include asymmetric cases and integer-domain versus floating-domain zero points in tests before claiming general support. Preserve FP32 arithmetic where the TorchAO reference uses it, even with BF16 compute. Keep matmul i32 accumulation and the existing correct local transpose/dequant chain.

Add conversion regressions to `third_party/iree_bar/third_party/torch-mlir/test/Dialect/TorchConversion/convert-custom-quant-op.mlir`, plus executable numerical tests; FileCheck alone cannot establish correct reductions/rounding. Cover zero rows, epsilon floor, mixed signs, half ties, saturation, per-token and per-channel blocks, non-square K/N, and unsupported-option diagnostics. Prefer native `_int_mm` support eventually, but changing that rewrite is not the demonstrated numerics fix. Do not replace INT8 with float linears or bypass quantization to pass.

Verification sequence: both minimal reproducers exact (scale within appropriate FP32 rounding, q exact); first-layer qparams agree with pinned TorchAO on identical norm input, quantized activations and i32 matmul agree exactly; first q projection meets original gate. Then recompile and run both entire INT8 variants against their own protected quantized references: **all 1600 finite values pass atol=rtol=1e-3**. BF16 also requires fixing (b), and both may require (a). Recompute quantization-vs-unquantized error separately, without using it as compiler tolerance.

## Slice regeneration and acceptance record

`slice_mlir.py SOURCE DEST SSA_LIST` constructs dependency-closed functions, preserving required global/resource payloads and the original 11 input signature; it is not a numerical rewrite. Target lists appear above and in `*-slice.log`. Compile with the common template; run e.g.:

```bash
OMP_NUM_THREADS=24 runs/smolvla/venv/bin/python runs/smolvla-numerics/run_slice.py \
  int8-front fp32/smolVLA.q.int8.mlir.reference
OMP_NUM_THREADS=24 runs/smolvla/venv/bin/python runs/smolvla-numerics/hooks.py int8
runs/smolvla/venv/bin/python runs/smolvla-numerics/analyze_front.py
runs/smolvla/venv/bin/python runs/smolvla-numerics/check_int8_chain.py
```

The saved `*-command.json` files include exact input paths and worker counts. Full future validation should write new VMFB/output/comparison files under this directory, leaving protected originals intact. Use the comparison logic in `../smolvla/run_compare.py` in a local adapted copy with output destination here; do not invoke that original helper directly because it writes into the protected artifact directories. Runtime exit success alone is not numerical acceptance. Retain max_abs, RMSE, finite count, failed element count, and fixed gate for each of the four variants. No fixed full-model output is claimed by this spec.
