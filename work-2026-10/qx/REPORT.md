+# Quantization facilities audit (QX)

Updated 2026-10-27 UTC. Read-only source audit; no compile, test or model export. Required context files read. Initial summary: runs/probeSUMMARY/QX.txt.

## Answer

Quantization support exists at frontend and IR-lowering levels, but no Merlin/IREE flag automatically quantizes this FP32 SmolVLA graph's attention or patch convolution. Merlin --quantized selects compile mode for an already-quantized input. The SmolVLA exporter separately applies TorchAO to selected nn.Linear modules. Upstream IREE lowers existing quantized matmul, batch_matmul and conv forms. TorchAO offers module quantization, PT2E custom quantizers, and a prototype FP8 SDPA implementation. None is a ready IREE/Gemmini recipe for this graph.

The decisive Gemmini dtype/rank gate is in the Merlin Gemmini plugin: rank-2 i8*i8->i32 matmul (or optional rank-2 FP8), not FP32 attention scores or rank-3 batch matmul. IREE preserves frontend semantics; automatic quantization needs calibration data and an explicit accuracy objective.

## Merlin --quantized and SmolVLA exporter

Paths relative to /home/loren/work/iree-latest/source/Merlin-IREE:

- tools/compile/cli.py:25-33 defines --quantized as “Force quantized mode”; :202-225 sets a mode Boolean and infers dtype from a filename containing q.<dtype>. It does not invoke a quantizer.
- docs/reference/cli.md:160 describes the same behavior. docs/how_to/smolvla_end_to_end.md:46-55 compiles an already exported smolVLA.q.fp8.mlir.
- models/smolVLA/export_smolvla_int8.py:51-63 makes a plan for nn.Linear only, skipping lm_head; :96-114 calls safe_quantize_linears_ and an export rewrite. :115-135 exports one-step wrapper. No attention/bmm or Conv2d is selected.
- The mixed FP8/INT8 workstream is a separate exporter recipe: docs/dev_blog/2026-03-12-smolvla-fp8-int8-global-opt-workstream.md:178-205,275-303. It explicitly notes that expanded MX payload decode is not re-inferred into native FP8 attention (:299-303).
- That blog reports kernel-level examples, not end-to-end SmolVLA policy accuracy or Gemmini cycles. Kernel tolerance/cycle examples are at :1310-11, :1453-54, :1501. It records 23 BF16xBF16->F32 score batch-matmul islands (:558), and 23 F32 score islands unaffected by tested flags (:696-716). Not full-model validation.

## Exact FP32 attention gate: upstream vs Merlin

**Merlin plugin admission gate.** compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp:433-484 matches named linalg.matmul. It requires enabled recovery, pure tensor semantics, rank-2 i8 lhs/rhs and i32 result (:440-454), or optional rank-2 E4M3 FP8 lhs/rhs with BF16/F32 result (:455-460). Other dtypes fail the match. Generic contraction matching repeats the i8/i8/i32 or FP8 checks at :489-529 and requires a recognized integer accumulator body. These patterns do not match linalg.batch_matmul. Therefore FP32 QK/PV is rejected by Merlin's Gemmini recovery matcher; upstream batch-matmul canonicalization does not make the plugin accept it.

compiler/plugins/target/Gemmini/GemminiOptions.cpp:21-27 exposes --iree-gemmini-enable-fp8-matmul; :81-89 documents default 8-bit element width. These control supported patterns; they do not quantize. The exact Conv2D matcher at ConvertToGemmini.cpp:542-574 requires a 6-loop pure tensor generic, rank-3 i8 input, rank-4 i8 filter, rank-3 i32 output, recognized conv maps and i8/i8/i32 accumulator. This confirms the patch embedding conv also needs explicit quantization in a recognized layout.

