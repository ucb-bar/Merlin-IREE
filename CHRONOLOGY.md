# Chronology of the IREE work

Everything in `work-2026-10/` and the first 263 commits of this history. Commit dates are the
dates the work happened, not when it was added here.

## How the history is ordered

- **2025-10-11 .. 2026-07-13** is the unchanged history of ucb-bar/Merlin-IREE `main` (263 commits, original
  authors; the `archive/iree-legacy` tip `bdf75eb82` is an ancestor). Peak activity is March 2026 (139 commits):
  Gemmini dialect moved out of tree, IREE rebased to 3.11, Saturn OPU in April, QNN/Radiance targets in May.
  Branches other than `main` of that repo are not included.
- **2026-10-23 .. 2026-10-30** commits add the October reproduction and numerics-repair work, one commit per
  experiment directory or FireSim run. The commit date is the last write time of the files in the commit, taken
  from a file inventory of the build host, so long-running items such as `perfX` appear at their end time.
  Experiments ran in parallel, so adjacent commits are not sequential steps.
- This commit is dated when it was made and is the only one that is not back-dated.

## Timeline (UTC)

| When | What | Where |
|---|---|---|
| 26 Oct 15:21 | Snapshot zip built: Merlin-IREE `bb64b5d83` plus local changes (Gemmini transforms, firesim linker script, chipyard tools), IREE `0f39f82b8`, LLVM 23.0.0git | `snapshot/SNAPSHOT.json` |
| 26 Oct 23:13 | First-pass reproduction: validation passes, ResNet-50 CPU passes with public weights, TinyLlama blocked on sealed assets, SmolVLA numerics fail | `first-pass/` |
| 27 Oct 02:16 | TinyLlama public-weight bring-up with gates fixed up front; SmolVLA numerics specification (GELU coefficient, BF16 transport, INT8 quant pass) | `tinyllama2/`, `smolvla-numerics/` |
| 27 Oct 03:14 - 09:17 | Parallel numerics fixes: fixC, fixH, fixI, fixL, fixG, fixK (Gemmini offload coverage), fixJ (combined, SmolVLA bitwise exact), fixM (KV-cache decode) | `fix*/` |
| 27 Oct 17:20 - 18:20 | First Gemmini hardware attempts: gemR (ResNet-50, numerics fail), gemT (TinyLlama, Spike fail) and their FireSim runs | `gemR/`, `gemT/`, `firesim-runs/` |
| 27 Oct 17:37 | fixN: all fixes consolidated into one compiler | `fixN/` |
| 27 Oct 21:17 | fixW: Gemmini address/stride repair; ResNet-50 passes on FireSim at 2,088,587,357 cycles, bit-equal to Spike | `fixW/` |
| 27 Oct 21:32 - 23:07 | Analysis burst: utilization per dispatch (optAnalysis), SmolVLA softmax blowup (smA/smB/smD), cycle-sink attribution (attE/H/R/T/U/V), quantization audit (qx), lm_head variant (tlHead) | various |
| 28 Oct 05:40 - 06:16 | Kernel profile and final FireSim measurements: kprofC, kprofM, perfSM, perfX | `kprof*/`, `perf*/` |
| 28 Oct 15:39 | F2 cycle campaign: ResNet-50 2.09 G cycles, TinyLlama seq16 13.36 G, SmolVLA timed out | `f2-cycles/` |
| 29 - 30 Oct | TinyLlama seq32 variants (zJ-*, t32*), protocol runs | `firesim-runs/`, `f2-protocol-runs/` |
| 1 Nov | Build host captured and terminated; only its file inventory was kept | see below |

## Not in this repo

- **Binaries and large files**: `.npy`, `.bc`, `.o`, `.bin`, `.gz`, ELFs, VMFBs, shared libraries, any file over 20 MB,
  and build trees. The compiler snapshot (`iree-latest-compiler-and-examples.zip`, 779 MB) and the `libIREECompiler.so`
  of the fixW build live on the maintainer's machine.
- **Staged source copies** from the F2 campaign (`stage/`), which duplicate the snapshot.
- **FireSim ELFs** are in S3 `firesim-elfs/` of the AWS artifacts bucket (us-east-1):

| ELF | S3 date | size |
|---|---|---|
| gemR-resnet50-20261027-a1.elf
 | 2026-10-27 | 27 MB |
| gemT-tinyllama-int8-20261027-a.elf
 | 2026-10-27 | 1,499 MB |
| gemW-resnet50-20261027-a1.elf
 | 2026-10-27 | 27 MB |
| gemW-tinyllama-20261027-a1.elf
 | 2026-10-27 | 1,499 MB |
