# TinyLlama public-weight bring-up

This is a new public-weight experiment, not historical reproduction. Snapshot and prior runs are read-only. No compiler rebuild.

## Predeclared design and numerical gates

Fixed shape batch 1, sequence 16, full forward without KV cache, FP32 compute. Greedy generation recomputes the padded prefix (four steps, prompt length 8). Causal masking means right padding cannot affect preceding logits. Return all 16x32000 logits; compare all outputs on seeded full-length tokens, plus argmax and top-5 sets. Separate greedy comparison checks corresponding PyTorch vs IREE trajectories.

Before any comparisons: compiler-vs-corresponding-PyTorch **atol=0.001, rtol=0.001**, for both FP32 and INT8, never widened. Require all finite and all elements within gate for numerical pass. Argmax/top-5 and four-token greedy agreement reported separately. Quantization error has no acceptance gate and is never conflated with compiler error.

Read main REPORT.md first; inspected models/tinyllama/tinyllama_export.py, smolVLA exporters and example Gemmini flags. Turbine static export follows smolVLA conventions; TinyLlama's project exporter explicitly permits no-cache fixed shape. Historical runtime used only as design reference; no sealed assets requested.

All new writes/caches/install roots are under this directory. Existing smolVLA venv is used read-only with PYTHONDONTWRITEBYTECODE=1. Commands and logs retained locally. CPU budget at most 48 threads.

## Step 1 — provisioning / provenance

Downloaded Hugging Face `TinyLlama/TinyLlama-1.1B-Chat-v1.0` at revision `fe8a4ea1ffedaf415f4da2f062534de366a451e6`. Weight SHA256 `6e6001da2106d4757498752a021df6c2bdc332c650aae4bae6b0c004dcf14933`. All eight downloaded file hashes and resolved paths: provenance.json. Python 3.12.3, torch 2.10.0+cpu, torchao 0.16.0, transformers 4.57.1, turbine 3.9.0, frontend compiler/runtime wheels 3.13.0, numpy 2.2.6 (versions.json). Wheels are for export only; VMFB compiler/runtime are bundled binaries.

Exact preparation/export commands (cwd immaterial):
```bash
source /home/loren/work/runs/tinyllama2/env.sh
$PY -u $R/prepare.py > $R/prepare.log 2>&1
$BIN/iree-compile --version > $R/compiler-version.txt
$R/export_fp32.sh > $R/export-fp32.log 2>&1
```
Export uses native Hugging Face Llama, eager attention, explicit fixed 4D causal mask and positions, all FP32 weights/compute, no model layers omitted. Seed 20261027; token IDs drawn uniformly [3,32000), first token BOS=1. Inputs and complete PyTorch logits/greedy references saved before Turbine capture. No installation or edits to existing environments needed.

## Step 1 — FP32 export complete

Native wrapper exported without graph rewrites. `fp32/model.mlir` is approximately 8.2 GiB (hex resource encoding). PyTorch greedy reference: [359,4033,2122,343]. See export-fp32.log and fp32/reference.npy. Export is fixed shape; generation performance is not a KV-cache benchmark.

## Step 2 — host compilation launched

```bash
$R/compile_cpu.sh fp32 > $R/compile-fp32.log 2>&1
```
Script uses bundled `iree-compile`, `--iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=48`, taskset CPUs 0-47. Output `fp32/model.cpu.vmfb`. MLIR compilation uses the bundled full compiler, not wheel compiler.

INT8 export runs alongside compilation within CPUs 0-47 (export restricted to 24-47, 24 OMP threads):
```bash
$R/export_int8.sh > $R/export-int8.log 2>&1
```
Uses the same torchao `Int8DynamicActivationInt8WeightConfig()` as smolVLA, all decoder linears, skipping lm_head as in that exporter. FP32 embedding, attention/nonlinear computation and lm_head retained. Audit records each linear weight subclass; references saved from this exact quantized PyTorch model before export. No BF16 substitution.

## Step 4 — PyTorch quantization error (before compiler comparison)

154 decoder linears successfully have LinearActivationQuantizedTensor weights; lm_head remains FP32 Parameter. Exact audit: int8/quantization.json. `source $R/env.sh; $PY $R/quant_error.py` writes quantization-error.json. Seeded full logits: max_abs 8.32879448, mean_abs 0.40735098, RMSE 0.63497126, cosine 0.97941684. Argmax 14/16, equal top-5 sets 6/16. FP32 greedy [359,4033,2122,343]; quantized PyTorch [359,4033,2122,13]. This is loss introduced by quantization, not IREE error; no claim of FP32-equivalent quantized generation. Compiler validation will compare INT8 to its own quantized reference at the predeclared gate.

Preparation script now hardcodes resolved revision and asserts weight SHA256 so future reruns remain pinned.

## Steps 2–3 — FP32 CPU PASS

Bundled host compilation succeeded. `fp32/model.cpu.vmfb` approximately 4.1 GiB. Exact validation:
```bash
source /home/loren/work/runs/tinyllama2/env.sh
taskset -c 0-47 $PY -u $R/validate.py fp32 > $R/validate-fp32.log 2>&1
```
validate.py invokes bundled iree-run-module, `--device=local-task --task_topology_group_count=48 --function=main`, explicit `1x16xi64` input, NPY output. Every actual command is retained in fp32/run-commands.json, raw inputs/output arrays and runtime logs are retained alongside it. Compiler version: compiler-version.txt (unknown IREE version, LLVM 23.0.0git, optimized assertions).

