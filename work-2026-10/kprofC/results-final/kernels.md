# Kernel-level profile

All kernels are INT8: i8 x i8 -> i32 raw (A), or i32 -> f32 scaling -> round-half-even -> clamp -> i8 (B). GEMM triples are M x K x N. Conv is NHWC, batch4, 3x3, stride1, SAME padding (zero). All inputs are seeded, resident and reused for six invocations. Cold means first invocation, without cache flushing; warm is median/min/max of the next five. Attention QK/PV uses 32 expanded GQA heads (4 KV heads repeated eight times), head_dim64; prefill16 and decode query1/cache64. Each head is an unrolled rank-2 matmul; no softmax. Decode M=1 uses 1/16 of the DIM16 row tile, so decode attention has 6.25% M-dimension padding utilization. mm_lm INT8 is a requested non-shipped performance variant, with TinyLlama dynamic epilogue and unit output channel scales. mm_* B uses copied TinyLlama TorchAO symmetric per-token dynamic choose_qparams_affine/quantize_affine, range[-127,127], epsilon1e-5; i32 is converted to f32 and multiplied by synthetic row scale1/16 and copied first-layer channel scales for down/gu/o/qkv (q/k/v concatenated). GEMM/conv B use the saved ResNet first-convolution scale/round-half-even/clamp/i8 pattern. Inputs are synthetic seeded tensors, not exact layer replay. Gate/up pair is twice the measured one-kernel result, a derived estimate.

Blank CSV fields and “pending” mean unmeasured. All kernel data paths are INT8. Software dispatch intervals are not hardware counters: a Gemmini dispatch can include scalar preparation/requantization. A/B total-cycle differences quantify the compiled epilogue effect including fusion changes; they do not directly count scalar epilogue instructions. Trace measurements are from a separate instrumented ELF (zK-kprof-trace); plain timing (zK-kprof-plain) is authoritative for every cycle total, MAC/cycle and Peak %. Gemmini/Rocket splits, occupancy and dispatch counts are software dispatch-interval sums from the trace run (median of 5 warm invokes), not hardware performance counters.


## Main table (plain-run timing; trace-run splits)

"Gemmini occ." = Gemmini-class dispatch cycles / trace-run warm invoke cycles. "Rocket" = dispatches whose linked LLVM contains no Gemmini loop_ws intrinsic. "Outside" = invoke time not inside any dispatch interval (HAL/VM/runtime, output buffer handling). "In-Gemmini MAC %" = MACs/256 / Gemmini dispatch cycles (Gemmini-class dispatch may contain fused scalar work). The *_pair rows are derived 2x sums and omitted from the splits below.