| perfX-resnet-plain-corrected.elf
 | 2026-10-27 | 27 MB |
| perfX-resnet-plain.elf
 | 2026-10-27 | 27 MB |
| perfX-resnet-trace-corrected.elf
 | 2026-10-27 | 27 MB |
| perfX-tinyllama-plain-corrected.elf
 | 2026-10-27 | 1,499 MB |
| perfX-tinyllama-trace-corrected.elf
 | 2026-10-27 | 1,499 MB |
| zF2-resnet-plain-buffered-20261027.elf
 | 2026-10-27 | 27 MB |
| zF2-resnet-trace-buffered-20261027.elf
 | 2026-10-27 | 27 MB |
| zK-kprof-plain.elf
 | 2026-10-27 | 153 MB |
| zK-kprof-trace.elf
 | 2026-10-27 | 153 MB |
| zK-kprofM-plain.elf
 | 2026-10-27 | 266 MB |
| zK-kprofM-trace.elf
 | 2026-10-27 | 266 MB |
| zSM-smolvla-plain-retry1.elf
 | 2026-10-27 | 559 MB |
| zSM-smolvla-plain.elf
 | 2026-10-27 | 559 MB |
| zSM-smolvla-trace.elf
 | 2026-10-27 | 559 MB |
| zSM3-smolvla-plain.elf
 | 2026-10-27 | 563 MB |
| zSM3-smolvla-trace.elf
 | 2026-10-27 | 563 MB |
| zT32-tinyllama32-plain.elf
 | 2026-10-27 | 1,504 MB |
| zT32-tinyllama32-trace.elf
 | 2026-10-27 | 1,504 MB |
| zTL-tinyllama-plain.elf
 | 2026-10-27 | 1,499 MB |
| zTL-tinyllama-trace.elf
 | 2026-10-27 | 1,499 MB |
| zJ-resnet50-plain-20261029.elf
 | 2026-10-29 | 27 MB |
| zJ-t32d2-plain-20261029.elf
 | 2026-10-29 | 1,504 MB |
| zJ-t32n16-plain-20261029.elf
 | 2026-10-29 | 1,504 MB |
| zJ-t32n32-plain-20261029.elf
 | 2026-10-29 | 1,504 MB |
| zJ-t32toy-plain-20261029.elf
 | 2026-10-29 | 1 MB |
| zJ-tinyllama32-plain-20261029.elf
 | 2026-10-29 | 1,504 MB |
| zJ-tm32-plain-20261030.elf
 | 2026-10-29 | 1,308 MB |
| zJ-tm32b-plain-20261030.elf
 | 2026-10-29 | 1,308 MB |

- **Run records of earlier TVM sessions** (`resnet-valid`, `run2-*`, `tinyllama-diagloose-valid`, 23-25 Oct) are not
  IREE runs and are omitted. The `firesim-runs/` records without a UART log (several TinyLlama and SmolVLA ones) are
  included because their names match the IREE experiments, but their compiler was not verified.

## Run directories with no retained copy (inventory only)

These existed on the build host (`/home/loren/work/runs`) but were lost with it. The windows below are the first and
last file writes after 26 Oct from the inventory; `patchV` is polluted by the 1 Nov capture.

