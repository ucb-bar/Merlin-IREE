"""Materialize top-level linalg.generic results without changing scalar arithmetic.
Input: fixW iree-compile --compile-to=input (text). Output: --compile-from=input.
Targeted barriers protect loop results, captured tensor producers, and exp payloads.
SSA uses are rewritten only after their definition.
"""
import re,sys,json
from pathlib import Path
src,dst=sys.argv[1:3]
# Protect loop results and every directly captured tensor producer.
# Other elementwise operations remain eligible for ordinary fusion.
text=Path(src).read_text()
captured=set(re.findall(r'tensor.extract (%[\w.$-]+)\[',text))
selected=set();cur=None;block=[]
for ln in text.splitlines():
    if m:=re.match(r'    (%[\w.$-]+) = linalg.generic ',ln):cur=m[1];block=[]
    if cur:block.append(ln)
    if cur and re.match(r'    } -> tensor<',ln):
        b='\n'.join(block)
        if cur in captured or 'scf.for ' in b or 'math.floor ' in b:selected.add(cur)
        cur=None
renames={};out=[];active=None;n=0
for line in Path(src).open():
    # Resource payloads cannot contain SSA references.
    if len(line)>100000: out.append(line);continue
    m=re.match(r'    (%[\w.$-]+) = linalg.generic ',line)
    if m: active=m[1] if m[1] in selected else None
    line=re.sub(r'%[\w.$-]+',lambda m:renames.get(m[0],m[0]),line)
    out.append(line)
    if active and (t:=re.match(r'    } -> (tensor<[^>]+>)\s*$',line)):
        n+=1;name=f'%smB_materialized_{n}'
        out.append(f'    {name} = util.optimization_barrier {active} : {t[1]}\n')
        renames[active]=name;active=None
    if line.startswith('  util.func '): renames={}
Path(dst).write_text(''.join(out))
Path(dst+'.barriers.json').write_text(json.dumps({'barriers':n,'source':src,'output':dst},indent=2))
print(n)
