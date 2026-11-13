from pathlib import Path
import json,datetime
R=Path(__file__).resolve().parent;s=R/'REPORT.md';body=s.read_text();marker='<!-- SMA_CURRENT_END -->'
if marker in body:body=body.split(marker,1)[1].lstrip('\n')
scale=json.loads((R/'full/scaled-summary.json').read_text());host=json.loads((R/'host/result.json').read_text()) if (R/'host/result.json').exists() else None
head=f'''# SMA current result — target NOT MET

Updated {datetime.datetime.now(datetime.timezone.utc).isoformat()}. No F2 action; protected trees unchanged; maximum24 cores, affinity24-47.

Materializing hidden scalar-loop results repairs the softmax fusion blowup without changing arithmetic. Compiler fusion flags alone did not fix it. Whole-model WG0 instruction estimate: **{scale['before_estimated_instructions']:,} -> {scale['estimated_instructions']:,} (8.108x lower)**, still **4.302x above1e11 target**. Every18343 new invocation trace record matched, dropped0. This is approximate dispatch cost, not full runtime/hardware timing.

Candidate plain ELF: `full/smolvla.elf`, SHA256 `7124930e07f08073c1a77303440a241f54be9ce3d17fdaf39556a2d124df45b3`. Full RV64 original-workgroup numerics **not run**; final F2 check belongs to the receiving agent. Do not deploy based solely on partial-WG output. Slice evidence: full connected attention462720 values and softmax1270215 values BITWISE both references; dominant synthetic1572864-value pattern BITWISE old/new, unchanged PyTorch gate passes (tiny inherited exp-bit differences reported below).

Adopt: `taskset -c 24-47 python3 /home/loren/work/runs/smA/compile_materialized.py INPUT.mlir OUTPUT.vmfb`. Same fixW merged compiler and strict numerical options,32768-byte temporary allocation gate unchanged. No compiler rebuild. Full replay without WG clamp: `bash runs/smA/run_spike_full.sh > runs/smA/full/full-spike.stdout 2> runs/smA/full/full-spike.stderr` (prepared, **not executed**).

'''
if host:
 head+=f"Full host numerical check: {host['cpu_different_bits']} differing CPU-golden words, {host['cpu_gate_failures']} CPU gate failures, {host['pytorch_gate_failures']} PyTorch gate failures, {host['finite']}/{host['elements']} finite. This is host evidence, not full RV64/F2 evidence. Exact metrics: host/result.json.\n\n"
else:head+='Additional full host comparison pending; initial host retargeting retained RV-only Gemmini schedules; corrected target metadata retry pending.\n\n'
head+='Exact commands/versions/errors and measured results follow. Per-dispatch accounting: dispatch-comparison.csv, full/scaled-dispatches.json and full/*correspondence.json. Payload/ELF hashes: full/payload-identity.json; complete manifest: artifact-manifest.json.\n\n'+marker+'\n\n'
s.write_text(head+body)
summary=f'SMA {"FINAL" if host else "CURRENT"}:3.488T->430.216G WG0 estimate(8.108x),TARGET1e11 NOT MET;18343 traces matched,dropped0. Hidden-loop materialization fixes old1093:12.957G->71.581M; remaining QK/PV/projection dominates. Plain ELF runs/smA/full/smolvla.elf SHA2567124930e07f08073c1a77303440a241f54be9ce3d17fdaf39556a2d124df45b3. Bitwise slices pass; fullRV/F2 not run.'
if host:summary+=f" Full host CPU-bit-diff={host['cpu_different_bits']},PyTorch-gate-fail={host['pytorch_gate_failures']}."
summary+=' Script/report runs/smA/REPORT.md.\n';(R.parent/'probeSUMMARY/SMA.txt').write_text(summary)
