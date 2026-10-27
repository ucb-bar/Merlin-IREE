from pathlib import Path
import struct,hashlib,json
R=Path(__file__).parent;payload=(R/'full-barrier.vmfb').read_bytes();want=hashlib.sha256(payload).hexdigest();result=[]
for mode in ['plain','trace']:
 p=R/f'full-runtime/build-{mode}/smolvla.elf';b=p.read_bytes();shoff=struct.unpack_from('<Q',b,40)[0];se,sn,si=struct.unpack_from('<HHH',b,58);headers=[struct.unpack_from('<IIQQQQIIQQ',b,shoff+j*se) for j in range(sn)];tab=headers[si];strings=b[tab[4]:tab[4]+tab[5]]
 for h in headers:
  name=strings[h[0]:].split(b'\0',1)[0]
  if name==b'.vmfb_data':
   data=b[h[4]:h[4]+h[5]];got=hashlib.sha256(data).hexdigest();assert len(data)==len(payload) and got==want;result.append({'mode':mode,'elf':str(p.resolve()),'elf_sha256':hashlib.sha256(b).hexdigest(),'embedded_vmfb_bytes':len(data),'embedded_vmfb_sha256':got});break
 else:raise ValueError('missing VMFB section')
(R/'embedded-payload-identity.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
