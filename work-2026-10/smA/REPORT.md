# SMA current result — target NOT MET

Updated 2026-10-27T22:18:06.655157+00:00. No F2 action; protected trees unchanged; maximum24 cores, affinity24-47.

Materializing hidden scalar-loop results repairs the softmax fusion blowup without changing arithmetic. Compiler fusion flags alone did not fix it. Whole-model WG0 instruction estimate: **3,488,170,271,254 -> 430,215,723,925 (8.108x lower)**, still **4.302x above1e11 target**. Every18343 new invocation trace record matched, dropped0. This is approximate dispatch cost, not full runtime/hardware timing.

Candidate plain ELF: `full/smolvla.elf`, SHA256 `7124930e07f08073c1a77303440a241f54be9ce3d17fdaf39556a2d124df45b3`. Full RV64 original-workgroup numerics **not run**; final F2 check belongs to the receiving agent. Do not deploy based solely on partial-WG output. Slice evidence: full connected attention462720 values and softmax1270215 values BITWISE both references; dominant synthetic1572864-value pattern BITWISE old/new, unchanged PyTorch gate passes (tiny inherited exp-bit differences reported below).

Adopt: `taskset -c 24-47 python3 /home/loren/work/runs/smA/compile_materialized.py INPUT.mlir OUTPUT.vmfb`. Same fixW merged compiler and strict numerical options,32768-byte temporary allocation gate unchanged. No compiler rebuild. Full replay without WG clamp: `bash runs/smA/run_spike_full.sh > runs/smA/full/full-spike.stdout 2> runs/smA/full/full-spike.stderr` (prepared, **not executed**).

Additional full host comparison pending; initial host retargeting retained RV-only Gemmini schedules; corrected target metadata retry pending.

