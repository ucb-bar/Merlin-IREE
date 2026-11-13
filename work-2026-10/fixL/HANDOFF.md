# Regression suite and compiler handoff

2026-10-27 UTC. Authoritative suite lives in `/home/loren/work/runs/fixL/suite`. This package reads existing exports; it does not export models, download weights, change references or widen gates. All suite writes are within fixL; runs are sequential at eight workers on CPUs88-95. Both campaigns completed; final evidence is tabulated below.

## Run and inspect

```
cd /home/loren/work
runs/fixL/suite/run_all.sh /home/loren/work/iree-latest/bin --profile snapshot --output /home/loren/work/runs/fixL/output/snapshot
runs/fixL/suite/run_all.sh /home/loren/work/runs/fixI/build/tools --profile patched --output /home/loren/work/runs/fixL/output/patched
```

Expected nonzero exit2 when any model fails. Inspect each output's summary.md, results.json, artifacts.json, commands.json, compiler-version.txt, and per-model result.json, compile.log, seeded.bin/log and greedy-*.bin/log. The manifest is suite/models.json; per-model shell wrappers and extension instructions are in suite/README.md. External large assets stay at original paths and are identified by SHA256 in artifacts.json. Snapshot INT8 tests use existing mm-spelling workaround graphs; patched INT8 tests compile original exports. This distinction is deliberate and recorded in argv/hashes.

TinyLlama compares 512000 seeded logits and four saved prefix forward outputs against corresponding exact references, and requires matching greedy tokens. smolVLA tests the true FP32 graph and INT8/FP32-compute graph, each against its own saved PyTorch reference (1600 elements). These are one denoising step, not an iterative policy rollout. ResNet is the public synthetic-input experiment, QDQ ORT comparison at the existing 0.8/0.1 gate plus matching top1, not historical canonical or ImageNet accuracy reproduction. All Tiny/smol comparisons require finite values and per-element0.001/0.001; no quantization error is used as tolerance.

Root disk had only3.3GiB free, so VMFBs live temporarily in Linux memfd RAM storage, passed to compiler/runtime via inherited fd. vmfb.json records exact size/hash. Durable raw outputs/logs remain. Regenerate VMFB using suite entry point; transient fd paths are not independently persistent artifacts. fixI build/tools lacks iree-run-module, so suite records and uses bundled standalone runtime fallback.

## Patches and fresh build

Archived patches:

* `handoff-patches/fixC-base.patch`: GELU sqrt(2/pi), real symmetric TorchAO block qparams and nearest-even quantization, targeted regressions. Source evidence: original fixC/REPORT.md and its numeric-tests/results.json (listed in evidence manifest).
* `handoff-patches/fixI-combined.patch`: includes fixC plus signed native `_int_mm`, opt-in ordered means/SiLU/softmax16, bounded static trig folding and strict contraction behavior. Apply **only this combined patch** for the patched campaign. fixI README/REPORT describe scoped shapes/dtypes and explicit compile-time VML dependency. Archived bytes and original source paths are hashed in handoff-evidence.json.
* fixJ: no patch at preflight; isolated build blocked by disk. Its REPORT explicitly says incomplete and no newly validated smol INT8 compiler. Check its status before integrating any later patch.
* `handoff-patches/fixK-gemmini-only-candidate.patch`: unbuilt Gemmini candidate (bounded output tiles, safe late-view motion, dialect dependency and fixtures). Extracted only after verifying fixK/gemmini-fixes.patch begins byte-for-byte with fixC-base.patch, removing that duplicate prefix. This delta can follow fixI-combined; never apply the original full K patch on top of I. K reports storage-blocked, no rebuilt compiler or coverage/numerical gate validation. See output/handoff-evidence/runs/fixK/REPORT.md. CPU passes do not establish accelerator offload. The suite campaigns do not include this candidate.

`bash /home/loren/work/runs/fixL/suite/build_fresh.sh /new/writable/fresh-destination` is a concrete **unexecuted** recipe: copy the read-only snapshot source, git apply --check/apply the combined patch, configure full-plugin Gemmini compiler scope with Python bindings/unrelated plugin runtimes disabled, then build iree-compile/iree-opt with local Clang18 and eight jobs. It reuses fixC's read-only extracted toolchain/tools-env; toolchain versions/hashes are indexed in handoff-evidence.json. This recipe needs several GiB more disk and cannot complete at current capacity; no fresh-build verification is claimed. The existing fixI binary, not a new build, is what the patched suite campaign validates. Six object-local warning exceptions are implemented in suite/build_warning_exceptions.py, inherited from fixI; numerical source is unchanged by those build exceptions. Do not rerun historical fixC/fixI bootstrap mutation scripts: final patches are authoritative.

