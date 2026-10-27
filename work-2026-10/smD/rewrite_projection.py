from pathlib import Path
import argparse,json
p=argparse.ArgumentParser();p.add_argument('input');p.add_argument('output');a=p.parse_args()
s=Path(a.input).read_text(); start='\tslli\ta0, s1, 48\n'; end='\tbne\ts1, s6, .LBB307_3\n'
i=s.index(start);j=s.index(end,i)+len(end)
# Keep reduction sequence and operands identical; substitute only integer addresses.
body='''\tlla a0, .Lsmd_offsets
\tadd a1, s9, s8
\tmv a2, s10
.Lsmd_inner:
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
\tbne s1, s6, .Lsmd_inner
'''
s=s[:i]+body+s[j:]
s+='\n.section .rodata\n.balign 8\n.Lsmd_offsets:\n'
for k in range(768):
 row=k//48;col=(k%48)//3;ch=k%3
 s+=f'\t.word {row*1024+col*2+ch*524288}, {row*64+col*4+ch*1024-1536}\n'
Path(a.output).write_text(s)
