# Agent K — Gemmini compiler fixes

## Final resumed outcome (2026-10-27 UTC)

**Implementation and requested validation completed.** Built independent source copy and compiler under fixK with Gemmini plugin, CPUs 60–79/-j20. All three INT8 models compile directly from original exported MLIR, no pre-compile IR rewrite or executable hook, unchanged 32768-byte stack limit. Snapshot and other runs remain read-only. No accelerator execution or numerical acceptance claim.

| Model | Gemmini/scalar weighted sites | Weighted MAC offload | Compile |
|---|---:|---:|---|
| ResNet-50 INT8 | 54 / 0 | 100% | PASS |
| TinyLlama INT8 | 154 / 1 | 93.66447% | PASS |
| smolVLA INT8, FP32 compute | 443 / 3 | 99.40783% | PASS |

CPU regression: **TinyLlama FP32 PASS; ResNet PASS; TinyLlama INT8 remains FAIL** (467670/512000 at unchanged 1e-3/1e-3). Seeded outputs are bitwise identical to protected baselines for FP32/ResNet and to fixC for INT8: Gemmini changes do not alter these exercised CPU outputs. INT8 greedy agreement does not override its all-logit failure. TinyLlama historical strict 155/0 offload gate remains unmet.

**7/7 focused lit tests PASS**; native signed INT8 matmul execution exact. Patch: `gemmini-fixes.patch`, applies cleanly against original snapshot (check-only). Compiler: `build/tools/iree-compile`, plugin confirmed in compiler-plugins.txt. Final manifests: artifact-hashes.json, cpu-baseline-equivalence.json, stack-frames.json. Reproduction: build.sh/resume_build.sh; run_final.sh MODEL; coverage.py MODEL; run_models.py; run_resnet.py. Full commands and evidence follow.

## Historical first session (storage-blocked; superseded by resumed results)

2026-10-27 UTC. Work only in `/home/loren/work/runs/fixK`. Budget: CPUs 60–79, 20 jobs. Protected snapshot and other agents' directories were read only. No tolerance or stack limit was changed. No accelerator execution.

## Status

**INCOMPLETE.** No rebuilt compiler, new model VMFB, new coverage measurement, or CPU gate result is claimed. Initial free space was 3.3 GB; subsequent readings fluctuated between 4.1 and 5.0 GB as other work proceeded. fixC source is 3.0 GB and its build is 3.6 GB, before model VMFB/intermediate outputs. `/tmp` shares the same filesystem. `cp --reflink=always` fails with `Operation not supported`. Requested at least 15 GB additional writable capacity through the user-input tool. No other run's files were deleted. A full source copy/build would exhaust the shared filesystem.

## Prepared changes

`src/compiler/` is an independent **partial source copy**, copied from fixC with `cp -a runs/fixC/src/compiler runs/fixK/src/`. Remaining source has not been copied because of the capacity constraint. It is not yet a buildable full checkout.

Started from fixD's two candidate patches:

```
patch -d runs/fixK/src -p1 < runs/fixD/0001-distribute-static-matmuls.patch
patch -d runs/fixK/src -p1 < runs/fixD/0002-hoist-epilogue-buffer-views.patch
python3 runs/fixK/prepare_changes.py
python3 runs/fixK/prepare_tests.py
```

Those preparation scripts are historical bootstrap helpers; final source/patch includes subsequent changes and is authoritative.

* AttachCompilationInfo: prepend workgroup distribution, dispatch tensor load/store bufferization, layout combination, canonicalization/CSE, size propagation and forall-to-for before existing LLVM CPU bufferization. Static named matmul M/N receive gcd(dimension,DIM) output tiles; reduction K is unchanged. Dynamic M/N on this path explicitly fail. Generic/conv configuration remains a limitation requiring investigation before claiming general support.
* LowerTileToISA: replace fixD's broad subview sweep with dependency-closed motion of selected fold C/D operands. Only same-block, effect-free, speculatable dependencies move, in dependency order. Unsupported dependencies leave the fold disabled; loads/stores/allocations are not moved. This covers ordinary and f32-bias rescale folds and optional bias buffers in chained/head folds. No numerical correctness claim before build/tests.
* Passes.td: declare GemminiDialect as a dependency of the attachment pass, avoiding dialect loading from an active pass-manager context (exposed by direct regression invocation).
* Two new lit fixtures: bounded output tile configurations for 16x5632, 64x3136 and nondivisible 196/49/50/1000 dimensions; late destination/bias subviews for fused rescale.

## Checks actually performed

