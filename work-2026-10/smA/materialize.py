"""Barrier results of top-level linalg.generic containing nested scf loops.
Run after --compile-to=global-optimization, resume --compile-from=global-optimization.
No arithmetic, loop, shape or dtype changes; result is a materialization boundary.
"""
import re,sys,json
from pathlib import Path
src,dst=map(Path,sys.argv[1:3]);lines=src.read_text().splitlines(True);out=[];changes=[];i=0
while i<len(lines):
 l=lines[i];m=re.match(r'(\s*)(%[\w]+) = linalg.generic ',l)
 if not m:out.append(l);i+=1;continue
 block=[l];i+=1
 while i<len(lines):
  block.append(lines[i]);i+=1
  if re.match(re.escape(m[1])+r'} -> tensor<',block[-1]):break
 text=''.join(block)
 if 'scf.for ' in text:
  typ=re.search(r'} -> (tensor<[^>]+>)',block[-1])[1];old=m[2];new='%sma_raw'+old[1:]
  block[0]=block[0].replace(old+' =',new+' =',1)
  block.append(f'{m[1]}{old} = util.optimization_barrier {new} : {typ}\n');changes.append(dict(result=old,type=typ))
 out.extend(block)
dst.write_text(''.join(out));dst.with_suffix('.barriers.json').write_text(json.dumps(changes,indent=2));print(len(changes),'materialization barriers')
