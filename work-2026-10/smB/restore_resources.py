"""Restore original named resource bytes omitted by compile-to text printer.
Fails if a referenced resource is unavailable; never fabricates bytes.
"""
import re,sys,json
src,target=sys.argv[1:];needed=set()
with open(target) as f:
 for l in f:
  if len(l)<100000:needed.update(re.findall(r'dense_resource<([^>]+)>',l))
# Compile-to printer emits no resource section in this snapshot.
selected=set()
with open(target,'a') as g:
 g.write('\n{-#\n  dialect_resources: {\n    builtin: {\n');first=True
 with open(src) as f:
  for l in f:
   m=re.match(r'\s*([^ :]+): "0x',l)
   if m and m[1] in needed:
    if not first:g.write(',\n')
    first=False;g.write(l.strip().rstrip(','));selected.add(m[1])
 g.write('\n    }\n  }\n#-}\n')
assert needed==selected,sorted(needed-selected)
print(json.dumps({'restored_resource_count':len(selected),'all_names_from_original':True}))
