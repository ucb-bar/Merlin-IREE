# Provenance (F2 cycle campaign, 2026-10-28)

## Hardware / simulator
- Hosts: merlin-p1-f2-a i-<redacted> (192.168.3.251), merlin-p1-f2-b i-<redacted> (192.168.3.142),
  merlin-p1-f2-c i-<redacted> (192.168.3.211); f2.12xlarge, us-east-1d, 2 FPGA slots each.
- hw_config f2_gemmini_rocket_ddr3llc_60mhz = FireSimGemminiRocketConfig + FRFCFS16GBQuadRankLLC4MB_BaseF2Config, 60 MHz;
  AGFI agfi-02410ef1a8461b435 on all three hosts (/opt/f2run/f2run.conf; per-run copy in runs/<id>/f2run.conf,
  slot AFI state in runs/<id>/fpga-before.txt). Same AGFI as the b89be5a profile.
- FireSim-f2 driver md5 52297743720c032f62e14aa6933f7aa5 (identical on a/b/c). f2-exec md5 7a7a6b456a54214dcfe259fb6b063e19.
- Source pins on the F2 AMI (f2-a): chipyard 157dd69e49b9866be2bf8db390ee78bc38cd4438, firesim e1bdea8bb042b900995436ecc3d7c44100eb9da0,
  gemmini 8c3f9923a44a2fe2c7930587be297d6d4f8c09ca, gemmini-rocc-tests 7c540b3adf1b86ad93d07f893abe3a73489b568e.
- Gemmini: DIM 16 (256 MAC/cycle peak), 4 banks x 2048 rows scratchpad, 512 accumulator rows, LOOP_WS, int8/int32.

