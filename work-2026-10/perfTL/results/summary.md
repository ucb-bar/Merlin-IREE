| Model | FireSim plain cycles | Instrumented cycles | Spike cycles | Spike gate | Gemmini occupancy %¹ | Gemmini MAC utilization %¹ | Overall MAC utilization %¹ | Gemmini dispatches | Rocket dispatches | Plain gate | Trace gate |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| tinyllama | 13,362,634,591 | 13,360,147,904 | 4,751,658,908 | PASS | 11.86645 | 3.81962 | 0.45325 | 154 | 1,303 | PASS | PASS |

¹ Software dispatch occupancy and useful MAC estimates, not hardware busy counters. Spike cycles are functional simulator counts. Missing hardware measurements remain explicit.

| Model | Observed instrumentation overhead % | Plain/trace output bitwise equal |
| --- | --- | --- |
| tinyllama | -0.01861 | True |