| run dir | first write (UTC) | last write (UTC) | files | size |
|---|---|---|---:|---:|
| fixB | 2026-10-27 02:51 | 2026-10-27 03:07 | 802 | 19.61 GB |
| fixD | 2026-10-27 02:50 | 2026-10-27 03:07 | 3788 | 5.15 GB |
| fixF | 2026-10-27 03:25 | 2026-10-27 03:30 | 5036 | 15.03 GB |
| fixE | 2026-10-27 03:25 | 2026-10-27 04:08 | 6522 | 44.84 GB |
| fixP | 2026-10-27 17:00 | 2026-10-27 17:01 | 298 | 0.03 GB |
| fixQ | 2026-10-27 17:00 | 2026-10-27 17:02 | 480 | 0.38 GB |
| loadY | 2026-10-27 20:07 | 2026-10-27 20:08 | 26 | 0.00 GB |
| probeP3 | 2026-10-27 21:30 | 2026-10-27 21:40 | 473 | 0.21 GB |
| probeSPL | 2026-10-27 21:30 | 2026-10-27 21:41 | 67 | 0.60 GB |
| probeP2 | 2026-10-27 21:31 | 2026-10-27 21:53 | 2193 | 0.93 GB |
| probeP1 | 2026-10-27 02:18 | 2026-10-27 21:53 | 20667 | 4.82 GB |
| smK | 2026-10-27 21:56 | 2026-10-27 21:57 | 13 | 0.00 GB |
| smK2 | 2026-10-27 22:09 | 2026-10-27 22:20 | 34 | 0.00 GB |
| smC | 2026-10-27 17:35 | 2026-10-27 22:29 | 4110 | 7.92 GB |
| perfSM2 | 2026-10-26 22:49 | 2026-10-27 22:31 | 196388 | 5.15 GB |
| sq3 | 2026-10-27 22:31 | 2026-10-27 22:38 | 19 | 0.08 GB |
| sq1 | 2026-10-27 22:30 | 2026-10-27 22:38 | 16 | 0.00 GB |
| ops | 2026-10-27 21:33 | 2026-10-27 23:07 | 8 | 0.00 GB |
| finalReport | 2026-10-27 21:34 | 2026-10-27 23:07 | 9 | 0.00 GB |
| onnxq | 2026-10-27 23:05 | 2026-10-28 00:26 | 6789 | 8.54 GB |
| t32B | 2026-10-27 23:08 | 2026-10-28 00:43 | 1036 | 82.87 GB |
| t32A | 2026-10-27 23:06 | 2026-10-28 01:56 | 2848 | 24.58 GB |
| visionQ | 2026-10-28 01:19 | 2026-10-28 02:02 | 2388 | 17.66 GB |
| sm3fin | 2026-10-27 23:05 | 2026-10-28 06:14 | 31 | 0.01 GB |
| kprofS | 2026-10-28 02:29 | 2026-10-28 09:10 | 123578 | 2.42 GB |
| t32C | 2026-10-27 23:07 | 2026-10-29 22:28 | 197533 | 22.05 GB |
| jackrun | 2026-10-29 09:14 | 2026-10-30 01:58 | 23 | 0.00 GB |
| t32M | 2026-10-30 00:54 | 2026-10-30 02:07 | 455 | 23.45 GB |
| patchV | 2026-10-27 16:46 | 2026-11-01 07:18 | 413195 | 23.70 GB |

## Related work in the ucb-bar/merlin repo (not copied)

- `4bdd34621` (2026-07-14) adds this repo as submodule `third_party/baselines/merlin-iree`.
- `f626cf8b7`, `0ea46d71c` (2026-06-19): "L5" FireSim bundle with IREE as a baseline column; `merlin/experiments/gemmini_perf_bench/scripts/{build_iree_elfs,run_iree_gemmini,run_iree_arm,run_iree_small_verilator,merge_iree_arm}.py`.
- `356d134ea` (2026-08-03): prefer the repo's own clang over the retired IREE build.

## Redactions

Cloud account identifiers were removed from the imported text files before publication:

- the AWS account ID is written `<AWS_ACCOUNT_ID>` (so the artifact bucket is `fsim-artifacts-<AWS_ACCOUNT_ID>`);
- EC2 instance, security-group, subnet, AMI, VPC, volume and network-interface IDs are written `i-<redacted>`, `sg-<redacted>`, etc.;
- two public instance IP addresses are written `<public-ip>`.

FPGA image IDs (`agfi-…`) and private 192.168.x.x addresses are unchanged. In `work-2026-10/gemR/SHA256SUMS`
the entries for `REPORT.md`, `ec2-final.json`, `fpga-dispatch-a1.log`, `fpga-status-final.log`,
`fpga/gemR-resnet50-20261027-a1/run.log` and `result-manifest.json` are the pre-redaction hashes and no longer match.

## Regenerable files removed

Bulky outputs that can be regenerated by rerunning the corresponding step were dropped from every commit (1,147 files, about 234 MB):

- `work-2026-10/gemR/libiconv-1.18/`: a configured GNU libiconv 1.18 source tree built only to supply a missing toolchain library; the upstream tarball is equivalent.
- LLVM IR and assembly intermediates (`*.ll`, `*.s`) of 1 MB or more, under `fixW/tinyllama/{intermediates,numerics-intermediates}` and `gemR/intermediates`. Recompile the model with the fixW compiler to reproduce them. Smaller intermediates (ResNet-50 and the `fixW/repro` before/after IR) are kept.
- `module.disassembly` in `smA/full` and `smB`: regenerate with `objdump -d` on the ELF.
- Simulator console logs of 1 MB or more (`spike.log`, `onewg.log`, `startup-trace*.log`) under `fixW/tinyllama`, `gemR`, `smA`, `smB` and `tlHead/spike`. Small `spike.log` files that carry a result are kept.

FireSim UART logs and all reports, JSON/CSV data, patches and scripts are kept. Entries in `work-2026-10/gemR/SHA256SUMS` for removed files have no counterpart in this tree.
