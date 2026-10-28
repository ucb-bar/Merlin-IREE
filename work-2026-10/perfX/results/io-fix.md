All runners set a 16 MiB static full stdout buffer before inference; the complete raw-word text is preserved and explicitly flushed after dumping. Trace records are buffered as well. Pre-invoke header flush and the invoke timer are unchanged. Numerical gates and references are unchanged.

| Model/mode | Whole cycles before | Whole cycles buffered | Invoke before | Invoke buffered | Simulator wall before/after (s) |
| --- | --- | --- | --- | --- | --- |
| resnet/plain | 36,745,337,687 | 3,275,786,012 | 2,088,208,536 | 2,088,237,773 | 627 / 71 |
| resnet/trace | 40,608,519,842 | 3,630,629,417 | 2,088,660,305 | 2,088,249,127 | 692 / 77 |

Whole-emulation counters include initialization, validation and I/O; only the invoke counters are inference headline measurements. The original TinyLlama F2 commands were terminated by the coordinator during the readback investigation and supply no completed before measurement. No numerical result or cycles are inferred from those terminated commands.