Read first: `REPORT.md`, `runs/smolvla-numerics/SPEC.md`, `runs/tinyllama2/REPORT.md`; then fixC/fixD reports, build scripts, candidate patches and coverage method.

Both new fixtures **parse and verify as input** with fixC's existing iree-opt (LLVM 23.0.0git, assertions); this is not execution of the changed compiler:

```
taskset -c 60-79 runs/fixC/build/tools/iree-opt runs/fixK/src/compiler/src/merlin/Dialect/Gemmini/Transforms/tests/bounded-output-tiles.mlir --iree-plugin=gemmini -o /dev/null > runs/fixK/parse-tiles.log 2>&1
taskset -c 60-79 runs/fixC/build/tools/iree-opt runs/fixK/src/compiler/src/merlin/Dialect/Gemmini/Transforms/tests/late-epilogue-views.mlir --iree-plugin=gemmini -o /dev/null > runs/fixK/parse-views.log 2>&1
```

Baseline late-view lowering with fixC **fails verifier**: `operand #2 does not dominate this use` on the emitted tile_matmul, as expected. `baseline-views.log` records the diagnostic. Exact command is the late-epilogue RUN line with iree-opt replaced by `runs/fixC/build/tools/iree-opt`, output redirected to `baseline-views.mlir`/`.log`. Baseline attachment invocation aborts trying to load GemminiDialect inside a pass; `baseline-tiles.log` records the attempt with `--mlir-disable-threading`. This led to the explicit dependency change. New FileCheck expectations have **not passed with rebuilt tools**.

```
python3 runs/fixK/make_patch.py
git -C iree-latest/source/Merlin-IREE apply --check /home/loren/work/runs/fixK/gemmini-fixes.patch > runs/fixK/patch-check.log 2>&1
```

Patch application check **PASS** against original snapshot, check-only. `gemmini-fixes.patch` includes inherited fixC numerical changes plus this run's Gemmini source/test changes. It is an **unbuilt candidate**, not a validated repair. Snapshot unchanged.

## Prepared rebuild / remaining work

Adapted `build.sh`, `resume_build.sh`, `patch_ninja.py` to fixK sources/build, taskset 60–79 and -j20. Tool binaries/toolchain remain read-only in fixC. Recipe retains fixC's Clang/LLD18, local CMake/Ninja, warning exceptions and disabled unrelated Radiance runtime. These scripts have not been executed. After space is supplied, complete independent source copy without overwriting changed compiler files, replace copied build symlink with fixK/build, then configure:

```
bash runs/fixK/build.sh --no-plugin-runtime --no-plugin-runtime-radiance --no-plugin-runtime-samples --no-plugin-runtime-radiance-tests --cmake-arg=-DIREE_EXTERNAL_HAL_DRIVERS= > runs/fixK/build.log 2>&1
bash runs/fixK/resume_build.sh iree-compile iree-opt > runs/fixK/build-resume.log 2>&1
```

Run new lit fixtures and relevant existing fusion tests. Compile all three original protected exports without executable preprocess hooks or MLIR rewriting, preserving 32768-byte stack limit and fixD's hardware descriptor/preprocessing settings. Native original `_int_mm` legalization also needs checking: fixD used previously rewritten `.mm.mlir` artifacts, whereas the request says original exported MLIR. No claim that this extra frontend requirement is handled by this candidate.

Measure weighted coverage with fixD's source binding/shape provenance plus actual emitted LLVM command calls, saving new evidence in fixK. fixD's 54/0, 154/1, 443/3 counts are **prior-run results only**, not fixK measurements. Run rebuilt CPU TinyLlama FP32/INT8 (all logits plus greedy calls), and ResNet's preselected CPU gate. TinyLlama INT8's known failure must remain honestly reported if it persists; no claim that CPU is unaffected until these runs finish. No model export, reference, or tolerance changed.

## Resumed after storage expansion

2026-10-27: storage now sufficient. Completed independent source copy from fixC, preserving prepared compiler changes, and created fixK-local build symlink. Resuming configure/build with CPUs 60–79 and -j20. Prior blocked status above is historical; validation pending.

Resumed commands (cwd `/home/loren/work`): complete the fixC source tree with Python shutil.copytree(symlinks=True), excluding compiler/ (prepared changes preserved) and build/; create src/build/host-merlin-release -> fixK/build. `bash runs/fixK/build.sh --no-plugin-runtime --no-plugin-runtime-radiance --no-plugin-runtime-samples --no-plugin-runtime-radiance-tests --cmake-arg=-DIREE_EXTERNAL_HAL_DRIVERS= > runs/fixK/build.log 2>&1` configured successfully and is compiling. Added native `_int_mm` conversion with signed i8/rank-2/i32-output contract checks, delegating to existing mm lowering. This is a compiler conversion, not pre-compile rewriting; validation pending. New run_final.sh uses original model.mlir / smolVLA.q.int8.mlir, no executable preprocessing hook, unchanged Gemmini descriptor and stack default. Coverage will use newly dumped executable source provenance and actual newly emitted LLVM, rather than fixD's prior evidence.

