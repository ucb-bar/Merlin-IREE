| Model | FireSim plain cycles | Instrumented cycles | Spike cycles | Spike gate | Gemmini occupancy %¹ | Gemmini MAC utilization %¹ | Overall MAC utilization %¹ | Gemmini dispatches | Rocket dispatches | Plain gate | Trace gate |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| resnet | 2,088,237,773 | 2,088,249,127 | 866,737,584 | PASS | 79.18699 | 0.96596 | 0.76492 | 54 | 52 | PASS | PASS |
| tinyllama | 13,362,634,591 | 13,360,147,904 | 4,751,658,908 | PASS | 11.86645 | 3.81962 | 0.45325 | 154 | 1,303 | PASS | PASS |
| smolvla | 1,228,473,542,136 | not measured | 432,737,383,371 | PASS | not measured | not measured | not measured | not measured | not measured | PASS | NOT RUN |

¹ Software dispatch occupancy and useful MAC estimates, not hardware busy counters. Spike cycles are functional simulator counts. Missing hardware measurements remain explicit.

| Model | Observed instrumentation overhead % | Plain/trace output bitwise equal |
| --- | --- | --- |
| resnet | 0.00054 | True |
| tinyllama | -0.01861 | True |
| smolvla | not measured | not measured |
