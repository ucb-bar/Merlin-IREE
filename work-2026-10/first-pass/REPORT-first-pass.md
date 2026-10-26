# Merlin-IREE reproduction report

Updated 2026-10-26 UTC. Work directory: `/home/loren/work/runs`. Snapshot read-only; no source, patches, or historical files modified. README read first. No compiler rebuild attempted. No numerical tolerances changed.

## Goal 1 — PASS

Commands (cwd `/home/loren/work` unless shown):
```bash
(cd iree-latest && sha256sum -c SHA256SUMS) > runs/validation/sha256.log 2>&1
iree-latest/bin/iree-compile --version
IREE_EXAMPLE_OUTPUT_DIR=/home/loren/work/runs/validation/cpu bash runs/validation/examples/run_cpu_matmul.sh
IREE_EXAMPLE_OUTPUT_DIR=/home/loren/work/runs/validation/gemmini bash runs/validation/examples/compile_gemmini.sh
```
All 197,058 SHA256 entries pass. All 20 symlink targets match SYMLINKS.json (checked with os.readlink, including dangling test-fixture links). See `runs/validation/integrity.json`.
Compiler reports unknown IREE version, LLVM 23.0.0git, optimized with assertions. SNAPSHOT provenance: Merlin bb64b5d83d3b2275f0da04da63610d0c94744634 plus local changes; IREE 0f39f82b8364007da5c9dcc7ee2825812f9441ed; compiler library SHA256 283e83de1823598dd671ddfe7166f002ea7ca3175558f201de2c426809385aa6.
CPU: all four matmul outputs match (19,22,43,50). Gemmini: RV64GC VMFB compilation passes; no accelerator execution. Both results agree with VALIDATION.json. Logs and VMFBs are in `runs/validation`.
Copied example scripts and fixtures to runs/validation/examples. Initial copied-script attempt failed because wrappers resolve prebuilt relative to their invoked path; fixed run-directory layout with bin and prebuilt symlinks to the bundle, then both passed. Bundle unchanged.

## Environment / pending model runs

Only system Python 3.12.3 is installed; project requires Python 3.11. `uv` absent. System Python lacks pip, but `python3 -m venv runs/model-env` succeeds and supplies pip. Dependency provisioning still required.
Network probes currently fail with curl exit 6 (DNS): github.com and huggingface.co cannot resolve. This contradicts the expected network availability. Logs: runs/validation/network-hf.log. Investigating remaining model prerequisites and recording exact failures before claiming any model result.

## Goal 2 — BLOCKED before export (not a compiler failure)

Copied both historical ResNet directories to `runs/resnet50/{original,optimized}`. Read their README and exporters/compile script. Attempt:
```bash
runs/model-env/bin/python runs/resnet50/original/export_quantized_resnet50.py --canonical-dir /home/loren/work/runs/resnet50/canonical --output-dir /home/loren/work/runs/resnet50/artifacts
```
Fails at `import numpy` (runs/resnet50/export.log). Neither canonical input.pt nor resnet50-11ad3fa6.pth nor optimized flow's resnet50_loader.py is bundled. Optimized exporter references `/scratch/jack/voyager_resnet50_full_graph_fpga_handoff_20260831/canonical`; that directory is unavailable. Model checkpoints and datasets were explicitly omitted by README. A public torchvision checkpoint could recover weights with network access, but cannot recover the historical canonical input/loader. Do not treat a replacement input as reproduction of the historical numerical results.

Dependency attempts:
```bash
python3 -m venv runs/model-env
runs/model-env/bin/python -m pip install --retries 0 --timeout 15 numpy==2.2.6
runs/model-env/bin/python -m pip install --index-url https://pypi.org/simple --retries 0 --timeout 15 numpy==2.2.6
```
Both installs fail with no matching distribution / no available versions, including explicit PyPI. Logs in runs/validation/pip-{install,pypi}.log. No model ONNX/MLIR was produced, so VMFB compilation and host inference were not reached. Historical compile script additionally hardcodes old paths/build-dir and must be adapted in the copied version before use; it was not executed against the source tree. Next: restore package/network access, provision Python 3.11 and required CPU PyTorch/torchvision/ONNX/ORT/frontend dependencies in venv, obtain canonical assets, export/quantize, adapt compile path to bundled compiler, then verify host CPU against quantized ORT reference.

