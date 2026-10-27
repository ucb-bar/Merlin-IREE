# ResNet-50 INT8 / Gemmini execution package

**FAILED NUMERICS on Spike and AWS F2. Do not treat as an accepted model.**

- `resnet50-gemR.elf`: executed ELF, embedded VMFB/input/passing CPU golden.
- `REPORT.md`: reproduction commands, build failures/workarounds, compiler defect evidence, results and cleanup.
- `result-manifest.json`: machine-readable configuration and outcomes.
- `SHA256SUMS` / `manifest.json`: pinned assets and deliverable hashes.
- `spike.log`, `spike-output.f32`, `spike-result.json`: functional execution.
- `fpga/`: original FireSim result bundle; `fpga-uart-normalized.log`, `fpga-output.f32`, `fpga-result.json`: decoded results.
- `classifier-lowering.ll`: likely lost tiled offset/stride compiler defect.
- `audit.json`, `timed-region.txt`, `readelf.txt`: one timed invoke, scalar ISA audit.

From this directory: `bash run_spike.sh > new-spike.log 2>&1`.
Hash verification: `sha256sum -c SHA256SUMS`.
Build reproduction: `bash compile_model.sh`, `bash build_runtime.sh` (pinned read-only external source/toolchain paths).
The recorded FPGA dispatch costs money; use a fresh runId if explicitly rerunning.
