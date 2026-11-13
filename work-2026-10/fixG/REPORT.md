# Agent G — smolVLA INT8 exact arithmetic

**Current status (2026-10-27 UTC): FP32-compute INT8 and BF16-compute INT8 BOTH FULL BITWISE PASS (each all1600 finite,0 failing elements,0 unequal bits,max_abs0,RMSE0). Both full recurrent quantizer-boundary audits also BITWISE PASS:each226454752 values across296 distinct inputs/448 calls,zero bit differences.** Only runs/fixG is writable for this task. Protected snapshot and runs read first: /home/loren/work/REPORT.md, runs/smolvla-numerics/SPEC.md, runs/tinyllama2/REPORT.md; then fixE README/REPORT and fixF REPORT. No tolerance changes: full gate abs(actual-reference)<=0.001+0.001*abs(reference), all1600 finite. Reference is each protected original quantized PyTorch output named by SPEC. FP32 compute completed first; BF16 work follows. See the acceptance record below.

Inherited latest failures (not reruns): fixE FP32 ordered-conv/Welford path1354/1600, BF16 Welford1335/1600. First-camera patch conv, embedding, LayerNorm and q projection previously exact. Identical-input first vision SDPA previously differs751566/786432 bits, 0 local gate failures, 5 activation integer flips. Correct-beta GELU previously differs11783/32768 bits.

Execution: affinity CPUs0-29, <=30 threads total. Read-only Python runs/smolvla/venv/bin/python; PYTHONDONTWRITEBYTECODE=1. versions.json/compiler-version.txt copied from fixE; bundled binaries used for all compilation/runtime. rg unavailable, falling back to grep/find. Source inspection downloads: FlashAttentionKernel.cpp from pytorch v2.10.0 and df.h from SLEEF master src/common/df.h. First two guessed df.h and Activation.h URLs404; no numerical results from failed downloads.

Key new source finding: CPU default flash attention uses q tiles256, key tiles512 for query length1024, exp_u20 (different polynomial from ordinary softmax/SLEEF exp), vector-lane sums, unnormalized probability-value matmul followed by final reciprocal multiply. A global ordinary softmax decomposition cannot reproduce that rounding order by strict flags alone. Reproduction and fixes pending.

## Completed local controls and repairs

Python flash reconstruction (`sdpa_control8.py`, `sdpa_control16.py`, then `sdpa_control.py`) on fixE/sdpa exact QKV:8-lane sums303098 bit differences;16-lane61121; scalar expf rescaling + intended FMA running sum **0/786432 unequal bits, zero gate failures, max_abs0**. Control uses original default PyTorch reference, no replacement reference. Native exp20.c is mechanically extracted installed ATen vec256 exp_u20 with wrappers for expf/fmaf; compiled with g++ -x c++ -O3 -mavx2 -mfma -shared -fPIC (initial gcc C attempt failed on C++ auto, corrected). Exact commands:
```bash
source /home/loren/work/runs/fixG/env.sh
taskset -c 0-29 "$PY" "$R/sdpa_control.py" > "$R/sdpa-control-fma.log" 2>&1
```

SLEEF tanh port `tanh_payload.py` / `rewrite_tanh.py`: explicit float-pair operations/FMA and expk2f. Compiled **0/32768 unequal bits against installed SLEEF8 and16 outputs** on retained fixE tanh fixture. Correct GELU + this tanh but no intended inner FMA4893 unequal bits; adding intended inner FMA leaves50/32768 bits, at scalar worker tails only (probe torch24-thread chunk boundaries). No local gate failures; max_abs1.5126082e-7. Tails remain unsupported by current GELU rewrite, which must not claim generic exactness.

Real first vision GELU input: original saved int8 first fc1 output, shape1x1024x3072. `rewrite_gelu.py` implements intended inner FMA + SLEEF tanh. **All3145728 values bit-identical**, zero local gate failures, max_abs0 (`gelu-vision-results.json`). Compute24-thread PyTorch reference for this local op; original full-model reference remains unchanged. Command script below.

MLIR flash translation `rewrite_sdpa.py` currently fails exactness:672473/786432 unequal bits, max_abs1.90735e-6, zero local gate failures,616 scales differ and **1 activation integer flip**. Restoring contract flags only inside generated matmul functions changes mismatch to673499 and does not remove the flip; not accepted as a fix. Full intermediate debug ongoing. This is not proof of impossibility.

Reproduction:
```bash
source /home/loren/work/runs/fixG/env.sh
"$PY" "$R/rewrite_sdpa.py" /home/loren/work/runs/fixE/sdpa/model.mlir "$R/sdpa.mlir"
bash "$R/compile_no_contract.sh" "$R/sdpa.mlir" "$R/sdpa" --iree-input-demote-f64-to-f32=false
taskset -c 0-29 "$PY" "$R/check_sdpa.py"
"$PY" "$R/rewrite_gelu.py" "$R/gelu-vision.mlir" "$R/gelu-vision-fixed.mlir"
bash "$R/compile_no_contract.sh" "$R/gelu-vision-fixed.mlir" "$R/gelu-vision-fixed" --iree-input-demote-f64-to-f32=true
taskset -c 0-29 "$BIN/iree-run-module" --module="$R/gelu-vision-fixed/model.cpu.vmfb" --device=local-task --task_topology_group_count=30 --input=1x1024x3072xf32=@"$R/gelu-vision-input.bin" --output=@"$R/gelu-vision-output.bin"
bash "$R/smol_gelu.sh" > "$R/smol-gelu.log" 2>&1
```
Full FP32 GELU-only step started from fixE latest ordered-conv/Welford source; restores only explicit GELU blocks then replaces them with scoped exact-vector kernel, preserving all other fixes. Full compilation in progress. No BF16/full-model success claimed.

## Further localization: attention GEMM and GELU teacher threads

`sdpa-debug/results.json` proves first256-query tile QK, maxima, exp_u20 and16-lane sums **all exact**. PV is first divergence (176091/196608 unequal float values, max4.9591e-5 before normalization). Native explicit FMA control `pv_control.cpp`, splits512/480/384/256/192/128/64/32/16: **only independent192-element partial sums followed by additions match pinned MKL PV exactly**; first-head16384 outputs all exact for split192. This is experimentally established pinned GEMM behavior, not a universal MKL guarantee. `rewrite_sdpa.py` now emits SCF FMA blocks0:192,192:384,384:512, then explicit additions to the prior rescaled output. `sdpa-debug192/results.json`: all10 first-query-tile intermediates exact.

