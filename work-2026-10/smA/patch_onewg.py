"""Local diagnostic only: clamp HAL x/y/z loops to WG0 as in probeSPL.
Checked instruction signature from identical runtime function, independent of VA.
Trace metadata must be paired with *original* VM bytecode workgroup counts.
"""
from pathlib import Path
import struct,json,hashlib,sys
src,dst=map(Path,sys.argv[1:3]);b=bytearray(src.read_bytes());old=struct.pack('<III',0x00c62a03,0x01062a83,0x01465b03);hits=[];i=0
while True:
 i=b.find(old,i)
 if i<0:break
 hits.append(i);i+=1
assert len(hits)==1,hits
off=hits[0];changes=[]
for j,reg in enumerate([20,21,22]):
 p=off+4*j;before=struct.unpack_from('<I',b,p)[0];after=(1<<20)|(reg<<7)|0x13;struct.pack_into('<I',b,p,after);changes.append(dict(offset=p,before=hex(before),after=hex(after)))
dst.write_bytes(b);dst.with_suffix('.patch.json').write_text(json.dumps(dict(source=str(src),source_sha256=hashlib.sha256(src.read_bytes()).hexdigest(),changes=changes,meaning='DIAGNOSTIC ONLY altered computation; not numerical inference; scale intervals using original VM bytecode counts'),indent=2));print(changes)
