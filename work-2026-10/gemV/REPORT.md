# gemV smolVLA INT8 Gemmini execution

2026-10-27 UTC. Work confined to gemV; <=6 cores (CPUs 12-17).
Read historical persistent report, README, compile script and runner; root REPORT, fixK/fixD REPORT, fixL HANDOFF, fixJ/fixG acceptance reports.

Important provenance: fixK Gemmini VMFB has 443/3 weighted coverage but predates fixJ numerical repairs. Running it does not inherit the fixJ CPU pass. CPU golden is fixJ/smol-fp32-peeled/output.bin; PyTorch reference is smolvla/fp32/smolVLA.q.int8.mlir.reference/pytorch.npy. Both compare at original atol=rtol=0.001, all1600 outputs; raw bit equality reported separately. No tolerance changes. Spike cycles are functional only.

Runtime cross-build uses snapshot upstream IREE source read-only and copied FireSim toolchain/linker scripts. Snapshot stripped runtime/plugins samples, so standalone runner/CMake is created locally.

## Runtime build and startup fixes

Bundled clang23 --print-targets confirms riscv64. tools/bin contains local symlinks to bundled clang23 and riscv-tools LLVM archive tools. Initial standalone upstream configure fails missing CheckCSourceCompiles; local top CMake includes it before add_subdirectory. IREE_HOST_BIN_DIR points at snapshot prebuilt/bin so host flatcc is used. All builds taskset12-17 -j6. Runtime source is read-only upstream snapshot (not modified).

Newlib toolchain GCC needs libiconv.so.2; copied gemT/deps/lib/libiconv.so.2 read-only into gemV/deps/lib. sudo is unavailable due no-new-privileges despite environment description. Downloaded Ubuntu device-tree-compiler1.7.0-2build1 with `apt-get download device-tree-compiler` in deps and unpacked via dpkg-deb locally; added deps/usr/bin to PATH.

Early Spike startup traps (tohost4) were unaligned `ld` in bundled newlib strncmp then memcmp. Instruction traces retained early-trace.log, trace2.log. Local runner provides standard bytewise strncmp/memcmp/strcmp/strlen/memchr using volatile byte loads; no model/reference arithmetic modified. Final startup reaches model invoke banner.

VMFB is fixK/smolvla.bounded.vmfb copied byte-for-byte: SHA256 de710f20a3a6c9a9f03861ce241c50ea9932d1dd994fda257f7a46ae622d984c. Golden raw CPU and PyTorch payloads both SHA256 74c9c6c5a16b91f6a918f11146813366eb39c65dabd59c62b01620c982d14a7b. Compiler lineage caveat remains: K does not include J numerical repairs.

Memory: copied htif.ld already supports .vmfb_data after1GiB heap+128MiB stack. Main load0x80000000, VMFB load0xc850d000 (address changes slightly with runner fixes); beyond historical256MiB default, within Spike -m16384/16GiB FPGA memory. Runtime heap remains1GiB; compiler stack gate unchanged32768 in prebuilt K artifact.

Executed Spike command is preserved in run_spike.sh, with LD_LIBRARY_PATH including riscv-tools/lib/libgemmini.so. First real inference is running. No numerical/performance result claimed yet.

Final ELF SHA256 **5db65e31cd5a01b7415c1e25e657cf0bd1e240ce7e1c3db6dbf7089d64346db9**,550889112 bytes. `manifest.json` and SHA256SUMS cover ELF/VMFB/runner/linker/input/golden payloads. `audit.json`:1 invoke call,0 RVV instructions in linked runtime; timed-region.txt preserves bracket. Embedded compiled K ISA is independently in fixK/smolvla-bounded-intermediates; no V feature in compiler command. `build_runner.sh` records exact successful configuration/build recipe. `prepare.py` produces the base runner/embeds; subsequent bytewise libc fixes are retained in final runner.c (do not overwrite with prepare.py without reapplying them).

`fpga-status-before.txt` verifies hw_config **f2_gemmini_rocket_ddr3llc_60mhz**,0 active runs before dispatch. `dispatch_after_spike.sh` waits for complete SMOLVLA_RESULT then invokes `FSIM_RESULTS_DIR=gemV/fpga FSIM_REGION=us-east-1 fpga-run-elf --max-hours12 --run-id gemV-<UTC timestamp> build/smolvla-gemmini.elf`; watcher is active while inference runs. This ensures dispatch immediately after the numerical result, even on gate failure. No F2 requested before that condition.

Model emitted assembly independently audited: SHA256 fea8ee3e9a11f1e4613c54b3a02c8bd688fca91272cff2f34cb91b3a2a38ad25,3054 loop_ws mentions,0 RVV lines. This audits generated code, not hardware acceptance.

At17:38UTC, original full invocation remains active without stderr; no result has been emitted. FPGA watcher remains pending, so no gemV F2 instance has been provisioned. This is in-progress status, not a performance or numerical claim.

Long-run diagnostic: separate diagnostic/ ELF, same model/input/golden and single invoke, locally copied loader.c with first-workgroup ordinal prints only. Main benchmark ELF remains unchanged. Diagnostic build taskset13-17 -j5 while benchmark uses CPU12 (aggregate<=6); diagnostic Spike uses CPU13 with120s timeout. Target stderr is transported by HTIF into Spike stdout: diagnostic/spike.log is the actual progress stream, progress.log is host stderr. Probe advances through initializers0..296, enters scalar vision convolution ordinal297, then advances to reductions298..300, quantization301 and first Gemmini matmul302 by17:54:57UTC. This proves probe forward progress, not the exact current position of the main uninstrumented run. Probe results/cycles are not used for acceptance or hardware comparisons.