## Goal 3 — BLOCKED before capture; historical strict gate remains FAILED

Copied historical TinyLlama scripts plus `tinyllama_qkv_HANDOFF_BLOCKED.json` into runs/tinyllama. Attempt:
```bash
runs/model-env/bin/python runs/tinyllama/frontend/capture_dynamic_int8.py
```
Fails at `import numpy` (runs/tinyllama/export.log). After dependencies, the script requires omitted `/scratch/jack/experiments/universal_tinyllama_gemmini_20260906` assets: UNIVERSAL_TINYLLAMA.yaml, model/tinyllama_loader.py, input_ids.i64.bin, attention_mask.i64.bin, fp32_last_token_logits.f32.bin, checkpoint/model.safetensors. Each is hash-checked by the original script; public weights alone cannot establish that sealed contract. It also requires the external model2MLIR `m2m` frontend, absent from this environment. No captured model/VMFB or numerical result was produced.

Historical QKV gate evidence, unchanged: actual weighted Gemmini/scalar coverage **89/66**, required **155/0**. `status=not_packaged_strict_offload_gate_failed`, `static_ready_published=false`, `elf_admitted=false`, `archive_sealed=false`. This run neither repairs nor overrides that failure, and makes no accelerator deployment claim. Next: obtain exact canonical assets and frontend/environment, reproduce capture/compile and CPU numerics; separately resolve and rerun the strict coverage audit before any accelerator acceptance.

## Goal 4 — BLOCKED: omitted exporter dependency cannot be fetched

Read docs/how_to/smolvla_end_to_end.md, models/smolVLA/README.md, export_smolvla.py and export_smolvla_int8.py. Copied model Python scripts into runs/smolvla/models/smolVLA to preserve their relative repo layout and avoid source writes. SNAPSHOT.json explicitly lists Understanding-PI0, lerobot, autocomp and iree-turbine among omitted optional repositories. Required SmolVLA loader/wrapper/quantization implementation is in Understanding-PI0, not in the bundled model wrapper.

Attempts (cwd /home/loren/work):
```bash
git clone --depth 1 --branch mlir-smolvla https://github.com/ucb-bar/Understanding-PI0.git runs/smolvla/third_party/Understanding-PI0
curl -IL --max-time 20 https://github.com/ucb-bar/Understanding-PI0
curl -IL --max-time 15 https://huggingface.co/lerobot/smolvla_base
runs/model-env/bin/python runs/smolvla/models/smolVLA/export_smolvla.py --mode fp32 --device cpu --out-dir /home/loren/work/runs/smolvla/artifacts
runs/model-env/bin/python runs/smolvla/models/smolVLA/export_smolvla.py --mode int8 --device cpu --out-dir /home/loren/work/runs/smolvla/artifacts
```
Git/curl cannot resolve github.com / huggingface.co. Both export modes fail explicitly: missing `runs/smolvla/third_party/Understanding-PI0/scripts/export_iree.py`. Logs: runs/smolvla/{clone,export-fp,export-int8}.log and runs/validation/network-hf.log. No HF weights were downloaded; availability/authentication of lerobot/smolvla_base could not be determined because the host was not reachable. Only CPU was selected because no GPU is established; this is a supported wrapper option, not a numerical relaxation.

Consequently FP/INT8 MLIR, compiled VMFBs, runtime outputs and PyTorch reference comparisons are **not produced**. No full-model numerical pass is claimed. Compiler suitability for these graphs remains untested; there is no evidence yet that rebuilding the compiler would help, and no rebuild was started.

Next steps once access is restored: fetch Understanding-PI0 mlir-smolvla into the run tree and record its resolved commit (snapshot does not supply its exact gitlink SHA); provision Python 3.11/CPU dependencies from pyproject.toml/uv.lock plus that repository's requirements; download and pin HF model revision and hashes; export FP and INT8 at documented default shapes with the same seeded inputs/reference tensors; compile each with bundled iree-compile for host llvm-cpu; execute and compare against the corresponding PyTorch references at documented, unchanged tolerances. Record quantization error separately from compiler error. Any necessary exporter instrumentation must stay in runs/. If bundled compiler lowering fails and requires a source rebuild, stop and report the exact failure first.

## Current outcome

