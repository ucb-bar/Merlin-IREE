import json,re,hashlib
from pathlib import Path
import numpy as np
R=Path(__file__).parent; D=R/'int8_head'; log=R/'spike/spike.log'; raw=log.read_bytes().replace(b'\r\n',b'\n')
words=[int(m,16) for m in re.findall(rb'^OUT ([0-9a-fA-F]{8})$',raw,re.M)]
if len(words)!=512000: raise SystemExit(f'incomplete Spike result: {len(words)}/512000 words')
bits=np.asarray(words,dtype='<u4'); actual=bits.view('<f4').reshape(1,16,32000)
gold=np.load(D/'reference.npy').astype(np.float32); diff=np.abs(actual.astype(np.float64)-gold.astype(np.float64)); bad=~np.isfinite(actual)|~np.isclose(actual,gold,atol=.001,rtol=.001)
match=re.search(rb'TINYLLAMA_INT8_RESULT cycles=(\d+) max_abs=([^ ]+) max_index=(\d+) errors=(\d+) top1=(\d+)',raw)
result=dict(cycles=int(match.group(1)) if match else None,reported_errors=int(match.group(4)) if match else None,actual_elements=int(actual.size),nonfinite=int((~np.isfinite(actual)).sum()),failed_elements=int(bad.sum()),pass_gate=bool(not bad.any()),max_abs=float(diff.max()),rmse=float(np.sqrt(np.mean(diff*diff))),argmax_agreement=int((actual.argmax(-1)==gold.argmax(-1)).sum()),argmax_total=16,output_sha256=hashlib.sha256(bits.tobytes()).hexdigest(),baseline_cycles=4751658908)
if result['cycles']:
 result['cycle_drop']=result['baseline_cycles']-result['cycles']; result['cycle_drop_percent']=100*result['cycle_drop']/result['baseline_cycles']
(D/'spike-comparison.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
