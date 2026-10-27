from pathlib import Path
import hashlib,json
R=Path(__file__).parent;files=[]
for p in R.iterdir():
 if p.is_file() and p.suffix in ['.py','.sh','.mlir','.elf','.vmfb','.bin','.f32','.txt','.json'] and p.name!='artifact-manifest.json':files.append(p)
for p in [R/'full-runtime/build-plain/smolvla.elf',R/'full-runtime/build-trace/smolvla.elf']:
 if p.exists():files.append(p)
items=[]
for p in files:
 h=hashlib.sha256()
 with p.open('rb') as f:
  while b:=f.read(8*1024*1024):h.update(b)
 items.append({'path':str(p.resolve()),'bytes':p.stat().st_size,'sha256':h.hexdigest()})
(R/'artifact-manifest.json').write_text(json.dumps(items,indent=2))
