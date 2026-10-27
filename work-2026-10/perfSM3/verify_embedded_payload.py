from pathlib import Path
import struct,hashlib,json,sys

def sec(elf_path,name):
    b=elf_path.open('rb');hdr=b.read(64)
    assert hdr[:4]==b'\x7fELF' and hdr[4]==2 and hdr[5]==1
    shoff=struct.unpack_from('<Q',hdr,40)[0]; shentsize,shnum,shstr=struct.unpack_from('<HHH',hdr,58)
    b.seek(shoff+shstr*shentsize);h=b.read(shentsize);stroff,strlen=struct.unpack_from('<QQ',h,24);b.seek(stroff);strings=b.read(strlen)
    found=None
    for i in range(shnum):
        b.seek(shoff+i*shentsize);h=b.read(shentsize);n=struct.unpack_from('<I',h)[0]
        end=strings.find(b'\0',n);sn=strings[n:end].decode()
        if sn==name:found=struct.unpack_from('<QQ',h,24);break
    assert found,name
    off,size=found;b.seek(off);d=b.read(size);assert len(d)==size
    return size,hashlib.sha256(d).hexdigest()

vmfb=Path('/home/loren/work/runs/perfSM3/full-runtime/payload-model.vmfb')
h=hashlib.sha256(vmfb.read_bytes()).hexdigest();out=[]
for mode in ('plain','trace'):
 p=Path(f'/home/loren/work/runs/perfSM3/full-runtime/build-{mode}/smolvla.elf')
 size,digest=sec(p,'.vmfb_data');assert size==vmfb.stat().st_size and digest==h
 out.append({'mode':mode,'elf':str(p),'elf_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'embedded_vmfb_bytes':size,'embedded_vmfb_sha256':digest})
Path('/home/loren/work/runs/perfSM3/embedded-payload-identity.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
