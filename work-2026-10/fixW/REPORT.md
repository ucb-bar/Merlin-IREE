# Agent W: Gemmini numerical repair
2026-10-27 UTC. IN PROGRESS. All writes confined to fixW. Budget 24 cores, CPUs 0–23, builds -j24. Protected snapshot/model/other-agent directories read-only. No tolerance or stack gate changed. FPGA only after a model passes its existing Spike gate; at most one attempt per model except infrastructure failure, prefix gemW-.

<!-- AUTO-STATUS-BEGIN -->
Last observed 2026-10-27 19:26:57 UTC.

| Model | FPGA status | Inference cycles | Bit equal Spike |
|---|---|---:|---|
| resnet | PASS | 2088587357 | True |
| tinyllama | pending | pending | pending |
| smolvla | pending | pending | pending |

Full per-model JSON/logs remain authoritative; pending is not acceptance.
<!-- AUTO-STATUS-END -->

## Current result table (updated 2026-10-27 17:59 UTC)

| Artifact | Spike / numerical result | FPGA |
|---|---|---|
| Single INT8 matmul10 workgroups | fixed0/1280 exact errors; K1279/1280 errors | not requested |
| ResNet address-only | **PASS**,0/1000,bitwise CPU,top1=21,866737398cycles | **PASS**,2088587357cycles,bitwise Spike/CPU |
| Tiny address-only | **FAIL** required N-reference gate467670/512000; bitwise equal K host;4625381273cycles | not dispatched (failed gate) |
| Tiny N-numerics+W-address | **PASS**,0/512000 vs CPU and PyTorch;bitwise CPU;4751659274cycles | attempt1 gemW-tinyllama-20261027-a1 in progress |
| smol address-only | compile/runner PASS; Spike active | only after required gate passes |
| smol N-numerics+W-address | compile/runner PASS; Spike active | only after required gate passes |

9/9 Gemmini lit tests on both compilers;6 inherited numerical lit groups,10 executable numerical tests,15 quant/GELU cases PASS. No gate/stack limit/reference changed. W source and patches are local; original K-derived address-only compiler remains in build/, N numerical integration in build-numerics/.



Read root REPORT.md, smolvla-numerics/SPEC.md, tinyllama2/REPORT.md, gemR/gemT/gemV/fixK/fixD REPORT.md and fixK/gemmini-fixes.patch. Source/build bootstrap: `cp -a runs/fixK/src/. runs/fixW/src/ && cp -a runs/fixK/build runs/fixW/build` (first copy was interrupted; resumed identical copy). No hard links used.

Initial source diagnosis: LegalizeForLLVMExport.cpp GemminiTileMatMulLowering extracts aligned pointers, separately walks to binding byte offset, adds StridedLayoutAttr offset as a *constant* even when dynamic, and chooses row strides from tile shapes. Thus subview/workgroup offsets and full physical row strides are lost. D also omits its layout offset. This is source evidence pending executable reproducer. Plan: use actual descriptor offset (including subspan) and physical row strides, validate unit inner strides; add lit and Spike regression, then model checks. No repair/pass is yet claimed.

## First executable reproducer
`PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 runs/smolvla/venv/bin/python runs/fixW/setup_repro.py` generates signed i8 A[32,24], B[24,40] (NumPy RNG seeds123/456, [-8,8]) and exact INT32 matmul cast to FP32 golden. Output tiling16x8 spans10 workgroups. Runner copied/adapted from gemR with exact equality, input i8 and1280 output floats. `compile_baseline.sh` retains K compiler; repro uses async-internal to expose the synchronous invocation ABI required by the runner (initial async-external invocation mismatch was not numerical evidence). Always touch embed.S when VMFB changes because assembler incbin dependencies are not tracked by Ninja.

Baseline compile/build/Spike: `bash runs/fixW/repro/compile_baseline.sh runs/fixW/repro/model.mlir runs/fixW/repro/resnet.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512`; `touch runs/fixW/repro/embed.S`; `bash runs/fixW/repro/build_runtime.sh`; `bash runs/fixW/repro/run_spike.sh`. Numerical FAIL:1279/1280 wrong, max_abs780,40246 cycles. Full raw LOGIT readback in repro/spike-baseline.log.

