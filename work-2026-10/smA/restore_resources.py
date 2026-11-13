"""Preserve original dense_resource blobs when staging textual IREE compiler IR.
The compile-to text writer omits resource payloads; append the original block,
after asserting every referenced key exists. Does not decode/re-encode any blob.
"""
from pathlib import Path
import re,sys,json
original,ir=map(Path,sys.argv[1:3]);needed=set(re.findall(r'dense_resource<([^>]+)>',ir.read_text()));seen=set();active=False;count=0
with ir.open('a') as out:
 for line in original.open():
  if line.strip()=='{-#':active=True;out.write('\n')
  if not active:continue
  m=re.match(r'\s*([^ :]+): "0x',line)
  if m:seen.add(m[1])
  out.write(line);count+=len(line)
assert needed<=seen,sorted(needed-seen)
ir.with_suffix('.resources.json').write_text(json.dumps(dict(source=str(original),referenced=len(needed),original_keys=len(seen),missing=sorted(needed-seen),bytes_appended=count),indent=2));print(len(needed),len(seen),count,flush=True)
