from pathlib import Path
import re,json,struct,hashlib
R=Path(__file__).parent
base=(R/'runtime/golden.f32').read_bytes();results={}
for kind in ['repro','repro-barrier']:
 s=(R/(kind+'-spike.log')).read_text();vals=re.findall(r'^LOGIT (\d+) ([0-9a-f]{8})$',s,re.M);assert [int(i) for i,v in vals]==list(range(24576))
 b=b''.join(struct.pack('<I',int(v,16)) for i,v in vals);(R/(kind+'-output.bin')).write_bytes(b)
 results[kind]={'bitwise_equal_host':b==base,'cycles':int(re.search(r'RESNET50_INT8_RESULT cycles=(\d+)',s)[1]),'words':len(vals),'sha256':hashlib.sha256(b).hexdigest()}
results['speedup']=results['repro']['cycles']/results['repro-barrier']['cycles']
(R/'repro-results.json').write_text(json.dumps(results,indent=2));print(json.dumps(results,indent=2))