Build bootstrap uses copied K build objects and source. `python3 runs/fixW/bootstrap_build.py` relocates generated build text and executes changed translation-unit, archive, compiler shared-library and tool links from the copied graph, all taskset0-23. Exact command arrays retained in incremental-commands.json; logs incremental-N.log. Inherited K -Wno-error=dangling exception retained. Initial attempts omitted the static-library archive rebuild, so first fixed compile still used old code; no fixed result from that artifact is claimed.

## Confirmed root cause and first fix result
After rebuilding the changed object **and its static archive**, shared library and both tools, the fixed small reproducer compiles and Spike **PASS:0/1280 exact failures,max_abs0,40346 cycles**, versus K1279/1280 failures,max_abs780,40246 cycles. Fixed linked LLVM has A base+workgroup_M*16*24, B base+workgroup_N*8 and LOOP_WS strideB40 (baseline8). This isolates the failure to Gemmini tile operand address/layout handling, exposed by K output distribution. K tiling produces valid strided subviews; the ISA legalizer discarded their semantics. This is not an initializer or reduction-K tiling bug in this reproducer.

Repair uses IREECodegen extract_strided_metadata, preserving binding byte offsets until binding optimization, pointer from zero-offset metadata base plus runtime element offset multiplied by actual element bytes. This handles A/B/C/D uniformly, including i32 C/D (4-byte offsets), rather than adding ShapedType dynamic sentinel as a constant. Static physical leading dimensions replace tile widths. Dynamic row strides and nonunit inner strides are explicitly unsupported/diagnosed; runtime offsets are supported. Empty D is accepted as the no-bias sentinel. Declared Codegen dialect dependency in pass override. Lit fixture strided-tile-addresses.mlir exercises four dynamic-offset descriptors and 40-element leading dimensions; full suite pending.

Commands: `bash runs/fixW/repro/compile_fixed.sh runs/fixW/repro/model.mlir runs/fixW/repro/fixed.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-hal-dump-executable-intermediates-to=/home/loren/work/runs/fixW/repro/fixed-ir`; copy fixed.vmfb to repro/resnet.vmfb, touch repro/embed.S, build_runtime.sh then run_spike.sh. Logs compile-fixed.log/build-fixed.log/spike-fixed.log. Runner/MLIR/input/golden fixed between numerical baseline and corrected run. Initial ABI/link-archive setup failures retained separately in logs; final successful results identified here.

ResNet scripts copied/adapted from gemR into fixW/resnet; build/runtime paths exclusively local, toolchain/deps read-only template symlinks. `bash runs/fixW/resnet/compile_model.sh > runs/fixW/resnet/compile.log 2>&1 && bash runs/fixW/resnet/build_runtime.sh > runs/fixW/resnet/build-runtime.log 2>&1 && bash runs/fixW/resnet/run_spike.sh > runs/fixW/resnet/spike.log 2>&1` launched; no result yet. CPU golden copied unchanged from gemR. Gate all1000 finite,abs<=.8+.1*abs(golden),top1=21.

## ResNet Spike PASS; F2 attempt1 dispatched
ResNet strict CPU golden gate **PASS**, all1000 finite,0 failures,top1=21; stronger diagnostic: BITWISE EQUAL CPU,max_abs0,RMSE0. Timed single invoke866,737,398 cycles; historical939,242,971 ratio0.922804242 (~7.72% lower), but different public assets and functional Spike cycles mean not a hardware speedup claim. Numerical repair changes cycles+2,115,490 versus incorrect K864,621,908. Source/compiler/runtime stay RV64GC, no vector instructions requested, compiler32768-byte gate unchanged.

`PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 runs/smolvla/venv/bin/python runs/fixW/resnet/analyze.py runs/fixW/resnet/spike.log spike` independently decoded full raw payload and wrote spike-result.json/spike-output.f32. All8 focused lit tests PASS (`taskset -c1 python3 runs/fixW/src/third_party/iree_bar/third_party/llvm-project/llvm/utils/lit/lit.py -v -j1 runs/fixW/lit`). New test verifies all4 runtime offsets and physical40-element B/C strides.