Whole first attention using192-block PV and prior Taylor scalar-exp:111/786432 bit differences confined to3 query rows; zero scale mismatches, zero activation integer flips and zero local gate failures (`sdpa-pv192/results.json`). Suspected rare scalar expf rounding; investigating literal glibc2.39 expf table/poly port instead of accurate Taylor. No impossibility claim.

All36 FP32 vision GELU invocations checked with `check_all_gelu.py`, original fixF fc1 output bytes and freshly computed24-thread PyTorch GELU on identical bytes: **113246208/113246208 exact**, zero local gate failures (`gelu-all/results.json`, gelu-all24.log prints each layer/camera count). Initial direct comparison against fixF's20-thread captured next-fc2 inputs found797 differing elements, all explained by20-thread vs24-thread scalar tails (each row records teacher20_vs_torch24_bits). Original protected reference is from24 threads; this diagnostic does not replace the full gate reference. All36 vector kernels exact on pinned24-thread shape. General arbitrary-shape GELU scalar tails still not implemented.

Additional exact commands:
```bash
g++ -O3 -mavx512f -mfma -shared -fPIC "$R/pv_control.cpp" -o "$R/pv_control.so"
taskset -c 0-29 "$PY" "$R/check_pv_control.py" > "$R/pv-control.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_all_gelu.py" > "$R/gelu-all24.log" 2>&1
"$PY" "$R/rewrite_sdpa.py" /home/loren/work/runs/fixE/sdpa/model.mlir "$R/sdpa-pv192.mlir"
bash "$R/compile_no_contract.sh" "$R/sdpa-pv192.mlir" "$R/sdpa-pv192" --iree-input-demote-f64-to-f32=false
taskset -c 0-29 "$PY" "$R/check_sdpa.py" sdpa-pv192
```
Snapshot and all other agents' directories remain read-only. Full FP32 GELU compile still in progress as of05:02UTC. BF16 not reached yet.

## Vision local completion (full recurrence still being verified)

`sdpa-glibc/results.json`: **all786432 first-vision SDPA outputs bit-identical**, scales exact and activation integers exact. The prior111 differences disappear with literal glibc2.39 expf32-entry table/cubic polynomial, using f64 internals as libc does; model inputs/outputs remainf32. No LUT of activations or captured references: table is original algorithm data in retained LGPL source e_exp2f_data.c. Strict no-contract compilation preserves intended explicit FMAs. Need `--iree-input-demote-f64-to-f32=false`.

`check_all_sdpa.py` then checks all36 actual teacher-forced vision QKV sets (3 cameras x12 layers), pinned24-thread original default PyTorch SDPA, unchanged all-valid mask and scale0.125: **28311552/28311552 values bit-exact, zero scale mismatches and zero activation integer flips**. Log sdpa-all.log prints every layer/camera count; results in sdpa-all/results.json. This covers vision SDPA only, not language attention or full recurrence.

Commands:
```bash
"$PY" "$R/rewrite_sdpa.py" /home/loren/work/runs/fixE/sdpa/model.mlir "$R/sdpa-glibc.mlir"
bash "$R/compile_no_contract.sh" "$R/sdpa-glibc.mlir" "$R/sdpa-glibc" --iree-input-demote-f64-to-f32=false
taskset -c 0-29 "$PY" "$R/check_sdpa.py" sdpa-glibc > "$R/sdpa-glibc-check.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_all_sdpa.py" > "$R/sdpa-all.log" 2>&1
bash "$R/smol_sdpa.sh" > "$R/smol-sdpa.log" 2>&1
```
Full FP32 combined step and first-camera25-output recurrence slice are compiling. Full combined path disables constant evaluation to avoid inherited f64 constant-evaluation libm link failure; this is not a precision/tolerance change. Same original resources, integer linears and all model branches retained. Capturing language/expert softmax, RoPE and SiLU inputs separately to prepare next local checks; must verify captured final still equals protected reference before using this instrumentation.

## Language/expert local checks completed

`capture_ops.py`: pinned original FP32 quantized model,24 PyTorch threads,187 relevant op calls captured under TorchDispatchMode. Captured final is **bitwise equal to protected original quantized reference**, max_abs0,0 failed elements (`capture-ops/reference-check.json`). No model/reference mutation. Imports print hf_compat 'already patched' and do not alter the existing environment; PYTHONDONTWRITEBYTECODE prevents pycache writes.

`rewrite_softmax.py` generalizes last-axisf32 to widths241/291, sequential16-lane vector sums, tail lanes and fixed horizontal tree. Initial masked seeded probes had38/14 unequal bits. `softmax-debug` exposes the cause: builtin `torch.aten.amax` returns0 for20 all-negative rows (row[7,0] expected -1.8455715, got -0.0); this changes rounding even though real-valued softmax is shift invariant. `rewrite_amax.py` initializes from each row's first element and uses explicit maximum; no zero identity. Fixed seeded probes **871215/871215 and1270215/1270215 exact**. Actual24 language/expert softmax calls: **all exact,0 failed gate elements** (`softmax-actual/results.json`). This is a concrete additional reduction semantic defect, independent of attention algorithm selection.

`rewrite_rope.py`:80 f32 sin/cos cases consume integer positions converted to float, divided by literal10000**(arange32/32). Position dependency proof traces boolean cumsum of bounded1x291 tensors, subtraction, slicing and min; allowed integer domain within[-291,291]. Exhaustively evaluates the original formula over that domain from literal graph constants, then uses **runtime position IDs** to index tables. No captured activations/references consumed by rewrite; input masks remain dynamic. This is finite-domain constant evaluation, not substitution of actual example positions or outputs. Full dependency/range proof in next.mlir.rope.json / rope-check.mlir.rope.json. Compiled dynamic lookup checked against **all80 actual captured sin/cos calls, all exact** (`rope-actual/results.json`). The separate f64 timestep sin/cos is not covered by this rewrite.

`rewrite_exp.py` now uses glibc expf for SiLU scalar tails and24-thread task partitioning (fixE capped16). Pinned chunk algorithm verified in installed ATen/ParallelOpenMP.h. With vector SLEEF and proper scalar tails **all33 actual language/expert/time-MLP SiLU calls bit-exact,0 gate failures** (`silu-actual/results.json`). Scoped f32 result only; no precision substitution. Scalar internal f64 matches libc implementation.

