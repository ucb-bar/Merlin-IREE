# TinyLlama Gemmini execution — Spike numerical FAIL; F2 in progress

Current status: runnable ELF built and executed. Spike: 4,625,165,105 functional cycles; 511,745/512,000 strict failures; max_abs 19.0520577431; RMSE 3.6116715378; 0/16 argmax and top-five set matches; last-position token 18355 versus CPU 13364. No tolerance widened. F2 attempt 1 `gemT-tinyllama-int8-20261027-a` dispatched at 17:20:43 UTC; hardware cycles, FMR, readback and shutdown verification pending. ELF SHA256 `e3785f15d2d50df3185d614aa372e1272dcefb52315917afad55f74b478a5752`.

Work isolated in /home/loren/work/runs/gemT. Protected snapshot and other runs read-only. <=6 build cores (80–85), -j6.

Read historical ResNet persistent report, README, compile script and runner; root report, fixK/fixD reports and fixL handoff; fixJ/fixN numerical reports. Historical runtime path moved to samples/SaturnOPU in snapshot.

Model: original tinyllama2/int8 [1,16] export. Execution artifact selected: fixK/tinyllama.bounded.vmfb (154 Gemmini weighted sites, one scalar lm_head, 93.66447% weighted MAC coverage). This is not strict 155/0 offload acceptance. Golden: passing frozen fixN CPU seeded.bin. Gate unchanged: all 512000 finite and abs(error)<=.001+.001*abs(golden). fixK host output itself is not accepted. Scalar RoPE math differences remain an explicit numerical risk.

Runner adapted from historical ResNet: one invoke, rdcycle pair, complete float output serialized as hexadecimal words for FPGA/Spike readback comparison. No warmup. Single fixed seeded forward only, no greedy multi-invoke loop. Later analysis reports per-position argmax/top5 and last-position token.

Runtime built using read-only upstream runtime source, local CMake project and copied FireSim toolchain/linker scripts. Prebuilt clang-23 confirms RISC-V target. Default linker script already supports .vmfb_data after heap/stack; using 1GiB heap and 8MiB stack, Spike memory will be explicitly expanded. Build configuration logs and source reside here. Initial configure exposed missing CheckCSourceCompiles include in standalone project; corrected locally.

Commands: CMake/configure invocation recorded in session; local build: taskset -c 80-85 runs/fixC/tools-env/bin/ninja -C runs/gemT/build -j6 tinyllama.elf > runs/gemT/build.log 2>&1. Toolchain env RISCV_TOOLCHAIN_ROOT=/home/loren/work/runs/gemT/llvm CHIPYARD_ROOT=/home/loren/work/chipyard. Source project CMakeLists.txt pins all paths.

No Spike or FPGA result yet; no hardware performance claim.

Local toolchain dependency repair: downloaded GNU libiconv 1.18 from https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.18.tar.gz, configured --prefix=/home/loren/work/runs/gemT/deps; make -j6; make install. GCC invocations use LD_LIBRARY_PATH=/home/loren/work/runs/gemT/deps/lib. IREE_HOST_BIN_DIR points to snapshot prebuilt/bin so schema generation runs on host. All source/build/install logs retained. Large VMFB start/end pointers are stored in low .rodata as absolute .quad addresses to avoid medany relocation overflow at the end of the 1.4GB payload.

First Spike launch required locally extracting Ubuntu device-tree-compiler 1.7.0-2build1 into deps (apt download + dpkg-deb -x, no system mutation). Once dtc was found, strict-alignment Spike trapped before invoke: newlib strncmp issued ld at unaligned address 0xc0aa5814. trap-trace.log localizes epc0x80055726 to strncmp. Added bytewise volatile-load strncmp override (libc_safe.c); no simulator misaligned emulation enabled, so same ELF supports Rocket strict alignment. First execution produced no logits/cycles; not numerical evidence and no F2 dispatch yet. Debug trace retained.

