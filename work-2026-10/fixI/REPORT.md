# Agent I compiler integration

Final result: **0/512000 seeded gate failures**, all finite; max_abs2.28881836e-5, RMSE2.19386643e-6. All4 greedy full-logit gates pass; tokens359,4033,2122,13. Validated path uses an explicit compile-time VML provider for static trig folding. See final section and tiny-vml/comparison.json; earlier failures below are historical and preserved.

2026-10-27, complete: direct-original TinyLlama INT8 seeded and4 greedy numerical gates PASS. All writes confined to fixI. Protected trees and fixC/fixE are read-only. CPU budget 30, affinity 0-29. Gates remain atol=rtol=0.001 against original TinyLlama INT8 references.

Read required REPORT.md, smolvla-numerics/SPEC.md, tinyllama2/REPORT.md, fixC/REPORT.md and fixE/{README,REPORT}. fixE proves Tiny requires ordered mean, SiLU scalar/vector exp, softmax16, static RoPE folding and removal of automatic contraction, plus fixC quantization and _int_mm spelling support. LayerNorm is not part of Tiny and will not be integrated for this task.

Source/build bootstrap: `cp -a runs/fixC/src runs/fixI/src; cp -a runs/fixC/build runs/fixI/build`. Tools from fixC are reused read-only. Build metadata must be relocated before any build invocation; copied symlinks pointing at fixC must be removed/replaced. No build invoked in fixC.

No new numerical pass claimed yet.

## Implementation/build in progress

Implemented source changes in copied torch-mlir `DecomposeComplexOps.cpp` and new `PytorchCpu*.h/.inc`: unconditional signed i8/i8 -> i32 `_int_mm` canonicalization to the existing widening integer mm; opt-in `--torch-pytorch-cpu-numerics` for static f32 last-axis means (8-lane four-accumulator cascade), softmax width16 and SLEEF exp/SiLU. `--torch-pytorch-cpu-reference-threads=16` names the pinned reference's scalar-tail partition; this is independent of the 30-core compiler/runtime execution budget. Algorithm templates contain no model values; generated MLIR is parsed and cloned inside the compiler, with no Python subprocess or precompile file rewrite. This is an initial compiler implementation, not yet a validated general upstream design.

Added bounded dependency-closed static tensor evaluation for f32 sin/cos, using native double sin/cos rounded to f32. It evaluates only supported static literal/shape/matmul(K=1)/cat dependencies and rejects unknown/dynamic inputs. Native trig has NOT yet been shown bit-exact to pinned MKL VML; full gate will decide whether this is sufficient. No result lookup/reference injection.

CPU codegen now adds automatic LLVM contract flags only when `skipIntermediateRoundings` permits skipping rounding; explicit FMAs survive strict mode. The flag-adding pass preserves preexisting flags when adding contract. LayerNorm omitted because it was not needed by the proved Tiny pass.

Copied build fully relocated with `python3 runs/fixI/relocate_build.py` (1422 build text files); copied source build symlink now points to fixI/build. The fixC toolchain/environment remain read-only dependencies. `runs/fixI/resume_build.sh iree-compile iree-opt > runs/fixI/build.log 2>&1` rebuilds within affinity0-29 and -j30. CMake regeneration succeeds; all objects recompile because absolute source/build paths changed. Warning-only exceptions are those inherited from fixC and reapplied by fixI/patch_ninja.py.

Early syntax check: `python3 runs/fixI/syntax_check.py > runs/fixI/syntax.log 2>&1`. First attempt identified missing DialectResourceBlobManager include; corrected source before its scheduled build. Recheck pending.

Syntax-only check now passes (Clang18, inherited build command). `native-trig-control.json` uses the saved isolated inputs only as a diagnostic: native double sin/cos differs from pinned PyTorch by66 cos and26 sin bits (max5.9604645e-8). The compiler does not read these probes. An optional `--torch-pytorch-cpu-constant-math-library=PATH` selects host VML `vsSin/vsCos` solely for evaluating supported static constant expressions. The pinned torch CPU shared library exports these routines; `vml-control.json` verifies they reproduce both isolated reference tensors exactly. This option is a declared external numerical-library dependency, not a claim of self-contained MKL reproduction. Native trig fallback is kept separately for a full-gate control. The exported original model, weights and all references remain untouched.

