from pathlib import Path
import re,json,subprocess
R=Path(__file__).parent
asm=next((R/'full-barrier-ir').glob('*.s')).read_text();t=asm.split('iree_hal_executable_library_query_v0_funcs:\n')[1].split('\t.size')[0];names=re.findall(r'\t.quad\t(.*)',t)
with (R/'module.disassembly').open('w') as f:subprocess.run(['/home/loren/work/iree-latest/bin/iree-dump-module','--output=disassembly',str(R/'full-barrier.vmfb')],stdout=f,check=True)
regs={};rows=[]
for l in (R/'module.disassembly').read_text().splitlines():
 if '// Disassembly' in l:regs={}
 if m:=re.search(r'%i(\d+)(?::\d+)? = vm.const.i\d+ (-?\d+)',l):regs[int(m[1])]=int(m[2])
 if m:=re.search(r'%i(\d+)(?::\d+)? = vm.const.i\d+.zero',l):regs[int(m[1])]=0
 if '@hal.command_buffer.dispatch(' in l:
  args=re.search(r'dispatch\((.*)\)',l)[1].split(', ');vals=[regs.get(int(x[2:])) if x.startswith('%i') else x for x in args[:7]];o=vals[2];assert isinstance(o,int) and all(isinstance(v,int) for v in vals[3:6]);name=names[o];rows.append({'ordinal':o,'name':name,'xyz':vals[3:6]})
rows=[r for r in rows if r['name'].startswith('main$')];trace=json.loads((R/'full-dispatches.json').read_text());assert len(rows)==len(trace),(len(rows),len(trace))
for r,t in zip(rows,trace):assert all(r[k]==t[k] for k in ['ordinal','name','xyz']),(r,t)
(R/'metadata-check.json').write_text(json.dumps({'matched_dispatches':len(rows),'all_ordinals_names_and_xyz_match_bytecode':True},indent=2));print('PASS metadata',len(rows))
