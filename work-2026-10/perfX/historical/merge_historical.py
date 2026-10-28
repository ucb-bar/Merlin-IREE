#!/usr/bin/env python3
"""Append documented historical rows to a fresh read of summary.csv."""
import csv
from pathlib import Path

HERE = Path(__file__).resolve().parent
RESULTS = HERE.parent
REPORT = Path(__file__).resolve().parents[4] / 'iree-latest/historical_examples/merlin_iree_resnet50_int8_opt_20260905/PERSISTENT_REPORT_20260906.md'


def read_csv(path):
    with path.open(newline='') as stream:
        reader = csv.DictReader(stream)
        rows = list(reader)
        return list(reader.fieldnames or []), rows


def main():
    original_fields, current = read_csv(RESULTS / 'summary.csv')
    historical_fields, historical = read_csv(HERE / 'historical.csv')
    fields = historical_fields + [name for name in original_fields if name not in historical_fields]
    for row in current:
        row.update({
            'label': row['model'], 'source': 'current (perfX)',
            'Spike cycles': row.get('Spike_plain_cycles', ''),
            'FireSim cycles': row.get('FireSim_plain_cycles', ''),
            'numerics status': row.get('numerics', ''),
        })
    for row in historical:
        row['model'] = 'resnet'
    rows = current + historical
    output = RESULTS / 'summary-with-historical.csv'
    with output.open('w', newline='') as stream:
        writer = csv.DictWriter(stream, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)

    notes = f'''Source: [Jack's persistent report, 2026-09-06]({REPORT.as_posix()}).

Spike cycles are functional simulator counts and are not comparable to FireSim cycles.
Jack's canonical input/weights differ from ours (public torchvision weights + synthetic input).
For our corrected ResNet-50, measured FireSim/Spike = 2,088,208,536 / 866,737,398 = {2088208536 / 866737398:.2f}x.
This is context for the scale of the two counters, not a conversion factor or a historical FireSim estimate.
No historical FireSim cycle count has been measured or estimated here. The historical ELF on F2 row is a placeholder; its FireSim cycles cell is intentionally blank.

Historical candidate labels, Spike counts, and numerics text are transcribed verbatim from the Full-model candidates table, including Markdown emphasis/code.
The f32 gate result is verbatim; the known-correct comparison retains the report's exact sentence because no detailed numerics are supplied there.
The pre-fix fused Gemmini result fails the required top-1 258 gate (reported top-1 812); its numerics cell preserves the report's wording.
`same VMFB` in the portable-oracle row refers to `ad63a88c6d4f098f27c5e40f7e6951b6536a8c0534e836763fa7db1dcd1b8916`.
The corrected original QDQ and portable-oracle rows describe the same artifact and cycle measurement against different references.
Current rows retain all original summary.csv columns; blank cells indicate unavailable values.
'''
    def cell(value):
        return str(value).replace('|', '\\|').replace('\n', '<br>')
    lines = ['| ' + ' | '.join(fields) + ' |', '| ' + ' | '.join(['---'] * len(fields)) + ' |']
    lines += ['| ' + ' | '.join(cell(row.get(field, '')) for field in fields) + ' |' for row in rows]
    (RESULTS / 'summary-with-historical.md').write_text(notes + '\n' + '\n'.join(lines) + '\n')


if __name__ == '__main__':
    main()
