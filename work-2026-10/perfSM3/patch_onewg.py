"""Checked local ELF patch: HAL workgroup x/y/z loop limits ->1, metadata unchanged.
Diagnostic computation only; output is deliberately invalid for numerical acceptance.
"""
import subprocess,re,struct,json,hashlib,sys
from pathlib import Path
src,dst=map(Path,sys.argv[1:3]);b=bytearray(src.read_bytes())
obj='/home/loren/work/chipyard/.conda-env/riscv-tools/bin/riscv64-unknown-elf-objdump'
s=subprocess.check_output([obj,'-d','--disassemble=iree_hal_local_executable_issue_dispatch_inline',str(src)],text=True)
# Three32-bit loads from fields workgroup_count_x/y/z offsets12/16/20.
candidates={}
for line in s.splitlines()[:45]:
 m=re.match(r'\s*([0-9a-f]+):\s+([0-9a-f]{8})\s+(?:lw|lwu|lhu)\s+(\w+),(12|16|20)\((\w+)\)',line)
 if m:
  va,word,reg,off,base=m.groups();candidates.setdefault(base,[]).append((int(off),int(va,16),int(word,16),reg))
groups=[v for v in candidates.values() if sorted(a[0] for a in v)==[12,16,20]];assert len(groups)==1,(groups,s)
phoff=struct.unpack_from('<Q',b,32)[0];pe,pn=struct.unpack_from('<HH',b,54)
def offset(va):
 for j in range(pn):
  p=struct.unpack_from('<IIQQQQQQ',b,phoff+j*pe)
  if p[0]==1 and p[3]<=va<p[3]+p[5]:return p[2]+va-p[3]
 raise ValueError(hex(va))
changes=[]
for field,va,old,reg in sorted(groups[0]):
 off=offset(va);assert struct.unpack_from('<I',b,off)[0]==old
 rd=(old>>7)&31;new=(1<<20)|(rd<<7)|0x13;struct.pack_into('<I',b,off,new);changes.append({'va':hex(va),'offset':off,'old':hex(old),'new':hex(new),'register':reg,'dispatch_state_offset':field})
dst.write_bytes(b);Path(str(dst)+'.patch.json').write_text(json.dumps({'source':str(src),'source_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'changes':changes,'meaning':'DIAGNOSTIC ONLY WG0 loop bound clamp; true launch metadata unchanged; not numerical inference'},indent=2));print(json.dumps(changes,indent=2))