Second strict-alignment trap was also supplied newlib: memcmp at epc0x800556ec, unaligned input0x80067629. Added bytewise memcmp and strcmp overrides alongside strncmp (build4.log). These are runner runtime portability fixes, not math/model changes. F2 preflight status confirms f2_gemmini_rocket_ddr3llc_60mhz and zero active runs at query time. No F2 launched before inference result.

Spike now reached header and is executing the single timed invoke. Exact launch is run_spike.sh: PATH includes local dtc; LD_LIBRARY_PATH includes libgemmini and local libiconv; taskset -c80 spike -m4096 --isa=rv64gc_zicntr --extension=gemmini build/tinyllama.elf. Spike memory 0x80000000..0x180000000 covers all loaded segments: low runtime0x80000000, VMFB0xc0a9d000..0x119d5711f. F2 has user-specified16GiB DRAM. .vmfb_data uses absolute low pointers.

Static audit: Run has exactly1 disassembled iree_vm_invoke call and2 rdcycle; model assembly0 RVV setup/load/store and1188 textual loop_ws occurrences. coverage.json copied from fixK is inherited compile evidence; static-audit.json computed here. SHA256SUMS pins current ELF/VMFB/input/golden. manifest is artifact-manifest.json. Source and data copies are local.

F2 dispatch watcher (session-local) will invoke dispatch_fpga.sh immediately upon Spike RESULT. Command fpga-run-elf --max-hours12 --run-id gemT-tinyllama-int8-20261027-a build/tinyllama.elf; FSIM_RESULTS_DIR=gemT/fpga. Only one attempt planned; retry once only for documented infrastructure failure. Full512000 raw output words will be compared after CRLF normalization.

## First completed inference result (2026-10-27 ~17:20 UTC)

Spike RESULT: cycles4625165105; max_abs19.0521 at index435351;511745/512000 unchanged-gate failures; global flattened top1=17835 (per-position analysis pending full readback). This is a strict numerical FAIL, not attributable to ordinary bit-exact drift merely from this measurement. No tolerance relaxed and no alternate gate declared accepted. Full output serialization still finishing. Spike cycles are functional simulation, not FPGA cycles.

As authorized, watcher immediately started F2 dispatch attempt1, runId gemT-tinyllama-int8-20261027-a, max12h; fpga-dispatch.log captures progress. Numerical failure does not suppress the explicitly requested FPGA measurement/comparison. Expected F2 run output may terminate nonzero because runner reports numerical failure; that is not infrastructure failure and does not warrant a paid retry.

Full Spike readback complete:512000/512000 finite; strict failures511745; max_abs19.05205774307251; RMSE3.611671537772471;0/16 per-position argmax matches;0/16 top5 set matches; last-position seeded greedy token18355 vs CPU13364. Raw float payload SHA25635fc31f53d085a442d55ac24f7748cdbf835b6e26dc71c39a642d0dedd37facc. Files spike.output.bin, spike.metrics.json, spike.log, spike.stderr. Wall4:19.97; Spike exit1 because strict DATA_LOSS gate fails. Header/invoke completed, not infrastructure failure.

Additional diagnostic vs fixK's already-failing CPU output: max_abs19.024315357208252, RMSE3.6261328937791704,511692 strict-gate failures. Therefore discrepancy is substantially larger than the known host no-provider failure; cannot honestly attribute it solely to tiny scalar RV64/host floating drift. Root cause not isolated. Strict all-logit gate remains meaningful and FAILED; token/top5 diagnostics are also failures and never replacement gates. This is not an accepted numerical deployment artifact.

F2 ELF upload succeeded, SHA prefixe3785f15d2d50df3. SSM command e8906dd3-1398-4b72-9b63-45c88ad708f6. Waiting for FPGA cycles/full readback; no hardware result claimed yet.

Hardware result postprocessing is prepared in finalize_fpga.py: normalize raw UART CRLF; require full512000 words; reuse identical unchanged gate and numerical metrics; compare every output word to Spike; retain raw logs and timing/FMR evidence. No hardware result inferred while remote SSM is InProgress.
