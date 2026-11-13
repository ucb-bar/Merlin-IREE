from pathlib import Path
import sys
src=Path(sys.argv[1]);dst=Path(sys.argv[2]); count=0
with src.open() as f,dst.open('w') as g:
 for line in f:
  count+=line.count('torch.aten._int_mm')
  g.write(line.replace('torch.aten._int_mm','torch.aten.mm'))
print('rewritten int8 matmul operations',count)