All 512000 logits finite; **PASS** at unchanged atol=rtol=0.001, zero failing elements. max_abs=0.000155091286, mean_abs=0.00000948664447, RMSE=0.0000130473162. Argmax 16/16; equal top-5 sets 16/16. Last-token ordered top-5 agrees: [13364,284,2681,29886,29894]. Seeded invocation wall time ~2.50 s including loading/process overhead (not a benchmark). Four-step greedy IREE and PyTorch both [359,4033,2122,343]. Full metrics, including each shared-prefix generation call: fp32/comparison.json. Helper exits 0 only on the numerical gate and greedy token match; 2 on mismatch.

## Step 4 — INT8 export complete, original compiler frontend failure

`int8/model.mlir` approximately 2.8 GiB. Original compile:
```bash
$R/compile_cpu.sh int8 > $R/compile-int8-original.log 2>&1
```
Fails legalization of torch.aten._int_mm (first shape 16x2048 by 2048x2048, signed i8 operands, signed i32 result). No compiler rebuild. Copied the prior run's minimal rewrite into this run directory; replaces op name only, retaining explicit i8 operands/i32 accumulation:
```bash
$PY $R/rewrite_int_mm.py $R/int8/model.mlir $R/int8/model.mm.mlir > $R/rewrite-int8.log
$R/compile_cpu.sh int8 $R/int8/model.mm.mlir > $R/compile-int8-mm.log 2>&1
```
Full-model numerical comparison remains required; smolVLA's failed full-model results are not used as evidence of success here.

## Step 4 — INT8 CPU numerical FAIL

The rewritten INT8 graph compiles and executes, but fails the unchanged atol=rtol=0.001 gate against its own quantized PyTorch reference. 511699/512000 logits fail; max_abs=18.7734032, mean_abs=2.64362807, RMSE=3.33030301; all outputs finite. Argmax 0/16 and equal top-5 sets 0/16. Greedy IREE [552,20009,25996,15748] vs quantized PyTorch [359,4033,2122,13]. This is compiler/frontend/runtime error, separate from the quantization loss above. Artifacts are debugging artifacts, not validated INT8 deployment artifacts.

Exact validation: `source /home/loren/work/runs/tinyllama2/env.sh; taskset -c 0-47 $PY -u $R/validate.py int8 > $R/validate-int8.log 2>&1` (numerical exit 2).

Testing a backend-only diagnostic with microkernels disabled, retaining original artifact and all tolerances:
```bash
source /home/loren/work/runs/tinyllama2/env.sh
mkdir -p "$R/int8-no-ukernel"
taskset -c 0-47 "$BIN/iree-compile" "$R/int8/model.mm.mlir" --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host --iree-llvmcpu-number-of-threads=48 --iree-llvmcpu-enable-ukernels=none --iree-llvmcpu-link-ukernel-bitcode=false -o "$R/int8-no-ukernel/model.cpu.vmfb" > "$R/compile-int8-no-ukernel.log" 2>&1
```

## Step 5 — Gemmini attempted, compile FAILED

Exact command: `source /home/loren/work/runs/tinyllama2/env.sh; $R/compile_gemmini.sh > $R/compile-gemmini.log 2>&1`. Full flags are in compile_gemmini.sh, adapted from bundled examples/compile_gemmini.sh, including RV64 ELF, Gemmini plugin, WS loops and disabled MX format. Failed default 32768-byte stack limit: 131072- and 360448-byte temporaries. No completed Gemmini VMFB and no accelerator execution. Dumped pre-backend executable sources contain 199 linalg matmul-family occurrences across 575 source files; backend log does show Gemmini intrinsic lowering before failure. These stages are different: neither source counts nor intrinsic presence establish full weighted offload coverage. No strict/full offload claim, no historical gate reuse. coverage.json records conservative source-stage counts only. No compiler rebuild attempted.

## Final resumed verification

Reused the existing exports rather than redownloading/re-exporting. FP32 bundled runtime was rerun with `taskset -c 0-47 $PY -u $R/validate.py fp32 > $R/validate-fp32-resumed.log 2>&1`: exit 0, same numerical metrics and greedy match. `artifact-hashes.json` records VMFB/reference sizes and SHA256s (comparison-file hashes were recorded before this identical-metrics rerun, whose runtime wall time changes).

Microkernel-disabled diagnostic compiled successfully and was validated with:
```bash
source /home/loren/work/runs/tinyllama2/env.sh
taskset -c 0-47 "$PY" -u "$R/validate.py" int8-no-ukernel > "$R/validate-int8-no-ukernel.log" 2>&1
```
Exit 2, identical seeded error metrics and greedy tokens to original INT8. Reference NPY/greedy files are symlinks to the original INT8 references, so the comparison is unchanged. Disabling microkernels does not fix the error. The actual first divergent operation has not been isolated; do not attribute this failure to a specific compiler pass without a smaller reproducer. Possible next debugging work is to compare activation quantization, scaling, and integer matmul intermediates layer by layer. No rebuild is established as necessary and none was started.

Final status:
- **FP32 fixed-shape complete forward: PASS** export, bundled CPU compile/run, all-logit gate, argmax/top-5 and four-token greedy match.
- **Dynamic activation + weight INT8: FAIL numerical validation**, despite successful export, run-local `_int_mm` legalization workaround (154 replacements), CPU compile and execution. Quantization loss separately recorded; no tolerance widened.
- **Gemmini: compile failed stack limit**, partial lowering only. No accelerator runtime, completed executable or verified weighted offload coverage.

All scripts, logs, weights/cache and new artifacts are under `/home/loren/work/runs/tinyllama2/`. Existing snapshot, smolVLA and ResNet trees were only read. Fixed shape is [1,16] and generation is four recomputed prefixes from eight seeded input tokens, not an open-ended chat or KV-cache performance claim. No historical sealed assets were used or recreated.