## Software
- iree-compile: fixW build-numerics (Merlin-IREE snapshot + merged compiler fixes), launcher sha256
  6394f9d7889cf24f1d6a5de8a835ed3cc7d3e19696c84b1e019163e2ded766ad, libIREECompiler.so
  c3c2aba41b05a556e3c656c0827971bf0ad9de32706a051b96c140c8aeeb7ea0 (identical to the b89be5a profile's compiler).
  Embedded linker: snapshot prebuilt iree-lld launcher f43106c5... run against the same libIREECompiler.so (LLD 23.0.0).
- Snapshot (iree-latest bundle, SNAPSHOT.json): Merlin bb64b5d83d3b2275f0da04da63610d0c94744634 + local changes, IREE 0f39f82b8364007da5c9dcc7ee2825812f9441ed.
- Runtime: bundle's third_party/iree_bar runtime, local_executable.c replaced by smA/runtime-full/local_executable.c
  (adds PERFX_TRACE per-dispatch rdcycle intervals, compiled out unless -DPERFX_TRACE=1; sha256 8b82146c..., original d6e43356...).
  Bare-metal local-sync device, embedded ELF loader, no threading; clang-23 from the bundle (sha256 7d157c57...);
  newlib/htif from phase1-prep riscv-tools conda env; toolchain file gemR/toolchain/riscv_firesim.toolchain.cmake;
  -march=rv64imafdc -mabi=lp64d -mcmodel=medany.
- Compile flags: src/compile_rv.sh (kprofC rv flag set + --iree-execution-model async-internal for kernels / async-external
  for models as fixW did; model compiles add fixW's numerics flags --torch-pytorch-cpu-numerics
  --torch-pytorch-cpu-constant-math-library=<torch 2.10.0 libtorch_cpu.so>; SmolVLA also --iree-opt-const-eval=false).

## Models (exported tonight on merlin-compute-1, /scratch/loren/f2cyc/models)
- ResNet-50: torchvision IMAGENET1K_V2 (resnet50-11ad3fa6.pth sha256 11ad3fa6...), input randn(1,3,224,224) seed 0,
  ONNX opset 17, ORT 1.22.1 quantize_static QDQ int8 symmetric per-tensor (1 calibration sample), iree-import-onnx 3.13.0.
  resnet50.q.int8.mlir sha256 6fc74ea0a21531eca86c4c493cb88a2e89fd9e01f8bb47e24d4fb96eb2392275. Top-1 21 (PyTorch, ORT QDQ).
- TinyLlama-1.1B-Chat-v1.0 @ fe8a4ea1ffedaf415f4da2f062534de366a451e6 (safetensors 6e6001da...), fp32 eager, batch 1 seq 16,
  no KV cache, torchao 0.16.0 Int8DynamicActivationInt8WeightConfig on the 154 decoder linears (lm_head, embedding, attention fp32),
  iree-turbine 3.9.0 export. model.mlir sha256 9670780ebe5bdfc1da7a7907824a3806092e16fa6ea4b58bf64726e59665b492.
  Quantized-PyTorch greedy tokens [359,4033,2122,13] = the earlier tinyllama2 int8 report.
- SmolVLA: lerobot/smolvla_base @ 5e8d12a6e2975b0e5e5fce7c8caf47c371d257b6, SmolVLM2-500M @ 7b375e1b..., Understanding-PI0
  mlir-smolvla 8d9eb0950111a7300e1e914f6a1ebadc052c3598, lerobot v0.4.3 (0b067df5...), torchao int8 dyn-act/int8-weight on 302 linears,
  fp32 compute, bf16 images, 1 denoise step. smolVLA.q.int8.mlir sha256 c54bf30a72f94e6843592c5d485b0d3f4c7add7a3eb95f59d1a72fd09c34c4ec.

## Per-run records
Each runs/<run-id>/ holds: uartlog (target console), driver.err (FireSim driver + f2-exec messages incl. total target cycles),
elf.sha256, f2run.conf, fpga-before.txt, host, start/end (UTC), rc. Command on the F2 host:
`/opt/f2run/f2-exec < prog.elf > uartlog 2> driver.err` (f2-exec reloads the slot AFI, then runs
`FireSim-f2 $DRIVER_ARGS +slotid=N +permissive-off +prog0=<elf>`).

## Artifacts per run (sha256)
| run(s) | vmfb | ELF |
|---|---|---|
| r1-kernels-plain / -trace | apps/kernels/kernels.vmfb a35fd1367a2a84dd0b979dcc87b559e8ea53f5c1ef84a5de1fad7e33758dd5ab | 5d037897eea7c039fc80f3f345f6f9709786d7b8064bbddccb30e30f3e6f0310 / fec74bd46a056f5f8964227e8bdd4c276246213984c2d4b19814fb99720196d9 |
| r1-resnet-plain / -trace (kprofC flags) | apps/resnet/model.vmfb f01049e13f64a44b57641fd29574ee0d053c103bfc0416dc27375f6d1dc55f20 | a6304bc62512ab0a6d6616898d0caf89d56296d2498149185338b0283f557973 / ff7d72268fd4935e16a15eb7bc5359b7aaf05f06f3c32e465f76cdf3fcb36acf |
| r2-resnetfx-plain / -trace (fixW flags) | apps/resnetfx/model.vmfb 5eede686a7ca579aafd892fde0e1da0c377d5e3a43fa521066118152821333b8 | aedc56b6cd09c019e77627ccb84c8265a2b4d2e3e19f0d3841247f150fc8d06d / 32000c242ddf01447008674ed079cadd7712164ca0961178f7836f85025189e3 |
| r1-tiny-plain / -trace | apps/tiny/model.vmfb 94f01393b7f77bb7777698dd616da519236bb236b3f44c5c5376e1ee3992c80a | 1380a48712678ef4a0ce10b0366327ae10b12fa7b62d418b1ed44dcdfe368064 / 30e13e24d7d5a37feba98897c619cc3edafebd7c129d346fb97ee2b08add9846 |
| r1-smol-plain / -trace (timed out) | apps/smol/model.vmfb dcd6273ae215fd49f212c77a128f36286c6ef667bc9a48851da36099128c781a | 3230671075798be399aa9923fe1554bcd00265e3693a67d2e0073a52edf7103a / 51a8d79de44c38e2b177bf4f24c2ab7d00a040f879f305b959ab222e117b195a |
| c1-zK-kprof-plain-rerun | (b89be5a kprofC rv/kernels.vmfb 04b25038...) | 17c00bda23eb0225cc5499fcdad3e78ba6535b9ec874d5ed12160a973e12b2dd |
Exact compile commands: apps/<app>/compile-<app>.log (line 'CMD ...') plus src/compile_rv.sh; build: src/build_rt.sh; run: src/f2submit.sh.
