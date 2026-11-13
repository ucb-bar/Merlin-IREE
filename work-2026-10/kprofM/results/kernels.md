# Set B: FP32 kernels in shipped dtype (att_qk, att_pv, mm_lm)

Hardware: FireSim f2_gemmini_rocket_ddr3llc_60mhz (Rocket + INT8 DIM16 Gemmini, 60 MHz), IREE bare-metal, fixW merged compiler, shipped numerics flags (no FP reassociation, no demotion). The FP32 kernels have no Gemmini mapping (zero Gemmini intrinsics in the linked LLVM); they run on the Rocket scalar FPU, as in the shipped TinyLlama. All other model kernels are INT8 in the shipped models and are covered by Set A (kprofC); see model_like.md for the merged view.

Method: one ELF, each kernel invoked once cold (first call, no cache flush) then 5 warm; rdcycle immediately around iree_vm_invoke, rdinstret bracket; all prints buffered, one final flush; the cold output of every kernel is checked against the golden output outside the timed region. Plain ELF gives authoritative cycles; the trace ELF (separate build, per-dispatch HAL intervals) gives the Gemmini vs Rocket split and dispatch counts. MACs: product accumulate pairs (the explicit "chain" forms count the same mul+add pairs).

Shapes (M x K x N): QK prefill 32 x (16x64x16); PV prefill 32 x (16x16x64); QK/PV decode 32 x (1x64x64); lm_head 1x2048x32000. Decode batch_matmul forms are the straightforward batch_matmul; the "chain" rows are the shipped t32B decode form (explicit elementwise mul and ordered adds reproducing the MKL summation order, from t32B/attn-unit-chain). The shipped t32B prefill pads the cache to 64 slots (QK is 16x64x64); this set uses the requested 16x64x16 / 16x16x64 forms.

Data provenance: lm_head weights/activation reused from kprofC (dyadic values, exact in FP32). Attention inputs are regenerated seeded uniform[0.25,1) FP32 (kprofC's att data files were overwritten by its INT8 data); positive values avoid cancellation so the rtol 1e-5 / atol 0 gate is meaningful. Gold: float64 matmul cast to FP32 (bmm forms), exact FP32 emulation of the ordered-add order (chain forms; bitwise match on host). FireSim values are not data dependent for timing except possible FP latencies.

|Kernel|MACs|FireSim cold|Warm median|min|max|MAC/cycle|Spike instr|FireSim/Spike|Rocket dispatch cyc|Gemmini dispatch cyc|Dispatches|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|att_qk_prefill_F|524,288|4,682,758|4,568,636|4,564,407|4,601,278|0.1148|1,668,300|2.739|4,501,271|0|1|
|att_pv_prefill_F|524,288|5,387,660|5,354,157|5,347,481|5,408,924|0.0979|1,972,517|2.714|5,231,350|0|1|
|att_qk_decode_F|131,072|917,530|823,105|812,081|858,258|0.1592|408,840|2.013|762,356|0|1|
|att_pv_decode_F|131,072|900,574|820,780|810,968|852,380|0.1597|408,844|2.008|761,210|0|1|
|mm_lm_fp32_shipped_F|65,536,000|502,812,114|501,379,916|501,369,252|501,442,103|0.1307|184,504,965|2.717|514,110,917|0|1|
|att_qk_decode_chain_F|131,072|6,640,205|6,322,846|6,307,384|6,340,897|0.0207|3,418,331|1.850|5,910,896|0|5|
|att_pv_decode_chain_F|131,072|2,156,506|2,032,252|2,031,589|2,040,895|0.0645|927,242|2.192|1,610,066|0|3|

FireSim/Spike = warm-median FireSim cycles / warm-median Spike rdcycle (Spike retires 1 instruction per cycle, so this is effectively FireSim CPI of the invoke). Dispatch counts are from the trace build.

## Shapes and interpretation

- **att_qk_prefill_F**: QK prefill: [32,16,64] x [32,64,16] -> [32,16,16] (batch_matmul, 32 heads, seq16). 0.1148 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 98.5% of the trace-build invoke (1 dispatches); rest is VM/HAL overhead.
- **att_pv_prefill_F**: PV prefill: [32,16,16] x [32,16,64] -> [32,16,64] (batch_matmul). 0.0979 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 97.7% of the trace-build invoke (1 dispatches); rest is VM/HAL overhead.
- **att_qk_decode_F**: QK decode: [32,1,64] x [32,64,64] -> [32,1,64] (batch_matmul, 64 cache slots). 0.1592 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 92.8% of the trace-build invoke (1 dispatches); rest is VM/HAL overhead.
- **att_pv_decode_F**: PV decode: [32,1,64] x [32,64,64] -> [32,1,64] (batch_matmul). 0.1597 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 92.6% of the trace-build invoke (1 dispatches); rest is VM/HAL overhead.
- **mm_lm_fp32_shipped_F**: lm_head last row: [1,2048] x [2048,32000] -> [1,32000] (matmul). 0.1307 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 100.0% of the trace-build invoke (1 dispatches); rest is VM/HAL overhead.
- **att_qk_decode_chain_F**: QK decode, t32B explicit form: mul [1,32,1,64]*[1,32,64,64] + ordered-add chains (MKL order), -> [1,32,1,64]. 0.0207 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 93.2% of the trace-build invoke (5 dispatches); rest is VM/HAL overhead.
- **att_pv_decode_chain_F**: PV decode, t32B explicit form: mul + 64-step ordered-add chain, -> [1,32,1,64]. 0.0645 MAC/cycle on the scalar FPU path (0 Gemmini dispatches); dispatch intervals cover 79.1% of the trace-build invoke (3 dispatches); rest is VM/HAL overhead.

Validation: spike_plain_pass=True, spike_trace_pass=True, firesim_plain_pass=True, firesim_trace_pass=True.
