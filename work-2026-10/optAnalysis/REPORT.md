# OPT: ResNet FireSim utilization analysis

2026-10-27 UTC. Analysis only; no F2, simulation, build, model execution, source change, or numerical-gate change. All writes are under `/home/loren/work/runs/optAnalysis`. Required root REPORT, smolvla-numerics/SPEC and tinyllama2/REPORT read first. `rg` unavailable; Python/find used. Analysis Python 3.12.3, standard library only, single process pinned to CPUs90–95 (maximum six cores).

## Reproduction and artifacts

From `/home/loren/work`:
```bash
taskset -c 90-95 python3 runs/optAnalysis/analyze.py \
 runs/perfX/results/resnet/firesim-trace.csv \
 runs/perfX/results/resnet-assembly-catalog.json \
 --assembly runs/perfX/assembly/resnet --out runs/optAnalysis/resnet
```
`resnet/dispatches.csv` contains all 106 dispatches, measured cycles, catalog and corrected algorithmic MACs, ideal DIM16 cycles (MACs/256), efficiency, workgroups, cycles/workgroup, static command counts and whole-matrix padding efficiency. `resnet/analysis.json` additionally has every instruction mnemonic count. `resnet/provenance.json` pins input SHA256s, Python version and argv. These are static counts, not retired instruction counts. Zero-MAC scalar dispatches have zero ideal cycles/efficiency; this is a mathematical convention, not a meaningful scalar performance rating. Scalar MAC/256 would be a hypothetical Gemmini baseline only.