|Kernel|Cold (plain)|Warm median|MAC/cycle|Peak %|Gemmini disp cycles|Rocket disp cycles|Outside cycles|Gemmini occ. %|Rocket %|Outside %|Gemmini / Rocket dispatches|In-Gemmini MAC %|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|gemm_512_512_512_A|5,402,616|4,405,589|30.465|11.901|3,610,938|0|797,913|81.9|0.0|18.1|1 / 0|14.5|
|gemm_512_512_512_B|2,221,137|2,131,555|62.967|24.597|1,910,719|0|224,937|89.5|0.0|10.5|1 / 0|27.4|
|gemm_12544_256_64_A|15,794,763|14,049,518|14.628|5.714|10,746,388|0|3,316,949|76.4|0.0|23.6|1 / 0|7.5|
|gemm_12544_256_64_B|5,183,150|4,402,909|46.678|18.234|3,761,142|0|661,442|85.0|0.0|15.0|1 / 0|21.3|
|gemm_12544_64_256_A|56,615,784|58,846,207|3.493|1.364|37,840,231|0|20,992,772|64.3|0.0|35.7|1 / 0|2.1|
|gemm_12544_64_256_B|12,737,685|9,761,813|21.054|8.224|7,145,555|0|2,660,079|72.9|0.0|27.1|1 / 0|11.2|
|gemm_3136_512_128_A|7,980,738|7,211,132|28.501|11.133|5,986,405|0|1,242,935|82.8|0.0|17.2|1 / 0|13.4|
|gemm_3136_512_128_B|3,556,804|3,337,786|61.574|24.052|3,005,688|0|335,014|90.0|0.0|10.0|1 / 0|26.7|
|gemm_3136_128_512_A|26,781,807|27,320,206|7.523|2.939|18,483,188|0|8,799,744|67.7|0.0|32.3|1 / 0|4.3|
|gemm_3136_128_512_B|7,027,182|5,807,603|35.388|13.824|4,618,454|0|1,197,146|79.4|0.0|20.6|1 / 0|17.4|
|gemm_784_256_1024_A|13,399,164|12,119,512|16.958|6.624|9,627,535|0|2,514,224|79.3|0.0|20.7|1 / 0|8.3|
|gemm_784_256_1024_B|4,273,650|4,112,854|49.970|19.520|3,503,144|0|616,657|85.0|0.0|15.0|1 / 0|22.9|
|conv_56_64_A|118,039,725|118,473,495|3.903|1.525|14,809,124|86,705,682|16,957,680|12.5|73.2|14.3|4 / 5|12.2|
|conv_56_64_B|227,891,100|226,823,563|2.039|0.796|14,807,509|194,372,583|17,670,764|6.5|85.7|7.8|4 / 6|12.2|
|conv_28_128_A|61,614,469|58,416,545|7.916|3.092|9,038,017|44,376,127|5,014,034|15.5|75.9|8.6|4 / 5|20.0|
|conv_28_128_B|112,435,914|111,344,618|4.153|1.622|9,160,751|96,349,707|5,845,711|8.2|86.5|5.2|4 / 6|19.7|
|conv_14_256_A|52,964,287|52,008,166|8.891|3.473|28,214,954|21,487,467|2,281,796|54.3|41.3|4.4|4 / 5|6.4|
|conv_14_256_B|79,446,001|78,878,171|5.862|2.290|28,284,019|48,166,012|2,440,932|35.9|61.1|3.1|4 / 6|6.4|
|mm_down_A|15,031,865|14,491,953|12.735|4.974|14,267,900|0|161,954|98.9|0.0|1.1|1 / 0|5.1|
|mm_down_B|19,416,319|18,837,512|9.797|3.827|14,990,212|3,614,251|182,989|79.8|19.2|1.0|1 / 1|4.8|
|mm_gu_A|9,257,626|8,760,106|21.067|8.229|8,400,599|0|362,478|95.9|0.0|4.1|1 / 0|8.6|
|mm_gu_B|21,416,625|20,808,572|8.869|3.464|10,437,182|9,990,130|377,381|50.2|48.0|1.8|1 / 1|6.9|
|mm_o_A|4,042,475|3,234,294|20.749|8.105|3,074,791|0|159,388|95.1|0.0|4.9|1 / 0|8.5|
|mm_o_B|8,400,100|7,565,211|8.871|3.465|3,778,751|3,607,671|182,900|49.9|47.7|2.4|1 / 1|6.9|
|mm_qkv_A|4,212,049|3,728,595|22.498|8.788|3,543,281|0|190,168|94.9|0.0|5.1|1 / 0|9.2|
|mm_qkv_B|9,773,176|9,207,654|9.110|3.559|4,457,897|4,552,319|206,275|48.4|49.4|2.2|1 / 1|7.4|
|mm_lm_A|29,345,537|29,060,191|2.255|0.881|28,885,447|0|178,911|99.4|0.0|0.6|1 / 0|0.9|
|mm_lm_B|34,527,216|34,174,499|1.918|0.749|29,341,998|4,661,859|182,027|85.8|13.6|0.5|1 / 2|0.9|
|att_qk_prefill_A|251,127|207,918|2.522|0.985|65,091|0|145,025|31.0|0.0|69.0|32 / 0|3.1|
|att_qk_prefill_B|1,302,130|1,285,881|0.408|0.159|65,350|1,058,059|166,952|5.1|82.0|12.9|32 / 1|3.1|
|att_pv_prefill_A|533,362|493,089|1.063|0.415|243,321|0|253,395|49.0|0.0|51.0|32 / 0|0.8|
|att_pv_prefill_B|4,783,499|4,760,137|0.110|0.043|243,061|4,232,489|288,615|5.1|88.8|6.1|32 / 1|0.8|
|att_qk_decode_A|207,870|181,325|0.723|0.282|65,164|0|120,525|35.1|0.0|64.9|32 / 0|0.8|
|att_qk_decode_B|478,470|460,565|0.285|0.111|65,147|262,761|138,078|14.0|56.4|29.6|32 / 1|0.8|
|att_pv_decode_A|202,574|181,202|0.723|0.283|65,165|0|120,045|35.2|0.0|64.8|32 / 0|0.8|
|att_pv_decode_B|477,643|460,088|0.285|0.111|65,135|262,674|137,673|14.0|56.4|29.6|32 / 1|0.8|

