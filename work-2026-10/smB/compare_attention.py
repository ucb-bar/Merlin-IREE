from pathlib import Path
import re,json,hashlib,numpy as np
R=Path(__file__).parent;res={};arrays={}
for tag in ['attention','attention-barrier']:
 s=(R/(tag+'-spike.log')).read_text();h=re.search(r'^RAW 0 ([0-9a-f]+)$',s,re.M)[1];a=np.frombuffer(bytes.fromhex(h),dtype='>u4').astype('<u4');assert len(a)==3072
 arrays[tag]=a;(R/(tag+'-output.bin')).write_bytes(a.tobytes())
 res[tag]={'cycles':int(re.search(r'PROBE_CYCLES (\d+)',s)[1]),'unchanged_gate_failures':int(re.search(r'PROBE_DONE failures=(\d+)',s)[1]),'sha256':hashlib.sha256(a.tobytes()).hexdigest()}
res['bitwise_equal_before_after']=bool(np.array_equal(*arrays.values()));res['speedup']=res['attention']['cycles']/res['attention-barrier']['cycles'];(R/'attention-results.json').write_text(json.dumps(res,indent=2));print(json.dumps(res,indent=2));assert res['bitwise_equal_before_after']