Commands:
```bash
taskset -c 0-29 "$PY" "$R/capture_ops.py" > "$R/capture-ops.log" 2>&1
taskset -c 0-29 "$PY" "$R/probe_softmax_amax.py" > "$R/softmax-amax-probe.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_softmax_actual.py" > "$R/softmax-actual.log" 2>&1
"$PY" "$R/rewrite_rope.py" "$R/smol-fp32-gelu-sdpa/model.mlir" "$R/rope-check.mlir" > "$R/rope-rewrite.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_rope_actual.py" > "$R/rope-actual.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_silu_actual.py" > "$R/silu-actual.log" 2>&1
bash "$R/smol_all.sh" > "$R/smol-all.log" 2>&1
```
The large exploratory rope-check.mlir was removed after its proof was retained; full source is reproducible from the command. Current full runs: smol-fp32-gelu (GELU alone), smol-fp32-gelu-sdpa (plus exact vision SDPA), smol-fp32-all (plus softmax/amax/RoPE/SiLU tails). First-camera25-output chained vision/connector slice is compiling. All processes restricted to same30-core affinity0-29; no more than30 cores can execute task work concurrently. Final numerical counts pending; no FP32 or BF16 full pass claimed.

## Chained first-camera encoder and connector exact

`vision-first/results.json`: all25 returned checkpoints (attention out_proj and MLP fc2 for each of12 vision layers, then connector modality projection) are **bit-identical** to original-model hooks. Inputs are original protected full-function input bytes, not teacher cuts. Zero failing elements at each checkpoint, total18935808 exact floats. This verifies recurrence through the entire first camera vision encoder/connector, extending the standalone per-op proofs. Other cameras remain covered by all36 per-op controls; full graph retains all3 cameras.

Amax characterization refined: tiny2x4 builtin amax passes negative rows (`amax-results.json`); **2x241 fails**: all-(-1) first row yields-0.0 instead of-1, positive control yields2 correctly (`amax241-results.json`). Thus the failure is vector-tail dependent, not every amax initialized with a zero identity. The explicit SCF implementation fixes the masked softmax probes and all24 actual calls. Do not generalize the source cause beyond the demonstrated tail behavior without a compiler-pass bisect.

## Last language/expert PV accumulation repair

Actual48 eager matmuls:24 QK are exact;24 PV account for3248216 unequal bits, all still within local float gate. Reusing vision's192-element block size is **not exact** here (3232973 unequal). Native controls establish pinned MKL K291 uses independent145/145/1 FMA blocks; K241 uses120/120/1. These are half-K blocks for these static shapes, distinct from vision512->192/192/128.

`rewrite_pv.py` implements those proven orders on the scoped `[1,15,M,K]@[1,15,K,64]` f32 paths, K241/291, leaving other matmuls untouched. **All24 PV calls now bit-exact** on original captured inputs (`matmul-fixedhalf-actual/results.json`). Float linears remain INT8; this change concerns only original float attention matmuls. `local-summary.json` aggregates completed per-op/chained counts. No full-model pass yet.

Commands:
```bash
taskset -c 0-29 "$PY" "$R/check_vision.py" > "$R/vision-check.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_matmul_actual.py" > "$R/matmul-actual.log" 2>&1
g++ -O3 -mavx512f -mfma -shared -fPIC "$R/pv_control.cpp" -o "$R/pv_control.so"
taskset -c 0-29 "$PY" "$R/check_pv_actual_control.py" > "$R/pv-actual-control.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_matmul_fixed_actual.py" > "$R/matmul-fixedhalf-actual.log" 2>&1
bash "$R/smol_pv.sh" > "$R/smol-pv.log" 2>&1
```
The preserved192 failed version is rewrite_pv192.py; its comparison is matmul-fixed-actual/. Current rewrite_pv.py uses half-K and current harness writes matmul-fixedhalf-actual/. A two-block145/146 experiment left405 bit differences in first head because the last1 must be a separate partial; that failure is retained in pv2-controls.json.

## Full FP32 step result and timestep chain

GELU-only full run completed: **FAIL1340/1600**, all1600 finite, max_abs0.104399718344, RMSE0.0155416887557 (`smol-fp32-gelu/comparison.json`). This replaces inherited1354 failures with measured1340; not a pass. A commentary count1302 was an erroneous transcription and immediately corrected to1340; comparison.json is authoritative.

First combined SDPA full build initially **failed linking** (undefined exp/sin/cos in retainedFP64 timestep computation). No numerical failure count exists for that failed compile. Disabling constant evaluation moved the same missing-libm problem to runtime executable linking, so it did not solve it. Resuming from targets-strict.mlir with run-local helper bitcode avoids repeating frontend work.

`math64.c` is a freestanding double-precision implementation (FMA Taylor after Cody-Waite reduction; trig scoped to smol timestep phase|x|<=1571 for t in[0,1], tested reduction bound|x|<=2^20), compiled with bundled clang23 into math64.bc, not a compiler rebuild. No model FP64 operation is demoted toFP32. Initial builtin roundeven emitted an unresolved roundeven symbol; replaced with exact nearby-integer magic-bias arithmetic on the bounded reduced arguments. These are legitimate math approximations to the original ops, not a proof of raw-f64 bit-exactness to MKL.

First timestep run with helper but unfixed frequencies **failed**: action projection exact, time-MLP input33450 bit mismatches/max1.74046e-5; final time-MLP output246 local gate failures/max0.00394568. Therefore the helper alone was not accepted. `fold_time_frequency.py` evaluates only the static dependency closure of linspace360,1000**fraction,*0.004,reciprocal,*2*pi and unsqueeze with pinned PyTorch; rejects dynamic dependencies. Dynamic runtime timestep multiplication/sin/cos remain in graph. Exact source reason for original frequency drift is not separately proven; scalar precision/constant lowering is suspected but not asserted as established cause.

With exact static frequencies + helper, **the entire timestep/action chain is bit-exact** at all5 checkpoints,216000 floats: action input projection output, time-MLP input/output, SiLU output, final time-MLP output (`time-fixed/results.json`). Raw f64 trig output agreement is not claimed; all original f32 values feeding quantizers in this chain match exactly.

