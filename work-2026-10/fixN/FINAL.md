# Consolidated Merlin-IREE compiler

**All requested final-compiler numerical gates and compile-only coverage checks PASS.**
All model gates are unchanged. Both smolVLA INT8 compute variants are bitwise exact.
The intentionally omitted-provider diagnostic FAILS, as documented below.
Authoritative compiler/shared-library hashes: `compiler-final.sha256`.

The archive also carries the exact compiled tools and shared library under
`compiler/tools` and `compiler/lib`. Use `compiler/bin/iree-compile`, `iree-opt`,
and `iree-run-module` wrappers: they select the bundled library despite the
original binaries' absolute build RUNPATH. They also explicitly select the
bundled LLVM23 `lld` for embedded ELF linking. This is the same linker built in
N and used by native model compilation; relocating only the three front-end
binaries is insufficient. The underlying tool/library bytes
match the frozen validated hashes. Ubuntu24.04 x86-64 host dependencies remain;
the external numerical provider is deliberately not bundled.

## Source and build

One independent compiler under `/home/loren/work/runs/fixN/build`, with
`tools/iree-compile`, `tools/iree-opt`, `tools/iree-run-module` and Gemmini plugin.
Source came from `~/iree-latest-compiler-and-examples.zip`, not any modified tree.
Archive SHA256: `5533b1628c611063ecad133c879aaecd20de25acb8276e4b56a8b66285a65231`.

The patch combines final C ⊂ I ⊂ J plus K's nonduplicate delta. C is retained
byte-for-byte in I; J retains all I files and extends three. K's eight-file delta
is disjoint from J. `merge-verification.json` records the actual check.
N additionally ports BF16 scalar FP32 opmath, guarded BF16 numerical recipes and
RNE boundaries, KV softmax128, and opt-in attention plugin emission into the compiler.
No model reference or captured activation is embedded in any recipe/table.

Apply/build in a new directory:
```
bash build_fresh.sh /home/loren/work/runs/fixN-rebuild \
  /home/loren/iree-latest-compiler-and-examples.zip \
  /home/loren/work/runs/fixC
```
The helper unzips original source, applies `merlin-iree-fixes.patch`, and builds
all three requested tools. It defaults to 80 jobs on CPUs0–79. Tool dependencies
are the read-only local Clang/LLD18.1.3, CMake4.4.4 and Ninja1.13.2 from fixC;
see `toolchain-versions.txt`. Source provenance is Merlin bb64b5d83d3b2275f0da04da63610d0c94744634
plus original bundled changes, IREE0f39f82b8364007da5c9dcc7ee2825812f9441ed;
compiler reports LLVM23.0.0git, optimized/assertions.

Build retains the full-plugin Gemmini compiler scope and disables Python bindings
and the unrelated Radiance runtime (snapshot lacks semaphore_base). Six inherited
object-local Clang warning exceptions are in `patch_ninja.py`. These affect warning
handling, not arithmetic flags. Fresh build objects were produced in N.

## Numerical modes and reproduction

`REPORT.md`, command JSONs and per-test logs are the exact execution record.
The unchanged fixL entry point runs with local manifests carrying the required
compatibility options. Tiny uses reference-thread parameter16, smol24; those
parameters specify native reference algorithms independently of execution workers.

Before numerical reproduction, verify the binary provider pin:
```
PYTHONDONTWRITEBYTECODE=1 /home/loren/work/runs/smolvla/venv/bin/python pin_provider.py
```

Full CPU suite:
```
bash /home/loren/work/runs/fixL/suite/run_all.sh \
  /home/loren/work/runs/fixN/build/tools --profile patched --cpus 0-7 \
  --manifest /home/loren/work/runs/fixN/suite/models.json \
  --output /home/loren/work/runs/fixN/output/reproduction
```
BF16 uses the same command with `suite/bf16-models.json` and a distinct output.
KV commands are `bash kv/compile.sh {fp32,int8} {prefill,decode}`, then
`taskset -c 16-31 <smolvla-venv>/bin/python kv/validate_persistent.py VARIANT`.
Build that persistent driver and the attention plugin with `bash kv/build.sh`.
Gemmini commands are `bash run_final.sh MODEL`, then `python3 coverage.py MODEL`
for `resnet`, `tinyllama`, `smolvla`. Scripts are rooted at this N directory.

## External numerical library: exact dependency and pin

