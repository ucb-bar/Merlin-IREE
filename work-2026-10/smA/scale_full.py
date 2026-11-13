import pathlib,json,re,math,subprocess,collections,difflib
R=pathlib.Path('/home/loren/work/runs/smA');D=R/'full'
with (D/'module.disassembly').open('w') as f:subprocess.run(['/home/loren/work/iree-latest/bin/iree-dump-module','--output=disassembly',str(D/'model.vmfb')],stdout=f,check=True)
a=next((D/'ir').glob('*.s')).read_text();t=a.split('iree_hal_executable_library_query_v0_funcs:\n')[1].split('\t.size')[0];names=re.findall(r'\t.quad\t(.*)',t);regs={};rows=[]
for l in (D/'module.disassembly').read_text().splitlines():
 if '// Disassembly' in l:regs={}
 m=re.search(r'%i(\d+)(?::\d+)? = vm.const.i\d+ (-?\d+)',l)
 if m:regs[int(m[1])]=int(m[2])
 m=re.search(r'%i(\d+)(?::\d+)? = vm.const.i\d+.zero',l)
 if m:regs[int(m[1])]=0
 if '@hal.command_buffer.dispatch(' not in l:continue
 args=re.search(r'dispatch\((.*)\)',l)[1].split(', ');v=[regs.get(int(x[2:])) if x.startswith('%i') else x for x in args[:7]];ordinal=v[2];assert isinstance(ordinal,int) and ordinal<len(names),v;rows.append(dict(ordinal=ordinal,name=names[ordinal],xyz=v[3:6]))
(D/'dispatches.json').write_text(json.dumps(rows,indent=2));orig=[r for r in rows if r['name'].startswith('main$')];trace=[];groups=collections.defaultdict(lambda:dict(calls=0,workgroups=0,scaled_instructions=0))
for l in (D/'onewg.stdout').read_text().splitlines():
 if not l.startswith('PERFX,'):continue
 p=l.split(',');i,b,e,ordinal,x,y,z=map(int,p[1:8]);name=p[8];r=orig[i];assert r['ordinal']==ordinal and r['name']==name,(i,r,name);wg=math.prod(r['xyz']);suffix=re.sub(r'^main\$async_dispatch_\d+_','',name);delta=e-b
 row=dict(index=i,name=name,ordinal=ordinal,original_xyz=r['xyz'],onewg_instructions=delta,scaled_instructions=delta*wg);trace.append(row);g=groups[suffix];g['calls']+=1;g['workgroups']+=wg;g['scaled_instructions']+=delta*wg
assert len(trace)==len(orig),(len(trace),len(orig))
(D/'scaled-dispatches.json').write_text(json.dumps(trace,indent=2));before=json.loads((R.parent/'probeSPL/scaled-dispatches.json').read_text());bg=collections.Counter()
for r in before:bg[re.sub(r'^main\$async_dispatch_\d+_','',r['name'])]+=r['scaled_instructions']
comparison=[dict(pattern=k,before=bg[k],after=groups[k]['scaled_instructions'],calls_after=groups[k]['calls']) for k in sorted(set(groups)|set(bg))];comparison.sort(key=lambda x:x['before'],reverse=True)
summary=dict(dispatches=len(trace),estimated_instructions=sum(x['scaled_instructions'] for x in trace),before_estimated_instructions=sum(x['scaled_instructions'] for x in before),limitations='WG0 scaling, excludes startup/VM/output; edge/data-dependent work can differ; partial diagnostic output is NOT numerics evidence',largest_after=sorted(trace,key=lambda x:x['scaled_instructions'],reverse=True)[:20],comparison=comparison)
(D/'scaled-summary.json').write_text(json.dumps(summary,indent=2));print(json.dumps({k:v for k,v in summary.items() if k!='comparison'},indent=2))