**Upstream IREE (third_party/iree_bar) lowers existing quantized forms.** compiler/src/iree/compiler/GlobalOptimization/QuantizedMatmulToMatmul.cpp:33-45 matches linalg.quantized_matmul and linalg.quantized_batch_matmul. It consumes lhs, rhs and zero points (:48-57), creating matmul or batch_matmul (:59-66). Passes.td:133-140 calls these “lower quantized conv/matmul to conv/matmul.” QuantizedConvToConv.cpp:123-130 names linalg.conv_2d_nhwc_hwcf_q as input. These passes do not estimate scales or quantize float graphs. FuseDequantizationMatmul.cpp:35-83 recognizes explicit grouped dequantization patterns. The --iree-global-opt-enable-quantized-matmul-reassociation flag is an optimization toggle, not a quantizer (docs/--help/iree-compile--help.txt:230).

Thus upstream has lowering for already-quantized batch matmul and convolution, but no discovered --iree-*quant* flag taking floating SDPA/bmm/conv and calibrating or quantizing them. A frontend must emit explicit Q/DQ or integer contractions. Attention must be decomposed/represented for downstream lowering; Gemmini also needs batch/head reshaped to rank-2 matmul or new plugin support.

**Torch-MLIR conversion is not quantization selection.** third_party/iree_bar/third_party/torch-mlir/lib/Dialect/TorchConversion/Transforms/ConvertCustomQuantOp.cpp:348-425 handles explicit torch.torchao.choose_qparams_affine. This snapshot fills scale=1 and zero-point=0 (:403-422), ignoring range selection. Quantize affine divides, adds, clamps, then converts float to int without round-even (:575-597). The numerics audit in runs/smolvla-numerics/SPEC.md confirms semantic defects for the dynamic TorchAO activation path. It handles custom ops in an annotated graph; it does not decide to quantize unannotated SDPA/bmm/conv.

## Standard routes

TorchAO version inspected: 0.16.0 (runs/smolvla/versions.json). No export or test run in this audit.

| Route | Coverage | IREE/Gemmini input | Effort and accuracy risk |
|---|---|---|---|
| PT2E with custom Quantizer | Can be authored for decomposed QK/PV matmuls and Conv. Stock quantizers target other backends. | Emits explicit Q/DQ/quantized graph; must import and canonicalize to i8*i8->i32 and plugin-supported forms. Current affine conversion defects and missing Gemmini batch matcher block direct use. | Best standard framework to extend; medium/high work. Quantized scores can shift softmax distributions. |
| Existing TorchAO module API / Merlin exporter | Dynamic INT8 config and module filter cover Linear; not SDPA/bmm or Conv2d. Prototype FP8 SDPA exists at torchao/prototype/fp8_sdpa_inference/fp8_sdpa_attention.py, for its Torch runtime implementation. | Explicit TorchAO affine ops; current custom conversion defects must be fixed/validated. | Cheapest to keep existing Linear route; expanding requires graph/module replacements plus importer/plugin support. |
| ONNX Runtime static QDQ | Can calibrate Conv; MatMul may cover decomposed attention if that graph pattern is eligible. Must inspect exported graph. | ONNX QDQ or quantized linalg forms; upstream has normalizers, but no evidence this model form reaches Gemmini as-is. | Standard calibration route, medium work. Attention and policy output error risk. |
| SmoothQuant preprocessing | Balances linear weight/activation ranges; does not itself quantize attention bmm or patch Conv. | Still needs quantizer/export and lowering. | Does not directly solve current gap. |
| TorchAO FP8 rowwise/prototype SDPA | Prototype SDPA in Torch; no ready Conv recipe. | Gemmini FP8 path is rank-2 E4M3 matmul, not rank-3 SDPA plus softmax. | More integration and uncertain accuracy than INT8. |

PT2E evidence in installed torchao/quantization/pt2e/quantize_pt2e.py describes prepare/convert and custom backend quantizers. quantizer/quantizer.py:148-155 discusses decomposing compound operators such as scaled dot-product attention. This is an extension API, not a built-in Gemmini quantizer. Installed prototype file: torchao/prototype/fp8_sdpa_inference/fp8_sdpa_attention.py.

**Recommendation:** Lowest-cost plausible standard route is to retain TorchAO Linear export and prototype PT2E custom quantization or ORT QDQ on a tiny decomposed QK/PV + Conv graph. Emit signed i8 operands and i32 accumulation; reshape batch/head to rank-2 matmuls; confirm Conv layout and recognized requantization tail. Fix and validate Torch-MLIR affine qparams/rounding if using TorchAO affine ops. This is an engineering target, not a known working recipe. Validate the tiny imported graph and matcher before full SmolVLA.