Goal 1 passed completely. Goals 2–4 are blocked by missing external assets/dependencies and failed network access, before compiler evaluation. The main requested smolVLA end-to-end deliverable is incomplete. Snapshot contents remain unchanged. No numerical tolerances were widened; no full compiler rebuild was attempted.

## Second pass — network restored; provisioning (2026-10-26 UTC)

Goal 1 intentionally not rerun. Installed uv 0.13.5 with `runs/model-env/bin/pip install uv`. All caches/install roots redirected under runs because ~/.cache and ~/.local/bin are read-only. Installed CPython 3.11.17 using `UV_CACHE_DIR=$PWD/runs/uv-cache UV_PYTHON_INSTALL_DIR=$PWD/runs/python runs/model-env/bin/uv python install 3.11` (interpreter works; optional global executable symlink failed).
Copied source pyproject.toml/uv.lock to runs/locked-env and ran `uv sync --project runs/locked-env --locked --no-install-project` with those cache variables. PASS: 162 locked packages, torch 2.9.1+cpu, torchvision 0.24.1+cpu, torchao 0.14.0, numpy 2.2.6. Log runs/locked-sync.log.

Fetched Understanding-PI0 mlir-smolvla at 8d9eb0950111a7300e1e914f6a1ebadc052c3598. Its current pyproject requires Python 3.12 and torchao 0.16; locked Merlin env fails importing FqnToConfig. Created separate runs/smolvla/venv (Python 3.12), torch 2.10.0+cpu and torchao 0.16.0. Full lerobot install hit evdev Python.h build error; provisioning only inference/export dependencies, excluding hardware-input packages. LeRobot checkout pinned to v0.4.3 (current main requires Python 3.12 and incompatible newer hub). Exact versions and export outcome follow.
Fixed copied export_smolvla.py interpreter selection: Path.resolve followed the venv python symlink to the base Python and lost all venv packages; use absolute() instead. Source untouched.

Public ResNet fallback assets downloaded successfully: torchvision ResNet50_Weights.IMAGENET1K_V2, hash checked by torchvision; input torch.randn(1,3,224,224) with generator seed 0. Preparation script runs/resnet50/prepare_public.py. These are NOT historical canonical assets; one synthetic calibration sample, no dataset accuracy claim. Export/quantization in progress.

### Goal 2 second pass — CPU end-to-end PASS, public replacement input

Commands (cwd ~/work):
```bash
TORCH_HOME=$PWD/runs/torch-cache OMP_NUM_THREADS=8 runs/locked-env/.venv/bin/python runs/resnet50/prepare_public.py
OMP_NUM_THREADS=8 runs/locked-env/.venv/bin/python runs/resnet50/original/export_quantized_resnet50.py --canonical-dir $PWD/runs/resnet50/public_input --output-dir $PWD/runs/resnet50/artifacts
runs/locked-env/.venv/bin/python -m iree.compiler.tools.import_onnx runs/resnet50/artifacts/resnet50.q.int8.onnx -o runs/resnet50/artifacts/resnet50.q.int8.mlir
iree-latest/bin/iree-compile runs/resnet50/artifacts/resnet50.q.int8.mlir --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host -o runs/resnet50/artifacts/resnet50.cpu.vmfb
iree-latest/bin/iree-run-module --module=runs/resnet50/artifacts/resnet50.cpu.vmfb --device=local-task --function=main_graph --input=1x3x224x224xf32=@runs/resnet50/artifacts/resnet50_input.f32 --output=@runs/resnet50/artifacts/iree_output.npy
runs/locked-env/.venv/bin/python runs/resnet50/compare.py
```
Export/quantize, ONNX import, bundled CPU compile and runtime all pass. Initial runtime invocation used main; corrected to imported function main_graph. CPU vs QDQ ORT: max_abs=0.3347206116, mean_abs=0.0274052452, RMSE=0.0424424112. Existing historical numerical gate atol=0.8/rtol=0.1 passes unchanged. Top1=21 in PyTorch, QDQ ORT and IREE (historical class 258 is inapplicable to replacement input). Float ONNX vs PyTorch max_abs=2.38419e-6. Quantization vs PyTorch max_abs=1.20859, RMSE=0.19472, correlation=0.978064; 990 elements fail old float tolerance, reported rather than relaxed. No ImageNet accuracy claim. Artifacts/report: runs/resnet50/artifacts/{quantization_report,cpu_comparison}.json. Gemmini compile attempted separately using copied example flags; outcome follows.

