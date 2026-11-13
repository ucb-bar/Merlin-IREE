from pathlib import Path
import numpy as np, re,struct,json,sys,hashlib
R=Path(__file__).resolve().parent
results={}
for tag in ['baseline','fixed']:
 text=(R/f'spike-{tag}.log').read_text();rows=re.findall(r'^LOGIT (\d+) ([0-9a-f]{8})$',text,re.M)
 assert [int(i)for i,_ in rows]==list(range(1280))
 raw=b''.join(struct.pack('<I',int(b,16))for _,b in rows);(R/f'{tag}.output.f32').write_bytes(raw)
 a=np.fromfile(R/'input.bin',dtype='i1').reshape(32,24);b=np.load(R/'b.npy');g=(a.astype('i4')@b.astype('i4')).astype('f4').ravel();y=np.frombuffer(raw,dtype='<f4')
 results[tag]={'exact':bool(np.array_equal(y,g)),'failures':int(np.count_nonzero(y!=g)),'max_abs':float(np.max(abs(y-g))),'cycles':int(re.search(r'RESNET50_INT8_RESULT cycles=(\d+)',text)[1]),'output_sha256':hashlib.sha256(raw).hexdigest()}
(R/'comparison.json').write_text(json.dumps(results,indent=2)+'\n');print(json.dumps(results,indent=2));assert not results['baseline']['exact'] and results['fixed']['exact']