Full final composition now adds this static frequency fix to PV/full nonlinear repairs (`smol_final.sh`). compile.sh now links math64.bc for native f64 calls. Existing already-running final compiler processes may still require a final-stage retry if launched before that script change.

`attention-first/results.json`: teacher cuts only at the exact first text/expert input RMSNorm outputs, original mask/position logic and all quantized q/k/v/attention/o_proj chains retained. Returned text o_proj input/output and expert o_proj input/output: **all546720 floats bit-exact**, zero gate failures. This closes chained first language/expert attention locally; full depth acceptance still pending.

Space management: original full source for early GELU/SDPA diagnostic variants removed only after resource restoration to staged targets; SHA256/size in removed-intermediates.json. Early GELU targets-strict.mlir removed after successful VMFB/validation; its hash is retained in target-hashes.txt. Final source/VMFB/metrics and all reproduction scripts remain; no other directory touched.

## Next measured full result

FP32 all-nonlinear step (exact vision SDPA/GELU, Welford/convolution/means, language softmax/amax, integer-domain RoPE, scalar-tail SiLU; **before language PV and exact timestep frequency**) completed: **FAIL1282/1600**, all1600 finite, max_abs0.0506224632263, RMSE0.0109551066629 (`smol-fp32-all/comparison.json`). This full result remains failed despite the successful local op checks. Command smol_all.sh returned numerical exit2. Final PV/frequency composition remains in progress.

The general all-nonlinear run linked bounded math64 helper but still has original static frequency drift, as its timestep control demonstrates. Pure SDPA-only stage is being resumed after its missing-libm compile failure; no gate count until that runtime finishes.

First full GELU and all-nonlinear VMFBs/raw outputs/comparisons retained. Their large staged targets were removed after successful validation, with preexisting SHA256s retained; models can be regenerated by the scripts. Original source/reference data and all other agents' directories were not edited.

## PV full gate and reproducibility

FP32 plus exact language/expert PV, **before exact timestep frequency folding**: **FAIL705/1600**, all1600 finite, max_abs0.0636797547340, RMSE0.00806962807137 (`smol-fp32-pv/comparison.json`). Gate unchanged. Correct timestep/action local chain does not imply this unfixed-frequency artifact passes. Final frequency-folded composition is compiling.

`prepare_fp32.sh` now directly composes all current repairs from the protected fixB quantized/correct-GELU source, preserving stage counts and proof sidecars. `reproduce_fp32.sh` builds helper bitcode with bundled clang23, prepares a fresh graph, compiles with bundled IREE, and validates against the protected original reference. These scripts have been assembled from the individually executed commands; the fresh convenience entry point has not been redundantly run while final compilation is pending. Original final prepared source remains in smol-fp32-final/model.mlir. Space-reclaimed intermediate source hashes are in removed-intermediates.json; their VMFBs and comparison artifacts remain. Early stage scripts depend on regenerated intermediates after this reclamation; the new direct entry point avoids them.

Observed package metadata refreshed in versions-observed.json: Python3.12.3,torch2.10.0+cpu,torchao0.16.0,transformers4.57.1,numpy2.2.6,turbine3.9.0,frontend iree-base-compiler/runtime3.13.0,ml_dtypes0.6.0,glibc2.39. The first metadata query guessed iree-compiler package name and failed; successful discovery uses actual installed distribution names. Bundled compiler and clang versions retained. Main model/compiler/runtime jobs are affinity0-29; one-off initial helper GCC compilations were single-threaded and subsequent helper compilation commands explicitly use the same affinity.

Additional local audit `check_linears.py` recompiles fixF's56 batches with no automatic contraction, checks all original captured float outputs plus previously independently proven q/i32/scale arrays, and prints counts after each batch. Completed batches so far are exact; final448-call summary pending. Large regenerated batch VMFB/target/output files are hashed and removed immediately after comparison to respect shared disk space; commands, logs, per-call metrics and SHA256s remain. All writes stay in fixG.

## All FP32 quantized linear chains exact; remaining full build pending

`linears/results.json`: **448/448 invocations,302/302 quantized modules exact** with staged no-contract compilation. Every float output byte matches corresponding captured quantized PyTorch output; all activation int8,accumulator int32 and scale arrays match fixF's independently validated references. Zero gate failures. This closes the prior77 within-gate-only modules' floating dequant/bias differences on identical teacher inputs. It does not alone certify a full forward.

Resumed GELU+vision SDPA full stage completes with helper linkage: **FAIL1303/1600**, all1600 finite, max_abs0.0587474107742, RMSE0.0115279560834 (`smol-fp32-gelu-sdpa/comparison.json`). Its native f64 timestep frequencies are still unfixed. Numerical output not conflated with the earlier linker failure.

Full failure counts in actual order of repairs, fixed gate every time:
- inherited fixE latest:1354/1600 (not rerun).
- exact vector GELU:1340/1600.
- plus vision SDPA (and native f64 helper needed for linkage):1303/1600.
- plus language softmax/amax,RoPE and scalar-tail SiLU:1282/1600.
- plus exact language/expert PV:705/1600.
- plus exact constant timestep frequencies:compile in progress; no count yet.

All earlier successful-compilation stage VMFBs/raw outputs/comparisons remain. SDPA-only large targets removed after successful validation; target-hashes.txt retains the original hash. Final full graph source and current staged targets preserved.

## FP32-compute INT8 FULL PASS — BITWISE EXACT

2026-10-27 05:28UTC: `smol-fp32-final/comparison.json` reports **1600/1600 finite,0 failed elements,max_abs0,RMSE0** against the original protected FP32-compute quantized PyTorch reference. Every output bit agrees. The unchanged atol=rtol=0.001 gate passes without any relaxation. Source smol-fp32-final/model.mlir, bundled CPU VMFB smol-fp32-final/model.cpu.vmfb, raw output/output.npy, run-command.json and compiler stage logs are retained.

Final command: `bash /home/loren/work/runs/fixG/smol_final.sh > /home/loren/work/runs/fixG/smol-final.log 2>&1`, exit0. Final staged native compilation inherited compile.sh's explicit math64.bc link. Original dynamic inputs, all3 cameras, all quantized modules/INT8 integer matmuls, language/expert branches and1600 reference values retained. This is the specified single denoising step, not a full iterative rollout or accelerator claim.

