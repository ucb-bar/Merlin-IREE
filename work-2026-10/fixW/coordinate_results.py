"""Collect only W-owned completed FPGA results and keep REPORT current."""
from pathlib import Path
import datetime,json,re,subprocess,time,os
R=Path(__file__).resolve().parent
PY='/home/loren/work/runs/smolvla/venv/bin/python'
ids={'resnet':'gemW-resnet50-20261027-a1','tinyllama':'gemW-tinyllama-20261027-a1','smolvla':'gemW-smolvla-20261027-a1'}
env=os.environ.copy();env.update(PYTHONDONTWRITEBYTECODE='1',OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1')
collected=set();last_state=None
while True:
 rows={};all_done=True
 for model,rid in ids.items():
  D=R/model;P=R/'fpga'/rid;meta=P/'meta.json';result=D/'fpga-result.json'
  if meta.exists() and model not in collected:
   try:
    m=json.loads(meta.read_text());uarts=list(P.rglob('uartlog'))
    expected=512000 if model=='tinyllama' else 1600 if model=='smolvla' else 1000
    prefix=b'OUT ' if model=='tinyllama' else b'OUTPUT ' if model=='smolvla' else b'LOGIT '
    uart=next((p for p in uarts if sum(x.startswith(prefix)for x in p.read_bytes().splitlines())==expected),None)
    if uart:
     with (D/'coordinator-fpga-analysis.log').open('w')as f:code=subprocess.call(['taskset','-c','3',PY,str(R/'collect_fpga.py'),model,str(uart)],env=env,stdout=f,stderr=subprocess.STDOUT)
     if code==0:collected.add(model)
   except (OSError,ValueError,StopIteration):pass
  if result.exists():
   q=json.loads(result.read_text());m=json.loads(meta.read_text())if meta.exists()else{}
   if model=='resnet':good=q.get('pass_gate',False);same=q.get('bit_equal_spike')
   elif model=='tinyllama':good=q.get('strict_pass',False)and q.get('pytorch_comparison',{}).get('pass_gate',False);same=q.get('bit_equal_spike')
   else:good=all(v.get('pass',False)for v in q.get('comparisons',{}).values());same=q.get('bit_identical_to_spike')
   rows[model]={'fpga':'PASS'if good else'FAIL','cycles':q.get('cycles'),'bit_equal_spike':same,'run_id':rid,'remote_exit':m.get('exit_status'),'result':str(result)}
  else:
   all_done=False;rows[model]={'fpga':'pending','run_id':rid}
   if model=='smolvla':
    sp=D/'spike-numerics-result.json'
    rows[model]['spike']='pending'if not sp.exists()else('PASS'if all(v['pass']for v in json.loads(sp.read_text())['comparisons'].values())else'FAIL')
 now=datetime.datetime.now(datetime.timezone.utc).strftime('%Y-%m-%d %H:%M:%S UTC')
 state={'updated':now,'models':rows,'all_fpga_results_available':all_done}
 (R/'live-status.json').write_text(json.dumps(state,indent=2)+'\n')
 summary='<!-- AUTO-STATUS-BEGIN -->\nLast observed '+now+'.\n\n| Model | FPGA status | Inference cycles | Bit equal Spike |\n|---|---|---:|---|\n'
 for model,q in rows.items():summary+=f"| {model} | {q['fpga']} | {q.get('cycles','pending')} | {q.get('bit_equal_spike','pending')} |\n"
 summary+='\nFull per-model JSON/logs remain authoritative; pending is not acceptance.\n<!-- AUTO-STATUS-END -->'
 p=R/'REPORT.md';s=p.read_text()
 if '<!-- AUTO-STATUS-BEGIN -->'in s:s=re.sub(r'<!-- AUTO-STATUS-BEGIN -->.*?<!-- AUTO-STATUS-END -->',summary,s,flags=re.S)
 else:s=s.replace('\n## Current result table', '\n'+summary+'\n\n## Current result table',1)
 temp=R/'REPORT.md.coordinator.tmp';temp.write_text(s);temp.replace(p)
 signature=json.dumps(rows,sort_keys=True)
 if signature!=last_state:print(now,signature,flush=True);last_state=signature
 if all_done:break
 time.sleep(45)
