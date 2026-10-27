"""Finalize one returned hardware run, requiring complete numerical/trace evidence."""
from pathlib import Path
import sys,json,subprocess,hashlib
from analyze import parse,catalog
R=Path(__file__).resolve().parent
model,mode,run_id=sys.argv[1:4]
root=R/'fpga'/run_id
meta=json.loads((root/'meta.json').read_text())
assert meta['runId']==run_id
assert meta['hw_config']=='f2_gemmini_rocket_ddr3llc_60mhz'
elf=R/('build-'+mode)/(model+'.elf');h=hashlib.sha256()
with elf.open('rb') as f:
 for b in iter(lambda:f.read(4<<20),b''):h.update(b)
assert h.hexdigest()==meta['elf_sha256'], 'Returned run does not match selected ELF'

uarts=list(root.rglob('uartlog'))
if len(uarts)!=1:raise RuntimeError(f'Expected exactly one UART, got {uarts}')
a=R/'assembly'/model
if not a.exists():a=R.parent/'fixK'/(model+'-bounded-intermediates')
s=parse(model,uarts[0],'firesim-'+mode,catalog(model,a))
(R/'results'/model/('firesim-'+mode+'-provenance.json')).write_text(json.dumps(dict(remote=meta,local_elf=str(elf),verified_sha256=h.hexdigest()),indent=2))
# Retain simulator report separately; its total emulated cycles include boot,
# VMFB initialization, UART serialization and shutdown, NOT headline invoke.
records=[]
for p in root.rglob('*'):
 if p.is_file() and p.name in ['uartlog','run.log','simpermissiveon.log','simpermissiveoff.log','sim.log']:
  import re
  text=p.read_text(errors='replace').replace('\r','')
  for key,pattern in [('target_cycles_emulated',r'Target Cycles Emulated:\s*(\d+)'),('fmr',r'FMR:\s*([0-9.]+)'),('wallclock_seconds',r'Wallclock Time Elapsed:\s*([0-9.]+)')]:
   m=re.search(pattern,text)
   if m:records.append(dict(file=str(p),metric=key,value=float(m[1])))
(R/'results'/model/('firesim-'+mode+'-simulator.json')).write_text(json.dumps(records,indent=2))
print(json.dumps(s,indent=2))
subprocess.run([sys.executable,str(R/'summarize.py')],check=True)