`FSIM_REGION=us-east-1 fpga-status` confirmed f2_gemmini_rocket_ddr3llc_60mhz and parallel runs enabled. `bash runs/fixW/resnet/dispatch_fpga.sh > runs/fixW/resnet/fpga-dispatch.log 2>&1`: unique gemW-resnet50-20261027-a1, FSIM_RESULTS_DIR=/home/loren/work/runs/fixW/fpga, max2h. One numerical-qualified attempt; pending hardware/readback result. No other agents' F2 touched.

`python3 runs/fixW/setup_models.py` copied/adapted gemT/gemV runner scripts and raw inputs/goldens into local tinyllama/smolvla. Runtime compiled against W independent source, same upstream runtime. Existing read-only toolchains/deps symlinked. Tiny compiled with22 workers CPUs2-23 and now runs Spike onCPU1; smol compile starts after tiny ELF built, using22 workers. ResNetSpikeCPU0 plus TinySpikeCPU1 plus compiler22 stays24 total. Tiny/smol unchanged all-element gate1e-3/1e-3 vs accepted CPU golden; smol also independently compares protected PyTorch at that gate. These first runs inherit K frontend math and may retain known scalar numerical failures; no gate widened.

## Numerical integration build (distinct from address-only result)
Read fixJ/fixN accepted CPU results and flags. K retains known Tiny all-logit failures467670/512000 despite matching greedy tokens; N's no-provider control also fails410487/512000. Thus address repair alone cannot establish either language model's reference gate. Copied N build into **new** fixW/build-numerics (address-only K-derived fixW/build retained). `python3 runs/fixW/merge_numerics.py` copied26 changed third_party numerical source/test files from frozen N into W/src, leaving W Gemmini implementation/tests intact; exact old/new SHA256 per path in numerics-merge.json, old affected source files in address-only-source/. N compiled objects are reused only for their matching frozen numerical implementation. `python3 runs/fixW/build_numerics.py > runs/fixW/build-numerics.log 2>&1` rebuilt W Gemmini legalizer, static archive, library and both tools onCPU0 while original smol compiler usedCPUs2-23 and TinySpikeCPU1 (24-core total). All5 commands exit0; arrays in numerics-incremental-commands.json. No foreign directory modified.

`python3 runs/fixW/prepare_numerics_runs.py` added separate numerics.vmfb/embedded ELF targets and Spike logs. Exact compile flags in each compile_numerics_model.sh: original protected export; same RV64GC/Gemmini descriptor; explicit --torch-pytorch-cpu-numerics, reference-threads16 Tiny/24 smol, pinned torch libtorch_cpu.so compile-time math provider; no numeric precision reduction, no FP reduction reassociation, no skipped roundings, f64 demotion disabled, smol constant eval disabled. These are accepted N/J compatibility implementations, not tolerance changes or reference substitutions. Provider is used at compile time, not an x86 runtime dependency on FPGA. No unsupported KV runtime plugin selected. Model numerical acceptance still pending.

Added explicit unsupported-inner-stride diagnostic regression. Initial test harness failed because `not` binary absent, then generated fixture accidentally included part of RUN string; corrected harness/fixture, no compiler change. Final `lit-final2.log` and `lit-numerics-final2.log`: **9/9 PASS each**. Dynamic offsets supported, dynamic physical row strides/nonunit innermost strides rejected explicitly. No silently packed-layout fallback.

Address-only Tiny original export compile succeeded, ELF reached invocation; address-only smol original export compile succeeded, ELF reached invocation at17:43UTC. Original and numerical-integration runs use separate VMFB/ELF/log paths; neither Tiny nor smol has yet returned a numerical result.

## Address-only Tiny result: backend fixed, required reference gate still FAIL
Address-only Spike completes4,625,381,273 functional cycles. All512000 finite;467670 fail unchanged1e-3/1e-3 vs accepted N golden, max_abs1.7265152931, RMSE0.2258815363. Full payload independently decoded by local analyze.py. **BITWISE EQUAL** to K host output (all512000 words), independently checked in address-only-vs-K-host.json. This is strong evidence that the lost-offset/stride accelerator discrepancy is repaired for the complete Tiny graph; remaining reference failure is exactly the inherited K frontend discrepancy, not ordinary RV64/host drift. This failing artifact was NOT sent to FPGA.

