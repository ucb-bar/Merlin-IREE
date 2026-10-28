Run from any directory:

```sh
python3 /home/loren/work/runs/perfX/results/historical/merge_historical.py
```

The script reads the latest `../summary.csv` and this directory's `historical.csv`, then replaces only `../summary-with-historical.csv` and `../summary-with-historical.md`. Re-running is idempotent for unchanged inputs. It does not modify the original summaries, summarize.py, or historical source report. All current summary fields are preserved; the common comparison columns appear first.

Source: `/home/loren/work/iree-latest/historical_examples/merlin_iree_resnet50_int8_opt_20260905/PERSISTENT_REPORT_20260906.md`, Jack's 2026-09-06 U250 ResNet-50 INT8 report. All 12 Full-model candidates rows are transcribed verbatim, including reference-specific numerics and Markdown markup. The f32 gate and known-correct comparison are included separately. The latter has no detailed numerics in the report; its exact comparison sentence is retained rather than inventing a PASS result. The pre-fix row's reported top-1 812 fails the required top-1 258 gate. Corrected QDQ's legacy-ORT discrepancy must not be confused with its portable-oracle PASS, max 0.

Historical FireSim cycles are `not measured (his U250 ELF is not in the snapshot)`. The `historical ELF on F2` placeholder has blank cycle/numerics cells and exact ELF SHA256 `d435456ee8c46352ba6a56640b69081d8fbe64b2a03294bde7322b41e274adad`. Fill it only with evidence from running that ELF if obtained. The validated embedded VMFB SHA256 is `ad63a88c6d4f098f27c5e40f7e6951b6536a8c0534e836763fa7db1dcd1b8916`; the source table calls its portable-oracle entry `same VMFB`.

Spike cycles are functional counts and are not comparable to FireSim cycles. Jack's canonical input/weights differ from ours (public torchvision weights + synthetic input). Our corrected ResNet-50 has measured FireSim/Spike ratio 2,088,208,536 / 866,737,398 = 2.41x. This provides counter-scale context only; no historical FireSim value is inferred or estimated.
