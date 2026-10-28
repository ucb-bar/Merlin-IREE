#!/usr/bin/env python3
"""calib_compare.py OLD_UARTLOG NEW_UARTLOG OUT.csv : same ELF (zK-kprof-plain, sha256 17c00bda...) run on b89be5a's
F2 (via firesim-manager) vs tonight's merlin-p1-f2 host. Compares every CASE <name> <idx> <cycles> <instret> line."""
import csv, statistics, sys
def load(p):
    d = {}
    for l in open(p, errors="replace"):
        l = l.strip().replace("\r", "")
        if l.startswith("CASE "):
            q = l.split()
            if len(q) >= 4: d.setdefault(q[1], {})[int(q[2])] = int(q[3])
    return d
o, n = load(sys.argv[1]), load(sys.argv[2])
rows = []
for k in o:
    if k not in n: rows.append(dict(kernel=k, status="missing in rerun")); continue
    ow = statistics.median(v for i, v in o[k].items() if i > 0); nw = statistics.median(v for i, v in n[k].items() if i > 0)
    rows.append(dict(kernel=k, old_cold=o[k][0], new_cold=n[k][0], cold_delta_pct=round(100 * (n[k][0] / o[k][0] - 1), 3),
                     old_warm_median=ow, new_warm_median=nw, warm_delta_pct=round(100 * (nw / ow - 1), 3)))
w = csv.DictWriter(open(sys.argv[3], "w", newline=""), ["kernel", "old_cold", "new_cold", "cold_delta_pct", "old_warm_median", "new_warm_median", "warm_delta_pct", "status"])
w.writeheader(); [w.writerow(r) for r in rows]
d = [r["warm_delta_pct"] for r in rows if "warm_delta_pct" in r]
print(f"{len(d)} kernels; warm median delta {statistics.median(d):+.3f}% range {min(d):+.3f}..{max(d):+.3f}%")