Merged N+W Tiny original-export compile succeeds (numerics.vmfb1496722351 bytes), new tinyllama-numerics.elf built and reached invocation17:45UTC. Merged smol compile is pending. Frontend compatibility enabled explicitly at prior accepted reference thread settings; all required numerical references/gates unchanged. Build concurrency reduced to20workersCPUs4-23, reserving cores0-3 for simulator/control work. Six inherited numerical lit groups PASS; ten inherited executable numerics PASS bitwise;15 quant/GELU source executable cases PASS. These check merged source behavior; model acceptance remains separately pending.

Patch deliverables: gemmini-address-fix.patch is incremental on K; merged-compiler-fixes.patch is42-file combined snapshot patch including N numerical compatibility and W repair/tests. Both `git apply --check` are read-only and PASS after correcting missing-newline diff serialization (initial merged fragment error retained in earlier log, current merged-patch-check.log is clean). Exact final patch/source hashes will be frozen after model execution. Provider identity inherited from N is SHA2564dc5b3a649b61d8f39be127866bc258dda19d74e339f449fe18103db63e8d76f,torch2.10.0+cpu; verify independently before final record.

## Tiny numerical-integration Spike PASS; F2 attempt1 dispatching
Merged N+W Tiny Spike completes **4,751,659,274 cycles**, all512000 finite,0 required CPU-golden gate failures, **BITWISE EQUAL accepted N CPU golden**, max_abs0. Independent protected-PyTorch comparison also **PASS0/512000** at unchanged1e-3/1e-3, max_abs2.288818359375e-5, RMSE2.1938664308687575e-6, argmax16/16. Full serialized output checked before FPGA dispatch; CPU golden is never substituted for the PyTorch check. Metrics: tinyllama/spike-numerics.metrics.json and numerics-pytorch-comparison.json. Original failing address-only result remains separate.

`bash runs/fixW/tinyllama/run_spike_numerics.sh` launches final ELF with Spike-m4096/RV64GC/Gemmini onCPU0 and writes full output; `bash runs/fixW/tinyllama/dispatch_if_pass.sh` waits for process exit, invokes check_numerics.py (both all-element gates must pass), then dispatch_fpga_numerics.sh. Unique gemW-tinyllama-20261027-a1, max12h, results fixW/fpga. One accepted-model attempt; hardware result pending. No greedy multi-invoke run is claimed by this one-invoke hardware runner; full16-position argmax/top5 diagnostics retained.

## smol numerical-integration compile and runner PASS
Merged N+W original smol INT8/FP32 export compiles with unchanged32768-byte gate (17:45–17:55UTC). Final numerics.vmfb553275071 bytes; native RV64 object32,333,128 bytes, linked LLVM95,291,070 bytes. No executable preprocessing hook or exported-graph rewrite. New smolvla-gemmini-numerics.elf built locally. readelf symbol subtraction independently verifies embedded VMFB bytes553275071 equal complete VMFB file, avoiding assembler incbin serialization races. Numerical Spike starts17:56UTC onCPU2, -m16384, strictRV64GC/Gemmini, full11 original inputs and1600 outputs. No numerical pass inferred before complete output.

`bash runs/fixW/smolvla/run_spike_numerics.sh` / `bash runs/fixW/smolvla/dispatch_if_pass.sh`: latter waits for simulator exit, independently decodes all1600 raw words, and requires unchanged1e-3/1e-3 against BOTH protected PyTorch and accepted CPU golden before its single gemW-smolvla-20261027-a1 F2 attempt. Original address-only smol Spike remains a separate active diagnostic.

Native source verification: diff -qr versus K, excluding build/.git/__pycache__, shows exactly30 intended W/N affected paths and no unexpected differences (source-verification.json). Address-only K source can be reconstructed from read-only K plus gemmini-address-fix.patch; merged source is under W/src. Tool versions in tool-versions.json: compiler LLVM23 optimized/assertions; Spike1.1.1-dev. Exact full compiler, compile-time provider, ELF and VMFB SHA256 records retained locally.

