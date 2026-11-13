from pathlib import Path
import json,re,struct,hashlib,math,sys
r=Path(__file__).resolve().parent

def parse(path,stem):
 raw=path.read_bytes().replace(b'\r\n',b'\n');text=raw.decode(errors='replace')
 rows=re.findall(r'^OUTPUT (\d+) ([0-9a-fA-F]{8})\s*$',text,re.M)
 indices=[int(i) for i,_ in rows]
 if indices!=list(range(1600)): raise ValueError(f'{path}: incomplete/duplicate/out-of-order outputs: {len(rows)}')
 b=b''.join(struct.pack('<I',int(v,16))for _,v in rows);(r/f'{stem}-output.f32').write_bytes(b)
 vals=struct.unpack('<1600f',b);metrics={}
 for key in ['cpu','pytorch']:
  gb=(r/f'{key}-golden.f32').read_bytes();g=struct.unpack('<1600f',gb)
  finite=all(math.isfinite(x)for x in vals)
  dif=[abs(float(a)-float(c))for a,c in zip(vals,g)]
  failed=sum(not math.isfinite(a) or not math.isfinite(c) or d>.001+.001*abs(c)for a,c,d in zip(vals,g,dif))
  metrics[key]={'finite':sum(math.isfinite(x)for x in vals),'failed':failed,'pass':failed==0,'unequal_bits':sum(b[i:i+4]!=gb[i:i+4]for i in range(0,6400,4)),'max_abs':max(dif)if finite else None,'rmse':math.sqrt(sum(d*d for d in dif)/1600)if finite else None,'atol':.001,'rtol':.001}
 cyc=re.search(r'^SMOLVLA_RESULT cycles=(\d+)',text,re.M)
 result={'log':str(path),'cycles':int(cyc[1])if cyc else None,'output_sha256':hashlib.sha256(b).hexdigest(),'comparisons':metrics}
 if stem!='spike':
  sb=(r/'spike-output.f32').read_bytes();result['bit_identical_to_spike']=sb==b;result['unequal_bits_to_spike']=sum(b[i:i+4]!=sb[i:i+4]for i in range(0,6400,4));(r/f'{stem}-uart-normalized.log').write_bytes(raw)
 (r/f'{stem}-result.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
parse(r/'spike.log','spike')
if len(sys.argv)>1:parse(Path(sys.argv[1]),'fpga')