Build progress: initial build stopped at the known SplitExecuteRegions.cpp unused-but-set-variable -Werror. `bash runs/fixK/resume_build.sh iree-compile iree-opt > runs/fixK/build-resume.log 2>&1` regenerated CMake after test-list additions, overwriting object warning exceptions and stopped at the same warning. Reapplied exceptions after regeneration with `bash runs/fixK/resume_build.sh iree-compile iree-opt > runs/fixK/build-resume2.log 2>&1`. No new semantic build deviation.

## Rebuilt compiler and initial validation

Build completed: `build-resume2.log`, fixK/build/tools/{iree-compile,iree-opt}, fixK/build/lib/libIREECompiler.so. LLVM 23.0.0git optimized assertions; plugin list confirms gemmini. Local lit runner invocation: `taskset -c 60-79 python3 runs/fixK/src/third_party/iree_bar/third_party/llvm-project/llvm/utils/lit/lit.py -v -j20 runs/fixK/lit > runs/fixK/lit.log 2>&1`. **7/7 PASS** (three new fixtures plus four existing fusion/ISA/WS regressions). Initial 6/7 run retained as lit-initial.log; corrected tiling FileCheck to print local scope (attribute aliases otherwise print before function CHECK-LABEL). No compiler change was needed for that test correction.

`PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=20 taskset -c 60-79 runs/smolvla/venv/bin/python runs/fixK/test_native_int_mm.py > runs/fixK/native-int-mm.log 2>&1`: PASS exact signed i8 -> i32, including values beyond int8 range. Exact commands/inputs/output/reference in native-int-mm/.

`bash runs/fixK/run_final.sh resnet > runs/fixK/resnet-bounded.log 2>&1`: **PASS**, original exported resnet50.q.int8.mlir, no preprocessing executable/hook and no source rewrite. Historical compiler preprocessing passes remain ordinary flags. Default 32768-byte stack-allocation limit unchanged. TinyLlama/smolVLA compilation started sequentially with the same script and original `_int_mm` exports.

TinyLlama Gemmini direct original export: `bash runs/fixK/run_final.sh tinyllama > runs/fixK/tinyllama-bounded.log 2>&1` **PASS**, exit 0, 30.64 s, peak RSS 5499896 KiB. ResNet: 7.82 s, peak RSS 514024 KiB. These are compile timings, not accelerator performance.

Fresh audits: `python3 runs/fixK/coverage.py resnet` and `python3 runs/fixK/coverage.py tinyllama`. ResNet weighted sites **54/0**, MACs 4,089,184,256/0 (100%); TinyLlama **154/1**, MACs 15,502,147,584/1,048,576,000 (93.66447035%). TinyLlama scalar lm_head is main$async_dispatch_618_batch_matmul_1x16x32000x2048_f32; 44 additional activation-only attention contractions remain scalar. Historical strict 155/0 gate remains unmet. Audit uses new fixK dumped sources and new linked.ll command calls, no prior fixD artifact substituted.

SmolVLA Gemmini direct original FP32-compute INT8 export: `bash runs/fixK/run_final.sh smolvla > runs/fixK/smolvla-bounded.log 2>&1` **PASS** exit 0. `python3 runs/fixK/coverage.py smolvla`: **443/3** weighted sites, MACs **304,173,286,912/1,811,939,328**, **99.40783437%**. Three scalar weighted sites are repeated vision patch convolutions; 46 additional activation-only contractions remain scalar. This is compile-only, with known protected INT8 numerical limitations unchanged.

CPU regression commands started sequentially:
```
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=20 taskset -c 60-79 runs/smolvla/venv/bin/python runs/fixK/run_models.py tinyllama-fp32 tinyllama-int8 > runs/fixK/models.log 2>&1
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=20 taskset -c 60-79 runs/smolvla/venv/bin/python runs/fixK/run_resnet.py > runs/fixK/resnet-cpu.log 2>&1
```
These compile original exports with the rebuilt compiler, execute bundled runtime, write only fixK/models, and compare unchanged protected references. TinyLlama all-logit and greedy checks are at 0.001/0.001; ResNet QDQ ORT gate is 0.8/0.1 plus top1 as preselected. Full exact command arrays: model-commands.json and models/resnet/commands.json.

