import sys,re,json,hashlib,struct
from pathlib import Path
import numpy as np
p=Path(__file__).resolve().parent
log=Path(sys.argv[1]); tag=sys.argv[2]
s=log.read_bytes().replace(b'\r\n',b'\n').decode(errors='replace')
entries=re.findall(r'^LOGIT (\d+) ([0-9a-fA-F]{8})\s*$',s,re.M)
assert len(entries)==1000 and [int(i) for i,b in entries]==list(range(1000)),len(entries)
b=b''.join(struct.pack('<I',int(bits,16)) for i,bits in entries)
(p/f'{tag}-output.f32').write_bytes(b)
y=np.frombuffer(b,dtype='<f4'); ref=np.fromfile(p/'golden.f32',dtype='<f4');d=np.abs(y.astype('f8')-ref)
cycles=int(re.search(r'RESNET50_INT8_RESULT cycles=(\d+)',s)[1]); good=np.isfinite(y)&(d<=.8+.1*np.abs(ref.astype('f8')))
r=dict(cycles=cycles,total=1000,finite=int(np.isfinite(y).sum()),failed=int((~good).sum()),max_abs=float(d.max()),rmse=float(np.sqrt(np.mean(d*d))),atol=.8,rtol=.1,top1=int(y.argmax()),golden_top1=int(ref.argmax()),pass_gate=bool(good.all() and y.argmax()==ref.argmax()==21),bit_equal_cpu=b==(p/'golden.f32').read_bytes(),output_sha256=hashlib.sha256(b).hexdigest(),historical_cycles=939242971,cycle_ratio_vs_historical=cycles/939242971)
if tag!='spike':r['bit_equal_spike']=b==(p/'spike-output.f32').read_bytes()
(p/f'{tag}-result.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