Goal 2 Gemmini/RV64 compilation with the copied fixture flags failed at the compiler's default 32768-byte stack allocation gate (e.g. 802816 and 3211264-byte convolution temporaries). Log runs/resnet50/compile-gemmini.log; copied command script runs/resnet50/compile_gemmini.sh. CPU fallback above succeeds. No hardware execution/offload claim; no need for compiler rebuild to complete CPU fallback.

### Goal 3 second pass — canonical reproduction still BLOCKED

`OMP_NUM_THREADS=8 runs/locked-env/.venv/bin/python runs/tinyllama/frontend/capture_dynamic_int8.py` now passes dependency imports and fails at the absent sealed UNIVERSAL_TINYLLAMA.yaml (runs/tinyllama/export-second.log). All six hash-sealed private experiment artifacts listed in first pass are still omitted. Network cannot reconstruct the canonical loader/input/reference/contract. Public TinyLlama weights cannot replace these under the historical hash contract. Historical QKV strict offload gate remains FAILED (89/66 actual vs 155/0 required), unchanged and not bypassed. No deployment/ELF admission claimed.

### Goal 4 second pass — export reached; compiler workaround under test

HF downloads succeeded without authentication. Loaded lerobot/smolvla_base plus HuggingFaceTB/SmolVLM2-500M-Video-Instruct. Understanding-PI0 branch SHA above; LeRobot v0.4.3 commit 0b067df57d21d3a02d6c511f1609172fa39ac29b. Current fork API lacks normalize_torch_device imported by bundled INT8 script: copied script now uses str(torch.device(args.device)) for the explicit CPU selection. Applied fork's existing patch_diffusers_torchao_logger_bug before imports to fix diffusers logger NameError in the run venv.

FP export with defaults (batch1, image256x256, prompt8, seed0, vision enabled) produces 1.6GB MLIR. Note documented mode named fp32 actually does policy.to(torch.bfloat16); report as unquantized BF16, not true FP32. Saved input bytes and PyTorch outputs using runs/smolvla/save_reference.py. The wrapper exports one denoising step without cache, not the full iterative action sampler.

Bundled compile of original FP export fails on iree_linalg_ext.scatter from boolean index_put in SmolVLM vision position embedding (log runs/smolvla/compile-fp.log). No rebuild started. Run-local transformers rewrite replaces rectangular patch-mask boolean assignment with full-size bucket coordinates plus torch.where (runs/smolvla/patch_vision.py). For the documented default sample, original and rewritten PyTorch outputs are BITWISE EQUAL (max_abs 0). Patched export succeeds; CPU compilation in progress. Original export/reference retained under artifacts, patched ones under patched. No tolerance exists in the supplied full-graph validation script (it prints metrics only); preselecting strict atol=rtol=1e-3 for compiler-vs-PyTorch checks and will report failures without widening.

SmolVLA provenance: HF lerobot/smolvla_base revision 7b375e1b73b11138ff12fe22c8f2822d8fe03467; HuggingFaceTB/SmolVLM2-500M-Video-Instruct revision 5e8d12a6e2975b0e5e5fce7c8caf47c371d257b6 (model-to-revision mapping and every downloaded file SHA256 in runs/smolvla/hf-provenance.json). Versions in runs/smolvla/versions.json: torch 2.10.0+cpu, torchvision 0.25.0+cpu, torchao 0.16.0, turbine 3.9.0, Python package compiler/runtime 3.13.0 (frontend import ONLY; every VMFB compilation/runtime invocation uses snapshot bin tools), transformers 4.57.1, lerobot 0.4.3, numpy 2.2.6, diffusers 0.35.2, HF hub 0.35.3. Full export commands/environment preserved in runs/smolvla/export_commands.sh. Downloads initially online; later runs use HF_HUB_OFFLINE=1.

INT8 quantization audit saved to patched/smolVLA.q.int8.mlir.quantization.json: all 302 requested linears successfully quantized as LinearActivationQuantizedTensor, one lm_head skipped, zero failures. Default export rewrite reports one replacement; remaining tensor subclasses retain integer data/ops in exported graph (original INT8 MLIR 867MB contains int8 weight resources and 448 mm-related operation lines). Do not equate this structural quantization audit with Gemmini offload coverage. Patched INT8 export pending.