Executable numerical tests: `numeric_tests.py` (also installed in source test/Dialect/Torch/Inputs/pytorch-cpu-numerics.py), accepting --compiler/--runtime/--work-dir. Cases: three ordered mean widths720/2048/5632; softmax16; SiLU including scalar worker tails; full-range signed integer matmul with i32 accumulation. Exact-bit checks are extra diagnostics, never a relaxation of model gates. Lit regression: test/Dialect/Torch/pytorch-cpu-numerics.mlir, native _int_mm and scoped/fallback mean, softmax and SiLU checks. Pending rebuilt tools.

Formatting tool installed only under fixI/format-tools using `runs/model-env/bin/python -m pip install --target /home/loren/work/runs/fixI/format-tools --no-cache-dir clang-format==18.1.8`; formatted new C++ headers. No shared Python environment changed.

Workspace hygiene correction: the first template generator imported fixE/rewrite_exp.py without disabling Python bytecode. This accidentally created fixE/__pycache__/rewrite_exp.cpython-312.pyc at04:57. Removed precisely that newly generated bytecode (and the cache directory only if empty), and changed the generator to set sys.dont_write_bytecode=True. No fixE source/artifact was edited. All subsequent reference-environment calls set PYTHONDONTWRITEBYTECODE=1. This incidental write is explicitly disclosed rather than claiming the other directory was never touched.

Final source additions also clamp exp range-reduction inputs before float-to-integer conversion, preserving finite/Inf/NaN behavior without out-of-range conversion poison. Normal tested inputs retain the exact fixE polynomial and rounding sequence. Added explicit separate-rounding test and optional static sin/cos tests with the named math library. The source executable suite takes compiler/runtime/work-dir/CPU/worker options.

`python3 runs/fixI/make_patch.py` creates compiler-fixes-all.patch against the original protected snapshot (including fixC quant/GELU corrections) and checks application against independent original-file copies in fixI/patch-check. Initial combined patch applicability check PASS. Regenerate after final fixes/tests.

Regression baseline: bundled iree-opt on the extended Codegen/Common/test/add_fmfs.mlir succeeds, but its FileCheck fails precisely because existing nnan is overwritten by contract. Baseline outputs/logs: fmf-baseline.mlir, fmf-baseline.log, fmf-baseline-check.log. The new OR-preservation implementation is covered by this test. `_int_mm` integration was refined into a standard single-op decomposition pattern, respecting backend legal-op lists; syntax recheck passes.

Build stopped at6674/7559 on the inherited SplitExecuteRegions.cpp unused-but-set-variable warning under Clang18 -Werror, exactly as in fixC. CMake regeneration replaced the copied warning exceptions after the initial patch step. Original build.log retained. Reapplied object-local exceptions and resumed with `runs/fixI/resume_build.sh iree-compile iree-opt > runs/fixI/build-resume.log 2>&1`. No source workaround for this unrelated warning.

The scoped pass now explicitly declares arith/func/Torch/linalg/math/tensor/TorchConversion dependent dialects. This was added during the long build, so a final incremental rebuild is required after the remaining targets finish (source timestamp refreshed intentionally). This prevents accidentally validating an object compiled just before that last edit. Tests have not been run against the stale copied binary.

## First rebuilt-tool tests

Final incremental build succeeded, build-final.log. Compiler reports LLVM23.0.0git, optimized assertions. ldd resolves libIREECompiler.so through fixI/src/build/host-merlin-release -> fixI/build, not fixC. Commands: run_lit.py and numeric_tests.py --compiler fixI/build/tools/iree-compile --runtime iree-latest/bin/iree-run-module --work-dir fixI/numeric-tests --constant-math-library .../torch/lib/libtorch_cpu.so, both taskset0-29.

