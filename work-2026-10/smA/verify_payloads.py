import pathlib,struct,hashlib,json,time
R=pathlib.Path(__file__).resolve().parent;D=R/'full'
def hashpart(p,offset=0,length=None):
 h=hashlib.sha256()
 with p.open('rb') as f:
  f.seek(offset)
  while length is None or length:
   b=f.read(8*1024*1024 if length is None else min(length,8*1024*1024))
   if not b:break
   h.update(b)
   if length is not None:length-=len(b)
 assert length is None or length==0
 return h.hexdigest()
def check(p):
 with p.open('rb') as f:
  h=f.read(64);assert h[:6]==b'\x7fELF\x02\x01';phoff=struct.unpack_from('<Q',h,32)[0];shoff=struct.unpack_from('<Q',h,40)[0];pe,pn,se,sn,ss=struct.unpack_from('<HHHHH',h,54);f.seek(shoff);secs=[struct.unpack('<IIQQQQIIQQ',f.read(se)) for _ in range(sn)];syms={}
  for s in secs:
   if s[1]!=2:continue
   st=secs[s[6]];f.seek(st[4]);strings=f.read(st[5]);f.seek(s[4]);raw=f.read(s[5])
   for i in range(0,len(raw),s[9]):
    a=struct.unpack_from('<IBBHQQ',raw,i);name=strings[a[0]:].split(b'\0',1)[0].decode();syms[name]=a[4]
  a=syms['_binary_resnet50_gemmini_embedded_vmfb_start'];b=syms['_binary_resnet50_gemmini_embedded_vmfb_end'];f.seek(phoff);ph=[struct.unpack('<IIQQQQQQ',f.read(pe)) for _ in range(pn)];o=next(q[2]+a-q[3] for q in ph if q[0]==1 and q[3]<=a<q[3]+q[5])
 length=b-a;assert length==(D/'model.vmfb').stat().st_size
 digest=hashpart(p,o,length);assert digest==hashpart(D/'model.vmfb')
 return dict(path=str(p),elf_sha256=hashpart(p),embedded_vmfb_bytes=length,embedded_vmfb_sha256=digest,heap_symbol=syms.get('__merlin_heap_size'),runtime_stack_symbol=syms.get('__merlin_stack_size_min'))
while not (D/'plain-ready.json').exists():time.sleep(5)
rows=[check(D/n) for n in ['smolvla.elf','smolvla-trace.elf','onewg.elf']];(D/'payload-identity.json').write_text(json.dumps(rows,indent=2));print(rows,flush=True)