The local quantizer-input/linear proofs and full exact result are consistent. No general bit-exactness claim for arbitrary tensors/operators is made beyond recorded shape/dtype/domain checks. No op was proven generally impossible; actual pinned defects were repaired run-locally. Next: BF16-compute INT8 using its own protected original reference, same gate.

## BF16 investigation started after FP32 full acceptance

Both BF16 captures use original BF16-compute quantized policy and original protected patched/smolVLA.q.int8.mlir.reference input bytes. `capture-bf16/reference-check.json`:187 ops, final BITWISE EQUAL,0 gate failures,max_abs0. `teacher-bf16/reference-check.json`:448 quantized module calls, final BITWISE EQUAL,0 gate failures,max_abs0. Model remains BF16; no substituteFP32 reference. Teacher module tensors stored raw uint16 BF16 bytes. Initial teacher hook failed on keyword-only embedding input; corrected to allow an empty positional tuple and reran successfully (teacher-bf16-v2.log).

BF16 local completed checks:
- Seeded original-shape GELU BF16:3145728 values exact (`gelu-bf16/results.json`). `rewrite_gelu_bf16.py` extends each BF16 value to native-op FP32 internal math, explicit intended inner FMA/SLEEF tanh, rounds once back to BF16.
- All24 softmax instances exact (`softmax-bf16-actual/results.json`); these are original f32 softmax ops as exported by BF16 policy.
- All80 f32 RoPE trig instances exact (`rope-bf16-actual/results.json`), preserving BF16 model boundaries.
- All33 BF16 SiLU instances exact (`silu-bf16-actual/results.json`), native f32 internal math and original BF16 result rounding retained.
- All24 language/expert QK matmuls exact. Native BF16 PV matmuls differ in70 values across24 instances (`matmul-bf16-v2/results.json`), some local gate failures. Initial matmul harness mistakenly reused FP32 metadata while loading BF16 arrays; that invalid dtype-selection result is preserved in matmul-bf16-actual but not used as a kernel conclusion. Fixed metadata verified same187 op keys/shapes/order; all derived harnesses now point to BF16 metadata.
- Ordered BF16 patch-conv candidate has7 bit differences/786432,0 local gate failures,max_abs0.0001220703125 (`conv-bf16/results.json`); **not exact**. Scalar controls show reverse pairs fixes5/7, exact-double accumulation fixes4/7; no candidate yet accepted.
- Original BF16 SDPA on identical QKV:690807/786432 unequal bits,209376 local gate failures,max_abs0.15625,329 scales differ,61676 activation integer flips (`sdpa-bf16-base/results.json`). This is a real large BF16 attention-lowering discrepancy.

Pinned CPU is AMD EPYC9R14. Direct libtorch CPU `cpublas::could_pack(BFloat16)` query returnsfalse (`bf16-pack.json`), consistent with inspected CPUBlas.cpp requiring AMX for this pack path. CPU flash therefore calls MKL BF16xBF16->FP32 GEMM, not the packed AMX path. Native AVX512BF16 pair probe on262144 seeded triples proves instruction high-product-first then low-product matches exactly; lo-hi/pair-sum/full-exact alternatives differ. **That native instruction order is not automatically the pinned MKL order.** Actual MKL BF16->FP32 QK matches forward f32 FMA, and PV matches192/192/128 independent f32 partials, as established by actual-input controls in bf16-gemm-controls.json.

`sdpa_bf16_control.py`: direct exported MKL cblas_gemm_bf16bf16f32 on original BF16 operands, original CPU flash256/512 tiling, pinned BF16 `fexp_u20`, unrounded f32 lane16 sums, BF16 rounding of exponentials before PV, scalar expf rescaling and FMA running sum, final native BF16 output rounding. **All786432 first vision SDPA values exact** (`sdpa-bf16-control/results.json`). This is a Python/native causal reconstruction, not yet an accepted compiled replacement.

`rewrite_sdpa_bf16.py` translates that native algorithm, preserving BF16 input/output and BF16-rounded exponential operands, f32 accumulator semantics as original PyTorch flash does. It does not replace model BF16 compute with FP32. First compile hit a15728640-byte stack temporary from whole BF16/f32 tensor conversion captured inside SCF PV. Correcting it to cast/round each loaded operand within the accumulator avoids materializing those full temporaries; second compile in progress. Stack limit remains32768.

Commands are the similarly named scripts under fixG; all model/compiler/runtime jobs use0-29 affinity. Protected snapshot/run directories unchanged. Source inspection CPUBlas.cpp downloaded from pinned pytorch/v2.10.0. Large earlier FP32 diagnostic VMFBs/staged IR were hashed and reclaimed for shared disk; their outputs/comparisons/commands remain, final passing FP32 source/VMFB retained. Full removed-artifact ledger is removed-intermediates.json.

## BF16 vision repair completion and unconditional promotion defect

Compiled vision SDPA first attempt after fixing stack temporaries still differed159095/786432 BF16 values,603 local gate failures,max_abs0.0078125,3 scales unequal,1187 activation integer flips. Debug checkpoints proved QK/max/exp/sums exact; PV was first divergence. `check_sdpa_bf16_pv_round.py` proves compiled PV matches **unrounded** exponentials exactly, not BF16-rounded operands: 0 float differences against no-round control,16383/16384 against correct RNE control for first head. Thus an f32->bf16->f32 round trip was erased.

`bf16-round-results.json` is a standalone4096-value reproducer under all strict flags: original truncf/extf path returns original unrounded input exactly,4096 unequal versus PyTorch BF16 round-trip and1546 gate failures,max_abs0.0296974. Explicit finite RNE bit operations: **0 unequal,0 failures**. Source origin inspected read-only: `third_party/iree_bar/compiler/src/iree/compiler/Codegen/Common/ConvertBf16ArithToF32.cpp`, `ConvertTypeSensitiveArithCastOp` equal-converted-type branch removes the cast; the pass also promotes BF16 arithmetic without preserving every original rounding. `Codegen/LLVMCPU/Passes.cpp:492` installs this pass unconditionally. The skip-intermediate-roundings flag governs ukernel matching elsewhere and does not prevent this loss. No compiler source edited or rebuilt.