Patched unquantized BF16 compile still fails: arith.constant value dense_resource tensor<32xbf16> vs result tensor<32xf32> (runs/smolvla/compile-fp-patched.log). Testing --iree-opt-const-eval=false without changing math. Also exporting true FP32 via run-local export_true_fp32.py (policy cast float32) so the requested FP variant is not mislabeled. No compiler source rebuild attempted.

Correction to preceding provenance sentence: actual mapping (authoritative hf-provenance.json) is **HuggingFaceTB/SmolVLM2-500M-Video-Instruct = 7b375e1b73b11138ff12fe22c8f2822d8fe03467**, **lerobot/smolvla_base = 5e8d12a6e2975b0e5e5fce7c8caf47c371d257b6**.

Default BF16 vs INT8 PyTorch quantization error, on byte-identical inputs: max_abs=0.17578125, mean_abs=0.0214947835, RMSE=0.0285467021, cosine=0.9998970032 (runs/smolvla/quantization-error.json). This is quantization error, separate from compiler accuracy. There is no acceptance tolerance in the supplied quantization validation script.

Disabling constant evaluation did not resolve BF16 dense_resource conversion. Testing exact-bit inline BF16 constants (inline_bf16_resources.py), preserving all numerical values. INT8 export fails initial bundled compile on unsupported torch.aten._int_mm. Run-local MLIR rewrite to torch.aten.mm retains explicit i8 inputs / i32 result; a focused bundled compile-and-run probe with 100-valued 2x2 inputs produces exact i32 20000 values (int_mm_probe{,-run}.log). This checks accumulating beyond int8 range before full-model compilation. No source rebuild needed for this rewrite; full-model outcome pending.

True FP32 export/compile/run now completes with bundled tools. First numerical comparison at the preselected atol=rtol=1e-3 **FAILS**: max_abs=0.0021872520, mean_abs=0.0001179033, RMSE=0.0001940334, cosine=1.0, shape [1,50,32], all finite (runs/smolvla/fp32/smolVLA.default.comparison.json). No tolerance change. Testing compiler options disabling precision reduction, FP reduction reassociation and skipped intermediate roundings; original result/VMFB preserved. No deployment or numerical pass claimed yet.

Optimized exact-bit constant workaround to inline only small BF16 resources (inline_small_bf16.py); initial all-resource text replacement was unnecessarily slow and interrupted before compile. INT8 mm rewrite gets through frontend but encounters same BF16 resource type bug. Applying small-resource inline workaround to both BF16 and INT8 graphs; compiles pending.

True FP32 baseline fails 1 of 1600 output values at the fixed 1e-3/1e-3 gate: position [0,0,4], PyTorch -0.9516494 vs IREE -0.9494622. Vision rewrite equality also verified separately for INT8: bitwise identical PyTorch outputs, max_abs=0 (vision-rewrite-check.json). All comparisons are for the exported one-step denoising function, not an iterative policy rollout. Runtime comparison helper writes raw output .bin with explicit BF16/FP32 decoding to avoid NumPy BF16 header interoperability issues.

Documented-default BF16 and INT8 graphs now both compile with run-local exact-bit small-resource inlining; final INT8 also needs the probed mm rewrite. Bundled BF16 CPU execution returns 1600/1600 NaNs: FAIL, not a numerical pass (bf16-run.log, patched/smolVLA.comparison.json). True FP32 with stricter arithmetic flags is bitwise the same output as default compile and still fails 1/1600 elements at unchanged 1e-3/1e-3. Both results retained. Running compiled default INT8 next. To test a useful CPU workaround separately, exporting INT8 with FP32 compute (same 302 INT8 linears, float32 dequant/other ops); explicitly separate from documented BF16-compute variant.

Documented-default INT8 CPU execution is finite but **FAILS** against its exact quantized PyTorch reference: max_abs=6.234375, mean_abs=1.6113506556, RMSE=2.0201709270, cosine=-0.0506915264, shape [1,50,32]. See int8-run.log and patched/smolVLA.q.int8.comparison.json. This is compiler/frontend/runtime disagreement, not quantization error (the separate PyTorch quantization error is only RMSE 0.02855). Do not label the generated INT8 VMFB numerically validated.

