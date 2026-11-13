"""Scale diagnostic WG0 traces by retained true launch metadata; no numerics claim."""
import json,math,collections,sys,re
from pathlib import Path
R=Path(__file__).parent;log=Path(sys.argv[1]);tag=sys.argv[2];rows=[];g=collections.defaultdict(lambda:{'calls':0,'instructions':0})
for line in log.open():
 if not line.startswith('PERFX,'):continue
 p=line.strip().split(',');i,b,e,o,x,y,z=map(int,p[1:8]);name=p[8];assert i==len(rows)
 n=e-b;v=n*x*y*z;shape=re.sub(r'^.*_dispatch_\d+_','',name)
 row={'index':i,'ordinal':o,'name':name,'xyz':[x,y,z],'onewg_instructions':n,'scaled_instructions':v};rows.append(row);g[shape]['calls']+=1;g[shape]['instructions']+=v
assert rows
s={'dispatches':len(rows),'estimated_instructions':sum(r['scaled_instructions'] for r in rows),'groups':dict(sorted(g.items(),key=lambda p:-p[1]['instructions'])),'limitations':'Altered WG0-only computation; metadata workgroups retained. Approximate scaling, edge/data/trace overhead differences; not numerical acceptance.'}
(R/(tag+'-dispatches.json')).write_text(json.dumps(rows,indent=2));(R/(tag+'-summary.json')).write_text(json.dumps(s,indent=2));print(json.dumps(s,indent=2))
old=json.loads((R.parent/'probeSPL/scaled-dispatches.json').read_text());bg=collections.defaultdict(lambda:[0,0])
for r in old:
 shape=re.sub(r'^.*_dispatch_\d+_','',r['name']);bg[shape][0]+=1;bg[shape][1]+=r['scaled_instructions']
lines=['| Shape | Before calls | Before instructions | After calls | After instructions |','|---|---:|---:|---:|---:|']
for shape in sorted(set(bg)|set(g),key=lambda k:-max(bg[k][1],g[k]['instructions'])):
 lines.append(f'| {shape} | {bg[shape][0]} | {bg[shape][1]} | {g[shape]["calls"]} | {g[shape]["instructions"]} |')
(R/(tag+'-comparison.md')).write_text('\n'.join(lines)+'\n')
