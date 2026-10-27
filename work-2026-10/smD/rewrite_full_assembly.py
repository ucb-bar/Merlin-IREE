"""Apply the validated projection integer-address rewrite to checked SPL assembly.
Usage: python3 rewrite_full_assembly.py input.s output.s
Reassemble/relink the native executable and repackage VMFB externally afterwards.
This is not an ELF patch and does not claim a packaged full-model numerical pass.
"""
import re,sys,hashlib,json
from pathlib import Path
src=Path(sys.argv[1]);s=src.read_text();n=0
# Remove debug lines only locally to make the exact machine-instruction checks readable.
for m in reversed(list(re.finditer(r'^(main\$async_dispatch_(?:0|5257|10514)_elementwise_786432_f32):\n',s,re.M))):
 end=s.index('\t.cfi_endproc',m.end());b=s[m.end():end]
 clean='\n'.join(l for l in b.splitlines() if not l.strip().startswith('.loc'))+'\n'
 start=re.search(r'\tslli\ta[03], s1, 48\n',clean);assert start,m[1]
 stop=re.search(r'\tbne\ts1, s6, (\.LBB\d+_3)\n',clean[start.start():]);assert stop,m[1]
 j=start.start()+stop.end();old=clean[start.start():j]
 assert old.count('fmadd.s')==1 and old.count('\tlh\t')==1 and old.count('\tflw\t')==1
 assert '\tflw\tfa2, -1536(a0)' in old
 assert '\tadd\ts10,' in clean and 's9' in old and 's8' in old
 label='.Lsmd_inner_'+str(n)
 body=f'''\tlla a0, .Lsmd_offsets
\tadd a1, s9, s8
\tmv a2, s10
{label}:
\tlw a3, 0(a0)
\tlw a4, 4(a0)
\tadd a3, a3, a1
\tadd a4, a4, a2
\tlh a5, 0(a3)
\tflw fa2, 0(a4)
\tslli a5, a5, 16
\tfmv.w.x fa1, a5
\tfmadd.s fa3, fa1, fa2, fa3
\taddi a0, a0, 8
\taddi s1, s1, 1
\tbne s1, s6, {label}
'''
 clean=clean[:start.start()]+body+clean[j:];s=s[:m.end()]+clean+s[end:];n+=1
assert n==3,f'Expected three original projection functions, found {n}'
s+='\n.section .rodata\n.balign 8\n.Lsmd_offsets:\n'
offset_lines=[]
for k in range(768):
 row=k//48;col=k%48//3;ch=k%3
 offset_lines.append(f'\t.word {row*1024+col*2+ch*524288}, {row*64+col*4+ch*1024-1536}\n')
s+=''.join(offset_lines)
Path(sys.argv[2]).write_text(s)
Path(sys.argv[2]+'.json').write_text(json.dumps({'input':str(src),'input_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'output_sha256':hashlib.sha256(s.encode()).hexdigest(),'rewritten':n},indent=2))