Read-only evidence: perfX/results/resnet/firesim-trace.{csv,json}, Gantt semantics in perfX/analyze.py, perfX/assembly/resnet/*.s, perfX/provenance/resnet/{compile.sh,compile_model.sh,compile.log}, perfX/REPORT.md. Compile log is empty. Compile scripts explicitly use fixW/build/tools/iree-compile, not the bundled executable: this trace is a corrected patched-build artifact. Flags specify RV64GC scalar CPU (+m,+a,+f,+d,+c; no V), DIM16, WS loops, disabled MX, no CPU ukernels/data tiling; preprocessing explicitly converts convolution to img2col. No compiler version has been invented from these flags. Upstream snapshot provenance is in the root report; it is not sufficient to identify the patched binary's exact build version.

## What the utilization numbers mean

Measured timed invoke: **2,088,660,305 cycles**. Software Gemmini-containing dispatch intervals: **1,653,833,685 (79.1816%)**; scalar-only intervals **405,776,870 (19.4276%)**; remaining runtime/gaps **29,049,750 (1.3908%)**. 54 Gemmini and 52 scalar dispatches. Gemmini shape-derived useful MACs **4,089,184,256**, ideal **15,973,376 cycles**; useful efficiency **0.965839%** within those intervals, **0.764767%** of the full invoke. The difference **1,637,860,309 cycles** from the ideal inside Gemmini intervals is NOT a measured accelerator stall count. It includes scalar fused code, command issue, synchronization, memory and padding effects.

79% is occupancy of software dispatch intervals containing accelerator instructions, not array active time. LOOP_WS performs internal loads/compute/stores; absence of explicit mvin/preload/compute mnemonics does not imply missing data transfers or MACs. No controller busy, queue, DMA byte, LLC-miss, DRAM-stall, or scratchpad reuse counters were measured. FASED DDR3/LLC is the stated platform context; its latency contribution cannot be isolated with this trace. The simulator's 40.6-billion whole-run cycles include boot/I/O and must not replace invoke timing. Plain vs trace difference 451,769 cycles (~0.0216%) cannot explain the utilization gap.

## Ranked disjoint time buckets

Ranked by observed time of affected dispatches, not proven exclusive causal stall time. Percentages use full invoke. All improvement estimates below are scenarios, not measured speedups; causes within a bucket overlap.

| Rank | Affected dispatch class | Count | Measured cycles | Invoke share | Evidence and attribution |
|---|---|---:|---:|---:|---|
| 1 | Gemmini with scalar FP division/quantization | 16 | 1,206,233,335 | 57.75% | 15 residual epilogues plus FC quantization. Branch-heavy scalar rounding/clipping/conversion, FP division; fences/flush bracket WS. Strong scalar bottleneck evidence, exact time split unavailable. |
| 2 | M=49 Gemmini without scalar FP division | 7 | 297,898,865 | 14.26% | dispatch90/91/93/96/98/101/102. Workgroup mapping gives one M row, bounds pad M by15; five config instructions and two flushes per workgroup; K4608 split into three WS launches. Tiny tiles, repeated loads and synchronization are strong candidates; DDR3 share unknown. |
| 3 | Scalar packing/im2col candidates | 20 | 167,052,530 | 8.00% | generic spatial/filter/channel names; scalar loads/stores/address loops, explicit img2col preprocessing. Assembly supports packing, not a measured memory bandwidth diagnosis. |
| 4 | Other Gemmini intervals | 31 | 149,701,485 | 7.17% | Mostly short WS-only workgroups; first matmul alone62,680,129cycles and has scalar FP code without division. Includes issue, data transfer, K splitting and epilogue costs. |
| 5 | Scalar maxpool + quantize | 1 | 128,784,540 | 6.17% | dispatch5: fle.s/feq.s max-reduction loops then fdiv.s and quantize; no fmul/fmadd. Misnamed conv, not missing weighted convolution offload. |
| 6 | Scalar elementwise/broadcast/reduction | 14 | 91,217,663 | 4.37% | Separate buffer initialization and conversion loops. |
| 7 | Runtime/gaps | — | 29,049,750 | 1.39% | measured total minus dispatch sum; includes initial time before first dispatch, cannot label entirely launch overhead. |
| 8 | Scalar memcpy | 17 | 18,722,137 | 0.90% | slow_memcpy functions; scalar copying, no Gemmini commands. |

### Strong controls in existing assembly/timing

Dispatch12 and13 have identical 3136x256x64 useful work and3136workgroups, but take2,731,772 vs164,016,624cycles (**60.04x**). Dispatch13 adds a scalar16x16 epilogue after WS/flush: two byte loads, fmul/fmadd/fdiv, tie-aware rounding bit logic, clamp and ReLU, then byte store. Dispatch19/25 reproduce162.7/163.5Mcycles. This is much stronger evidence than attributing all lost time to DRAM. Input/output/fusion differences prevent treating the subtraction as an exact scalar counter.

Likewise dispatch34 vs41 (784x512x128) take1,570,195 vs82,003,097cycles; dispatch59 vs65 (196x1024x256) take2,960,529 vs43,077,633. The ratio tracks scalar residual epilogues, with1.64M/0.803M/0.803M output elements across the first examples and changing tile geometry. No new experiment was run.

All54Gemmini functions use LOOP_WS, none explicit scalar mvin/mvout/preload/compute. Static assembly exposes loop_ws.config.bounds/addrs/strides; actual loop_ws launch sites are1,2,or3 (K chunks), not six launches for six mnemonics sharing a prefix. Across98,517workgroups, nominal repeated static sites amount to1,365,393Gemmini instructions including197,034flush instructions. These are workgroup-weighted static estimates, not hardware command counters; scalar branch trip counts are not inferred this way.

For dispatch91, workgroup ID>>7 selects a single input row and ID&127 selects16output columns;49*128=6272workgroups. Bounds register first operand15 encodes15padded rows. A useful1x16 output tile uses just1/16of M lanes; ideal effective ceiling at that geometry is6.25% before other costs. Full-matrix padding efficiency49/64=76.56% in the CSV is an optimistic *retiled* bound, not current tiling efficiency. Dispatch90 similarly49*32=1568workgroups, padding15, with2048+2048+512K chunk launches. A row's weight matrix is re-addressed for each row; lack of cross-workgroup residency plus repeated WS invocation supports reload risk, but does not prove every byte misses LLC or travels to DDR3. FC M1 also wastes M lanes and has a scalar input-quantization loop.

### MAC catalog correction

Dispatch5 catalog MACs=1,806,336 is the product64*56*56*3*3 from its symbol. Assembly shows maxpool, not a dot product: **correct useful MACs=0**. Retained as `catalog_macs` for audit. This does not change reported Gemmini MAC totals/utilization. Other MACs remain shape-based algorithmic estimates, not measured hardware operations. Scalar generic functions have no weighted reduction MACs in this accounting.

## Concrete changes and estimated savings

No changes implemented; maintain original numerical references/gates. These estimates specify assumptions so they can be falsified. Never add overlapping estimates blindly.

| Priority | Compiler/runtime change | Scenario cycle savings | Basis / constraints |
|---|---|---:|---|
| 1 | Optimize residual quantization epilogues: simplify exact rounding/clamp/ReLU lowering; avoid repeated int→float→int paths; hoist invariants; use proven equivalent fixed-point path or supported accelerator epilogue | **~0.59–0.89 billion** | Fifteen residual sites excluding FC occupy1,205,144,445cycles. Subtract ~30M as a provisional WS/control floor, then remove50–75% of remaining~1.175B. Floor extrapolates comparable plain matmuls, not counter evidence. Compare all output elements before acceptance; approximate reciprocal/fixed-point rounding is not automatically equivalent. |
| 2 | Tile M49 into16rows and batch WS workgroups; keep weights resident when legal; hoist configs and remove redundant synchronization after dependency analysis | **~149–223 million** | Assume50–75% reduction of297.9Maffected cycles. Reduces6272→512workgroups for49x2048 and1568→128for49x512, with final-row masks. ~12.25x fewer launches, but DMA, scratchpad capacity and pipeline fill limit speedup. Pure padding ideal falls from roughly16xMAC/256 to64/49xMAC/256. Do not promise12x observed speedup. |
| 3 | Fuse scalar img2col/packing with DMA-friendly layout, use Gemmini convolution/strided packing if available; eliminate materialized copies | **~84–125 million** |50–75% of167.1Mpacking candidate bucket, excluding separately counted memcpy. Requires lowering/capability verification, not merely changing an enable flag. |
| 4 | Dedicated maxpool+quantize scalar kernel; simplify exact rounding and redundant conversions, cache-friendly loops | **~64–97 million** |50–75% of128.8Mpool interval. Gemmini MAC offload is not a fix for max comparisons; scalar RV64 has no vector ISA in current build. |
| 5 | Fuse bias/broadcast initialization and remove dead/intermediate buffers; improve memcpy | **~27–55 million +9–14 million** |30–60% of91.2Mscalar-other,50–75% of18.7Mcopy. Requires buffer/lifetime audit; fusion may shift cycles into Gemmini bucket. |
| 6 | Reduce command/config/flush repetition and improve K-chunk scheduling across all remaining WS sites | **Unquantified** | Many small tiles and fences are present; no issue latency, DMA bytes or counters support a separate cycle estimate. Covered partly by priorities1/2. A100cycle/workgroup saving would be9.85Mcycles across98,517workgroups; sensitivity example only. |
| 7 | Tune DDR3/LLC/DMA burst/overlap and scratchpad buffering | **Unquantified** | Need supported synthesized counters or bounded microbenchmarks and DMA/execute/store events. Cannot assign remainder to DDR3, bank conflicts, or reloads from software timestamps. |

Priorities1–4 under these explicit assumptions sum~0.89–1.34Bcycles saved (~1.74–2.78x overall); this is a planning scenario, not a benchmark prediction or guaranteed range. Absolute full-model ideal accounting is~16Mcycles plus unavoidable scalar/runtime/memory; the difference is not all recoverable. Separately validate timing and correctness after every change, without compiler rebuild in this analysis task.

## TinyLlama / smolVLA reusable handoff

`analyze.py` accepts any perfX-compatible CSV and name-keyed assembly catalog (`device`, `op_class`, `macs`). Supply emitted assembly to obtain instruction mixes; without it timing/MAC analysis still works, but assembly-dependent classifications are provisional. Missing catalog names, inconsistent timestamps, overlapping intervals or sequence gaps fail loudly. JSON sibling supplies invoke total; otherwise pass `--total-cycles` (last end is not assumed to be total). Missing actual traces stay pending; static catalog does not establish execution, numerics or hardware time.

```bash
# Replace TRACE/CATALOG/ASSEMBLY with perfTL or perfSM handoff files.
taskset -c 90-95 python3 runs/optAnalysis/analyze.py TRACE.csv CATALOG.json \
 --assembly ASSEMBLY --total-cycles INVOKE_CYCLES --out runs/optAnalysis/tinyllama
# Repeat with --out runs/optAnalysis/smolvla for smolVLA.
```

Template for each model: record exact ELF/VMFB/compiler/bitstream/reference identity; fixed gate and actual numerical status; total and dispatch timing/counts; shape MACs and ideal/efficiency; static versus dynamic command distinction; top dispatches and matched-shape epilogue controls; decode actual workgroup M/N/K bounds, not only global dimensions; separate scalar qparams/softmax/norm/activation/packing from WS; identify K chunks and potential reloads; rank disjoint observed buckets; list causal confidence and unknown counters; estimate savings only with explicit counterfactuals; compare one changed artifact against unchanged references. TinyLlama all512000logits and smolVLA all1600values require finite per-element1e-3/1e-3 vs their own SPEC/REPORT-named reference. No inference from a passing different model or static offload count. Current ResNet-specific M49 and pooling recognizers must be reviewed for other models; script labels generic packing as candidate, not proven img2col.

## Validation

Executed analysis successfully:106consecutive nonoverlapping intervals; exact trace duration sums and Gemmini MAC/utilization match upstream JSON. Independently inspected assembly for dispatch5,6,13,90,91,104 and matched-shape controls. No invented hardware counters or measured causal cycle split. Pending Tiny/smol FireSim handoffs not substituted with Spike timing. All protected directories untouched.