## Trace-derived split per kernel group (sum over group, warm, trace run)

|Group|Variant|Total cycles|Gemmini %|Rocket %|Outside %|
|---|---|---:|---:|---:|---:|
|gemm|A|123,959,222|69.6|0.0|30.4|
|gemm|B|29,639,977|80.8|0.0|19.2|
|conv|A|228,884,881|22.7|66.7|10.6|
|conv|B|417,097,988|12.5|81.2|6.2|
|mm_proj|A|30,160,559|97.1|0.0|2.9|
|mm_proj|B|56,377,958|59.7|38.6|1.7|
|mm_lm|A|29,064,358|99.4|0.0|0.6|
|mm_lm|B|34,185,884|85.8|13.6|0.5|
|attention|A|1,077,731|40.7|0.0|59.3|
|attention|B|6,985,994|6.3|83.3|10.5|

## Instrumentation overhead (trace ELF vs plain ELF)

Trace-run invoke cycles (rdcycle around iree_vm_invoke, same harness) vs plain. Warm: median over 36 kernels +0.09%, range -0.43% to +2.41% (largest: att_qk_decode_A). Cold: median +0.06%, range -0.30% to +1.18%. The overhead is largest for 32-dispatch attention kernels (about 1-2.4%, per-dispatch record cost), and within run-to-run noise (about +-0.4%) for the others. Dispatch intervals therefore need no correction; plain timing is nevertheless used for all headline numbers.

Correctness: all 36 CHECK lines are 0 (bitwise NumPy match, error count) in BOTH the plain and trace FireSim runs; the CHECK sets are identical, KPROF_DONE 0 in both, all 216 PERFX_TRACE records report dropped=0 (36 kernels x 6 invokes). The harness prints error counts against NumPy references rather than output hashes, so "outputs equal" means both builds are bit-exact to the same NumPy reference.

Spike functional proxy (not hardware timing):

|Kernel|Cold|Warm median|min|max|Retired instructions|Gemmini dispatch cycles|Rocket dispatch cycles|
|---|---:|---:|---:|---:|---:|---:|---:|
|gemm_512_512_512_A|1243999|1244139|1244139|1244139|1244141|1075219|0|
|gemm_512_512_512_B|208655|208796|208796|208796|208798|144403|0|
|gemm_12544_256_64_A|3695618|3695757|3695757|3695757|3695759|3239507|0|
|gemm_12544_256_64_B|587857|587998|587998|587998|588000|451603|0|
|gemm_12544_64_256_A|14693620|14693759|14693759|14693759|14693761|12957971|0|
|gemm_12544_64_256_B|2237393|2237534|2237534|2237534|2237536|1781267|0|
|gemm_3136_512_128_A|1862623|1862764|1862764|1862764|1862766|1619763|0|
|gemm_3136_512_128_B|308755|308896|308896|308896|308898|225811|0|
|gemm_3136_128_512_A|7480817|7480958|7480958|7480958|7480960|6598163|0|
|gemm_3136_128_512_B|1146065|1146206|1146206|1146206|1146208|903187|0|
|gemm_784_256_1024_A|3708209|3708350|3708350|3708350|3708352|3252051|0|
|gemm_784_256_1024_B|587857|587998|587998|587998|588000|451603|0|
|conv_56_64_A|60714788|60714922|60714922|60714922|60714924|3270924|55828271|
|conv_56_64_B|112229015|112229105|112229105|112229105|112229107|3270924|107234582|
|conv_28_128_A|27666672|27666762|27666762|27666762|27666764|1634716|25189071|
|conv_28_128_B|53425869|53425959|53425959|53425959|53425961|1636284|50892138|
|conv_14_256_A|14301600|14301690|14301690|14301690|14301692|1252908|12591775|
|conv_14_256_B|27181098|27181188|27181188|27181188|27181190|1252908|25443367|
|mm_down_A|181149|181246|181246|181246|181248|134035|0|
|mm_down_B|2810438|2810531|2810531|2810531|2810533|483731|2263184|
|mm_gu_A|439103|439200|439200|439200|439202|361523|0|
|mm_gu_B|7644428|7644521|7644521|7644604|7644523|1322835|6219986|
|mm_o_A|178155|178252|178252|178252|178254|131091|0|
|mm_o_B|2807267|2807360|2807360|2807360|2807362|480659|2263183|
|mm_qkv_A|220925|221022|221022|221022|221024|169459|0|
|mm_qkv_B|3498940|3499033|3499033|3499033|3499035|601459|2828518|
|mm_lm_A|432678|432690|432690|432690|432692|386019|0|
|mm_lm_B|2985273|2985360|2985360|2985360|2985362|616019|2305348|
|att_qk_prefill_A|124271|124099|124099|124099|124101|33587|0|
|att_qk_prefill_B|661510|661334|661334|661334|661336|33587|524567|
|att_pv_prefill_A|249252|249163|249163|249163|249165|132356|0|
|att_pv_prefill_B|2363467|2363374|2363374|2363374|2363376|132356|2098211|
|att_qk_decode_A|109485|109396|109396|109396|109398|25396|0|
|att_qk_decode_B|252509|252416|252416|252416|252418|25396|131216|
|att_pv_decode_A|109568|109396|109396|109396|109398|25396|0|
|att_pv_decode_B|252509|252416|252416|252416|252418|25396|131216|
|mm_gu_pair_A|878206|878400|878400|878400|878404|723046|0|
|mm_gu_pair_B|15288856|15289042|15289042|15289208|15289046|2645670|12439972|