Additional provisioning commands used (all paths under ~/work; all uv invocations set UV_CACHE_DIR=$PWD/runs/uv-cache; managed Python commands also set UV_PYTHON_INSTALL_DIR=$PWD/runs/python):
```bash
runs/model-env/bin/uv venv --python 3.12 runs/smolvla/venv
runs/model-env/bin/uv pip install --python runs/smolvla/venv/bin/python torch==2.10.0 torchvision==0.25.0 --index-url https://download.pytorch.org/whl/cpu
runs/model-env/bin/uv pip install --python runs/smolvla/venv/bin/python torchao==0.16.0 iree-turbine transformers==4.57.1 'huggingface-hub<1' accelerate diffusers draccus einops num2words gymnasium deepdiff numpy==2.2.6
runs/model-env/bin/uv pip install --python runs/smolvla/venv/bin/python --no-deps -e runs/smolvla/third_party/lerobot
runs/model-env/bin/uv pip install --python runs/smolvla/venv/bin/python datasets==4.1.1 pandas scipy opencv-python-headless av jsonlines 'cmake<4' 'packaging<26'
runs/model-env/bin/uv pip install --python runs/smolvla/venv/bin/python -r runs/smolvla/inference-requirements.txt
```
The last requirements file derives LeRobot base dependencies excluding torch/torchvision/pynput, so no physical-input evdev build is needed. Full final freeze is requirements-actual.txt in each environment directory. Git clone commands use the URLs/branches from first pass; git fetch --depth 1 origin refs/tags/v0.4.3 then checkout FETCH_HEAD pins the LeRobot checkout. The Python 3.12 venv uses system Python 3.12.3; Merlin locked env uses managed 3.11.17.

Re-run verification commands:
```bash
runs/smolvla/venv/bin/python runs/smolvla/run_compare.py runs/smolvla/fp32 smolVLA
runs/smolvla/venv/bin/python runs/smolvla/run_compare.py runs/smolvla/patched smolVLA
runs/smolvla/venv/bin/python runs/smolvla/run_compare.py runs/smolvla/patched smolVLA.q.int8
```
Each writes the exact bundled iree-run-module command (all 11 input shapes/files) to <variant>.run-command.json, output bytes to <variant>.output.bin, and metrics to <variant>.comparison.json. `run_compare.py` records a false pass field on numerical failure; it does not disguise that as a successful numerical gate. Main commands finish invoking runtime even when gate fails, so read the comparison JSON, not only shell status.

Verification helper improved after initial runs: now exits **2** when the fixed numerical gate fails and **0** only on pass. Nonfinite metrics serialize as JSON null with nonfinite_count, rather than non-standard JSON NaN. The saved runtime command logs preserve the actual successful IREE invocation separately from the failed numerical gate.

INT8 FP32-compute workaround exact commands (uses the copied INT8 exporter with torch.bfloat16 replaced by torch.float32; all 302 INT8 quantization records still successful):
```bash
HF_HOME=$PWD/runs/hf-cache HF_HUB_OFFLINE=1 OMP_NUM_THREADS=8 PYTHONPATH=$PWD/runs/smolvla:$PWD/runs/smolvla/third_party/Understanding-PI0 runs/smolvla/venv/bin/python -u runs/smolvla/models/smolVLA/export_smolvla_int8_fp32.py --device cpu --out $PWD/runs/smolvla/fp32/smolVLA.q.int8.mlir
runs/locked-env/.venv/bin/python runs/smolvla/rewrite_int_mm.py runs/smolvla/fp32/smolVLA.q.int8.mlir runs/smolvla/fp32/smolVLA.q.int8.mm.mlir
iree-latest/bin/iree-compile runs/smolvla/fp32/smolVLA.q.int8.mm.mlir --iree-hal-target-backends=llvm-cpu --iree-llvmcpu-target-cpu=host -o runs/smolvla/fp32/smolVLA.q.int8.cpu.vmfb
runs/smolvla/venv/bin/python runs/smolvla/run_compare.py runs/smolvla/fp32 smolVLA.q.int8
```

A second focused INT8 accumulation check uses random signed values across the full [-128,127] range for [16,768] x [768,768] (matching model K/N). Bundled compiled torch.aten.mm with i8 inputs/i32 output matches NumPy int32 matmul BITWISE, max_abs=0 (check_int8_matmul.py, mm-large-comparison.json). This strengthens the mm rewrite check but does not override the failed full-model numerical result.

