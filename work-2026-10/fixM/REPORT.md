# TinyLlama prefill + KV-cache decode — agent M

Final validation 2026-10-27 UTC. **FP32 PASS; INT8 PASS with an explicit pinned
BLAS runtime provider for FP32 attention. Standalone INT8 remains FAILED.**
All writes under `/home/loren/work/runs/fixM`; protected directories were read
only. No compiler source edit/rebuild, environment install, network download,
delegation, tolerance widening, omitted layer, or float-linear substitution.
All heavy processes used `taskset -c 80-95`, at most16 CPUs; OMP/MKL/OpenBLAS16.
Read the three required reports/spec and fixI README before implementation.
Original declarations, chronological commands and every failed approach are in
[DEVELOPMENT.md](DEVELOPMENT.md), with logs/artifacts retained.

## Accepted results

Each row tests three seeded eight-token prompts and32 greedy new tokens per
prompt:96 last-logit vectors, **3,072,000 values**. Gate unchanged throughout:
all finite, `abs(actual-ref) <= 0.001 + 0.001*abs(ref)` for every element,
plus identical greedy sequences. Runtime exit alone never establishes a pass.

| Final variant | Reference | Failed / total logits | Max absolute error | Greedy |
|---|---|---:|---:|---|
| FP32, bundled compiler | Native HF DynamicCache, exact FP32 model | **0 /3,072,000** |0.00019550323486328125|**3/3 identical32-token sequences**|
| INT8, fixI + width128 softmax + pinned attention BLAS | Native HF StaticCache(128), exact TorchAO model | **0 /3,072,000** |0.0000457763671875|**3/3 identical32-token sequences**|

Detailed metrics, token IDs and runtime commands:
- `fp32/persistent-comparison.json`, `persistent-command.json`, `persistent-runtime.log`;
- `int8-pinned-attention/persistent-comparison.json`, `persistent-command.json`, `persistent-runtime.log`.
Each directory's `persistent-logits.f32` has shape `[3,32,1,32000]` in that order.
`prompt{0,1,2}/input.npy`, `refSTEP.npy`, `tokens.npy` retain exact native references.

Host decode throughput, informational (31 decode calls after one prefill):
FP32 **11.01 /12.78 /12.58 tokens/s**; INT8 **17.37 /17.63 /17.71 tokens/s**.
Timings include VM calls, input upload, logit transfer and argmax, exclude module
loading, file writes and reference comparison. First FP32 timing overlapped the
fallback verification on the same16 CPUs; shared host is not an isolated benchmark.
Standalone prompt0 driver: FP32 **13.96**, INT8 **17.31 tokens/s**.
`generate-{fp32,int8}.json` record the complete32 generated IDs and timings.

## Usable generation commands

From `/home/loren/work`:
```bash
source runs/fixM/env.sh
taskset -c 80-95 "$PY" "$R/generate.py" --variant fp32 --new-tokens 32
taskset -c 80-95 "$PY" "$R/generate.py" --variant int8 --new-tokens 32
```
Both standalone commands were executed successfully; outputs match prompt0's
native references. For another prompt supply `--input /path/to/tokens.npy`,
int64 shape `[1,8]`, IDs0..31999. Outputs are token IDs. No EOS early stopping.
The driver refuses selected artifacts without a passing numerical/greedy record.
`artifact-selection.json` maps FP32 to `fp32/`, INT8 to `int8-pinned-attention/`.

## Interface and cache contract

- Batch1, prefill N=8, max cache128. Prompt seeds20261027,42,123, uniform IDs
  [3,32000), first token overwritten with BOS1. Same prompts in both precisions.
- `prefill.vmfb`, function `main(tokens: int64[1,8])` returns
  `(logits_last: float32[1,32000], kv: float32[22,2,1,4,128,64])`.
- `decode.vmfb`, function `main(token: int64[1,1], pos: int64[1], kv)` returns
  `(logits: float32[1,32000], kv_updated)` with the same cache shape.
- Cache axes: layer, K/V, batch, KV head, position, dimension; **5.5 MiB**.
  Prefill initializes padding to zero; decode replaces exactly slot `pos` and
  masks slots greater than `pos`. No prefix recomputation or wrap.
- Driver permits1..121 outputs, consuming at most slot127. The gate exercises
  consumed positions0..38; there is no claim of full-range numerical coverage
  or an unrestricted/dynamic-N prefill. Raw functions require valid positions.
- Native HF layers/weights, eager attention, RMSNorm/MLP, FP32 embedding, cache,
  attention and lm_head. INT8 uses `Int8DynamicActivationInt8WeightConfig()` on
  all154 decoder linears, skipping lm_head, as tinyllama2. Audit in quantization.json.
