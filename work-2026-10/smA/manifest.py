from pathlib import Path
import hashlib,json
R=Path(__file__).resolve().parent
paths=[R/'REPORT.md',*R.glob('*.csv'),*R.glob('*version.txt'),*R.glob('*results.json')]+list(R.glob('*.py'))+list(R.glob('*.sh'))+[R/'compiler-hashes.txt',R/'compiler-version.txt',R/'small-pytorch-results.json',R/'onewg-method-validation.json',R/'attention/result.json',R/'pattern/results.json']
for d in ['baseline','barrier','pattern/baseline','pattern/barrier','attention','full','host']:
 for n in ['probe.elf','onewg.elf','smolvla.elf','model.vmfb','rv.vmfb','output.bin','output0.bin','output1.bin','scaled-summary.json','scaled-dispatches.json','result.json']:
  p=R/d/n
  if p.is_file() and p.stat().st_size:paths.append(p)
paths += list(R.glob('*.mlir')) + list((R/'full').glob('*.mlir')) + list((R/'full/ir').glob('*.s')) + list((R/'full').glob('payload-*.bin')) + list((R/'full').glob('payload-*.f32'))
paths += [R.parent/'smolvla/fp32/smolVLA.q.int8.mlir',R.parent/'smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so',R.parent.parent/'chipyard/.conda-env/riscv-tools/bin/spike',R.parent.parent/'chipyard/generators/gemmini/software/libgemmini/libgemmini.so']
paths+=[R.parent/'fixJ/smol-fp32-peeled/output.bin',R.parent/'smolvla/fp32/smolVLA.q.int8.mlir.reference/pytorch.npy',R.parent/'fixW/build-numerics/tools/iree-compile',R.parent/'fixW/build-numerics/lib/libIREECompiler.so']
records=[]
for p in sorted(set(paths)):
 if not p.is_file():continue
 h=hashlib.sha256()
 with p.open('rb') as f:
  while b:=f.read(8*1024*1024):h.update(b)
 records.append(dict(path=str(p),bytes=p.stat().st_size,sha256=h.hexdigest()))
(R/'artifact-manifest.json').write_text(json.dumps(records,indent=2));print(len(records),'artifacts hashed')