INT8 FP32-compute PyTorch quantization error on byte-identical inputs vs unquantized FP32: max_abs=0.1043237001, mean_abs=0.0173386615, RMSE=0.0230151918, cosine=0.9999307990 (fp32/quantization-error.json). This reference is saved before frontend export, so final compiler comparison remains against the exact quantized model rather than against unquantized output.

### Goal 4 final result — end-to-end artifacts produced, numerical validation FAILED

INT8 with FP32 compute also exports, compiles with the bundled binary, and executes, but **FAILS**: max_abs=6.4311723709, mean_abs=1.6005692482, RMSE=2.0049974918, cosine=-0.0325361080, all 1600 values finite. Numerical helper exits 2. Log int8-fp32-run.log; fp32/smolVLA.q.int8.comparison.json. Changing compute precision does not resolve the INT8 mismatch. Stop here rather than claiming acceptance or widening any tolerance. No full compiler rebuild was attempted.

Final compiled SmolVLA artifacts (all snapshot iree-compile, all tested with snapshot iree-run-module):

| Variant / location under runs/smolvla | VMFB | Numerical result vs corresponding PyTorch |
|---|---:|---|
| fp32/smolVLA.cpu.vmfb (true FP32, stricter flags) | ~1.5GB | FAIL 1/1600 at atol=rtol=1e-3; max_abs 0.00218725, RMSE 0.000194033 |
| patched/smolVLA.cpu.vmfb (documented unquantized BF16 compute) | ~754MB | FAIL 1600/1600 NaNs |
| patched/smolVLA.q.int8.cpu.vmfb (documented INT8/BF16 compute) | ~431MB | FAIL max_abs 6.234375, RMSE 2.02017 |
| fp32/smolVLA.q.int8.cpu.vmfb (INT8/FP32 compute workaround) | ~525MB | FAIL max_abs 6.43117, RMSE 2.00500 |

All use batch=1, three cameras, original image flags 256x256 (policy preprocessing supplies 512x512 images), prompt_len=8, seed=0, and return [1,50,32] for one denoising step without cache. No image/vision branch was dropped. Input bytes, PyTorch reference tensors, output bytes, comparison JSONs, run-command JSONs, raw/patched MLIR and exporter scripts are retained. Exact input sets match between unquantized and quantized references within each compute precision. Fixed numerical gate was selected before running comparisons, is unchanged, and is stricter than the reference script, which only prints metrics and has no gate. No accepted full-policy rollout or accelerator execution claim.

Run-local fixes are reviewable in export/compile scripts, patch_vision.py, inline_small_bf16.py, rewrite_int_mm.py, and understanding-run-local.patch. The transformers original file is preserved alongside the patched file with .original suffix. The FP32 precision variants explicitly differ from the documented BF16-compute flow; they are not silently substituted passes.

## Second-pass final outcome (supersedes first-pass current outcome)

- **Goal 1:** prior PASS retained; intentionally not rerun.
- **Goal 2:** export/quantization, VMFB compile, host execution and numerical gate PASS using clearly labeled public torchvision weights and synthetic input. Historical canonical experiment is not reproduced. Gemmini/RV64 attempt fails stack-allocation gate; CPU fallback passes.
- **Goal 3:** dependency issue resolved, but exact historical capture remains blocked by omitted hash-sealed contract/loader/input/reference/checkpoint assets and model2MLIR frontend. Strict QKV coverage failure remains 89 Gemmini / 66 scalar vs 155 / 0 required; not overridden or admitted for deployment.
- **Goal 4 (main deliverable):** weights downloaded/pinned/hashed; FP and INT8 exported, compiled and run; numerical comparisons FAIL as above. Artifacts are available for debugging, not accepted deployment artifacts.

Next steps: isolate first divergent SmolVLA layer/op using saved inputs and PyTorch intermediate tensors, checking importer quantization/out_dtype lowering separately from backend codegen; minimize BF16 NaN and FP32 single-element discrepancy. A compiler/frontend fix may be necessary, but no rebuild is currently justified as a verified solution and none was started. Before any compiler source rebuild, report the minimal reproducer and proposed fix per user instruction. TinyLlama needs the exact omitted sealed experiment bundle plus its frontend before historical reproduction can proceed; public weights alone cannot satisfy those hashes. Snapshot source/, patches/, historical_examples/ remain untouched. No numerical tolerances widened.