## ResNet F2 PASS — complete readback
F2 attempt1 **PASS**, exit0. Hardware runner single-invoke **2,088,587,357 cycles**; all1000 finite,0 unchanged gate failures,top1=21,max_abs0,RMSE0. Full1000-word payload is **BITWISE IDENTICAL to Spike AND CPU golden**, SHA256fcb0277b9209a28fab23e40c7df5a275aefa81ed51197b831be6a7cb5dd0a925. `PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 taskset -c3 runs/smolvla/venv/bin/python runs/fixW/collect_fpga.py resnet runs/fixW/fpga/gemW-resnet50-20261027-a1/dispatch-gemW-resnet50-20261027-a10/uartlog` independently decodes UART after CRLF normalization and writes resnet/fpga-result.json/fpga-output.f32. No retry.

Remote meta.json confirms exact ELF SHA2569f5abc49744ee912e36fb8940fb92cf7932a0e76340710ee3680d391a971e146; hw_config f2_gemmini_rocket_ddr3llc_60mhz, AGFIagfi-02410ef1a8461b435; Chipyard157dd69e49b9866be2bf8db390ee78bc38cd4438,FireSime1bdea8bb042b900995436ecc3d7c44100eb9da0. Started17:41:06,finished17:57:03UTC; exit_status0. Results downloaded by fpga-run-elf under fixW/fpga. Hardware single-invoke cycles are2.4097x functional Spike cycles866,737,398 and2.2236923x historical939,242,971. Historical assets differ, and Spike is not a timing model: **no speedup claimed**; this is numerical acceptance with an honestly higher hardware count.

ResNet FireSim whole-emulation footer (separate from timed invoke):36,745,337,687 target cycles,627.2s host wall,60.000MHz host frequency,58.587MHz effective target frequency,FMR1.02. Whole-emulation cycles include boot/loading/output and are NOT inference cycles. Timed invoke remains2,088,587,357. run.log records automatic terminaterunfarm cleanup; no manual cancellation or other agent instance action.

## Direct INT32 output regression (no cast epilogue)
Additional one-matmul probe32x24*i8 by24x40*i8 returns32x40*i32 directly. It exercises10 workgroups and physical INT32 C leading dimension40 with runtime row/column offsets (4-byte element addressing), while the earlier probe used a cast epilogue/private accumulator. K **FAIL1277/1280**, max_abs4128,31396cycles. W **PASS0/1280 exact INT32**, max_abs0,31516cycles. Independent NumPy int32 comparison and raw payload hashes: repro-i32/comparison.json. Executable replay: `bash runs/fixW/repro-i32/test_spike.sh`; generator setup_i32_repro.py. Initial C runner adaptation hit -Werror on integer arguments to fabsf; explicit casts in the diagnostic statistic corrected that harness error; no compiler/model/gate change. Authoritative checker compares integers exactly, not via float tolerance.

Strengthened source lit strided-tile-addresses.mlir to capture actual C/D metadata offsets multiplied by4, in addition to all4 metadata operands and physical strides. Both compilers still **9/9 PASS**: lit-typed-offsets.log and lit-numerics-typed-offsets.log. No compiler semantic source or model ELF changed; only regression expectations added. Regenerated patch/source manifests and both read-only apply checks PASS. Prior1749 patch bodies retained in patch-history/ for their historical manifest hashes.

Copy-bootstrap clarification: the first source copy's returned session identifier was not retained, and overlapping copy commands produced EEXIST messages and a redundant nested build copy. The later complete source copy plus native whole-tree comparison verified all expected files and exactly30 intended source differences, with zero unexpected differences. The earlier report's “interrupted copy” wording was an initial interpretation, not an observed compiler/model failure. No other agent directory was modified.

Independent smol reference identity check: protected smolvla/fp32/smolVLA.q.int8.mlir.reference/pytorch.npy isfloat32[1,50,32],6400 payload bytes,SHA25674c9c6c5a16b91f6a918f11146813366eb39c65dabd59c62b01620c982d14a7b. Both local CPU/PyTorch raw golden files match it bitwise (protected-reference-identity.json).
