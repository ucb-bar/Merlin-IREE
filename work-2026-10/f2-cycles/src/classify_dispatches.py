#!/usr/bin/env python3
"""classify_dispatches.py ASM.s OUT.json : per dispatch export, does its compiled function contain Gemmini
RoCC instructions (mnemonics 'gemmini.*' in the dumped RISC-V assembly)? -> placement Gemmini / Rocket."""
import json, re, sys
cur = None; res = {}; counts = {}
lab = re.compile(r"^([A-Za-z_][A-Za-z0-9_$]*_dispatch_[0-9]+[A-Za-z0-9_$]*):\s*$")
for line in open(sys.argv[1], errors="replace"):
    m = lab.match(line)
    if m and m.group(1).endswith(("_stage_names", "_stage_source_locations")):
        cur = None; continue
    if m:
        cur = m.group(1); res.setdefault(cur, False); counts.setdefault(cur, 0); continue
    if cur and re.match(r"^\s+gemmini\.", line):
        res[cur] = True; counts[cur] += 1
out = {k: {"placement": "Gemmini" if v else "Rocket", "gemmini_insns_static": counts[k]} for k, v in res.items()}
json.dump(out, open(sys.argv[2], "w"), indent=1)
print(len(out), "dispatches;", sum(v for v in res.values()), "Gemmini")
