# Agent N merged compiler

2026-10-27 UTC. In progress. All writes confined to fixN. Budget 80 CPUs (0-79), -j80 maximum. Protected snapshots/experiments and other agent directories read-only. No gates changed.

Read root REPORT, smolVLA SPEC, TinyLlama REPORT first, then fixC/I/J/K reports and fixL HANDOFF; also fixG and fixM reports. Final J supersedes handoff's early blocked status; final K supersedes early unbuilt status.

Original source extraction (not copied from modified trees):
```
unzip -q /home/loren/iree-latest-compiler-and-examples.zip 'iree-latest/source/Merlin-IREE/*' -d runs/fixN/original > runs/fixN/logs/unzip.log 2>&1
```
Original extracted source retained for patch comparison. Source merge/build/tests pending. KV-cache M requires pinned runtime attention BLAS for INT8, and its local softmax128 rewrite; these are explicit limitations to preserve in final assessment. BF16 graph requires exporter scalar repair separately from compiler scalar opmath/rounding.

Merge verification in merge-verification.json: C files exactly retained in I. I files all retained in J, with three compatibility implementation files extended. K delta from C is eight files, disjoint from J (native integer-mm is in Linear.cpp, while J also has decomposition support). Applied J cumulative patch and K delta from independent patch applications to extracted originals. Initial audit assertion incorrectly expected Uncategorized.cpp overlap; corrected audit after inspecting actual patch files, no source conflict existed.

Fresh configure/build:
```
bash runs/fixN/build.sh > runs/fixN/logs/configure-build.log 2>&1
```
Full-plugin Gemmini compiler, local fixC Clang18/CMake/Ninja tools read-only, no Python bindings or unrelated Radiance runtime. Fresh build, no reused build objects. 80 CPUs 0-79, -j80.

Additional implementation in progress: compiler BF16 mul.Scalar FP32 opmath; synthetic typed BF16 recipes ported from G; explicit original BF16 RNE boundaries before CPU promotion; softmax128 and opt-in pinned runtime attention plugin for KV decode. Recipes retain runtime tensor operands and scalar options; generation reads only operation signatures/options, never model literal payloads or references. BF16 input uses B's exporter-corrected graph, whose inputs/reference were verified identical to protected originals; malformed original singleton constants cannot be repaired by interpreting compiler semantics differently. No passing new numerical result yet.

BF16/ KV recipe generation commands:
```
python3 runs/fixN/extend_recipes.py
PYTHONDONTWRITEBYTECODE=1 taskset -c 0-7 runs/smolvla/venv/bin/python runs/fixN/generate_bf16_recipes.py
python3 runs/fixN/extend_kv.py
PYTHONDONTWRITEBYTECODE=1 taskset -c 0-7 runs/smolvla/venv/bin/python runs/fixN/generate_kv_recipes.py
python3 runs/fixN/port.py
python3 runs/fixN/prepare_tests.py
```
17 BF16 signatures, 6 KV signatures, generated IR tables in source. KV attention matmul recipes require new explicit --torch-pytorch-cpu-kv-attention-plugin flag and runtime executable plugin; softmax128 is compiler-owned. No KV precompile graph rewrite is planned. N will compile M's original exported graphs, not its repaired IR. Early BF16 rounding protection selected only when skipIntermediateRoundings=false; original BF16 model boundaries retained through explicit scalar integer RNE.

