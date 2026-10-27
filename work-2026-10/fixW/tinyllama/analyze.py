import pathlib,struct,json,sys,hashlib
import numpy as np
p=pathlib.Path(__file__).resolve().parent
log=pathlib.Path(sys.argv[1]); raw=log.read_bytes().replace(b'\r\n',b'\n'); words=[int(l.split()[1],16) for l in raw.splitlines() if l.startswith(b'OUT ')]
if len(words)!=512000: raise SystemExit(f'incomplete output {len(words)}/512000')
b=struct.pack('<512000I',*words); out=log.with_suffix('.output.bin');out.write_bytes(b)
a=np.frombuffer(b,dtype='<f4').reshape(16,32000);g=np.fromfile(p/'golden.bin',dtype='<f4').reshape(a.shape)
d=np.abs(a.astype('float64')-g);fail=~np.isfinite(a)|(d>.001+.001*np.abs(g.astype('float64')))
metrics={'output_sha256':hashlib.sha256(b).hexdigest(),'elements':a.size,'nonfinite':int((~np.isfinite(a)).sum()),'strict_failures':int(fail.sum()),'strict_pass':not bool(fail.any()),'gate':'abs(a-g)<=.001+.001*abs(g); all finite','max_abs':float(d.max()),'rmse':float(np.sqrt(np.mean(d*d))),'argmax':a.argmax(1).tolist(),'golden_argmax':g.argmax(1).tolist(),'argmax_matches':int((a.argmax(1)==g.argmax(1)).sum()),'top5':[np.argsort(-x)[:5].tolist() for x in a],'golden_top5':[np.argsort(-x)[:5].tolist() for x in g],'last_position_greedy_token':int(a[-1].argmax()),'golden_greedy_token':int(g[-1].argmax()),'bitwise_equal':b==(p/'golden.bin').read_bytes(),'result_lines':[l.decode() for l in raw.splitlines() if b'_RESULT ' in l or b'_PASS' in l or b'_FAILED' in l]}
metrics['top5_set_matches']=sum(set(x)==set(y) for x,y in zip(metrics['top5'],metrics['golden_top5']))
log.with_suffix('.metrics.json').write_text(json.dumps(metrics,indent=2)+'\n'); print(json.dumps(metrics,indent=2))