Regenerated gemmini-fixes.patch and checked `git apply --check` against the original snapshot (read-only check), PASS. Patch includes inherited fixC numerical changes, Gemmini tiling/view fixes and native `_int_mm` support plus new lit fixtures/CMake registration. It intentionally includes inherited fixes needed by the requested original-export compiler build. No compiler executable preprocess hook is used by run_final.sh.

## CPU gate: TinyLlama FP32 PASS

Rebuilt compiler compiled original FP32 model in 130.57 s and bundled runtime executed seeded + four greedy calls. All **512000/512000 finite**, **0 failures** at unchanged atol=rtol=0.001; max_abs **0.0001550912857**, RMSE **0.00001304731619**. Argmax 16/16, top5 sets 16/16, greedy **[359,4033,2122,343]** equals protected PyTorch. All four corresponding-prefix greedy all-logit gates pass too. Metrics match protected bundled baseline. Exact result: models/tinyllama-fp32/comparison.json.

Static frame evidence from adapted fixD tool `python3 runs/fixK/stack_frames.py`: max assembly CFA offsets **560 ResNet, 1456 TinyLlama, 2032 smolVLA bytes**. See stack-frames.json; not runtime stack high-water/call-chain evidence. smolVLA compile wall 3:13.23, peak RSS 3289144 KiB, exit 0.


## Final CPU results and limitations

TinyLlama INT8 original export compiles (63.03 s) and executes. All 512000 logits finite, **467670 fail** unchanged atol=rtol=0.001; max_abs **1.7265138626**, RMSE **0.2258815244**. Argmax 15/16, top5 sets 8/16; four greedy tokens [359,4033,2122,13] match protected quantized PyTorch, but every corresponding all-logit greedy call fails. This is the same known fixC numerical failure, not acceptance. Full result: models/tinyllama-int8/comparison.json.

ResNet: **PASS** unchanged QDQ ORT gate atol=0.8/rtol=0.1, 0 failed elements, all finite, max_abs **0.3347206116**, RMSE **0.04244241118**; top1 **21** matches ORT/PyTorch. This is the same public synthetic-input experiment as protected baseline, not historical canonical reproduction or dataset accuracy. Full result: models/resnet/comparison.json.

`PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=1 taskset -c 60-79 runs/smolvla/venv/bin/python runs/fixK/finalize.py > runs/fixK/finalize.log 2>&1` compares seeded output payloads with baseline and writes SHA256/size manifest for original inputs, scripts, patch, compiler/shared library and final artifacts. All three seeded payload comparisons are **BITWISE EQUAL**, max_abs 0: TinyLlama FP32 vs tinyllama2/fp32/seeded-output.npy; INT8 vs fixC/models/tinyllama-int8/output.npy; ResNet vs resnet50/artifacts/iree_output.npy. CPU behavior is unaffected on these exercised cases; no broader CPU-equivalence proof is claimed. Per-step exact inputs retained as greedy-N-input.bin (original shared greedy-input.bin is overwritten by the runner; command log remains exact about that path).

Version/build records: compiler-version.txt (LLVM23.0.0git, optimized assertions), compiler-plugins.txt (gemmini), toolchain-version.txt (Clang/LLD18.1.3, CMake4.4.4, Ninja1.13.2), compiler-CMakeCache.txt. Python3.12.3 and protected smolVLA venv NumPy2.2.6 used for comparisons; no package environment writes. Snapshot provenance and inherited fixC numerical changes are documented above. Build disables unrelated Radiance runtime/Python bindings, retaining Gemmini compiler plugin; warning exceptions match fixC, generated build file only.

Compiler scope: tested static named matmul output divisor tiling; K is unchanged. Dynamic M/N are explicitly rejected on that path. Generic/conv configurations beyond the exercised preprocessing path remain a limitation. Pure-view motion is dependency-closed and rejects unsupported dependencies rather than moving memory effects. Full-model accelerator numerical behavior has not been executed or validated. Weighted coverage excludes elementwise/pooling/activation-only contractions; repeated camera/layer sites count separately, not unique weight tensors. Scalar work remains as listed in coverage JSONs. No tolerance, reference, weight or protected exported graph was changed. No fixed full-model smolVLA INT8 numerical result is claimed.

The initial first-session INCOMPLETE label above is historical. Requested compiler implementation/build, lit regressions, three direct original-export Gemmini compiles, weighted emitted-code audits, and CPU gate checks are now complete, with the existing TinyLlama INT8 numerical failure explicitly retained.