Provider pinned and symbol-checked by:
```
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=1 taskset -c 0-7 runs/smolvla/venv/bin/python runs/fixN/pin_provider.py
```
SHA256 4dc5b3a649b61d8f39be127866bc258dda19d74e339f449fe18103db63e8d76f, PyTorch 2.10.0+cpu wheel libtorch_cpu.so. Provider supplies vsSin/vsCos, Sleef_powd8_u10avx512f at compile time; KV plugin separately uses cblas_sgemm_batch at runtime. Provider is external, not packaged. PyTorch license + third-party notices copied read-only into licenses/. PyTorch BSD-3-Clause, SLEEF Boost1.0; Intel oneMKL/VML uses Intel Simplified Software License (official FAQ https://www.intel.com/content/www/us/en/developer/articles/tool/onemkl-license-faq.html). Existing scalar-exp recipe incorporates glibc LGPL2.1+ algorithm/table, noted in source provenance; LGPL2.1 license copy included. Binary SHA pin is enforced by reproduction wrapper, not by generic compiler flag, which allows explicitly selecting another math provider.

Initial clean build reached known existing SplitExecuteRegions.cpp:238 -Wunused-but-set-variable -Werror. Same warning exception as prior builds; no source semantics or math flags changed to bypass warning. configure-build.log retained. Other jobs draining before resume.

Resumed clean build:
```
bash runs/fixN/resume_build.sh iree-compile iree-opt iree-run-module > runs/fixN/logs/build-resume.log 2>&1
```
A final incremental rebuild will follow because the new BF16 round guard was scoped behind explicit --iree-llvmcpu-preserve-pytorch-bf16-round-sites while the long build was running. This opt-in flag documents PyTorch's f64->f32->BF16 cast behavior; ordinary MLIR f64 casts must not silently inherit that double-rounding compatibility choice. Requires skipIntermediateRoundings=false. Scalar Torch BF16 mul.Scalar fix remains unconditional PyTorch semantics. BF16 standalone exact-bit regression added under TorchToLinalg/Inputs; conversion FileCheck under bf16-scalar-opmath.mlir.

Fresh build complete, Gemmini plugin confirmed. Final incremental command succeeded; compiler-hashes.txt records all three tools and libIREECompiler.so. compiler-version.txt: LLVM23.0.0git, optimized/assertions. Toolchain versions and CMake cache retained. KV persistent runner initially linked a fixM-specific libbacktrace path absent in this fresh layout; made optional, rebuilt successfully against N runtime libraries (kv-build-final.log). No compiler source change for that helper correction.

Validation launched:
```
taskset -c 0-79 python3 runs/fixN/run_lit.py
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=8 MKL_NUM_THREADS=8 OPENBLAS_NUM_THREADS=8 taskset -c 52-59 runs/smolvla/venv/bin/python runs/fixN/bf16_probes.py
taskset -c 0-79 bash runs/fixN/run_campaigns.sh
taskset -c 52-79 bash runs/fixN/run_extra_tests.sh
```
Campaign scripts retain exact commands per invocation, unchanged gates and references. Original fixL/suite/run_all.sh invoked against N compiler/runtime with local manifests (extra compatibility flags only). BF16 exporter-corrected exact-bit-inline input retains all448 native quantizer/int_mm chains. KV compiles original M prefill/decode MLIR without its run-local softmax/attention rewrites; explicit compiler attention flag controls plugin emission.

Initial results: inherited six lit groups PASS. BF16 scalar4096 and multiply/add-rounding4096 outputs both bitwise exact,0 gate failures. Initial probe driver had Python argument-variable shadowing before compilation, corrected; first failed driver log retained. ResNet CPU PASS0/1000 at original0.8/0.1, max_abs0.3347206116/RMSE0.04244241008; Gemmini compile and audit PASS54/0 weighted sites. All ten inherited exact-bit numeric probes PASS. Remaining campaigns in progress.

Focused KV compiler-only plugin recipe probe initially aborted: Flow dialect loaded during multithreaded execution. This is a new integration defect, recorded in kv-probe/opt.log, not a passing model result. Added IREE-build-only Flow/Codegen typed dependent-dialect declarations and matching CMake dependencies; standalone torch-mlir emits an explicit unsupported diagnostic for this optional IREE-only path. Rebuilding with:
```
bash runs/fixN/resume_build.sh iree-compile iree-opt iree-run-module > runs/fixN/logs/build-kv-dialects.log 2>&1
```
No mathematical recipe, tensor, input, reference or tolerance changed by this dependency correction. Final-source results will be refreshed after the binary is linked. Six lit groups,10 inherited numeric cases,15 quant/GELU cases,22 FP32 smol operator cases and7 Gemmini lit cases passed on the preceding binary. Tiny FP32 suite PASS0/512000, max_abs0.0001707077/RMSE1.12508836e-5. Tiny Gemmini compile PASS154/1 weighted sites; residual scalar lm_head means historical strict155/0 gate remains unmet.

All three initial Gemmini compiles/audits match requested K counts:54/0,154/1,443/3. Weighted MAC fractions1.0,0.9366447034972124,0.9940783437479468. Static assembly max CFA offsets560,1456,2032 bytes, not runtime call-stack measurements. No stack tolerance/limit raised.

KV FP32 full three-prompt32-output campaign PASS0/3,072,000 with identical greedy sequences. Initial no-cache Tiny INT8 PASS0/512000 max_abs2.288818359375e-5/RMSE2.1938664308687575e-6; smol FP32 PASS0/1600 max_abs1.3947486877441406e-5/RMSE1.509524558907936e-6. These initial campaigns use the pre-dialect-declaration binary (numerical code unchanged); final frozen binary rechecks are separated under output/final-*.

Dependency correction rebuilt successfully; `build-frozen.log` confirms no further work. Frozen hashes in compiler-final.sha256 (libIREECompiler.so9f9c8e48b4749abf448d959358f239f3b5c35fe36acf913d3263d680652611aa). Focused KV enabled/disabled lit checks PASS, six inherited lit groups PASS, both BF16 exact probes PASS on frozen compiler. Final patch applies and reproduces39/39 affected files, logs/make-patch-final.log and logs/final-patch-check.log.

Final-source campaigns:
```
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=8 MKL_NUM_THREADS=8 OPENBLAS_NUM_THREADS=8 bash runs/fixL/suite/run_all.sh /home/loren/work/runs/fixN/build/tools --profile patched --cpus 52-59 --manifest /home/loren/work/runs/fixN/suite/models.json --output /home/loren/work/runs/fixN/output/final-suite
# BF16: same entry, --cpus 32-39, suite/bf16-models.json, output/final-bf16.
# No-provider diagnostic: --cpus 40-47, suite/no-provider-models.json, output/no-provider.
```
The no-provider diagnostic keeps Tiny's unchanged numerical/greedy gates and all compatibility options except the provider flag; it does not establish an accepted alternate mode. Final-source operator suites repeated after dependency correction. No mathematical source change after frozen binary.

Original-export KV INT8 initial campaign PASS0/3,072,000 logits, all3 greedy sequences equal. Compiler-owned softmax128 and explicit pinned attention plugin path, no M softmax/attention graph rewrite. Initial KV evidence retained in kv/initial-evidence (old VMFBs hashed before recompilation). Frozen-compiler KV campaign now running through kv/run_final.sh; per-stage *-input-compiler.sha256 pins original M graph + frozen compiler/library. Persistent runner rebuilt against N runtime libraries. Both precisions retain all native model layers; INT8 retains154 integer linears.

Final no-provider control is an honest numerical FAIL:410487/512000 seeded elements, max_abs1.339085578918457, RMSE0.20269055968872843, all finite. All4 shared-prefix array gates fail although greedy tokens[359,4033,2122,13] still match. This final-source ablation establishes that removing the explicit provider is not an accepted alternative for the tested INT8 graph. No tolerance or reference changed. output/no-provider/results.json and per-call logs/commands retained.

Initial merged BF16 campaign completed PASS0/1600, max_abs0,RMSE0 versus original protected BF16 quantized reference. Frozen-binary BF16 repeat is still pending; a commentary initially mislabeled the initial result as frozen, corrected immediately after checking output paths. No final-source acceptance is inferred until its separate result exists. Post-run bit checks are computed by compute_exact_bits.py; gate always remains original finite per-element1e-3/1e-3.

input-graph-audit.json confirms original quantization structure: smol FP32/BF16 each448 _int_mm/choose_qparams/quantize ops; Tiny no-cache and both INT8 KV graphs each154. BF16 corrected export's saved PyTorch reference and all11 input binaries are SHA256-identical to protected originals (bf16-protected-reference-check.json). Corrected source retains literal/model semantics; compiler recipes never read those saved references.

Frozen-source status: ResNet PASS0/1000; Tiny FP32/INT8 PASS0/512000 each plus all4 corresponding-prefix arrays/greedy tokens; smol FP32 PASS0/1600. Frozen KV FP32 PASS0/3,072,000, all3 greedy32-output sequences equal. Frozen BF16 and smol INT8 FP32 full runs, KV INT8 and last Gemmini refresh pending. Initial BF16 exact-bit check confirms0/1600 unequal BF16 payloads; final campaign will get its own exact-bit record.

Reviewed actual I-to-J-overlap.diff: changes are additive math-adapter/SCF dependencies and extra recipe/formula passes; prior I numerical implementations are retained. File-set check alone is supplemented by this diff review and final inherited executable regressions. Final-source standalone probes and all22 FP32 smol operator checks pass unchanged. No additional compiler mathematical source edits were needed after the first numerical build.

Frozen BF16 repeat is now independently complete: output/final-bf16/smolvla-int8-bf16/result.json PASS0/1600, all finite,max_abs0,RMSE0; exact-bits.json confirms0/1600 unequal BF16 payloads. Frozen KV INT8 also PASS0/3,072,000, all3 greedy32-output sequences equal; both KV stage compiler-pin files match compiler-final.sha256. All frozen Gemmini compiles/audits completed54/0,154/1,443/3 at unchanged32768-byte limit. Only final suite smol INT8 FP32-compute entry remains pending; its initial merged campaign already passed bitwise0/1600.

Packaged binary wrappers will select compiler/lib with LD_LIBRARY_PATH, because frozen ELF tools retain an absolute build RUNPATH. Tool and shared-library bytes themselves are not patched; portable wrapper --version smoke succeeds. Archive verification will hash every entry and compile/run an extracted matmul through the packaged compiler/runtime. Package will retain patch, FINAL, scripts, complete suite outputs, operator evidence, actual Gemmini dumped source/linked LLVM/assembly, licenses, provider metadata and frozen binaries. Large model VMFBs are recorded by SHA256 rather than duplicated; protected external model inputs/exports remain external.

## Final frozen compiler — all requested gates PASS

Final suite returned0 with all five entries PASS. Smol INT8 FP32-compute is0/1600 failures,all finite,max_abs0,RMSE0,0 unequal bits; BF16 final repeat has identical zero-error/bit counts. Tiny FP32 and INT8 have0/512000 seeded failures and all4 full-prefix arrays/greedy tokens pass. ResNet retains0.8/0.1 gate and matching top1. KV FP32 and INT8 each have0/3,072,000 failed logits and all3 greedy32-token sequences match; max_abs0.00019550323486328125 and0.0000457763671875 respectively. All three frozen Gemmini audits match54/0,154/1,443/3. No hardware execution claim.

FINAL.md contains the complete20-row final pass table, source/build commands, compatibility flags, exact provider identity/pin/license, retained failure controls and limitations. Frozen binary hashes rechecked successfully; final provider SHA256 rechecked. Latest consolidated patch independently git-apply --check/applies and reproduces39/39 final affected files. No compiler numerical source changed after the frozen binary.

Final verification/packaging commands (cwd /home/loren/work):
```
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=1 taskset -c 68-75 runs/smolvla/venv/bin/python runs/fixN/compute_exact_bits.py
python3 runs/fixN/finalize_results.py
python3 runs/fixN/make_patch.py
sha256sum -c runs/fixN/compiler-final.sha256
PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=1 taskset -c 68-75 runs/smolvla/venv/bin/python runs/fixN/pin_provider.py
taskset -c 68-75 python3 runs/fixN/verify_source_tree.py
taskset -c 68-75 python3 runs/fixN/package.py
taskset -c 68-75 python3 runs/fixN/verify_archive.py
```
Archive checksum is adjacent final.tar.gz.sha256, per-entry checksums are package-files.sha256 inside the archive, and archive-verification.json records post-packaging independent hash checks plus extracted compiler/runtime matmul smoke. That post-packaging verification file is adjacent rather than inside its own checked archive. The assembled build_fresh.sh recipe is syntax-checked; a redundant second full fresh build was not run. N itself was configured/built from ZIP-extracted original source with the exact component commands recorded above.

Expected retained failures/limitations are not hidden: no-provider final Tiny diagnostic exits2 (410487 seeded gate failures), general asymmetric/FLOAT-domain TorchAO paths unsupported, original corrupted BF16 export not reinterpreted, scoped shapes/CPU algorithms/reference partitions, KV INT8 explicit pinned BLAS runtime dependency, known legacy quant CHECK-prefix mismatch, historical strict Tiny155/0 offload gate unmet. Required numerical gates/tolerances/references unchanged throughout.

Whole-source verification completed:196667 original entries versus196690 final entries, excluding build/.git/__pycache__ directories. Exactly the39 patch paths differ; zero unexpected changes and zero missing patch changes (source-diff-verification.json). A native `diff -qr --exclude=build --exclude=.git --exclude=__pycache__ runs/fixN/original/iree-latest/source/Merlin-IREE runs/fixN/src` corroboration is retained in logs/source-native-diff.log (exit1 means expected differences). All model/build campaigns have completed. Final package assembly and extracted-tool verification are the final artifact checks, with results recorded by package.py and verify_archive.py; see final.tar.gz.sha256 and archive-verification.json adjacent to the archive.

First archive integrity verification passed all file hashes, but extracted compiler smoke failed to locate the embedded linker (logs/portable-missing-linker.log). Native builds find N/build/llvm-project/bin/lld relative to the build layout; copied front-end binaries alone do not. Packaging corrected to include the same110MiB LLVM23 LLD binary and explicitly set IREE_LLVM_EMBEDDED_LINKER_PATH in wrappers. This is separate from the Clang/LLD18 build toolchain. Native compiler/library/model artifacts are unchanged. Added LLD hash/version/license; extracted smoke now uses dynamic matrix inputs so backend compile/link/runtime are all exercised. Repackage/reverify with the same commands; initial failure retained honestly.

## Archive verification completed

Corrected bundle PASS: all3719 per-entry SHA256 checks; bundled library resolution confirmed; Gemmini registered; extracted compiler + bundled LLVM23 LLD compiled a dynamic2x2 matmul and extracted runtime returned exactly[19,22,43,50]. Frozen native compiler/library bytes and all required model results are unchanged. Final archive is resealed with this completed report; its adjacent SHA256 file and post-seal archive-verification.json identify the exact delivered bytes. No model/build jobs remain running. Snapshot, protected experiments and other agents' directories remain unmodified; all acceptance gates stayed preselected.
