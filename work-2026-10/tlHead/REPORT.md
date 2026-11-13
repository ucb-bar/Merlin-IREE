# TinyLlama INT8 lm_head variant

Status: complete. This is a distinct `int8_head` variant. The shipped FP32-lm_head artifacts, their F2 runs, and all protected directories remained read-only.

## Baseline and source finding

Read `/home/loren/work/REPORT.md`, `runs/smolvla-numerics/SPEC.md`, and `runs/tinyllama2/REPORT.md` first. The TinyLlama exporter is `runs/tinyllama2/export.py`; its explicit filter is `filter_fn=lambda m,fqn:isinstance(m,torch.nn.Linear) and 'lm_head' not in fqn`. Its `int8/quantization.json` audit and `export-int8.log` confirm 154 decoder linears quantized and `lm_head` left as FP32 `Parameter`. The source contains no comment stating why. This is consistent with the common accuracy practice of retaining a large-vocabulary output projection in FP32, since its quantization can alter all token logits and greedy choices; this is inference, not an asserted source comment.

Starting baseline evidence: `perfTL/results/tinyllama/spike-trace.csv` reports the scalar FP32 `main$async_dispatch_1456_batch_matmul_1x16x32000x2048_f32` at 3.87G of 4.75G cycles (81.5%), 154 INT8 Gemmini matmuls at 0.42G cycles, and 0.38G elementwise. Source weight SHA256 is recorded in copied `provenance.json`; model revision is `fe8a4ea1ffedaf415f4da2f062534de366a451e6`.

## Variant status

Run-local copies of exporter/runtime scripts are under this directory. `export.py` changes the explicit lm_head filter to quantize every `torch.nn.Linear`, with the same `Int8DynamicActivationInt8WeightConfig()` recipe. TorchAO 0.16 documents this config as symmetric per-token dynamic activation and symmetric per-output-channel weights (`granularity=PerRow()`). The exported audit lists all 155 linear layers as `LinearActivationQuantizedTensor`, including `lm_head`.

The fixed accuracy gate is: eight seeded prompts total (the existing seed-20261027 prompt plus at least seven additional), four-step greedy identical versus both shipped INT8 and FP32, average per-prompt positional argmax agreement at least 15/16, and logit cosine versus FP32 >=0.999. Host compiler-vs-own-PyTorch gate remains atol=rtol=0.001. No tolerances have been changed. No F2 dispatch is authorized or performed.

## Commands and results

Exact export command (cwd `/home/loren/work`; completed):

```bash
source runs/tlHead/env.sh
HF_HUB_OFFLINE=1 taskset -c 0-15 "$PY" -u runs/tlHead/export.py --variant int8_head
```

The export completed and wrote `int8_head/model.mlir` (2,598,637,356 bytes). Model weight revision/hash are in copied `provenance.json` (revision `fe8a4ea1ffedaf415f4da2f062534de366a451e6`, safetensors SHA256 `6e6001da2106d4757498752a021df6c2bdc332c650aae4bae6b0c004dcf14933`). Python 3.12.3, PyTorch 2.10.0+cpu, TorchAO 0.16.0, Transformers 4.57.1, NumPy 2.2.6. Warnings about unavailable optional TorchAO CUDA/Triton libraries were informational; CPU export proceeded.

## Variant accuracy gate — FAIL; host compiler gate — PASS

Eight prompts were evaluated: the fixed seed-20261027 `[1,16]` input and seven additional token prompts seeded 20261028–20261034. Each starts with token 1 and other IDs sampled uniformly from `[3,32000)`. The exact prompt arrays, FP32 logits, shipped INT8 logits, and `int8_head` PyTorch logits are retained in `int8_head/`. `validate_eight.py` invokes compiled IREE on every prompt and each of four recomputed-prefix greedy steps.

Preselected variant gate results (no thresholds changed):

- Greedy: matches shipped INT8 on **7/8** prompts and unquantized FP32 on **5/8**; required 8/8 for each.
- Mean per-position argmax agreement vs FP32: **13.375/16**, below 15/16. (vs shipped INT8: 15.875/16.)
- Minimum logit cosine vs FP32: **0.97937685**, below 0.999.
- PyTorch variant vs FP32 max_abs is 8.38258 on all prompts; RMSE ranges 0.45269–0.63550. Versus shipped INT8, max_abs ranges 0.52268–0.84532 and RMSE 0.08278–0.10058. These are quantization differences, not compiler error.

An optional same-prompt granularity probe was completed. TorchAO v1 ignores the `granularity` field (the first probe was identical and was discarded); the retained comparison quantizes only `lm_head` with TorchAO v2 `PerTensor`, leaving the other 154 linears at the shipped v1 `PerRow` recipe. Compared with the v1 per-output-channel head, it changes seed-prompt logits by max_abs=1.12085, RMSE=0.20117, cosine=0.997842; argmax remains 16/16 and greedy first token remains 359. It does not repair the fixed accuracy gate. Command: `source runs/tlHead/env.sh && OMP_NUM_THREADS=2 taskset -c 1-2 "$PY" -u runs/tlHead/compare_granularity.py` (log `granularity-v2.log`, result `int8_head/head-granularity-comparison.json`).

The fixB rewrite was run as requested:

```bash
source runs/tlHead/env.sh
taskset -c 0-15 "$PY" runs/tlHead/rewrite_quant.py runs/tlHead/int8_head/model.mlir runs/tlHead/int8_head/model.mm.mlir > runs/tlHead/rewrite-int8-head.log 2>&1
taskset -c 0-15 runs/fixJ/build/tools/iree-compile runs/tlHead/int8_head/model.mm.mlir --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=16 -o runs/tlHead/int8_head/model.cpu.vmfb
taskset -c 0-15 "$PY" -u runs/tlHead/validate_eight.py > runs/tlHead/validate-eight.log 2>&1
```

