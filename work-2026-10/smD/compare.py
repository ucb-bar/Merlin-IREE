import json,re
from pathlib import Path
r=Path(__file__).parent
v={k:re.findall(r'^WORD ([0-9a-f]+)$',(r/(k+'.stdout')).read_text(),re.M) for k in ['host','original','table']}
assert all(len(a)==128 for a in v.values())
c={k:int(re.search(r'INST (\d+)',(r/(k+'.stdout')).read_text())[1]) for k in ['original','table']}
o={'words':{k:len(x) for k,x in v.items()},'original_host_bitwise':v['host']==v['original'],'table_host_bitwise':v['host']==v['table'],'instructions':c,'ratio':c['original']/c['table'],'scaled_projection_after':61687431168*c['table']/c['original']}
(r/'results.json').write_text(json.dumps(o,indent=2));print(json.dumps(o,indent=2));assert o['original_host_bitwise'] and o['table_host_bitwise']