`bf16_round_payload.py` performs explicit IEEE RNE via f32 bits,integer bias32767+LSB,mask high16 bits, with NaN handling. BF16 SDPA per-load BF16 probability rounding now uses it. Compiled **first786432 outputs exact**, scales exact,q exact (`sdpa-bf16-rne/results.json`). `sdpa-bf16-all/results.json`: **all36 calls,28311552 BF16 values exact,zero scale mismatches/activation integer flips**. `gelu-bf16-all/results.json`: **all36 calls,113246208 BF16 values exact**.

BF16 convolution: swapping the first two channels at each spatial kernel location (kh,kw,ci order1,0,2) matches the pinned oneDNN BF16 kernel; whole-stream pair reversal was incorrect. `conv-bf16-all/results.json`: all3 cameras,2359296 BF16 values exact,0 gate failures. Native hardware high/low pair order is consistent with padded channel packing, but this result is established numerically, not inferred from that alone.

`rewrite_pv_bf16.py`: explicit high-then-low per pair, original BF16 operands,f32 accumulation, original BF16 output rounding. All24 actual BF16 language/expert PV matmuls exact (`matmul-bf16-pair/results.json`). Earlier forward-order native path had70 differing BF16 values. All24 QK inputs/outputs are originallyf32 and already exact.

Global rounding guard: `protect_bf16_rounding.py` runs on executable-sources IR before codegen, expands each original scalar BF16 arithmetic result/cast to native CPUf32 internal computation plus explicit RNE bits and integer-to-BF16 bitcast. This **preserves** BF16 model semantics; it does not turn the model into the FP32 variant. `compile_bf16.sh` adds this early stage, restores original resource payloads, then applies the existing strict LLVM contract cleanup. `bf16-round-global/results.json`: erased-rounding reproducer now0 differences. `bf16-arith/results.json`: BF16 multiply then add16384 seeded triples: baseline3759 bit differences,protected path0. The original rounding after multiply and after add are each retained. BF16 conversion fromf64 follows pinned PyTorch's f64->f32->BF16 behavior; tie controls in bf16-f64-cast.json agree exactly.

The full BF16 source is prepared in smol-bf16-all/model.mlir using prepare_bf16.sh (original INT8 graph,three cameras and allbranches retained). Full build `bash smol_bf16_all.sh > smol-bf16-all.log 2>&1` is in progress with the rounding guard. No BF16 full-model count yet.

BF16 timestep/action chain with exact static frequencies,native f64 helper and global rounding guard: all5 checkpoints **216000 values exact**,0 gate failures (`time-bf16/results.json`);28 original round sites protected (13 casts,15 arithmetic). First-camera12-layer+connector chained BF16 verification is compiling separately in vision-bf16-first/.

## BF16 chained encoder exact; full native build in progress

`vision-bf16-first/results.json`: all25 returned checkpoints (12 vision out_proj,12 fc2,connector projection) **18935808 BF16 values bit-identical**,0 gate failures, from original full-function inputs. This verifies first-camera recurrence under the global BF16 rounding guard. Its guard protected616 sites (248 casts,368 arithmetic results). All3 independent convolution checks remain exact.

The complete BF16 graph has passed frontend/rounding protection and is in native codegen/linking as of05:56UTC. `smol-bf16-all/protect-rounding.json`: **3584 protected original round sites**,1534 casts and2050 arithmetic results. Original model BF16 tensor boundaries remain; f32 is used internally where native CPU BF16 operations/accumulators already use it, with explicit rounding restored after each original BF16 op.

`build_linears_bf16.py` generated448 teacher-cut linear chains in56 batches from protected corrected BF16 export before quantizer rewriting, retaining original integer weights. First attempt hit a duplicate metadata index field and was corrected before producing any numerical result. `check_linears_bf16.py` applies exact quantizer lowering plus global rounding guard and compares float outputs,independent native TorchAO activation integers/scales and independent torch int32 matmul on decoded original weights. All completed batches are exact so far; full audit pending. Large source/VMFB/output intermediates are hashed and reclaimed per batch; original teacher arrays and metrics remain.

The optional first-joint-attention BF16 debug slice initially reused FP32 SSA cut names; BF16 graph introduces extra casts after the timestep chain, so types disagreed and compile rejected it. No numerical result was produced. Revised slice derives cut/target SSAs from the BF16 chain mapping rather than guessing names; rebuild in progress. This does not affect the already prepared full BF16 graph or its gate.

## First full BF16 result — FAILED; investigation continues

`smol-bf16-all/comparison.json`: **FAIL1235/1600**,all1600 finite,1244 bit differences,max_abs0.125,RMSE0.01974477393525. Original BF16 reference and0.001/0.001 gate unchanged. This does not override the completed FP32 full bitwise PASS. No BF16 success claimed.

All448 BF16 teacher-cut quantized linear chains completed: **448/448 exact,302 modules,zero float output differences,zero q/int32/scale differences** (`linears-bf16/results.json`). First joint text/expert attention BF16 slice corrected to use BF16 mapping SSAs is also exact at all4 checkpoints,546720 values (`attention-bf16-first/results.json`). Initial guessed SSA slice was compile-invalid and did not yield a numerical result.

Additional normalization checks after the full failure:
- `capture-bf16-rms/reference-check.json`: captured132 mean/rsqrt ops,full PyTorch output still bitwise equals protected reference.
- `rms-bf16/results.json`: all66 actual f32 means and66 rsqrts exact individually.
- `layernorm-bf16-all/results.json`: all75 vision LayerNorms exact on teacher inputs reconstructed through native BF16 residual adds; includes all3 post-layernorms,with expected tensors recovered by inverse exported pixel-shuffle views/permutations.75x786432=58982400 exact BF16 values. Initial epsilon assertion was a harness mistake: the SSA name contains9.99999e-7 but literal is1e-6. Original parameter was not changed. The older standalone fixture's slightly different epsilon does not affect these recorded outputs.
- `rms-chain-bf16/results.json`: all65 RMSNorm outputs feeding quantizers exact,including final expert norm. Diagnostic BF16 input magnitudes are reconstructed losslessly from captured exact f32 squares (sqrt is BF16-representable,asserted); input signs follow recorded output and exact gamma signs. No reference-derived values enter the acceptance graph. Whole RMS chain includes original mean/rsqrt,FP32 normalization,BF16 rounding and BF16 gamma multiply; all original quantizer-boundary outputs match.