Rewrite counts: 155 choose-qparams, 155 quantize, and 155 `_int_mm` rewrites. The rewritten graph and direct-original graph compiled with default host math options both failed (the rewrite run had 460,343–491,918/512,000 values outside tolerance; maximum max_abs=1.86129093, maximum RMSE=0.25649785). Those runs omitted the PyTorch CPU numeric compatibility flags used for the final Gemmini compile and are retained as controls.

To isolate the rewrite, the original exported graph was also compiled directly with fixJ and checked with the same seeded input:

```bash
taskset -c 0-15 runs/fixJ/build/tools/iree-compile runs/tlHead/int8_head/model.mlir --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=16 -o runs/tlHead/int8_head/model-direct.cpu.vmfb
taskset -c 0-15 "$PY" -u runs/tlHead/validate-direct.py int8_head > runs/tlHead/validate-direct.log 2>&1
```

The final host build uses direct-original MLIR with fixJ and the PyTorch CPU numeric compatibility options. Exact command:

```bash
taskset -c 0-15 runs/fixJ/build/tools/iree-compile runs/tlHead/int8_head/model.mlir --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=16 --torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads=16 --torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false -o runs/tlHead/int8_head/model-numerics.cpu.vmfb
source runs/tlHead/env.sh
HF_HUB_OFFLINE=1 taskset -c 0-15 "$PY" -u runs/tlHead/validate_eight_numerics.py > runs/tlHead/validate-eight-numerics.log 2>&1
```

Final host build passes all eight prompts against their own quantized PyTorch logits at unchanged atol=rtol=0.001, bitwise exact (0/512,000 failures, max_abs=0, RMSE=0 on every prompt). IREE greedy matches its own quantized PyTorch variant on 8/8. The separate variant-vs-shipped/FP32 accuracy gates above still fail.

## Gemmini compile and coverage; Spike PASS

The Gemmini VMFB compiled with the merged fixW numerical compiler, RV64GC target, 16 workers/affinity, Gemmini WS loops, and default compiler stack allocation limit **32768 bytes** (not changed). Exact command is preserved in `compile-gemmini-head.sh`; output `int8_head/gemmini.vmfb` is 1,300,464,927 bytes. Compile log: `compile-gemmini-head.log` (exit 0). Executable source/intermediate dumps are retained under `int8_head/gemmini-sources/` and `int8_head/gemmini-intermediates/`.

Source-stage weighted coverage audit (`int8_head/gemmini-weighted-coverage.json`): **155/155 INT8 matmuls**, **16,550,723,584 MACs**, **100.0% of static INT8 matmul MACs** carry the Gemmini lowering pipeline. Weight is static M×K×N from INT8 linalg operands/results. This metric covers matmul work; elementwise operations remain scalar. The extra 1.05 GMAC lm_head matmul is included.

Run-local bare-metal runner/ELF setup is under `spike/`; the ELF embeds `gemmini.vmfb`, seeded input, and this variant’s PyTorch golden. Compiler stack default was left untouched. Exact command: `bash runs/tlHead/run-spike.sh` (Spike `-m4096 --isa=rv64gc_zicntr --extension=gemmini`, pinned to one CPU). **Spike PASS**: 512,000/512,000 finite logits, zero elements outside atol=rtol=0.001, max_abs=0, RMSE=0, `TINYLLAMA_INT8_PASS`, exit 0. Cycles are **893,918,722** versus shipped `spike-plain.json` **4,751,658,908**, a drop of **3,857,740,186 cycles (81.19%)**. Metrics: `int8_head/spike-comparison.json`; full output/logs: `spike/spike.log`, `spike/spike.stderr`. The accuracy result is for the seeded input; the preselected eight-prompt variant-level gate still fails as above.

## Tool hashes

fixJ compiler launcher SHA256 `6dc7f243e612cdc54f014d1843154cddcfe496cda606c61990ad49ca4c100dbc`; fixJ `libIREECompiler.so` SHA256 `10e15f9c347e1aa55276b3798eb58320f29c0f705bb5d74cc6abad0a4dbb5dc2`. fixW numerical compiler launcher SHA256 `6394f9d7889cf24f1d6a5de8a835ed3cc7d3e19696c84b1e019163e2ded766ad`; library SHA256 `c3c2aba41b05a556e3c656c0827971bf0ad9de32706a051b96c140c8aeeb7ea0`. Both report unknown IREE version and LLVM 23.0.0git optimized/assertions.

Model graph SHA256 `c74df4eba37f20a1f1c7d2c50fa6f8cf39cb6143a4ae7ca883160af0b9f31ac5`; rewritten graph `d165c0058842c19ef06557a6713cb0aeccc8db69a8f41e08e15b26e7d5770d71`; default direct host VMFB `49fddf442f55dff311c5196487e769436551eb13ba8d811fef779477945d69f0`; final numerical-mode host VMFB `95a3fd1655335587ce387d543d0a449ab7bb9669afbeb76ad82a8b5baf3e3f50`; Gemmini VMFB `afefcba9be3ce7f5e7b4294d8985e961d7f94ab6c19956bf2edcb642fb195413`; Spike ELF `f07b7690c979e8d380dcbc41953483e4a37bc004c336b5bafb79697d621db201`.

`artifact-hashes.json` records SHA256 and byte sizes for principal graphs, VMFBs, ELF, logs, reference/output tensors, and comparisons.
