# smolVLA FireSim result (plain run only)

Run zSM3-smolvla-plain (us-east-1, hw_config f2_gemmini_rocket_ddr3llc_60mhz, AGFI agfi-02410ef1a8461b435, chipyard 157dd69e, firesim e1bdea8b), 2026-10-27T22:38:10Z to 2026-10-28T04:38:08Z, exit 0. ELF SHA256 355673e836cc8d50300df611d7ff38ed481492a514e4620a90283a8ca9358fee (matches meta.json and the local perfSM3 build-plain ELF).

## Measured (FireSim, plain)
- Timed invoke (rdcycle pair, SMOLVLA_RESULT): **1,228,473,542,136 cycles** (20,474.56 s at 60 MHz target clock).
- Whole emulation: Target Cycles Emulated 1,235,029,463,957 (includes boot, VMFB init, UART output, teardown); FMR 1.03; wallclock 21,301.7 s.
- Numerics at the unchanged gate (atol=rtol=1e-3): 1600/1600 finite, 0 failing; max_abs 0, RMSE 0 vs both PyTorch reference (perfSM3/smolvla/payload-pytorch-golden.f32) and CPU golden. Runner COMPARE lines: errors=0 unequal_bits=0 for cpu and pytorch. Output SHA256 74c9c6c5a16b91f6a918f11146813366eb39c65dabd59c62b01620c982d14a7b, byte-identical (cmp) to fixJ/smol-fp32-peeled/output.bin and to the Spike plain output.
- Spike functional cycles (plain, full run, PASS, same output hash): 432,737,383,371; FireSim/Spike = 2.839x (counters not interchangeable).

## NOT MEASURED
- zSM3-smolvla-trace did not produce a result: it was terminated by the coordinator at ~06:14 UTC per the user decision that the trace run is not needed (SSM Failed/exit 1, no uartlog result). Therefore NO FireSim instrumented cycles, NO FireSim dispatch trace, NO FireSim Gemmini/Rocket utilization, NO FireSim Gantt, no measured trace-overhead. None are estimated here.

## Spike-derived dispatch breakdown (Spike functional cycles, NOT FireSim)
From the instrumented Spike run of the same trace ELF (spike-trace.*, output identical, PASS): invoke 432,737,868,024 Spike cycles; 17,953 dispatches (444 Gemmini, 17,509 Rocket scalar); Gemmini dispatch cycles 26,053,112,105 (6.02%), scalar 405,925,760,249 (93.80%); shape-based Gemmini MAC utilization 4.56%, overall 0.27% (all Spike-functional estimates; do not transfer to hardware). Instruction estimate from perfSM3: 430,334,661,263 scaled instructions (sm3-trace-summary.json, sm3-trace-comparison.md).

Files: firesim-plain.{json,uartlog,output.bin}, firesim-plain-provenance.json, firesim-plain-simulator.json, firesim-plain-meta.json, firesim-plain-run.log, spike-*.*, plus earlier attempts.json / provenance/ from perfSM.
