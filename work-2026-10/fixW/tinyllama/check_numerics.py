from pathlib import Path
import json,subprocess,re,sys,numpy as np
R=Path(__file__).resolve().parent
log=R/'spike-numerics.log'
subprocess.run([sys.executable,str(R/'analyze.py'),str(log)],check=True,stdout=(R/'analysis-numerics.log').open('w'))
m=json.loads(log.with_suffix('.metrics.json').read_text());a=np.fromfile(log.with_suffix('.output.bin'),dtype='<f4').reshape(16,32000);g=np.load('/home/loren/work/runs/tinyllama2/int8/reference.npy').reshape(a.shape)
d=abs(a.astype('f8')-g.astype('f8'));good=np.isfinite(a)&np.isfinite(g)&(d<=.001+.001*abs(g.astype('f8')))
r={'elements':int(a.size),'failed':int((~good).sum()),'finite':int(np.isfinite(a).sum()),'pass_gate':bool(good.all()),'max_abs':float(d.max()),'rmse':float(np.sqrt(np.mean(d*d))),'atol':.001,'rtol':.001,'reference':'tinyllama2/int8/reference.npy','cycles':int(re.search(r'TINYLLAMA_INT8_RESULT cycles=(\d+)',log.read_text())[1]),'cpu_golden_pass':m['strict_pass'],'argmax_matches_pytorch':int((a.argmax(1)==g.argmax(1)).sum()),'bit_equal_cpu_golden':m['bitwise_equal']}
(R/'numerics-pytorch-comparison.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2));raise SystemExit(0 if r['pass_gate'] and r['cpu_golden_pass'] else 2)