These local checks still do **not** establish full recurrence. A209-output debug full graph (`bf16-debug-full/`) exposes actual compiled checkpoints across cameras/language/expert and also original final result. Its final output will be checked against the uninstrumented failed result to detect instrumentation-induced changes. Debug model does not consume reference outputs. Native compilation in progress. Earlier failed BF16 staged targets reclaimed after hashing; failed VMFB/output/comparison retained.

FP32 full raw-bit check explicitly confirmed0/1600 unequal bits (not merely zero numeric error),zero reference zeros. validate_full.py now records unequal_bits for future full checks. Final FP32 source/VMFB and original passing outputs remain unchanged.

## BF16 full-graph localization and scalar opmath correction

The 209-output full debug execution completed. Its final result is bit-for-bit identical to the failed uninstrumented BF16 result, so instrumentation did not change this result. All three camera outputs, connector outputs, state/action/time projections are exact. First divergence is initial language RMSNorm `%6208` (q_proj module223): 7336 bit differences,120 local gate failures,max_abs0.00390625. Differences occur exclusively at token rows192..239, with image rows0..191 and state row240 exact. Expert initial norm is exact. See `bf16-debug-full/results.json`, `mapping.json` and `bf16-debug-check.log`.

Native scalar control (`bf16-scalar-control.json`): PyTorch BF16 * Python scalar30.983866769659336 equals FP32 opmath then BF16 at all4096 random values; BF16-rounded scalar31.0 differs354 times. Testing original `torch.aten.mul.Scalar` against explicit FP32 opmath with original scalar and final BF16 tensor result in `bf16_scalar_probe.py`. No tolerance or external input/reference changed. Pending compiled probe and full corrected BF16 gate.

Redundant debug source/targets reclaimed after hashing in removed-intermediates.json; failed full BF16 source and VMFB retained. Full debug VMFB,209 output checkpoints,mapping,results retained; source reproducible via build_bf16_debug.py.

Compiled BF16 scalar reproducer (`bf16-scalar/results.json`) confirms original Torch-to-IREE mul.Scalar lowering differs354/4096 bits,352/4096 unchanged-gate failures,max_abs0.5. `rewrite_bf16_scalar.py` explicitly converts BF16 input to FP32,multiplies by original scalar in FP32,then rounds to BF16; same fixture is0 bit differences,0 failures. Command: `source runs/fixG/env.sh; taskset -c 0-29 "$PY" runs/fixG/bf16_scalar_probe.py > runs/fixG/bf16-scalar-probe.log 2>&1`. Initial probe invocation failed because subprocess executable `python` was absent; corrected to sys.executable before producing numerical results.

Full corrected graph launched via `bash runs/fixG/smol_bf16_scalar.sh > runs/fixG/smol-bf16-scalar.log 2>&1`. Seven BF16 mul.Scalar sites rewritten (six static vision position factors and one token embedding factor); tensor inputs/results retain BF16,scalar/opmath is FP32 as native PyTorch. Original BF16 input files,weights,reference and gate unchanged. `prepare_bf16.sh` now includes this repair for fresh reproduction. Full gate pending.

Preparing an additional full-graph boundary audit (`build_boundary_audit.py`, `check_boundary_audit.py`), independent of teacher-cut local execution: flatten and concatenate all296 distinct original linear inputs covering448 calls into one diagnostic output, with original final model result as a second output. The graph retains its own original runtime inputs and weights and contains no reference-derived tensors. Check raw BF16/F32 bits against original teacher captures, and require diagnostic final output identical to corresponding uninstrumented execution. This audit is pending; it is separate from acceptance gate and does not alter either reference or tolerances.

## Resumed final-stage BF16 scalar build (2026-10-27)

Read required root REPORT, SPEC and TinyLlama REPORT, then own report and fixE README before resuming. No prior fixG jobs survived the service interruption. `smol-bf16-scalar/targets-strict.mlir` and source hashes survived; VMFB was zero bytes. Reusing the completed frontend and protected-rounding stages rather than rebuilding them:
```bash
source /home/loren/work/runs/fixG/env.sh
bash "$R/compile.sh" "$R/smol-bf16-scalar/targets-strict.mlir" "$R/smol-bf16-scalar/model.cpu.vmfb" --compile-from=executable-targets --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false > "$R/smol-bf16-scalar/compile-final-resumed.log" 2>&1
taskset -c 0-29 "$PY" "$R/validate_full.py" smol-bf16-scalar > "$R/smol-bf16-scalar/validate.log" 2>&1
```
Also resumed the original24-thread FP32 teacher capture and started full BF16 recurrent quantizer-boundary diagnostic compilation. All share affinity0-29, so aggregate execution cannot exceed30 cores. Exact commands:
```bash
taskset -c 0-29 "$PY" "$R/capture_teacher_fp32.py" > "$R/teacher-fp32-resumed.log" 2>&1
taskset -c 0-29 "$PY" "$R/build_boundary_audit.py" smol-bf16-scalar > "$R/boundary-bf16-build.log" 2>&1
bash "$R/compile_bf16.sh" "$R/smol-bf16-scalar-boundary-audit/model.mlir" "$R/smol-bf16-scalar-boundary-audit" > "$R/boundary-bf16-compile.log" 2>&1
```
Results pending. No tolerances, protected references, snapshot or other agent files modified.

Resumed FP32 capture completed:302 modules,448 calls,final output bitwise equal to protected reference (`teacher-fp32/reference-check.json`). Started corresponding full FP32 quantizer-boundary audit:
```bash
taskset -c 0-29 "$PY" "$R/build_boundary_audit.py" smol-fp32-final > "$R/boundary-fp32-build.log" 2>&1
bash "$R/compile_no_contract.sh" "$R/smol-fp32-final-boundary-audit/model.mlir" "$R/smol-fp32-final-boundary-audit" --iree-input-demote-f64-to-f32=false --iree-opt-const-eval=false > "$R/boundary-fp32-compile.log" 2>&1
taskset -c 0-29 "$PY" "$R/check_boundary_audit.py" smol-fp32-final > "$R/boundary-fp32-check.log" 2>&1
```
Boundary checker now reports unchanged-gate failed count and max_abs for each original quantizer-input checkpoint in addition to raw bit mismatch counts. BF16 diagnostic exposes226454752 values across296 distinct inputs/448 calls. Original final model output is separately returned and must match uninstrumented execution bitwise.