For another machine, provision equivalent toolchain/environment from the recorded versions, copy manifest-listed exported assets preserving hashes (adjust manifest paths and smol input specs), provide Python numpy/ml_dtypes, select an assigned <=8-core affinity, and supply the pinned compile-time VML library with --math-library. This compatibility mode is scoped PyTorch2.10 CPU behavior; the compiler loads only numerical sin/cos symbols to fold bounded static expressions, never reference outputs. Reference threads16 is an algorithm partition parameter independent of execution worker budget. The VMFB runtime needs no PyTorch library.

BF16 exporter singleton corruption remains a separate exporter problem (smolvla-numerics/SPEC.md); do not reinterpret malformed BF16 constants as a compiler repair. No Gemmini hardware execution or strict weighted-offload acceptance is claimed by this package.

Independent patch applicability verification: `python3 suite/check_patches.py`; all three return0 in `patch-check/results.json`, with each exact command/cwd/log/hash retained. Checks ran exclusively on copied original files under fixL/patch-check, never the snapshot.

The archived fixI + Gemmini-only K candidate stack also applies successfully in sequence to independent original-file copies: `patch-check/stack-results.json`. This establishes patch compatibility only. To try it on a fresh copy, apply fixI-combined.patch then fixK-gemmini-only-candidate.patch before configuring/building; validate new lit fixtures, CPU suite, unchanged-stack-limit Gemmini compilation and actual weighted coverage before making any acceptance claim. `build_fresh.sh` deliberately defaults to the validated I patch only.

## Completed suite campaigns

| Campaign | Model | Status | Failed / total (seeded) | max_abs | RMSE | Result evidence |
|---|---|---|---:|---:|---:|---|
| snapshot | resnet50-int8 | PASS | 0 / 1000 | 0.3347206115722656 | 0.04244241007935983 | [snapshot/resnet50-int8](output/snapshot/resnet50-int8/result.json) |
| snapshot | tinyllama-fp32 | PASS | 0 / 512000 | 0.0001550912857055664 | 1.3047316189238646e-05 | [snapshot/tinyllama-fp32](output/snapshot/tinyllama-fp32/result.json) |
| snapshot | tinyllama-int8 | FAIL | 511699 / 512000 | 18.77340316772461 | 3.330303007130888 | [snapshot/tinyllama-int8](output/snapshot/tinyllama-int8/result.json) |
| snapshot | smolvla-fp32 | FAIL | 1 / 1600 | 0.0021872520446777344 | 0.00019403341899949933 | [snapshot/smolvla-fp32](output/snapshot/smolvla-fp32/result.json) |
| snapshot | smolvla-int8 | FAIL | 1600 / 1600 | 6.431172132492065 | 2.0049975012603984 | [snapshot/smolvla-int8](output/snapshot/smolvla-int8/result.json) |
| patched | resnet50-int8 | PASS | 0 / 1000 | 0.3347206115722656 | 0.04244241007935983 | [patched/resnet50-int8](output/patched/resnet50-int8/result.json) |
| patched | tinyllama-fp32 | PASS | 0 / 512000 | 0.00017070770263671875 | 1.1250883591348482e-05 | [patched/tinyllama-fp32](output/patched/tinyllama-fp32/result.json) |
| patched | tinyllama-int8 | PASS | 0 / 512000 | 2.288818359375e-05 | 2.1938664308687575e-06 | [patched/tinyllama-int8](output/patched/tinyllama-int8/result.json) |
| patched | smolvla-fp32 | PASS | 0 / 1600 | 1.3947486877441406e-05 | 1.509524558907936e-06 | [patched/smolvla-fp32](output/patched/smolvla-fp32/result.json) |
| patched | smolvla-int8 | FAIL | 1362 / 1600 | 0.07528746128082275 | 0.015309157895054252 | [patched/smolvla-int8](output/patched/smolvla-int8/result.json) |

Both commands returned exit2 because numerical failures remain. All five entries compiled and executed in each campaign. Exact per-element gates are in each result and summary.md; Tiny greedy per-step counts/tokens are in result.json. Full run argv/affinity: output/{snapshot,patched}/commands.json. Compiler versions: output/{snapshot,patched}/compiler-version.txt. Large artifact hashes: output/{snapshot,patched}/artifacts.json. The final suite locks protected external assets via suite/assets.lock.json on later invocations.

## Portable handoff artifact

`handoff.tar.gz` contains suite, archived patches, independent patch checks, all numerical outputs/commands/logs and evidence copies, REPORT/HANDOFF/RESULTS, and package-files.sha256. Adjacent handoff.tar.gz.sha256 verifies the archive. Verify extracted files with `sha256sum -c package-files.sha256` from the extracted root. Large external exports, toolchain and numerical library are referenced by hash rather than duplicated. Final per-model wrapper/hash-lock smoke PASS: output/final-wrapper-smoke/resnet50-int8/result.json, exit0. Fresh build remains unexecuted; K remains an unbuilt candidate; J has no patch.