Exact commands/versions/errors and measured results follow. Per-dispatch accounting: dispatch-comparison.csv, full/scaled-dispatches.json and full/*correspondence.json. Payload/ELF hashes: full/payload-identity.json; complete manifest: artifact-manifest.json.

<!-- SMA_CURRENT_END -->

# SMA compiler fusion investigation

2026-10-27 UTC. Work confined to `/home/loren/work/runs/smA` and requested shared `probeSUMMARY/SMA.txt`. Protected reports, SPEC, TinyLlama report, SPL report and all summary files read first. fixW report and compile scripts read. No F2 action. CPU affinity 24-47, maximum 24 threads. `rg` unavailable; use grep/find.

Goal: reduce ~3.488T estimated full smolVLA invocation instructions to <=1e11 while preserving bitwise CPU golden and unchanged PyTorch atol=rtol=1e-3. No acceptance result yet.

Compiler: `/home/loren/work/runs/fixW/build-numerics/tools/iree-compile`, shared library from adjacent lib, merged numerical/address implementation. No source modifications. Local `compile.sh` copies fixW smol compile_numerics.sh, changes only CPU affinity and workers to24. Same 32768-byte allocation gate, RV64GC, Gemmini bank2048/acc512 and strict numerical flags. Exact command arrays and exit/time records in flag-results.json. Source input `softmax.mlir` copied from probeP2/softmax-layer0/model.mlir, shape1x15x291x291. Original input/reference retained read only in P2.

First experiment: `taskset -c 24-47 python3 runs/smA/test_flags.py > runs/smA/test-flags.log 2>&1`. Sequential six-way compile comparison: baseline, aggressive fusion false, multi-use fusion false, multi-reduction elementwise false, softmax-decompose fusion false, dispatch optO0. Every compilation explicitly disables MLIR threading and dumps executable intermediates. Results pending. Compiler hidden help in compiler-help.txt.

## First significant result: materialization boundary succeeds on P2 softmax

All flag variants compile. Aggressive=false, multi-reduction=false, softmax-decompose-fusion=false and optO0 produce byte-identical RV assembly to baseline (SHA256 13d36d5dc7df0a055500572dcbd65a972bbc85bc8315a90f1100f789d0427b31). Multi-use=false adds a dispatch but leaves dispatch0 unchanged, so does not solve the max blowup.

Root cause visible in `global.mlir`: max is a sequential scf.for with tensor.extract captured inside an all-parallel linalg.generic; fusion sees an elementwise producer. `materialize.py` adds util.optimization_barrier after each top-level generic containing scf.for. It preserves loop bodies, arithmetic and tensor types. Compile-to/from global-optimization supplies a reproducible pass boundary without rebuilding or modifying the compiler. Initial prototype used an invalid numeric SSA suffix and failed parsing; corrected to a named SSA prefix before execution.

Small test commands: `python3 runs/smA/setup_runtime.py`; `PROBE_RUNTIME=runtime taskset -c 24-47 runs/smolvla/venv/bin/python runs/smA/run_small.py baseline barrier`; `OPENBLAS_NUM_THREADS=1 taskset -c 24 runs/smolvla/venv/bin/python runs/smA/spike_small.py > runs/smA/spike-small.log 2>&1`. Runtime source is unchanged fixW; local build and runner only, build -j24. Model inputs and bitwise expected words from protected P2 slice.

Full Spike slice result: baseline3,124,119,499 invoke instructions; barrier164,525,564 (~19x reduction), zero differing output words in all1,270,215 values versus prior P2 RV64 golden (itself bitwise host/PyTorch). Barrier Spike wall1.93s. Exact command arrays, elapsed times and status in baseline/spike-result.json and barrier/spike-result.json. No one-WG approximation used for this small test. Whole model not yet evaluated. Full global optimization lowering running from original export with all fixW numerical flags.

## Whole-model pass staging

`taskset -c 24-47 python3 runs/smA/full_stage.py > runs/smA/full-stage.log 2>&1`: original protected export lowers to global optimization in92.76s. Adds914 materialization barriers via `python3 runs/smA/materialize.py runs/smA/full/global.mlir runs/smA/full/barrier.mlir`.

Important staging caveat: IREE textual compile-to output retains dense_resource references but omits their payload block. The first resume was intentionally interrupted before producing an artifact after noticing this. `restore_resources.py` appends the **unaltered original resource block** and asserts all793 referenced keys exist among802 source keys; missing0, appended1,101,423,952 bytes. Never use the resource-less global.mlir as a standalone deployment input. Exact current source/barrier IR and resources are preserved. Resume command arrays in full/compile-command.json, script full_resume.py. The compiler source/build remains read only and no rebuild is needed.

`setup_trace.py` copies perfX's local_executable.c into the local runtime plugin and compiles it as a source override (no foreign edits). Same PERFX trace format and rdcycle intervals. `patch_onewg.py` implements SPL's three-instruction load-bound replacement with a checked unique machine signature instead of hardcoded VA. Diagnostic ELF output is deliberately partial computation and never accepted numerically; scale using original VM bytecode counts.

`make_pattern.py` / `compile_pattern.py` / `run_pattern.py` test exactly the dominant two512-wide-max,12x256x512 elementwise consumer pattern, with deterministic seeded nonzero inputs and full traced Spike baseline/barrier comparison. Pending.

Full runner setup: `python3 runs/smA/setup_full_runtime.py`. Copies perfX runner/input/goldens to own directory; asserts CPU golden bytes equal fixJ/smol-fp32-peeled/output.bin. Keeps1GiB runtime heap/128MiB runtime stack separately from unchanged32768-byte compiler allocation gate. Full runner enforces bitwise CPU golden in addition to both unchanged all-element gates. `build_full_when_ready.py` waits for successful compilation, builds at -j24 and creates separate smolvla.elf and diagnostic onewg.elf. No F2 interaction.

## Dominant dispatch1093 pattern: full execution BITWISE PASS,72.48x reduction

`make_pattern.py` creates two sequential512-wide amax reductions combined into max/sub/exp over12x256x512, matching the original dominant shape and49152 workgroups. Deterministic float32 normal inputs seed42. `taskset -c24-47 python3 runs/smA/compile_pattern.py`; `PROBE_RUNTIME=runtime OPENBLAS_NUM_THREADS=1 taskset -c24-47 runs/smolvla/venv/bin/python runs/smA/run_pattern.py` (actual taskset arguments are separate `-c 24-47`, executable scripts/JSON retain exact commands).

Baseline full Spike:13,069,466,085 invoke instructions; dispatch0 elementwise_1572864_f32 costs13,068,600,344 instructions (49152x1x1),101.30s wall. Barrier full Spike:180,306,252 invoke instructions,2.256s wall,0 differing words across1,572,864 values. Three dispatch intervals: max0 broadcast3072=12,682,650 (96 WGs), max1 broadcast3072=12,683,225 (96 WGs), final elementwise3072x512=154,044,073 (384 WGs). Results and exact arrays in pattern/results.json; actual output payloads in pattern/{baseline,barrier}/output.bin. These are full computations, not WG0 diagnostics. This establishes the intended asymptotic repair with bitwise preservation on the dominant structure. The original full-model dispatch1093 cost remains the SPL measured estimate12.96G, slightly different due to surrounding fused arithmetic; do not equate the isolated pattern cost to the exact original model dispatch.

Adoption entry point: `taskset -c 24-47 python3 runs/smA/compile_materialized.py INPUT.mlir OUTPUT.vmfb [extra flags]`. This executes the tested stage/rewrite/resource-restore/resume sequence using fixed fixW strict numerical options and default32768-byte stack allocation gate. It records command arrays/exit/time in OUTPUT.stages/commands.jsonl; no compiler source rebuild. Extra caller flags must not change the prescribed numerical contract. CPU affinity is24-47.

Additional evidence running: `PROBE_RUNTIME=runtime OPENBLAS_NUM_THREADS=1 taskset -c 24-47 runs/smolvla/venv/bin/python runs/smA/run_attention.py` compiles the connected P2 attention-layer0 slice through the same pass boundary and compares both returned tensors to previous RV64 AND direct PyTorch reference. `OPENBLAS_NUM_THREADS=1 taskset -c 24-47 runs/smolvla/venv/bin/python runs/smA/host_validate.py` prepares the identical whole-model materialized IR with only the target-device declaration replaced by a native host declaration, waits for RV compilation, then compiles/runs the full model and compares to exact fixJ golden AND SPEC PyTorch. Its result, when available, is host evidence, not full RV64/F2 evidence.

## Connected decoder attention: BITWISE PASS

attention/result.json: full Spike exits0,1,590,421,151 invoke instructions,36.885s wall under shared load. Both returned231360-element tensors (462720 total) equal prior P2 RV64 golden AND direct saved PyTorch tensors bitwise,0 differing words. Same model/cuts/inputs,2 hidden-loop materialization barriers. This extends evidence beyond isolated softmax. Full model remains separately unverified.

Independent PyTorch checks: `PYTHONDONTWRITEBYTECODE=1 OMP_NUM_THREADS=24 OPENBLAS_NUM_THREADS=1 taskset -c 24-47 runs/smolvla/venv/bin/python runs/smA/check_small_pytorch.py`. P2 softmax all1,270,215 outputs BITWISE PyTorch. Synthetic dominant pattern remains BITWISE baseline-to-barrier, but standalone eager PyTorch comparison is only **within unchanged gate**,149625 differing words,max_abs5.960464477539063e-8,0 gate failures. This inherited tiny exp difference is present in baseline too; no claim of bitwise eager equivalence for that synthetic model.

WG0-method control: `OPENBLAS_NUM_THREADS=1 taskset -c 24-47 python3 runs/smA/check_onewg_method.py`. Checks exact same three HAL-bound instruction replacements then runs both diagnostic pattern ELFs. Scaled estimate versus full measured dispatch instructions: baseline+0.04312%; barrier max0+0.01670%,max1+0.02201%,consumer+0.009861%. This validates scaling on this regular pattern; does not remove full-model border/data/control-flow uncertainty. oneWG-method-validation.json retains raw values.

Before-cost detail is preserved in before-dominant.json, copied logically from SPL's full matched dispatch trace: elementwise1572864 and elementwise_broadcast3072x64 dominate. Exact original dispatch1093 rows and top12 aggregates are retained there for the final comparison. Do not compare new/old raw dispatch ordinals after adding barriers; ordinals shift. Full scaled-dispatches.json will retain every current dispatch name/ordinal and original workgroup counts; aggregate comparison strips only dispatch serial numbers.

Read-only audit at22:06UTC: `find runs/smolvla -type f -newermt '2026-10-27 21:53:00' -printf '%TY-%Tm-%Td %TH:%TM:%TS %p\n'` returns no files. Existing protected venv only used as interpreter/library source. No source snapshot or protected run edits. Full reference identity verified independently in full/reference-identity.json: raw PyTorch payload SHA25674c9c6c5a16b91f6a918f11146813366eb39c65dabd59c62b01620c982d14a7b; local raw CPU golden equals exact fixJ output.

22:08UTC progress: full RV LLVM optimization and34MiB native object complete, assembly emission/serialization still running. Optimized IR contains10626 main dispatch function definitions and **zero** definitions named elementwise1572864 or elementwise_broadcast3072x64 (the prior two dominant groups); this is structural evidence only, not the final scaled instruction result.

Final handoff will separate full/smolvla.elf (plain runner, no PERFX trace) from full/smolvla-trace.elf and full/onewg.elf (altered diagnostic). `build_plain_when_ready.py` waits for trace ELF and diagnostic patch creation, preserves the trace ELF, then rebuilds the local runner with PERFX_TRACE=0 at-j24. Model VMFB/input/reference bytes remain identical across runner variants; no F2 invocation is present in any script. OneWG patch metadata is updated to name its immutable trace source. Full plain runner requires bitwise CPU golden as well as both original1e-3 gates.

## Full RV64/Gemmini compilation PASS

full/compile-result.json: exit0,586.7895s. full/model.vmfb produced successfully, compiler32768-byte gate unchanged. First local runner link failed on duplicate strncmp/memcmp/strcmp definitions: perfX's runner already contains safe implementations, while the generic slice plugin also linked libc_strict.c. Removed the redundant libc source from **local full runtime plugin only**, corrected setup_full_runtime.py for reproducibility, and restarted build_full_when_ready.py into full-build-retry.log. This is a harness link failure, not a compiler/model numerical failure. Original failed build log is preserved.

## Full plain ELF ready; payload identity PASS

Final plain ELF: `/home/loren/work/runs/smA/full/smolvla.elf`, SHA256`7124930e07f08073c1a77303440a241f54be9ce3d17fdaf39556a2d124df45b3`. Trace ELF SHA256`59187fbf2e8e0e2b0bddedf1c7eb1e3e1fbf249ef051e381f5b3dc827921c588`. Diagnostic SHA256`337e3b49e8a85926fd472ec7645517089d9e02f16a3d3a14255d999981acb1a3`. All three embed **exactly556063655 bytes** with identical VMFB SHA256`211df51254eb21d2086ef1a58180b6ec5274f35d3434c5a14784da9fc70037fc`. `verify_payloads.py` parses ELF symbols and program headers, hashes the exact start/end payload range, and checks equality to the complete model.vmfb (not only an incbin path or section label). Heap1,073,741,824/runtime stack134,217,728 verified by ELF symbols; compiler temporary-allocation gate32768 unchanged.

Whole-model WG0 sweep now running; its output is intentionally not numerically valid. Full host compile remains running. No full RV64 numerical acceptance or performance-target attainment is yet claimed. Full plain ELF is a **candidate**, supported by the bitwise slice evidence above, awaiting full reference checks.

## Full-model cost result: target NOT MET

All18343 invocation trace records returned, dropped0, all ordinals/names match original unpatched workgroup metadata parsed from the new VM bytecode. `run_full_onewg.py` diagnostic completes34.018s, exits1 **because deliberately partial WG computation fails** both gates (1599 errors,1600 differing words; NaN RMSE). This is expected diagnostic invalid output, not full-model numerical evidence. `scale_full.py` estimates **430,215,723,925 invoke instructions**, versus original3,488,170,271,254: **8.108x lower, still4.302x above1e11 target**. Excludes startup/VM/output, edge/data-dependent work may differ, scaled trace overhead remains. Do not claim <30-minute FireSim runtime from this estimate.

Largest remaining aggregate costs: QK batch_matmul12x256x512x64=102.543G; two PV scalar groups elementwise3072x64=88.212G and elementwise_broadcast196608=88.122G; three camera projections elementwise_broadcast786432=61.685G; major INT8 Gemmini matmul1024x3072x768=19.526G; exp consumers3072x512=16.888G. Assembly inspection of the196608 consumer confirms three genuine512-term PV dot-product segments192+192+128, **not repeated max reductions**. Generic scalar loop bookkeeping and actual attention MACs now dominate. Simply materializing reductions does not achieve the full objective.

`full/dispatch1093-correspondence.json` anchors old1092 QK to new1150 QK by the same occurrence rank23 of the unchanged QK shape (288 occurrences in both graphs). Old1093 two-max/exp=263613 instructions/WG x49152=12,957,106,176. Corresponding new1151 max=131742x96=12,647,232;1152 max-combine=26200x1=26,200;1153 exp=153406x384=58,907,904: combined71,581,336 (~181x lower for this replacement), with the first-chunk max already materialized and shared from the previous chunk. Old1099 broadcastPV=2,837,361,024; its materialized PV contributions span new1149=611,942,400 and new1159=611,816,448 plus new1160 combine=769,728, together1,224,528,576 (~2.317x lower). Comparing old1099 to new1159 alone would omit the first PV contribution. JSON retains surrounding call sequences for audit; raw ordinal equality is not used as correspondence.

Orthogonal width control: run_attention_wide32.py changes only target native vector width8->32 in the staged IR. Connected attention remains bitwise both references but costs1,680,082,005 vs1,590,421,151 at width8 (~5.64% **worse**); reject width32 for this candidate. It was not applied to full ELF. Testing explicit LLVM loop unrolling separately on the same small attention slice, with parallel reduction creation disabled; not applied to full artifact yet.

Full host comparison initially hit a compiler failure before numerical output: threaded resume returned-11 with `LLVM ERROR: Loading a dialect (gemmini) while in a multi-threaded execution context ... missing dependentDialects ...`. Error and first command arrays retained in host/compile-first-failure.txt, host-validate.log and host/commands.jsonl. Retrying with **--mlir-disable-threading**, identical arithmetic/gates. No host pass claimed yet.

LLVM-unrolling small control completed: attention-unroll/result.json, full Spike1,537,507,261 instructions versus1,590,421,151 at baseline materialization (3.33% lower),462720 values BITWISE prior RV64 and PyTorch. `--iree-llvmcpu-loop-unrolling=true --unroll-add-parallel-reductions=false`. This modest slice improvement is not applied to the full candidate, and no full-model benefit is claimed.

Dispatch correspondence table is machine-readable in `dispatch-comparison.csv`. The complete contiguous two-key-chunk attention region (old1086..1099, same QK occurrence ranks22/23) drops from23,059,483,628 to2,094,443,036 estimated instructions (~11.01x); full row sequences in full/attention-block-correspondence.json. This includes both PV contributions, both QKs and both softmax chunks, avoiding misleading name-only pairing across split/fused dispatches.

| Region | Before instructions | After instructions |
|---|---:|---:|
| Old1093 hidden max+exp replacement | 12,957,106,176 | 71,581,336 |
| Old1099 PV+combine, all materialized contributions | 2,837,361,024 | 1,224,528,576 |
| Complete two-key-chunk attention region | 23,059,483,628 | 2,094,443,036 |
| QK shape aggregate,288 calls | 102,483,099,648 | 102,543,077,376 |
| Whole invocation estimate | 3,488,170,271,254 | 430,215,723,925 |

All these full-model counts are WG0 extrapolations, not a completed original-workgroup invocation. Replacements of individual consumers may use values materialized earlier in the same block; use whole-block rows for complete accounting.

Rewrite audit PASS: `PYTHONDONTWRITEBYTECODE=1 taskset -c 28 python3 runs/smA/verify_rewrite.py`. Reversing exactly914 added barriers and914 SSA result renames recovers original global.mlir **byte for byte** (SHA256ed413a54b336afc3693f564e2df737f5a06a1326c402c4c9203d43c4598c790a). The appended original weight-resource block also matches source **byte for byte**, SHA256d761a7a065f700e9258d2dd794aa5d1151468ed9a57c9caa0f704d77045db944. No arithmetic, loop body, type, shape, constant or resource-byte edits are hidden in the materialization pass. full/rewrite-identity.json retains assertions and hashes.

## Host retarget correction (harness issue)

Second host attempt also fails on lazy Gemmini dialect loading despite --mlir-disable-threading (exit-6; complete stack log host/compile-second-failure.log). Inspection identifies why: RV staged IR carries444 Gemmini-specific `compilation_info` pass pipelines attached to INT8 matmuls before the chosen global-optimization boundary. Changing only the device declaration is **not sufficient** to retarget this staged IR to host. The earlier first two host attempts were therefore invalid retargeting harness configurations, not evidence of a model arithmetic failure or a new compiler regression.

Corrected host_validate.py removes only Gemmini compilation_info codegen schedules when copying the RV stage to a native CPU target; ordinary CPU matmul codegen is then selected. Arithmetic/types/weights/barriers remain unchanged. Exact removal count and target change recorded in host/host-target-adjustments.json. Third attempt log host-validate-final.log. No codegen metadata change was applied to full/model.vmfb or either handoff ELF. Prior failures retained honestly. This final retry is justified by the identified target-schedule cause, rather than repeating the same failing command.