A/B comparison — FireSim:

|Kernel|A median|B median|B/A|B−A cycles|
|---|---:|---:|---:|---:|
|gemm_512_512_512|4405589|2131555|0.484|-2274034|
|gemm_12544_256_64|14049518|4402909|0.313|-9646609|
|gemm_12544_64_256|58846207|9761813|0.166|-49084394|
|gemm_3136_512_128|7211132|3337786|0.463|-3873346|
|gemm_3136_128_512|27320206|5807603|0.213|-21512603|
|gemm_784_256_1024|12119512|4112854|0.339|-8006658|
|conv_56_64|118473495|226823563|1.915|108350068|
|conv_28_128|58416545|111344618|1.906|52928073|
|conv_14_256|52008166|78878171|1.517|26870005|
|mm_down|14491953|18837512|1.300|4345559|
|mm_gu|8760106|20808572|2.375|12048466|
|mm_o|3234294|7565211|2.339|4330917|
|mm_qkv|3728595|9207654|2.469|5479059|
|mm_lm|29060191|34174499|1.176|5114308|
|att_qk_prefill|207918|1285881|6.185|1077963|
|att_pv_prefill|493089|4760137|9.654|4267048|
|att_qk_decode|181325|460565|2.540|279240|
|att_pv_decode|181202|460088|2.539|278886|

A/B differences include output type, accumulator initialization, memory traffic, scalar work, fusion and tiling changes. They are not isolated hardware epilogue counters. Gemmini-dispatch and Rocket-dispatch cycle sums come from a separate trace ELF. Useful-MAC efficiency is ideal_compute_cycles / plain warm_median, identical to MAC-rate / 256 for INT8; it is not an independent counter. No measured DRAM bandwidth attribution is available.


## Interpretation

Numbers below come from this table. "per element" = per output element. Dispatch intervals are software rdcycle intervals, not hardware counters; causal statements marked (hypothesis) are consistent with the data but not proven without DRAM/controller counters.

### Universal finding: the scalar requantization epilogue costs about 130-136 cycles per output element
B minus A (plain-run-consistent trace totals) per output element: conv_56_64 135.0, conv_28_128 131.9, conv_14_256 134.1, mm_down 133.0, mm_gu 133.6, mm_o 132.3, mm_qkv 133.9, att_qk/pv_prefill 131.9/130.2, att_qk/pv_decode 136.9, mm_lm 160.0 (unit channel scales, M=1, 2 extra scalar dispatches). Nearly all of it is added Rocket-dispatch time (conv 129-134, attention 128-129, mm_* about 110 Rocket + about 22 more inside the Gemmini dispatch). This is a fixed per-element scalar cost (int32 -> f32, scale, round-half-even / dynamic per-token quantization, clamp) and it does not depend on the matmul shape. Wherever it is not folded into Gemmini, it dominates.