Initial numeric results: means720/2048/5632, softmax16, SiLU worker tails, signed full-range _int_mm and separate-rounding probe are ALL BIT-EXACT (7/7). Static sin/cos probes FAIL extra exact-bit checks (454/470 differences, max1.34e-7/1.19e-7), though both have0 ordinary1e-3 gate failures. Lit reveals static folding did not fire; not a claimed pass. Initial results retained in numeric-tests-initial-results.json and lit-initial.log.

Other new/inherited lit groups pass: no-mode integer mm, fast-math flag preservation, quant FIX-prefix and GELU conversion. CPU lit additionally had an incorrect expected fallback form: ordinary decomposition turns unsupported-width mean into sum+division, so changed expectation to standard sum (not the compatibility ordered slices). Static-fold reading/writing changed to typed ValueTensorLiteralOp API; rebuild/test pending (build-fold.log). No tolerance changes.

Static-fold root cause found during inspection: this header is included inside `mlir::torch::Torch`, so unqualified `FloatType` means Torch's scalar !torch.float, not builtin mlir::FloatType. Dense f32 literals were therefore conservatively rejected. Corrected to `isa<mlir::FloatType>`. The typed literal API change alone did not fix it. Temporary trace instrumentation is isolated for diagnosis and will be removed before final build/patch. Scalar/vector operator probes remain exact; no numerical gate has been relaxed.

## Scoped compiler tests PASS

After qualifying mlir::FloatType and removing temporary tracing, build-fold-final.log succeeds. All5 lit groups PASS (lit-results.json): compatibility lowering/fallback/static-vs-dynamic folding; default-mode native _int_mm; preservation of existing fast-math flags; fixC quant FIX-prefix; fixC GELU conversion. All9 new executable probes PASS BIT-EXACT (numeric-tests/results.json), including static sin/cos using the explicit VML provider. No test tolerance or bit-exact requirement changed. Initial failures remain recorded above/in retained logs. Quantization/GELU executable regression suite now running separately under quant-numeric-tests/.

Full model launch: `bash runs/fixI/run_tiny.sh tiny-original > runs/fixI/tiny-original.log 2>&1`. This directly invokes the new compiler on `/home/loren/work/runs/tinyllama2/int8/model.mlir`, with strict flags and compatibility mode, no math-library flag for this first native-trig control. There is NO precompile MLIR rewrite, no staged IR modification, no input/reference replacement. Compile command and all runtime commands will be retained in tiny-original/.

Inherited executable regression suite completed: all15 cases PASS in quant-numeric-tests/results.json, including exact qparams/integers (FP32/BF16), keepdim/partial blocks/dynamic unblocked dimensions/rounding/saturation, unsupported mapping rejection, and GELU max_abs5.816109478e-7 under unchanged2e-6 local bound. This suite ran from the combined patch's portable source test with the new compiler and bundled runtime, affinity0-29/8 PyTorch+runtime threads. Exact commands in quant-numeric-tests/commands.json.

## Full original Tiny native-trig control — FAIL

Direct original, unrewritten Tiny MLIR compiled and ran. tiny-original/comparison.json: all512000 finite; **470290/512000 FAIL** unchanged0.001/0.001 gate, max_abs1.0087493658, RMSE0.1470005825. Argmax16/16; top5 sets11/16. Greedy tokens match `[359,4033,2122,13]`, but all4 shared-prefix full-logit gates FAIL (counts471709/472386/471600/471648). Overall script exits2. No numerical acceptance claimed. Native trig folding differs from pinned VML as independently recorded, so this control does not establish whether any other residual remains.

Next direct-original run: `bash runs/fixI/run_tiny.sh tiny-vml /home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so > runs/fixI/tiny-vml.log 2>&1`. Only the compiler's explicit static-trig algorithm selection changes; references, tolerance, graph and inputs remain original. No run-local rewrite script. Compile/runtime worker count30 under affinity0-29.

Original RoPE closure also tested with new iree-opt on own dependency-only rope-probe.mlir slice: both sin/cos eliminated to constants with VML provider (rope-folded.mlir/log); compiler evaluation uses only original exported static resource data. The slicer is diagnostic-only and is NOT in either full-model compile path.

## Remaining full-model failure localized and fixed