- Native HF quantized StaticCache and DynamicCache produce different logits and
  greedy trajectories. Final INT8 is accepted **against StaticCache only**, not
  against the initially tried DynamicCache. Quantized output is not asserted to
  match FP32 generation. No quantization loss is used as compiler tolerance.

## RoPE and compiler coverage

fixI's VML path folds dependency-closed static trig; it cannot fold a dynamic
decode position. `model.py` precomputes128 sin/cos positions using the pinned
native HF rotary module, one decode-shaped position per call, and exports table
lookup with dynamic `index_select`. These are model-derived math constants,
not reference outputs. Graphs contain zero runtime sin/cos. Original FP32 wrapper
passes native DynamicCache; static INT8 wrapper matches native StaticCache
**bitwise at all96 steps**. RoPE tables saved in int8/rope-{cos,sin}.npy.

fixI directly covers `_int_mm`, quantization, ordered means/exp/SiLU and automatic
contraction removal; no fixB quantizer/mm spelling rewrite was applied.
It only handles softmax width16 in its CPU compatibility path. Local
`rewrite_softmax.py`, adapted from read-only fixE, extends the recipe to width128
with native16-lane accumulation, horizontal8/4/2/1 tree and reciprocal/multiply.
Exactly22 softmax ops per graph are rewritten. A focused masked/unmasked
32768-value probe is **bitwise exact** (softmax128-probe.json); the8-lane candidate
fails and is retained. Final graphs preserve154 integer matmuls/qparam/quantize
chains each. Counts in graph-audit.json.

Single-token native attention uses oneMKL SGEMM_BATCH; ordinary IREE matmuls are
not bitwise equivalent on identical inputs. `attention_plugin.c` supplies only
these **two FP32 attention matmuls per layer**,44 decode dispatches, through IREE's
CPU plugin API. It dlopens pinned libtorch_cpu.so and calls cblas_sgemm_batch.
It never invokes model APIs, reads weights/reference files, or changes integer
linears. The two isolated imported matmuls match captured native outputs bitwise.
Full96-step success above establishes final acceptance.

**INT8 runtime requirements:** `attention_plugin.so` plus
`/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so`
and its existing library dependencies. This is a non-hermetic host artifact;
removing that dependency does not leave a validated standalone INT8 module.
`int8-pinned-attention/runtime-flags.json` records the required plugin flag.
The provider contains algorithms and uses runtime operands only. No saved answer
or pre-trained tensor is compiled into the plugin. CPU only; no accelerator claim.

## Runtime and provenance

Installed Python runtime3.13.0 cannot load snapshot VMFBs (HAL dispatch ABI
mismatch). `cache_runner.c` instead links existing read-only fixI runtime static
libraries, mmap-loads both modules once in separate contexts on one local-task
device, and retains output HAL cache buffers as next-call inputs. Only logits
transfer to host. No KV serialization in accepted performance measurements.
FP32 outputs are **bitwise identical at all96 steps** to bundled iree-run-module
fallback execution (runner-equivalence.json). Fallback also independently passes
all gates; `validate_subprocess.py` and `generate_subprocess.py` remain available.

Pinned public TinyLlama revision `fe8a4ea1ffedaf415f4da2f062534de366a451e6`;
checkpoint SHA256 `6e6001da2106d4757498752a021df6c2bdc332c650aae4bae6b0c004dcf14933`,
rechecked locally. Paths/all source file hashes in provenance.json and
pinned-input-hashes.json, including runtime math-provider SHA256.
Python3.12.3, torch2.10.0+cpu, TorchAO0.16.0, transformers4.57.1, Turbine3.9.0,
compiler/runtime wheels3.13.0, numpy2.2.6 (versions.json). Wheels only supply
export frontend/initial failed runtime attempt. Both actual VMFB compilers report
unknown IREE version /LLVM23.0.0git /optimized assertions; full strings retained.
Compiler libraries are fingerprinted in compiler-libraries.sha256.
Native math probe reports oneMKL2024.0 Update2 build20240605 (mkl-bmm.log).
C compiler version in c-compiler-version.txt; expanded build/link commands in
runner-build-command.txt and attention-plugin-build-command.txt.

## Exact successful build/validation commands