### GEMM (ResNet-shaped, 6 shapes): A (raw i32) is 2.1x-6.0x SLOWER than B (i8)
Here the B epilogue folds into the Gemmini scaled writeback (no scalar loop; Rocket cycles 0), so there is no scalar epilogue to pay, and the i32 output only adds traffic. B-A per element: -8.7 to -15.3 cycles, split into Gemmini-dispatch time (-6.5 to -9.6 per element: the i32 accumulator write-back moves 4x the bytes of i8) and outside-dispatch time (-2.2 to -5.7 per element; outside time is 18-36% of A against 10-27% of B, hypothesis: output buffer handling of a 4x larger result, up to 12.8 MB for 12544x64x256 which is bigger than the LLC). The effect is largest for output-heavy shapes (K small): gemm_12544_64_256 A 58.8M vs B 9.8M (6.0x, 3.2M output elements, K=64) and gemm_3136_128_512 (4.7x); smallest for K=512 (gemm_3136_512_128 2.2x, gemm_512 2.1x), where compute amortizes the output. Peak utilization is only 24.6% at best (gemm_512_512_512_B, 24.1% for 3136x512x128), and 8-20% for the K<=256 shapes; in-Gemmini MAC util for B is 11-27% (7.3 cycles/output element for K=512 vs 2.2 for K=64). Gemmini occupancy is 64-83% (A) and 73-90% (B); GEMM is a single Gemmini dispatch with no Rocket intervals. Conclusion: for large GEMMs the raw i32 result is the expensive variant; the INT8 requantized output is the realistic deployment form and costs nothing extra when it folds.

### Conv (3 stages, batch 4 unrolled to 4x batch-1): scalar-dominated, B costs 1.5x-1.9x of A
Even A has only 12.5-54% Gemmini occupancy: Rocket dispatches (pad, im2col, assembly; 5 scalar dispatches) take 73% of conv_56_64_A (about 108 cycles per output element) and 41% of conv_14_256_A. Gemmini dispatch cycles are identical in A and B (14.81M/14.81M, 9.04M/9.16M, 28.2M/28.3M), so the whole A->B difference is the added scalar epilogue dispatch (+107.7M, +52.0M, +26.7M Rocket cycles = about 134/element). B Rocket share is 61-87% and peak utilization falls to 0.80%, 1.62%, 2.29%. In-Gemmini MAC util is 12.2%, 19.7%, 6.4% (conv_14_256 is worst: K=2304, M=196 per image; hypothesis K-chunking and weight reload, no counter). Ordering note: the B penalty is 1.9x for the large-spatial layers (small output channels) and 1.5x for conv_14_256 only because its Gemmini and im2col time is already large.

### mm_* (TinyLlama projections, M=16): memory-bound; scalar dynamic-quant epilogue costs 1.30x-2.47x
A is already weight-streaming bound: MAC util 5-9% in-dispatch with 16 rows (weights are read once, so extra rows would be nearly free); effective weight stream 0.81 B/cycle for mm_down and 1.36-1.48 B/cycle for gu/o/qkv (all in Gemmini dispatch; mm_down is 1.7x slower per MAC than mm_gu at the same MAC count: K=5632 deep, hypothesis K-chunk re-accumulation). Gemmini occupancy 95-99% in A. B adds the per-token max-abs reduction and quantization: Rocket dispatch about 110 cycles/element (48% of mm_gu_B/o_B/qkv_B, 19% of mm_down_B whose output is only 16x2048 vs 16x5632 for gu), plus about 22 cycles/element extra in the Gemmini dispatch. mm_gu/o/qkv B/A = 2.34-2.47x, mm_down 1.30x (more MACs per output element: K=5632 amortizes the epilogue; mm_down has 2.75x fewer output elements than mm_gu for the same MACs).

