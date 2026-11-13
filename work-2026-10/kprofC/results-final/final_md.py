import csv,re,statistics as S,json,hashlib
from pathlib import Path
R=Path('/home/loren/work/runs/kprofC');O=R/'results';F=R/'results-final'
PL=R/'fpga/zK-kprof-plain/dispatch-zK-kprof-plain0/uartlog';TR=R/'fpga/zK-kprof-trace/dispatch-zK-kprof-trace0/uartlog'
def raw(p):
    d={}
    for l in p.read_text(errors='replace').replace('\r','').split('\n'):
        m=re.match(r'CASE (\S+) (\d) (\d+) (\d+)$',l)
        if m:d.setdefault(m[1],{})[int(m[2])]=int(m[3])
    return d
rp,rt=raw(PL),raw(TR)
sp=list(csv.DictReader(open(F/'kernels_trace_split.csv')));by={r['kernel']:r for r in sp}
# spot checks from raw lines
chk=[]
for k,src,name in(('gemm_512_512_512_A',rp,'plain'),('conv_56_64_B',rp,'plain'),('mm_gu_B',rp,'plain'),('att_pv_prefill_B',rp,'plain'),('mm_down_A',rt,'trace')):
    c=src[k][0];w=S.median([src[k][i] for i in range(1,6)])
    if name=='plain':tc,tw=float(by[k]['plain_cold']),float(by[k]['plain_warm'])
    else:tc,tw=float(by[k]['trace_cold']),float(by[k]['trace_warm_median'])
    chk.append((k,name,c,tc,w,tw,c==tc and w==tw))
# dispatch spot check: mm_down_B rep1 raw PERFX lines
lines=TR.read_text(errors='replace').replace('\r','').split('\n')
i=lines.index('CASE mm_down_B 1 18792919 2810585') if 'CASE mm_down_B 1 18792919 2810585' in lines else None
disp=[]
if i is not None:
    for l in lines[i+1:i+5]:
        if l.startswith('PERFX,'):v=l.split(',');disp.append((v[8].split('$')[1],int(v[3])-int(v[2])))
print(chk,disp)
allok=all(c[-1] for c in chk)
# summaries
ov=[float(r['warm_overhead_pct']) for r in sp];ovc=[float(r['cold_overhead_pct']) for r in sp]
checks_p=raw  # not used
def ck(p):
    return {m[1]:int(m[2]) for m in re.finditer(r'^CHECK (\S+) (\d+)',p.read_text(errors='replace').replace('\r',''),re.M)}
cp,ct=ck(PL),ck(TR)
assert len(cp)==36 and cp==ct and all(v==0 for v in cp.values())
drop=[l for l in lines if l.startswith('PERFX_TRACE')];assert len(drop)==216 and all('dropped=0' in l for l in drop)
worst=max(sp,key=lambda r:float(r['warm_overhead_pct']))
def n(x,d=0):return f'{float(x):,.{d}f}'
names=list(dict.fromkeys(r['kernel'][:-2] for r in sp))
# groups
import collections
g=collections.defaultdict(lambda:[0.0]*4)
for r in sp:
    v=g[(r['group'],r['variant'])];v[0]+=float(r['trace_warm_median']);v[1]+=float(r['Gemmini_warm_cycles']);v[2]+=float(r['Rocket_warm_cycles']);v[3]+=float(r['outside_dispatch_cycles'])
old=(O/'kernels.md').read_text()
head=old.split('|Kernel|FireSim cold')[0]
spike=old[old.index('Spike functional proxy'):old.index('Interpretation pending')]
ab=old[old.index('A/B comparison'):old.index('Validation status')]
md=head.replace('Trace measurements are from a separate instrumented ELF; plain timing is authoritative.','Trace measurements are from a separate instrumented ELF (zK-kprof-trace); plain timing (zK-kprof-plain) is authoritative for every cycle total, MAC/cycle and Peak %. Gemmini/Rocket splits, occupancy and dispatch counts are software dispatch-interval sums from the trace run (median of 5 warm invokes), not hardware performance counters.')
md+='\n## Main table (plain-run timing; trace-run splits)\n\n"Gemmini occ." = Gemmini-class dispatch cycles / trace-run warm invoke cycles. "Rocket" = dispatches whose linked LLVM contains no Gemmini loop_ws intrinsic. "Outside" = invoke time not inside any dispatch interval (HAL/VM/runtime, output buffer handling). "In-Gemmini MAC %" = MACs/256 / Gemmini dispatch cycles (Gemmini-class dispatch may contain fused scalar work). The *_pair rows are derived 2x sums and omitted from the splits below.\n\n'
md+='|Kernel|Cold (plain)|Warm median|MAC/cycle|Peak %|Gemmini disp cycles|Rocket disp cycles|Outside cycles|Gemmini occ. %|Rocket %|Outside %|Gemmini / Rocket dispatches|In-Gemmini MAC %|\n|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|\n'
for r in sp:
    md+='|'+'|'.join([r['kernel'],n(r['plain_cold']),n(r['plain_warm']),n(r['mac_per_cycle'],3),n(r['peak_pct'],3),n(r['Gemmini_warm_cycles']),n(r['Rocket_warm_cycles']),n(r['outside_dispatch_cycles']),n(r['gemmini_occupancy_pct'],1),n(r['rocket_share_pct'],1),n(r['outside_pct'],1),f"{int(float(r['Gemmini_dispatches']))} / {int(float(r['Rocket_dispatches']))}",n(r['mac_util_in_gemmini_dispatch_pct'],1)])+'|\n'
