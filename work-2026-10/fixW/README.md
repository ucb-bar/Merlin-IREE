# W Gemmini layout repair

Current results and exact commands: REPORT.md. All artifacts are local; other run directories are read-only dependencies.

The change in `src/compiler/src/merlin/Dialect/Gemmini/Transforms/LegalizeForLLVMExport.cpp` fixes TileMatMul operand addresses and physical DMA row strides. K's valid workgroup tiling exposed an older legalizer assumption that views were packed allocations. Runtime offsets became the dynamic-layout sentinel treated as a constant; the bit-63 mask then erased that contribution. Shape-based strides used8 instead of1000 for ResNet classifier weights. D's layout offset was omitted, and C offset scaling used input element bytes instead of its own dtype. The initializer fix is retained.

`gemmini-address-fix.patch` applies incrementally to K. `merged-compiler-fixes.patch` applies to the snapshot and also includes N's validated, explicitly enabled PyTorch numerical compatibility changes. Both apply checks pass. Source verification shows exactly30 intended W/N path differences versus K and no unexpected changes.

Two independently retained compilers:
- `build/tools/iree-compile`: K-derived address fix; ResNet passes exactly; Tiny is bitwise K-host but fails the required accepted reference gate.
- `build-numerics/tools/iree-compile`: N numerical integration plus identical W Gemmini fix; Tiny passes all-logit gates vs both CPU golden and protected PyTorch.

Focused lit: `lit-final2.log`, `lit-numerics-final2.log`,9/9 each. Executable Spike regression: `repro/test_spike.sh`; NumPy reference and independent decoder in `repro/check.py`. Its single signed matmul has M32,N40,K24, ten output workgroups, K hardware tail; K fails1279/1280, W is exact0/1280. It can be rerun with `bash /home/loren/work/runs/fixW/repro/test_spike.sh` in this workspace. The test builds a local bare-metal runner through the gemR toolchain template; it writes only fixW/repro.

ResNet model commands under resnet/. Tiny under tinyllama/. smol under smolvla/. Each numerics integration uses separate numerics.vmfb, ELF target and Spike logs. Model FPGA dispatch requires successful full output decoding at unchanged gates; unique gemW- IDs, one attempt per accepted model, all results under fixW/fpga. `collect_fpga.py MODEL UART_LOG` retains normalized UART, all-word comparison to Spike and numerical gate checks.

Frozen compiler/ELF/VMFB hashes: frozen-artifacts-1749.json (more model artifacts added when complete). Provider SHA256: provider-sha256.txt. Exact generated build commands: incremental-commands.json and numerics-incremental-commands.json. No clean full compiler rebuild was necessary: changed object, static archive, shared library and tools were incrementally rebuilt from independent build copies within24 cores. Dynamic tile offsets work; dynamic physical row strides and nonunit innermost strides are diagnosed explicitly. No general TileConv/standalone Mvin layout repair or strict155/0 Tiny weighted offload claim.

Additional direct INT32-output Spike regression: `bash runs/fixW/repro-i32/test_spike.sh`. This is one matmul returning INT32 with no cast epilogue, exercises physical output stride40 and4-byte runtime offsets; W exact0/1280, K1277/1280 wrong. `lit-typed-offsets.log` and `lit-numerics-typed-offsets.log` are the latest9/9 focused results. Original1749 patch bodies are preserved in patch-history/; final current patch includes stronger test expectations without changing compiler semantics or accepted model ELF bytes.