Initial VML direct-original run also FAILS:469038/512000 seeded logits, all finite, max_abs1.2342410088, RMSE0.1330882411. Retained as tiny-vml-initial/ (renamed from tiny-vml to avoid overwriting); greedy tokens still match, all full-logit gates fail. Original native result was before the same missed softmax case, so it must NOT be treated as an ablation proving VML alone necessary/sufficient.

Deleted ONLY this run's two failed1.4GiB VMFBs after saving SHA256 in failed-vmfb-hashes.txt, to preserve shared disk capacity. Complete raw outputs, input/reference copies, comparison JSONs, commands and logs retained. They are reproducible from archived pre-softmax patch compiler-fixes-before-softmax.patch; compiler-before-softmax.sha256 records the library used. No other agent artifact removed.

Diagnostic slice from original graph (front-original.mlir), output23 original SSA values through first2 blocks, new compiler/VML/30 workers. front30/results.json: embedding, first RMS norm and q/k/v projections EXACT. First attention o_proj input differs14802 bits/max1.49e-8, then downstream small differences. No local1e-3 failures in2 blocks yet; this does not override full-model failure. Command helper slice_check.py and all compile/runtime commands in front30/commands.json.

Root cause: original Tiny softmax.int explicitly passes dtype integer6 (FP32), while initial compatibility pattern accepted only None. It therefore left all22 actual model softmaxes on ordinary lowering despite the standalone None-dtype softmax test passing. Added identity FP32 dtype6 handling, a lit regression and an additional executable exact-bit softmax test. Real dtype conversions retain ordinary lowering. Build pending in build-softmax.log; no tolerance/input/reference changed. The reference-thread option16 describes an equivalent SiLU partition for the tested90112-element inputs (3 tasks for any count>=3), not a replacement or recomputation of protected PyTorch references.

## Final softmax correction — local proof PASS

build-softmax.log succeeded. All5 lit groups PASS including explicit dtype6. All10 exact numerical operator probes PASS (numeric-tests/results.json); existing cases use the same seeded input bytes as before, with one added explicit-FP32 softmax case. Original-graph first2-block slice now **23/23 outputs BIT-EXACT**, all unequal_bits=0 and max_abs=0 in front30-fixed/results.json. This closes the previously first attention drift; no reference or tolerance substitution.

Final direct-original full rerun launched with same documented command `bash runs/fixI/run_tiny.sh tiny-vml .../torch/lib/libtorch_cpu.so > runs/fixI/tiny-vml.log 2>&1`. Final model result pending; local exactness is not being substituted for full-model acceptance. The final compiler's quant/GELU suite is rerun after the softmax source change; the broad legacy quant CHECK-prefix is separately retained as the known preexisting failure, while new FIX-prefix passes.

## Final full original TinyLlama INT8 — PASS (2026-10-27 05:37 UTC)

**Requested direct-original numerical gate achieved.** `tiny-vml/comparison.json`: all512000/512000 seeded logits finite; **0 failures** at unchanged atol=rtol=0.001 against protected `tinyllama2/int8/reference.npy`; max_abs **2.288818359375e-5**, RMSE **2.1938664308687575e-6**. Argmax16/16; top5 sets16/16. All4 corresponding protected shared-prefix greedy forward arrays also have0 failing elements; max_abs per step `[2.6702880859375e-5,3.337860107421875e-5,2.574920654296875e-5,2.574920654296875e-5]`. Greedy tokens exactly `[359,4033,2122,13]`. The complete model helper exits0 only when seeded and all4 greedy numerical gates pass and tokens match.

Validated direct compile command is recorded verbatim in `tiny-vml/compile-command.txt` and reproduced by:
```
bash /home/loren/work/runs/fixI/run_tiny.sh tiny-vml /home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so
```
It compiles **`/home/loren/work/runs/tinyllama2/int8/model.mlir`**, not model.mm.mlir or a generated graph. The compiler itself legalizes `_int_mm`, custom quantization, ordered means, f32 SiLU/exp (including scalar tails), explicit/None-FP32 softmax16, static RoPE, and strict post-codegen contraction. No precompile script rewrites the MLIR and no post-codegen IR edit occurs. The run helper only copies references/inputs locally, invokes compiler/runtime, and compares. Every exact runtime command is in `tiny-vml/run-commands.json`.