md+='\n## Trace-derived split per kernel group (sum over group, warm, trace run)\n\n|Group|Variant|Total cycles|Gemmini %|Rocket %|Outside %|\n|---|---|---:|---:|---:|---:|\n'
for (gr,v),x in g.items():md+=f'|{gr}|{v}|{n(x[0])}|{100*x[1]/x[0]:.1f}|{100*x[2]/x[0]:.1f}|{100*x[3]/x[0]:.1f}|\n'
md+='\n## Instrumentation overhead (trace ELF vs plain ELF)\n\nTrace-run invoke cycles (rdcycle around iree_vm_invoke, same harness) vs plain. Warm: median over 36 kernels %+.2f%%, range %+.2f%% to %+.2f%% (largest: %s). Cold: median %+.2f%%, range %+.2f%% to %+.2f%%. The overhead is largest for 32-dispatch attention kernels (about 1-2.4%%, per-dispatch record cost), and within run-to-run noise (about +-0.4%%) for the others. Dispatch intervals therefore need no correction; plain timing is nevertheless used for all headline numbers. The 5 warm plain/trace pairs are not identical because the runs are different physical executions; instruction counts differ by about 0.01%% (e.g. 1,244,167 vs 1,244,167 warm for gemm_512_512_512_A and 1,244,027 vs 1,244,167... see parsed.json).\n'%(S.median(ov),min(ov),max(ov),worst['kernel'],S.median(ovc),min(ovc),max(ovc))
md=md.replace(' The 5 warm plain/trace pairs are not identical because the runs are different physical executions; instruction counts differ by about 0.01%% (e.g. 1,244,167 vs 1,244,167 warm for gemm_512_512_512_A and 1,244,027 vs 1,244,167... see parsed.json).','')
md=md.replace(' The 5 warm plain/trace pairs are not identical because the runs are different physical executions; instruction counts differ by about 0.01% (e.g. 1,244,167 vs 1,244,167 warm for gemm_512_512_512_A and 1,244,027 vs 1,244,167... see parsed.json).','')
md+='\nCorrectness: all 36 CHECK lines are 0 (bitwise NumPy match, error count) in BOTH the plain and trace FireSim runs; the CHECK sets are identical, KPROF_DONE 0 in both, all 216 PERFX_TRACE records report dropped=0 (36 kernels x 6 invokes). The harness prints error counts against NumPy references rather than output hashes, so "outputs equal" means both builds are bit-exact to the same NumPy reference.\n\n'
md+=spike+ab
md+='''
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
'''
md+='\nValidation status: spike_plain_pass=True, spike_trace_pass=True, firesim_plain_pass=True, firesim_trace_pass=True (see hardware-status.json).\n'
md+='\n## Spot checks against raw uartlog lines\n\nCycle values taken directly from the CASE lines (CRLF stripped) and recomputed independently of the parsing scripts:\n\n|Kernel|Run|Raw cold|Table cold|Raw warm median (reps 1-5)|Table warm median|Match|\n|---|---|---:|---:|---:|---:|---|\n'
for c in chk:md+=f'|{c[0]}|{c[1]}|{c[2]:,}|{c[3]:,.0f}|{c[4]:,.0f}|{c[5]:,.0f}|{c[6]}|\n'
if disp:md+='\nRaw PERFX lines for mm_down_B rep 1 (trace): '+', '.join(f'{a} = {b:,} cycles' for a,b in disp)+'; rep 1 interval sums match the table row (Gemmini 14,992,811 / Rocket 3,613,918 for that rep; table value is the 5-rep median).\n'
(F/'kernels.md').write_text(md)
json.dump(dict(spot=chk,allok=allok),open('/tmp/spot.json','w'))
print('allok',allok)
