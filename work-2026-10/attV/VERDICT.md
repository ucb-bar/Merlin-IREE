# Cycle blowup verdict (incremental)

Updated 2026-10-27 UTC. Scope is the supplied Merlin-IREE snapshot and run artifacts only. Class ownership means where the deciding code lives in the ZIP: A = our graph/export/flags/patches/exactness choices; B = a missing capability in snapshot IREE/torch-mlir or Merlin plugin (component named); C = hardware ceiling; D = pathological snapshot compiler default/bug. Mixed causes are apportioned only where the reports permit it. No upstream comparison or new compiler build.

## Executive summary (six lines)

- **ResNet-50:** primary attribution A 22.26% (M=49 tiling 14.26% + packing recipe 8%), B 63.92% (requant epilogues 57.75% + maxpool 6.17%), C 0% separately established, D 0%; other/mixed 13.82%. Measured buckets, not causal savings. [optAnalysis/REPORT.md](../optAnalysis/REPORT.md)
- **TinyLlama:** A 81.5%, B 0% separately assigned, C contributes within that 81.5%; D 0%; 8% A/B/C mixed elementwise, 1.7% A/B/C mixed attention, 8.8% other Gemmini and 0.05% gaps. Primary cause is the export intentionally keeping lm_head FP32, then scalar Rocket execution. [tlHead/REPORT.md](../tlHead/REPORT.md), [perfTL/REPORT.md](../perfTL/REPORT.md)
- **smolVLA:** A/B/C/D cycle percentages **unresolved**: no completed full-model hardware cycle trace. WG0-only scaling is ~430.2–430.3G instructions after eliminating ~3.06T repeated softmax work; residual FP32 attention/projection and scalar groups remain. [smA/REPORT.md](../smA/REPORT.md), [smB/REPORT.md](../smB/REPORT.md)
- **No model currently supports a blanket “IREE is used incorrectly” or “IREE cannot do it” verdict:** the answer is sink-specific; most dominant work is our representation/recipe plus Merlin’s bounded Gemmini admission, with Rocket scalar throughput as a ceiling.
- **Measured vs inferred:** ResNet percentages are FireSim measured; TinyLlama percentages are Spike functional cycles (not hardware time); smolVLA counts are WG0-scaled instructions, not cycles. Never compare these units directly. [attH/REPORT.md](../attH/REPORT.md)
- **Still open:** ResNet epilogue support/tiling attribution (`attR`), TinyLlama INT8-head experiment (`tlHead`), and smolVLA full-run timing (`attE1`/`attE2`); this file will be updated as those reports land.

## Sink-by-sink

### ResNet-50

Total measured invoke: **2,088,249,127 cycles**. FireSim trace, 54 Gemmini-containing and 52 scalar dispatches. The cycle buckets below are measured; the attribution to code owner is source-read/inferred unless stated otherwise. [attH/REPORT.md](../attH/REPORT.md), [optAnalysis/REPORT.md](../optAnalysis/REPORT.md)

| Sink | Size and share | Class / evidence | Fix, owner, estimated saving |
|---|---:|---|---|
| Scalar requantization/rounding epilogues in Gemmini dispatches | 1,206,233,335 cycles; **57.75%** | **B, source-read + measured bucket; causal split inferred.** Merlin plugin only recognizes limited requantize/clamp forms; residual scalar ops execute through iree_bar LLVMCPU. `compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp:592-744`; options `GemminiOptions.cpp:33-38`. Matched-shape controls show 60x+ slowdown when scalar epilogue exists, but do not isolate exact cycles. | Add/enable matching supported epilogue in Merlin or simplify exact recipe (A/B). optAnalysis scenario estimates **~0.59–0.89B cycles**, not measured savings. `runs/optAnalysis/REPORT.md`. |
| M=49 tiny tiles | 297,898,865 cycles; **14.26%** | **A, measured bucket/source-read.** The gcd distribution patch in our Merlin build chooses one M row for M=49; CLI tile 32/32/64 is a byte-identical no-op. [attR/REPORT.md](../attR/REPORT.md) | Replace our exact-divisor fallback with bounded 16-row tiles and masked remainder. Our compile/codegen policy. Scenario saving **149–223M cycles**, estimate only. `optAnalysis/REPORT.md`. |
| Scalar im2col/packing | ~167M cycles; **8.0%** | **A/B mixed, measured candidate bucket.** iree_bar `ConvertConv2DToImg2Col.cpp:145-200` materializes packing; the historical preprocessing and current compile record differed, and correct trace includes explicit conv-to-img2col. Causal memory cost not isolated. | Use intended historical preprocessing / choose surviving Conv2D route and Merlin recovery. Ownership A + iree_bar transform + Merlin. No defensible isolated saving yet. `attR` pending. |
| maxpool + quantize scalar | 128,784,540 cycles; **6.17%** | **B, measured bucket/source-read.** Merlin preprocessing documents narrow maxpool/QDQ cancellation: `compiler/src/merlin/Dialect/Gemmini/Transforms/Preprocess.cpp:11-22,78-118`; otherwise scalar fallback. | Extend exact cancellation/recovery in Merlin or revise preprocessing. Saving not separately measured. |
| Other intervals and runtime/gaps | ~287M cycles; **13.75%** (includes 1.39% unattributed) | **Unresolved mixed.** Includes WS issue/data movement/K splitting and other scalar/copy work; counters do not separate DMA, DRAM, LLC or synchronization. | Need additional trace counters/controlled variants. Do not call the 1.64B gap to MAC floor a hardware limit. |

