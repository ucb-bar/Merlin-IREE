| Model | FireSim plain cycles | Instrumented cycles | Spike cycles | Spike gate | Gemmini occupancy %¹ | Gemmini MAC utilization %¹ | Overall MAC utilization %¹ | Gemmini dispatches | Rocket dispatches | Plain gate | Trace gate |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| resnet | 2,088,208,536 | 2,088,660,305 | 866,737,398 | PASS | 79.18155 | 0.96584 | 0.76477 | 54 | 52 | PASS | PASS |
| tinyllama | not yet measured | not yet measured | 4,751,659,274 | PASS | not yet measured | not yet measured | not yet measured | not yet measured | not yet measured | PENDING | PENDING |
| smolvla | not yet measured | not yet measured | not yet measured | PENDING | not yet measured | not yet measured | not yet measured | not yet measured | not yet measured | PENDING | PENDING |

¹ Software dispatch occupancy and useful MAC estimates, not hardware busy counters. Spike cycles are functional simulator counts. Missing hardware measurements remain explicit.

| Model | Observed instrumentation overhead % | Plain/trace output bitwise equal |
| --- | --- | --- |
| resnet | 0.02163 | True |
| tinyllama | not yet measured | not yet measured |
| smolvla | not yet measured | not yet measured |