## Accuracy and work limits

Attention quantization changes scores before softmax; patch Conv needs representative calibration and a supported layout. Flow-matching policy output can accumulate error across blocks. Kernel-level cycle/error numbers are not full-policy evidence. Keep the preselected gate and report quantization error separately from compiler error. IREE does not quantize by default because that changes semantics and requires calibration data plus an explicit accuracy/performance objective.

## Evidence paths

- Merlin mode: tools/compile/cli.py:25-33,202-225.
- SmolVLA exporter: models/smolVLA/export_smolvla_int8.py:51-63,96-135.
- Docs/workstream: docs/how_to/smolvla_end_to_end.md:28-55; docs/dev_blog/2026-03-12-smolvla-fp8-int8-global-opt-workstream.md:275-303,558,696-716.
- Upstream IREE: third_party/iree_bar/compiler/src/iree/compiler/GlobalOptimization/QuantizedMatmulToMatmul.cpp:33-74; QuantizedConvToConv.cpp:123-130; Passes.td:133-140.
- Torch-MLIR conversion: third_party/iree_bar/third_party/torch-mlir/lib/Dialect/TorchConversion/Transforms/ConvertCustomQuantOp.cpp:348-425,575-597.
- Merlin Gemmini: compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp:433-535; compiler/plugins/target/Gemmini/GemminiOptions.cpp:21-35,81-89; PluginRegistration.cpp:106-125,173-189.
- PT2E: /home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torchao/quantization/pt2e/quantize_pt2e.py and quantizer/quantizer.py:148-155.

## Commands, versions and artifacts

Read-only commands from /home/loren/work (the first concatenated cat command displayed the required reports; inspection commands included):

```bash
cat REPORT.md
cat runs/smolvla-numerics/SPEC.md
cat runs/tinyllama2/REPORT.md
grep -RInE 'Force quantized mode|quantized =|args.quantized|--quantized' iree-latest/source/Merlin-IREE
grep -RInE 'isRankedI8Tensor|isRankedF8E4M3FN|linalg.batch_matmul|attention|score matmul' iree-latest/source/Merlin-IREE/compiler/src/merlin/Dialect/Gemmini iree-latest/source/Merlin-IREE/third_party/iree_bar/compiler/src/iree/compiler/GlobalOptimization
find runs/smolvla/venv/lib/python3.12/site-packages/torchao -maxdepth 4 -type f
nl -ba iree-latest/source/Merlin-IREE/compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp | sed -n '433,585p'
nl -ba iree-latest/source/Merlin-IREE/third_party/iree_bar/compiler/src/iree/compiler/GlobalOptimization/QuantizedMatmulToMatmul.cpp | sed -n '33,74p'
nl -ba iree-latest/source/Merlin-IREE/third_party/iree_bar/third_party/torch-mlir/lib/Dialect/TorchConversion/Transforms/ConvertCustomQuantOp.cpp | sed -n '348,425p;575,597p'
```

No compiler/model versions changed. TorchAO 0.16.0 from runs/smolvla/versions.json. Artifacts: runs/qx/REPORT.md and runs/probeSUMMARY/QX.txt. No new numerical, cycle, or test result claimed.


## Restart under ZIP-only scope (2026-10-27)

Reused this report and the already-posted `runs/probeSUMMARY/QX.txt`. Re-audited claims against files present in `iree-latest/source/Merlin-IREE` and `runs/`; no external pages, repositories, newer versions, or stock-IREE behavior were consulted. Dropped any inference that would require comparing this snapshot with stock/upstream IREE or newer TorchAO/PT2E implementations. Here, “upstream IREE” means only the source rooted at `third_party/iree_bar` inside this ZIP; torch-mlir is the nested `third_party/iree_bar/third_party/torch-mlir`; Merlin means the sibling compiler/plugin/runtime/build_tools code. The installed TorchAO observations refer only to the already-present `runs/smolvla/venv` version cited below.

### Sharpened gate and input contract