The provider is the **existing CPU wheel's**
`/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so`,
from PyTorch2.10.0+cpu, CPython3.12 x86-64. It is443,509,856 bytes, SHA256
`4dc5b3a649b61d8f39be127866bc258dda19d74e339f449fe18103db63e8d76f`.
PyTorch git449b1768410104d3ed79d3bcfe4ba1d65c7f22c0; native build configuration
and library dependencies are retained in `versions.txt` and `provider.json`.
`pin_provider.py` refuses a different SHA256 and verifies all required symbols.
The generic compiler flag itself accepts explicitly selected providers; it does
not automatically enforce this campaign's SHA256 pin.

At **compile time**, `--torch-pytorch-cpu-constant-math-library=PATH` dlopens
only numerical symbols: Intel VML `vsSin`/`vsCos` for static/finite-domain RoPE,
and SLEEF `Sleef_powd8_u10avx512f` for f64 timestep frequencies. The latter uses
an isolated AVX512F ABI adapter and checks host AVX512 support. Tables derive from
bounded model mathematical expressions, with runtime positions/time retained;
no model APIs, output/reference files or saved activation values are called/read.
The resulting ordinary CPU VMFB needs **no Torch/VML/SLEEF runtime library**.
Exact-bit measurements cover the folded operations and the two tested smolVLA
INT8 outputs; TinyLlama logits pass the fixed gate with small residual differences,
so the provider is not a universal full-model bit-identity guarantee.

Without the flag, static sin/cos uses host libm and f64 frequency folding may
fall back to ordinary lowering; compilation can still succeed, but bit-exact
PyTorch agreement and the accepted INT8 gates are **not guaranteed**. An explicitly
invalid trig library/missing symbol diagnoses an error; some unsupported frequency
folding paths instead decline the optimization. A different provider/version/ISA
is not covered by this pin. N's final-source no-provider control compiled and executed, but failed
410,487/512,000 seeded logits (max_abs1.33908558, RMSE0.20269056), plus all four
shared-prefix full-array gates. Greedy tokens still matched, which does not
supersede numerical failure. Evidence: `output/no-provider/`.

**KV INT8 has an additional runtime dependency:** the explicit
`--torch-pytorch-cpu-kv-attention-plugin` compiler option emits44 single-token
FP32 attention matmul dispatches to `kv/attention_plugin.so`. At runtime the
`--executable_plugin=...` flag is required; the plugin dlopens the same pinned
libtorch_cpu and calls only `cblas_sgemm_batch` on runtime operands. It does not
replace the154 quantized decoder linears. Removing the plugin/provider does not
leave a validated standalone KV INT8 artifact. This is separate from compile-time
VML constant folding. The provider binary is not included in this package.

