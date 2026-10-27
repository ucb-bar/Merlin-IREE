"""Decode only W-owned completed UART logs; preserve and compare raw outputs."""
from pathlib import Path
import argparse,re,subprocess,os,json
import numpy as np
R=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('model',choices=['resnet','tinyllama','smolvla']);p.add_argument('log',type=Path);p.add_argument('--spike-tag',default='numerics');a=p.parse_args()
D=R/a.model
raw=a.log.read_bytes().replace(b'\r\n',b'\n');out=D/'fpga-uart-normalized.log';out.write_bytes(raw)
if a.model=='resnet':
 subprocess.run(['/home/loren/work/runs/smolvla/venv/bin/python',str(D/'analyze.py'),str(out),'fpga'],check=True)
else:
 # Helpers select the golden next to their own file and produce independent
 # per-element finite/gate/argmax metrics. No acceptance inferred from exit0.
 if a.model=='tinyllama':
  subprocess.run(['/home/loren/work/runs/smolvla/venv/bin/python',str(D/'analyze.py'),str(out)],check=True)
  result=json.loads(out.with_suffix('.metrics.json').read_text());b=out.with_suffix('.output.bin').read_bytes();spike=D/('spike-numerics.output.bin'if a.spike_tag=='numerics'else'spike.output.bin')
  sb=spike.read_bytes();result['bit_equal_spike']=b==sb;result['unequal_words_spike']=sum(b[i:i+4]!=sb[i:i+4]for i in range(0,len(b),4));result['cycles']=int(re.search(rb'TINYLLAMA_INT8_RESULT cycles=(\d+)',raw)[1])
  aa=np.frombuffer(b,dtype='<f4').reshape(16,32000);gg=np.load('/home/loren/work/runs/tinyllama2/int8/reference.npy').reshape(aa.shape);dd=abs(aa.astype('f8')-gg.astype('f8'));good=np.isfinite(aa)&np.isfinite(gg)&(dd<=.001+.001*abs(gg.astype('f8')))
  result['pytorch_comparison']={'pass_gate':bool(good.all()),'failed':int((~good).sum()),'max_abs':float(dd.max()),'rmse':float(np.sqrt(np.mean(dd*dd))),'atol':.001,'rtol':.001}
 else:
  # Existing helper unconditionally parses original spike.log; use a local
  # adapted copy with a selected numerics baseline and distinct output names.
  text=(D/'analyze.py').read_text().replace("parse(r/'spike.log','spike')","parse(r/'spike-numerics.log','spike-numerics')").replace("(r/'spike-output.f32')","(r/'spike-numerics-output.f32')")
  text=text.replace("if stem!='spike':", "if stem not in ('spike', 'spike-numerics'):")
  helper=D/'analyze-numerics-fpga.py';helper.write_text(text)
  subprocess.run(['/home/loren/work/runs/smolvla/venv/bin/python',str(helper),str(out)],check=True);result=json.loads((D/'fpga-result.json').read_text())
 (D/'fpga-result.json').write_text(json.dumps(result,indent=2)+'\n')