### mm_lm (M=1 vocabulary projection, 2048x32000)
99.4% Gemmini occupancy in A: 28.9M cycles for 65.5 MB of weights = 2.27 B/cycle, the highest streaming rate of the group and the cleanest bandwidth-bound case. MAC util 0.88%; M=1 pads to 16 rows, so padding-adjusted useful fraction is about 14% (16x). Because weights are streamed once, a 16-token prefill would cost about the same. B adds only 1.18x (4.66M Rocket cycles over 32,000 outputs, unit channel scales, 2 extra dispatches) since the epilogue is amortized over 65.5M MACs per output vector.

### Attention (32 heads as 32 separate rank-2 dispatches): per-dispatch overhead and padding
A: Gemmini intervals are only 31-49% (prefill) and 35% (decode) of invoke; 51-69% of invoke time is outside dispatch intervals: about 3.8k (decode) to 7.9k (pv prefill) cycles of runtime overhead per dispatch (32 dispatches). Peak utilization is 0.28%-0.99%. Decode (M=1) pads to 16 rows (6.25% row utilization; 0.8% in-Gemmini util, 12.9% padding-adjusted): att_qk_decode Gemmini time (65.2k) is the same as att_qk_prefill's (65.1k) although prefill does 16x the useful work, i.e. cost is set by tile-op count, not by useful rows. B costs 2.5x (decode) to 9.7x (pv prefill) because the 128-129 cycles/element scalar epilogue is applied to tiny results: 4.2M scalar cycles (89% of att_pv_prefill_B) for 32,768 outputs, versus Gemmini 0.24M. The cases are too small to benefit from Gemmini: scalar epilogue plus per-dispatch overhead dominate. (No softmax in these kernels.)

### Comparison with optAnalysis ResNet-50 finding
optAnalysis REPORT.md found 57.75% of the full ResNet invocation (1.206G of 2.089G cycles) in 16 Gemmini-containing dispatches with fused scalar fdiv/round/clamp epilogues, with a 60x control (dispatch 12 vs 13: 2.73M vs 164.0M cycles for identical 3136-workgroup work), i.e. about 204 cycles per output element (164.0M / 802,816). This profile reproduces the same mechanism in isolation but with a different split and a smaller per-element cost: (1) for plain GEMM the simple ResNet-style B pattern folds into Gemmini and shows no scalar penalty (B is faster); the ResNet residual/ReLU epilogues are not foldable and so appear as scalar loops; (2) for convs, mm_* and attention the scalar epilogue costs about 130-136 cycles/element (110 for mm_* Rocket dispatch) as a separate Rocket dispatch rather than inside a flush-bracketed Gemmini dispatch, about 35% cheaper than the 204 cycles/element in the ResNet control (which also contains the residual add, ReLU and per-workgroup flush). The qualitative conclusion matches: a per-element scalar FP requantization epilogue, not the MAC array, sets the time; here it is 61-87% of conv B, 48% of mm_gu/o/qkv B and 82-89% of prefill attention B. The 57.75% figure must not be assigned to these kernels; the measured fractions are in the table.

Validation status: spike_plain_pass=True, spike_trace_pass=True, firesim_plain_pass=True, firesim_trace_pass=True (see hardware-status.json).

## Spot checks against raw uartlog lines

Cycle values taken directly from the CASE lines (CRLF stripped) and recomputed independently of the parsing scripts:

|Kernel|Run|Raw cold|Table cold|Raw warm median (reps 1-5)|Table warm median|Match|
|---|---|---:|---:|---:|---:|---|
|gemm_512_512_512_A|plain|5,402,616|5,402,616|4,405,589|4,405,589|True|
|conv_56_64_B|plain|227,891,100|227,891,100|226,823,563|226,823,563|True|
|mm_gu_B|plain|21,416,625|21,416,625|20,808,572|20,808,572|True|
|att_pv_prefill_B|plain|4,783,499|4,783,499|4,760,137|4,760,137|True|
|mm_down_A|trace|14,987,507|14,987,507|14,429,854|14,429,854|True|

Raw PERFX lines for mm_down_B rep 1 (trace): async_dispatch_0_matmul_16x2048x5632_i8xi8xi32 = 14,992,811 cycles, async_dispatch_1_reduction_16x2048_f32 = 3,613,918 cycles; rep 1 interval sums match the table row (Gemmini 14,992,811 / Rocket 3,613,918 for that rep; table value is the 5-rep median).