Hardware context: 4,089,184,256 algorithmic MACs imply ideal DIM16-array floor 15,973,376 cycles (0.765% of measured total). This is a compute floor only, not evidence that the remainder is hardware-bound. [attH/REPORT.md](../attH/REPORT.md)

### TinyLlama (fixed-shape public-weight run)

Spike trace total **4,751,696,797 functional cycles**; not FireSim timing. It is numerically valid FP32 (all 512,000 logits pass unchanged 1e-3 gate); INT8 compiler output fails its own gate. [perfTL/REPORT.md](../perfTL/REPORT.md), [tinyllama2/REPORT.md](../tinyllama2/REPORT.md)

| Sink | Size and share | Class / evidence | Fix, owner, estimated saving |
|---|---:|---|---|
| FP32 lm_head, 16x32000x2048 | 3,868,279,519 cycles; **81.5%** | **A primary; B secondary; C ceiling. MEASURED** Spike trace; class inferred from recipe/source. Export explicitly filters out `lm_head` from TorchAO quantization (`runs/tinyllama2/export.py`, `tlHead/REPORT.md`). Merlin matmul matcher admits rank-2 i8*i8->i32 or optional FP8, not FP32 (`compiler/src/merlin/Dialect/Gemmini/Transforms/ConvertToGemmini.cpp:433-460`). Rocket is scalar RV64GC. | Test quantized head only if accuracy gate passes; owner us (export policy) then Merlin (supported mapping). Saving could approach most of the dispatch but **unquantified**; INT8-head experiment pending and has a stricter multi-prompt gate. |
| Scalar elementwise | ~380M cycles; **8.0%** | **A/B/C unresolved split; MEASURED aggregate** in Spike trace. No paired exactness-rewrite element-cost experiment. Ordinary elementwise does not match Gemmini hook (`AttachCompilationInfo.cpp:307-355`); scalar Rocket limits throughput. | Fuse/reduce exactness work or add vector/accelerator implementation; owner depends on paired test. No saving estimate. |
| FP32 attention | ~80.8M cycles; **1.7%** | **A/B/C mixed; MEASURED aggregate, attribution inferred.** Export keeps attention FP32; Merlin lacks general FP32/rank-3 batch-matmul Gemmini path, `ConvertToGemmini.cpp:433-529`; iree_bar lowers explicit operations, does not choose model quantization. | Quantized attention requires a separately validated recipe; otherwise Merlin needs rank-3 FP32 path or Rocket remains. No saving estimate. |
| Other Gemmini dispatches | 418,163,378 cycles; **8.80%** | Measured, mostly INT8 Gemmini. Not a blowup sink itself; establishes the compiler does map supported IR. | No fix proposed. |
| Unattributed | 2,523,812 cycles; **0.05%** | Measured. | — |

Class share warning: measured shares are disjoint dispatch categories, not causal A/B/C shares. The executive split attributes only head to A-dominant and leaves 8% + 1.7% mixed; no evidence supports a numeric split of those mixed buckets. No TinyLlama FireSim cycles exist in current artifacts. [attH/REPORT.md](../attH/REPORT.md)

### smolVLA

