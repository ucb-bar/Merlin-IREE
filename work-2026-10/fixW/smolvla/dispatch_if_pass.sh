#!/bin/bash
set -euo pipefail
R=/home/loren/work/runs/fixW/smolvla
while [ ! -f "$R/spike-numerics-exit.txt" ]; do sleep 5; done
PYTHONDONTWRITEBYTECODE=1 taskset -c 3 /home/loren/work/runs/smolvla/venv/bin/python "$R/analyze_numerics.py" > "$R/final-gate.log" 2>&1
python3 - <<'PY'
import json
from pathlib import Path
r=json.loads(Path('/home/loren/work/runs/fixW/smolvla/spike-numerics-result.json').read_text())
assert all(x['pass'] for x in r['comparisons'].values()),r
PY
bash "$R/dispatch_fpga_numerics.sh" > "$R/fpga-dispatch.log" 2>&1
