from pathlib import Path
import numpy as np,struct,re,json,hashlib
R=Path(__file__).resolve().parent;a=np.fromfile(R/'input.bin',dtype='i1').reshape(32,24);b=np.load(R/'b.npy');g=(a.astype('i4')@b.astype('i4')).ravel();rows={}
for mode in ['baseline','fixed']:
 s=(R/f'spike-{mode}.log').read_text();r=re.findall(r'^ELEMENT (\d+) ([0-9a-f]{8})$',s,re.M);assert [int(i)for i,_ in r]==list(range(1280));raw=b''.join(struct.pack('<I',int(v,16))for _,v in r);(R/f'{mode}.output.i32').write_bytes(raw);y=np.frombuffer(raw,dtype='<i4');d=abs(y.astype('i8')-g.astype('i8'));rows[mode]={'exact':bool(np.array_equal(y,g)),'failed':int((y!=g).sum()),'max_abs':int(d.max()),'cycles':int(re.search(r'MATMUL_I32_RESULT cycles=(\d+)',s)[1]),'output_sha256':hashlib.sha256(raw).hexdigest()}
(R/'comparison.json').write_text(json.dumps(rows,indent=2)+'\n');print(json.dumps(rows,indent=2));assert not rows['baseline']['exact']and rows['fixed']['exact']