No completed full-model hardware cycles. Available whole-model figure is WG0-only dispatch scaling in **instructions**: smA **3,488,170,271,254 -> 430,215,723,925**; smB independently **3.488T -> 430.335G**. This establishes a graph/dispatch pathology and a large materialization remedy, but not full-run time or per-class cycle shares. Full host bitwise output passes on smB; F2/whole-model hardware result is pending. [smA/REPORT.md](../smA/REPORT.md), [smB/REPORT.md](../smB/REPORT.md), [probeSUMMARY/SMA.txt](../probeSUMMARY/SMA.txt), [probeSUMMARY/SMB.txt](../probeSUMMARY/SMB.txt)

| Sink | Size and share | Class / evidence | Fix, owner, estimated saving |
|---|---:|---|---|
| Softmax/reduction recomputation | 2.802T instruction family removed by materialization; total scaled count falls ~3.058T instructions; **cycle share unknown** | **D/A mixed, measured-instructions + source-read.** Excess repeated max reductions are in generated dispatch structure; fusion flags tested did not fix it, while an explicit materialization boundary did. Responsibility between snapshot iree_bar dispatch formation and graph/export structure is not conclusively split. | Materialize shared softmax intermediates; owner currently us as exactness-preserving graph rewrite, possible compiler dispatch optimization follow-up. Estimated saving is the measured scaled instruction delta, **not cycles**. |
| FP32 QK/PV attention | QK **102.483G** instructions; PV groups **88.212G + 88.121G** after materialization; cycle share unknown | **A + B + C mixed, measured scaled instructions/source-read.** Export leaves FP32; Merlin Gemmini requires rank-2 i8/i8/i32 (or optional rank-2 FP8), so FP32 rank-3 batch matmul is rejected: `ConvertToGemmini.cpp:433-529`. iree_bar lowers already-quantized IR, does not calibrate/quantize automatically (`qx/REPORT.md`). Scalar Rocket throughput contributes. | Us: find an accuracy-passing representation (existing tested QK/PV quantization candidates fail fixed gates); Merlin: rank-3/FP32 or batch decomposition support; hardware: scalar issue ceiling. No cycle saving estimate. |
| Patch convolution/projection | 61.687G instructions baseline; smD table rewrite estimates 21.830G (saves **39.857G instructions**), not integrated full ELF; cycle share unknown | **A + B + C mixed.** Export quantizes Linear, not Conv2d; Merlin Conv matcher requires recognized i8 ranks/maps `ConvertToGemmini.cpp:542-574`; scalar projection address arithmetic is expensive. smD Spike 128/128 exact slice pass. | Integrate address-table rewrite (us) for 39.857G estimated instruction reduction; separately validate INT8 conv under fixed accuracy gate before Merlin offload. No cycle estimate. |
| Other scalar groups / elementwise groups | Remaining scaled total ~430G instructions; detail varies by transformed dispatch; cycle share unknown | **A/B/C mixed, measured scaled instructions only.** Includes scalar ops with no Merlin match and compiler scalar codegen; no same-dispatch option sweep establishes D. | Avoid redundant work, preserve exactness; Merlin add supported ops, or compiler improve fallback. No class percentages supportable. |

The smolVLA quantized candidates do not justify calling this a mere missing compiler feature: current fixed-gate INT8 QK/PV experiments fail accuracy. Conversely, the compiler does not automatically quantize a floating graph; this is an explicit model/recipe decision. `probeSUMMARY/sq1-attention.txt`, `probeSUMMARY/sq3.txt`, `qx/REPORT.md`.

## Evidence still awaited / update policy

- **attR:** received. It assigns epilogues/maxpool to Merlin coverage, M=49 to our gcd distribution workaround, and packing to the compile recipe/integration. Exact causal cycle split remains unavailable; CLI tile-size flags were a measured no-op.
- **attE1:** first handoff received; surrogate attention compile/runtime (362,303,608 invocation cycles) is not a per-op counter or requested QK shape. Target-shape and option comparisons pending. **attE2:** report received; no paired exact-recipe Spike instruction count, so exactness cost is unresolved, not zero.
- **tlHead:** INT8 head variant has not reported a completed accuracy/performance result; no projected benefit claimed.
- **attH:** current hardware report says no TinyLlama or smolVLA FireSim model cycles; update only if actual completed run artifacts arrive.

Commands/evidence read so far: required `/home/loren/work/REPORT.md`, `runs/smolvla-numerics/SPEC.md`, `runs/tinyllama2/REPORT.md`; requested agent reports and every `runs/probeSUMMARY/*.txt` currently present; source and artifact reports linked above. This verdict is updated in place, with exact source locations and artifact paths for every numeric claim. Snapshot and other agents' run directories were not modified.