Compile flags: llvm-cpu/host;30 compiler and runtime workers under affinity0-29; numeric precision reduction=false; FP reduction reassociation=false; skipped intermediate rounding=false; input f64 demotion=false; torch-pytorch-cpu-numerics; torch-pytorch-cpu-reference-threads=16; explicit torch-pytorch-cpu-constant-math-library as above. Input f64 is internal implementation arithmetic for scalar expf, not conversion of model linears/compute from FP32. Original signed i8 inputs/weights and i32 accumulators are preserved. No reference substitution/tolerance widening; CPU only.

### Scope and remaining portability limitations

This is an opt-in, scoped PyTorch2.10 AVX2 compatibility mode, not universal bit-exact PyTorch support. Supported mean: static positive f32 shape, last axis, keepdim, None dtype, width divisible8 and floor(width/32)<=256. Softmax: static last-axis16 f32 with identity dtype6 or None. Exp/SiLU: static positive f32 shapes, SLEEF vector path; scalar tails depend on the explicit reference thread partition. Unsupported shape/dtype cases retain ordinary lowering and carry no full-model fidelity promise. The C++ implementation emits/parses/clones algorithm recipes in-process; it does not invoke Python or read model-reference files.

Exact static sin/cos is not a portable libm identity: the validated path explicitly loads `vsSin/vsCos` from the pinned PyTorch CPU numerical library. This is a **compile-time numerical-library dependency**; no PyTorch library is needed to execute the resulting VMFB. No MKL polynomial reimplementation is claimed. Its SHA256/version and all original input/reference hashes are retained. The earlier native-trig full control preceded the identity-dtype softmax fix; no final-source native-only ablation is claimed. Static evaluation is bounded/dependency-closed and rejects unknown/dynamic values, unsupported dtypes, tensors>65536 elements and unsupported matmul shapes. It never consumes captured activations/reference outputs. Nonnegative finite K=1 static products are the only supported matmul evaluation.

LayerNorm and smol-specific convolution repairs were not added: fixE's passing Tiny graph requires RMS means, not Welford LayerNorm. The external exporter BF16 singleton corruption is also not a valid compiler reinterpretation of existing literal values; no exporter/reference edit is part of this task. No SmolVLA INT8 or accelerator acceptance is inferred.

Final tests:5/5 scoped lit groups PASS,10/10 new exact numeric probes PASS,15/15 inherited quant/GELU probes PASS on final compiler,23/23 original first2-block values BIT-EXACT, seeded+4 greedy full numerical gates PASS. The preexisting legacy quant CHECK-prefix still FAILS as independently established by fixC against the original snapshot; final confirmation retained in lit-quant-legacy-check.log. FIX-prefix passes. No whole legacy lit-suite success claimed.

Final deliverables: src/; build/tools/{iree-compile,iree-opt}; build/lib/libIREECompiler.so; compiler-fixes-all.patch; README.md; REPORT.md; tiny-vml/{model.cpu.vmfb,comparison.json,compile-command.txt,run-commands.json,outputs/references/logs}; numeric-tests/; quant-numeric-tests/; lit-results.json; front30-fixed/results.json; versions/compiler/toolchain/build logs; artifact-hashes.json. Historical bootstrap helpers/prototype headers are not authoritative; final source and combined patch are. Build resumes remain -j30/affinity0-29, using fixC tools read-only; source/runtime/plugin deviations are the same documented Clang18/Radiance/warning-only exceptions as fixC.

Final verification: combined patch application check PASS against independent original-file copies (patch-check.log); original MLIR, seeded reference/input and pinned math-library SHA256 checks all PASS (input-hashes-after-check.txt). All11 copied reference/input/greedy metadata files are byte-identical to protected originals (tiny-vml/reference-copy-check.json). Final authoritative artifacts are recorded in artifact-hashes.json. No model/build jobs remain running.
