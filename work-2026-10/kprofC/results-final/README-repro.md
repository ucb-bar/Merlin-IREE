# Reproduction and status

All cases in the final profile are INT8. `cases.json` defines 36 executed entries (A/B for each kernel); `mm_gu_pair_A/B` in the summary is a derived two-call sum. GEMM dimensions are M x K x N. Conv is NHWC, batch 4, 3x3, stride 1, SAME. Attention inputs contain 32 expanded heads and each head is compiled as a rank-2 matmul; QK/PV prefill has M=16, decode has M=1 over 64 cache positions, with no softmax. Decode uses 6.25% of DIM16 row capacity. A returns raw i32. B applies the model-associated epilogue pattern: ResNet first-convolution scale/round-half-even/clamp for GEMM and convolution, TinyLlama TorchAO dynamic quantization with copied channel scales for projection kernels. The requested INT8 mm_lm is non-shipped and uses unit output channel scales.

Inputs stay resident across one cold and five warm invokes. `rdcycle` surrounds `iree_vm_invoke`; this is a software invocation interval, not a hardware performance counter. Trace classifies dispatches from linked LLVM Gemmini intrinsics; fused scalar work inside a Gemmini dispatch remains in that interval. The separate instrumented trace ELF provides per-dispatch intervals. NumPy references verify each result bitwise on host and Spike. Spike counts are functional comparisons, not timing predictions.

## Commands

```sh
cd /home/loren/work/runs/kprofC
# Restore the preserved pre-final source snapshot, then apply the recorded final changes:
cp representative-resnet/kernels.mlir kernels.mlir
cp representative-resnet/cases.json cases.json
taskset -c 0-11 /home/loren/work/runs/smolvla/venv/bin/python use_tiny_pattern.py
taskset -c 0-11 /home/loren/work/runs/smolvla/venv/bin/python add_final_int8.py
OPENBLAS_NUM_THREADS=1 taskset -c 0-11 /home/loren/work/runs/smolvla/venv/bin/python compile.py host rv
OPENBLAS_NUM_THREADS=1 taskset -c 0-11 /home/loren/work/runs/smolvla/venv/bin/python validate_final_additions.py
# Build buffered plain/trace ELFs:
taskset -c 0-11 /home/loren/work/runs/smolvla/venv/bin/python make_harness.py
bash build.sh plain
bash build.sh trace
# Spike, pinned to one CPU:
bash run_spike.sh kernels plain 0 > logs/spike-plain.log 2>&1
bash run_spike.sh kernels trace 1 > logs/spike-trace.log 2>&1
# Before each F2 run, check AWS active f2.* count (<4) and /home/loren/bin/fpga-status.
FSIM_REGION=us-east-1 FSIM_RESULTS_DIR=/home/loren/work/runs/kprofC/fpga /home/loren/bin/fpga-run-elf --max-hours 3 --run-id zK-kprof-plain build-plain/kernels.elf
FSIM_REGION=us-east-1 FSIM_RESULTS_DIR=/home/loren/work/runs/kprofC/fpga /home/loren/bin/fpga-run-elf --max-hours 3 --run-id zK-kprof-trace build-trace/kernels.elf
OPENBLAS_NUM_THREADS=1 taskset -c 2 /home/loren/work/runs/perfX/venv/bin/python summarize.py
taskset -c 2 python3 provenance.py
```

The fixW compiler is `/home/loren/work/runs/fixW/build-numerics/tools/iree-compile`; all Gemmini flags (DIM16, 2048 bank rows, 512 accumulator rows, LOOP_WS, RV64GC) are recorded in `logs/compile-rv.command.json`. The stack gate remains at 32768. Existing batch-4 conv preparation unrolls to four batch-1 convolutions; this harness transformation is retained as documented, not presented as a stack workaround.

Only `zK-kprof-plain` and `zK-kprof-trace` are authorized, each max 3 hours. Capacity guard is MAX_F=4 pending/running F2 instances. Do not retry without a documented infrastructure failure. Outputs, run IDs, compiler/ELF hashes, hardware status, and AGFI verification are recorded under `results/` after retrieval.