Licenses: PyTorch BSD-3-Clause; bundled SLEEF Boost Software License1.0 (installed
wheel notices copied to `licenses/LICENSE`/`NOTICE`); Intel oneMKL/VML uses the
[Intel Simplified Software License](https://www.intel.com/content/www/us/en/developer/articles/tool/onemkl-license-faq.html),
not SLEEF's license. These are distinct components inside the pinned provider.
Existing compiler scalar-exp recipes also translate glibc2.39 LGPL2.1-or-later
algorithm/table; source attribution and `licenses/LGPL-2.1` are included. This
patch should not be represented as exclusively Apache-licensed original code.

## Scope and limitations

- SmolVLA checks the pinned default one-denoising-step graph with all three cameras;
  it does not validate iterative policy rollout or new shapes/prompts.
- The protected BF16 export contains corrupted singleton constants. BF16 testing
  uses B's corrected export plus byte-preserving small-resource inlining, retaining
  original protected input bytes and BF16 quantized reference. The compiler cannot
  legitimately reinterpret the malformed original literals as different values.
  Native quantization and integer matmuls remain; no mathematical precompile repair
  or float-linear replacement is used in the N BF16 campaign.
- TorchAO support is the exercised symmetric integer-domain mapping with constant
  quantization range/positive epsilon/divisible blocks. Dynamic unblocked axes are
  tested; dynamic blocked axes, general asymmetric and FLOAT zero-point-domain
  quantization are not supported. Native `_int_mm` is signed rank-two i8/i8->i32.
  Gemmini tiling is tested for static named matmuls; dynamic M/N is rejected on
  that path and other generic/conv configurations are not broadly established.
- Numerical compatibility is scoped to tested PyTorch2.10 CPU algorithms, signature
  guards and thread parameters. Double timestep trig targets time[0,1]; probes cover0,.37,1 and the pinned
  model input, not an exhaustive interval or arbitrary-range proof. BF16 recipes
  are validated on finite sampled tensors; exceptional-value payload semantics
  and arbitrary operand distributions are not universally established.
  Unsupported signatures retain ordinary lowering, without a bit-exact promise.
- TinyLlama no-cache seeded/all-prefix tests use fixed[1,16]. KV uses batch1,
  eight-token prefill, cache128, three seeded prompts and32 outputs each; exercised
  consumed positions0–38. M's wrapper exports model-derived128-position RoPE
  tables; this decode result does not establish unrestricted dynamic trig support.
  FP32 reference is native DynamicCache; INT8 reference is
  the native StaticCache reference explicitly selected by M, not DynamicCache.
- ResNet uses public weights and a synthetic replacement input, QDQ ORT gate0.8/0.1
  plus top1, not historical canonical reproduction or ImageNet accuracy.
- Gemmini is compile-only. Weighted coverage excludes activation-only contractions.
  Tiny's scalar lm_head and smol's three patch convolutions remain; the historical
  strict155/0 Tiny offload gate remains unmet. No accelerator numerical/deployment claim.
- New focused regressions are distinct from the entire legacy lit suite. Its known
  original quantization CHECK-prefix mismatch remains documented, not relabeled PASS.

Suite VMFBs use anonymous memfd storage: sizes/hashes are durable, module bytes
are regenerated by the suite. Raw outputs, command arrays, reference/input hashes
and logs are retained. KV and Gemmini VMFBs remain in N; the final archive carries
hashes and reproduction scripts rather than duplicating these multi-gigabyte files.

## Pass table

| Check | Status | Measured result |
|---|---|---|
| resnet50-int8 | PASS | 0/1000 failed; max_abs=0.3347206115722656; RMSE=0.04244241007935983 |
| tinyllama-fp32 | PASS | 0/512000 failed; max_abs=0.00017070770263671875; RMSE=1.1250883591348482e-05; 4/4 greedy arrays/tokens PASS |
| tinyllama-int8 | PASS | 0/512000 failed; max_abs=2.288818359375e-05; RMSE=2.1938664308687575e-06; 4/4 greedy arrays/tokens PASS |
| smolvla-fp32 | PASS | 0/1600 failed; max_abs=1.3947486877441406e-05; RMSE=1.509524558907936e-06 |
| smolvla-int8 | PASS | 0/1600 failed; max_abs=0.0; RMSE=0.0 |
| smolvla-int8-bf16 | PASS | 0/1600 failed; max_abs=0.0; RMSE=0.0 |
| TinyLlama KV fp32 | PASS | 0/3072000 failed; max_abs=0.00019550323486328125; 3/3 greedy32 sequences equal |
| TinyLlama KV int8 | PASS | 0/3072000 failed; max_abs=4.57763671875e-05; 3/3 greedy32 sequences equal |
| Gemmini resnet | PASS | 54/0 weighted Gemmini/scalar sites; 100.00000000% weighted MACs; compile only |
| Gemmini tinyllama | PASS | 154/1 weighted Gemmini/scalar sites; 93.66447035% weighted MACs; compile only |
| Gemmini smolvla | PASS | 443/3 weighted Gemmini/scalar sites; 99.40783437% weighted MACs; compile only |
| inherited exact numeric | PASS | 10/10 cases |
| quantization/GELU numeric | PASS | 15/15 cases |
| smol FP32 exact numeric | PASS | 22/22 cases |
| Inherited lit groups | PASS | 6/6 groups |
| BF16/KV focused lit | PASS | 3/3 cases |
| Gemmini lit | PASS | 7/7 cases |
| BF16 scalar and round-boundary numeric | PASS | 2/2 cases; 8192 values bitwise exact |
| smolvla-int8 exact-bit diagnostic | PASS | 0/1600 unequal bits |
| smolvla-int8-bf16 exact-bit diagnostic | PASS | 0/1600 unequal bits |

All Tiny/smol gates require finite outputs and abs(error)<=0.001+0.001*abs(reference)
per element; ResNet retains0.8/0.1 plus matching top1. Tiny no-cache includes all
512000 logits for the seeded input and each of four protected prefixes. KV checks
96 last-logit vectors of32000 values each and matching generated token sequences.

The separate no-provider control is **FAIL** (410487/512000 seeded values and all
four prefix array gates), not an accepted compiler mode. Historical strict Tiny
155/0 accelerator coverage is also **not met**. The table does not claim either.