Independent resumed execution of retained FP32 acceptance executable:
```bash
taskset -c 0-29 "$PY" "$R/validate_full.py" smol-fp32-final > "$R/smol-fp32-final/validate-resumed.log" 2>&1
```
Exit0:1600/1600 finite,0 failing elements,0 unequal bits,max_abs0,RMSE0. Full FP32 bitwise PASS reconfirmed. Both boundary audits contain296 unique inputs/448 calls/226454752 values; builds pending. BF16 final-stage build pending, with no additional numerical count yet.


## BF16 original-gate full BITWISE PASS

Resumed final-stage native compilation and validation both exit0. `smol-bf16-scalar/comparison.json`: **1600/1600 finite,0 failed elements,0 unequal bits,max_abs0,RMSE0** versus the original protected BF16-compute quantized PyTorch reference in SPEC. Gate remains atol=rtol=0.001 per element. Original INT8 weights/dynamic activation quantization,all3 cameras,language model/expert and timestep/action computation remain. No inputs,references or tolerance changed. Model retains BF16 compute boundaries and original PyTorch FP32 opmath/accumulators with explicit original BF16 rounding.

Measured full-model final repair step: BF16 original local-repair composition **1235/1600 failures -> scalar-opmath-corrected composition0/1600**, max_abs0.125 ->0,unequal bits1244 ->0. Scalar probe **352/4096 gate failures ->0/4096**, unequal bits354 ->0. FP32 retained executable independently rerun in this session remains bitwise PASS.

Acceptance artifacts: `smol-fp32-final/{model.mlir,model.cpu.vmfb,output.bin,output.npy,comparison.json,run-command.json}` and corresponding `smol-bf16-scalar/` files. BF16 compile log `compile-final-resumed.log`; raw source and target hashes retained. Boundary audits remain diagnostic work in progress; full-model passing counts above already measured on uninstrumented acceptance executables.

Read-only source localization of final scalar defect: `iree-latest/source/Merlin-IREE/third_party/iree_bar/third_party/torch-mlir/lib/Conversion/TorchToLinalg/Uncategorized.cpp:1260–1270`, `AtenMulScalarOp` chooses result element type and converts both payload tensor scalar and `operands[1]` to that type before `arith::MulFOp`. For BF16 result this rounds the original Python scalar to BF16 before multiplication. The exact standalone probe demonstrates this is wrong for pinned PyTorch CPU BF16 opmath. Run-local `rewrite_bf16_scalar.py` preserves scalar in FP32 until the BF16 result cast; no snapshot edit/rebuild. This source identification supplements the reproducer and full causal result.

## BF16 full recurrent quantizer-boundary BITWISE PASS

Full diagnostic compile completed exit0. Executed:
```bash
taskset -c 0-29 "$PY" "$R/check_boundary_audit.py" smol-bf16-scalar > "$R/boundary-bf16-check.log" 2>&1
```
Exit0. `smol-bf16-scalar-boundary-audit/results.json`: **296 distinct original quantizer/linear inputs,448 linear calls,226454752 BF16 values:0 unequal bits,0 failed elements at unchanged gate,max_abs0 at every checkpoint**. Each input comes from original full-function input bytes and original weights with full recurrent model computation,not teacher cuts. Original captured teacher final is independently bitwise equal to protected reference. Instrumented final output is bitwise equal to uninstrumented accepted output and protected reference:1600 finite,0 unequal bits,0 failed elements. This closes full recurrence through all3 camera encoders,connectors,language/expert depth and final output for the pinned BF16 sample.

`boundary-bf16-check.log` prints counts for all296 checkpoints; `mapping.json` identifies every original SSA and covered linear call. BF16 audit executable/source/output/mapping retained. No references or captured values were inserted into diagnostic computation. FP32 equivalent audit still compiling.


## Final completed acceptance and full recurrent boundary audits

FP32 full diagnostic compile/runtime/comparison finished exit0. `smol-fp32-final-boundary-audit/results.json` reports **296 distinct inputs,448 linear calls,226454752 FP32 values,0 unequal bits,0 failing elements**. Every checkpoint has max_abs0. Its final output is bitwise equal to the uninstrumented accepted FP32 result and protected reference. BF16 corresponding audit has the same counts and zero mismatches. Neither audit cuts recurrence or consumes captured/reference tensor values:the reference arrays are used only after execution by the checker. Both original teacher captures independently match protected full references bitwise.

| Completed check | FP32-compute INT8 | BF16-compute INT8 |
|---|---:|---:|
| Full output finite values |1600/1600|1600/1600|
| Full output failed elements at original1e-3/1e-3 gate |0|0|
| Full output unequal bits |0|0|
| Full output max_abs / RMSE |0 /0|0 /0|
| Distinct recurrent quantizer inputs |296|296|
| Covered quantized-linear calls |448|448|
| Recurrent boundary values checked |226454752|226454752|
| Recurrent boundary unequal bits / gate failures |0 /0|0 /0|
| Diagnostic final identical to uninstrumented final |true|true|

FP32 exact commands are recorded in the resumed section above; BF16 final compile reused the completed targets after the interrupted session. Per-checkpoint logs `boundary-fp32-check.log` and `boundary-bf16-check.log` print counts through all vision encoders,connectors,language/expert depth and final norm. Each diagnostic directory contains original-SSA/call mapping,source,compiled executable,raw boundary/final outputs,runtime command and results.

Reproduction entry points: `reproduce_fp32.sh`, `reproduce_bf16.sh`; optional audits `bash reproduce_boundary_audit.sh smol-fp32-final` or `bash reproduce_boundary_audit.sh smol-bf16-scalar` after their retained accepted sources/teachers are present. Convenience scripts compose executed stages; no redundant fresh-directory full rerun is claimed. `acceptance-manifest.json` records exact versions,bundled tool/helper/repair hashes,protected input/reference hashes,accepted source/executable/output hashes,gate/runtime commands and both boundary summaries.

**Task complete for the specified pinned default sample and one-step denoising graph.** All original INT8 weights/quantizers,3 camera paths,language/expert/action branches and BF16 rounding boundaries retained. No generic arbitrary-shape operator exactness,iterative policy rollout or accelerator execution claim. Earlier failures and scope limitations remain documented honestly. All task jobs used CPUs0-29/at most30 cores. Writes stayed inside runs/fixG; snapshot,protected runs and other agent directories unchanged. No tolerance widened; no compiler rebuild.