The deciding rejection point for the Gemmini route is Merlin's `compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp`: `ConvertNamedMatmulPattern` matches `linalg.matmul` but only accepts rank-2 i8 operands with rank-2 i32 result (lines 433-460), or optional rank-2 E4M3 FP8 operands (lines 455-460). `ConvertMatmulPattern` applies the same dtype/rank conditions to generic matmul (489-529), and `ConvertConv2DPattern` accepts only its recognized rank-3 i8 input / rank-4 i8 filter / rank-3 i32 output convolution (542-574). Thus unquantized FP32 attention does not enter these Gemmini rewrites; batch rank-3 is not accepted by these rank-2 matmul patterns either. This is a Merlin plugin matcher gate, not an `iree_bar` dtype legalization decision. It does not itself identify the upstream origin of any earlier graph transformation.

Inside `third_party/iree_bar`, `QuantizedMatmulToMatmul.cpp` explicitly matches `linalg.quantized_matmul` and `linalg.quantized_batch_matmul` (33-45), consumes their lhs/rhs and zero-point operands (48-57), and lowers the product to ordinary matmul/batch_matmul (59-66). `QuantizedConvToConv.cpp` and its pass registration similarly start from `linalg.conv_2d_nhwc_hwcf_q` (see `QuantizedConvToConv.cpp:123-130` and `GlobalOptimization/Passes.td:133-140`). These are lowering/reassociation paths for quantized IR inputs, not floating graph quantizers. Snapshot inspection found no `--iree-*quant*` option that takes FP32 SDPA, batch_matmul, or conv and produces calibrated/quantized operations. `--iree-global-opt-enable-quantized-matmul-reassociation` is an optimization control for existing quantized forms.

The Merlin CLI's `--quantized` sets a boolean and selects YAML quantized flag overrides (`tools/compile/cli.py:31-33,204-225,415-418`); the CLI does not run a quantizer. SmolVLA's `models/smolVLA/export_smolvla_int8.py:51-63,96-114` makes an explicit module plan over `nn.Linear` and calls `safe_quantize_linears_`; it does not select SDPA/bmm or Conv2d. The documented `--quantized` invocation consumes a previously exported MLIR (`docs/dev_blog/2026-03-12-smolvla-fp8-int8-global-opt-workstream.md:285-303`). The same snapshot reports 23 score `linalg.batch_matmul` islands still bf16×bf16→f32 at global-opt (`:552-559`), and tested attention flags left 23 f32 score matmul islands unchanged (`:694-716`). Those are graph/compiler observations, not complete policy accuracy or Gemmini cycle measurements. The kernel microbench figures at `:1305-1311`, `:1449-1455`, and `:1498-1501` are narrow harness results and must not be presented as whole-policy accuracy/cycles.

### Why compilation does not choose quantization

The source paths inspected expose lowering of operations whose quantized representation is already explicit, and compiler precision flags/rewrites that alter selected operations. They do not include a model calibration-and-quantization stage for arbitrary FP32 model inputs. A sound quantizer needs representative calibration or an explicit static/dynamic quantization rule, scale/zero-point choices, and an accepted error/performance objective. Rewriting FP32 operations silently would alter the model's semantics and output error; the compiler has no model-specific data or user-selected accuracy gate from which to choose those values. Therefore “IREE does not quantize by itself” here means no such automatic pass/flag was found in this ZIP's IREE or torch-mlir paths, not a claim about other releases.

### Remaining snapshot-only limitations

PT2E, TorchAO prototype SDPA and ONNX Runtime are discussed only as installed-tool/framework routes in the table above, not as available built-in Gemmini recipes. They require frontend output compatible with the snapshot's import/lowering path. The installed Torch-MLIR `ConvertCustomQuantOp.cpp` explicitly handles authored TorchAO affine ops; its `choose_qparams_affine` conversion fills scale=1 / zero-point=0 (`:348-425`), so it cannot be assumed to preserve the exporter's selected dynamic qparams. Any PT2E/TorchAO route therefore needs an exact small-graph import and numerical check before estimating that it reaches Gemmini. No changes were made to the source, environments, model artifacts, or other agents' directories. No compiler run, test, export, download, or build was performed for this restarted audit.