Every expanded compile command, flags, input path and compiler hash is retained
as VARIANT/STAGE-compile-command.txt and STAGE-compiler.sha256. Common commands:
```bash
source runs/fixM/env.sh
bash "$R/build_runner.sh"
bash "$R/build_attention_plugin.sh"
taskset -c 80-95 "$PY" -u "$R/export.py" fp32
bash "$R/compile.sh" fp32 prefill
bash "$R/compile.sh" fp32 decode
taskset -c 80-95 "$PY" -u "$R/validate_persistent.py" fp32
taskset -c 80-95 "$PY" -u "$R/export.py" int8
# Copy prompt reference files into the final directory, as reproduce.sh does.
taskset -c 80-95 "$PY" "$R/rewrite_softmax.py" "$R/int8/prefill.mlir" "$R/int8-softmax128/prefill.mlir"
taskset -c 80-95 "$PY" "$R/rewrite_softmax.py" "$R/int8/decode.mlir" "$R/int8-softmax128/decode.mlir"
bash "$R/compile.sh" int8-softmax128 prefill
# Final prefill.vmfb is a local symlink to this validated repaired prefill.
taskset -c 80-95 "$PY" "$R/rewrite_attention.py" "$R/int8-softmax128/decode.mlir" "$R/int8-pinned-attention/decode.mlir"
bash "$R/compile.sh" int8-pinned-attention decode
taskset -c 80-95 "$PY" -u "$R/validate_persistent.py" int8-pinned-attention
```
`reproduce.sh` contains the complete directory/reference setup, environment,
ordered commands, log redirects and gated artifact selection. Its constituent
commands were executed; the assembled script was syntax-checked, not rerun in
full. Export convention: `iree.turbine.aot.export(...,strict_export=False)` and
save_mlir, same as tinyllama2. No exporter dependency patches needed.

FP32 compile: bundled iree-compile, llvm-cpu, target-cpu=host, threads16.
INT8 compile: fixI/build/tools/iree-compile, same target/threads, plus
`--torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads=16`,
precision reduction/reduction reassociation/skipped intermediate roundings all
false, f64 demotion false, and optional compile-time pinned VML library flag.
That VML flag does not provide runtime attention: the plugin is separately named.

## Honest retained failures

| Attempt | Result / artifact |
|---|---|
| Metadata query `iree-runtime` distribution | Export failed before loading; corrected to `iree-base-runtime`; export-fp32-initial.log |
| Installed Python runtime | HAL dispatch signature mismatch before inference; validate-fp32.log; original Python drivers retained |
| Initial INT8 static wrapper vs native DynamicCache | **FAIL**2,476,429 logits, max2.48317575,3 shared-prefix argmax mismatches; int8-dynamic-probe/ |
| Original direct fixI INT8 pair | **FAIL**3,051,073/3,072,000 trajectory logits; all3 greedy paths differ; int8/persistent-comparison.json |
| Width128 softmax-only INT8 pair | Prefill PASS, decode **FAIL**2,950,689 trajectory logits; all3 paths differ; int8-softmax128/persistent-comparison.json |
|8-lane width128 softmax control |6198 bit differences;16-lane control exact; softmax128-probe.json |
| Initial C build/link/smoke | Missing allocator define, driver/flatcc/backtrace symbols, then required proactor pool; retained build-*-initial.log and persistent-smoke-initial.log |

Trajectory errors after greedy divergence include different token inputs; they
are not asserted to be same-input local compiler errors. The direct pair already
fails at prefill on identical inputs; softmax-only pair already fails first
decode on a shared prefix. No failing comparison was relabeled a pass.
Native static-vs-dynamic cache control and the reference-layout change are explicit
in native-cache-layout-comparison.json and DEVELOPMENT.md. Final reference
remained unchanged throughout softmax/attention compiler repairs.

Cache/first-two-block slices, exact native hooks and identical-input attention
probes are retained under decode-probe/, int8-decode-front/, attention-probe/,
int8-attention-probe/, int8-plugin-probe/. Commands and logs in DEVELOPMENT.md.
`status.tsv` records outcomes; one one-off timestamp/exit expansion error was
corrected from the explicit failed validator result and is documented there.

## Artifacts

Accepted VMFBs: `fp32/{prefill,decode}.vmfb`,
`int8-pinned-attention/{prefill,decode}.vmfb` (prefill symlink to
`int8-softmax128/prefill.vmfb`), plus `attention_plugin.so` for INT8.
Each FP32 VMFB ~4.1 GiB; each INT8 VMFB ~1.4 GiB. Both separate modules retain
model constants; this work does not deduplicate their weight storage.
`artifact-hashes.json` records script, plugin/runner, graph, VMFB, reference and
result SHA256s/sizes. `inventory.py` and `audit.py` regenerate those records.
No background model/export/compile jobs are intentionally left running.

Final packaging check: artifact inventory completed successfully. Selected gate
records were rechecked (96 checks each, zero violations). Serialized fallback
also follows artifact-selection.json and rejects failed artifacts; a two-token
INT8 fallback smoke test produced [359,4033], exactly the native reference
(generate-int8-subprocess-smoke.json). Main32-token standalone test remains the
persistent-runner test above. New/changed small-file hashes were updated after
this packaging correction; large artifacts were unchanged.
