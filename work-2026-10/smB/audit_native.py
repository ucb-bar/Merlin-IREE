"""Dispatch/function shape inventory and static scalar-vs-Gemmini evidence."""
from pathlib import Path
import re,json,collections
R=Path(__file__).parent
A=next((R/'full-barrier-ir').glob('*.s')).read_text()
t=A.split('iree_hal_executable_library_query_v0_funcs:\n')[1].split('\t.size')[0];names=re.findall(r'\t.quad\t(.*)',t)
(R/'export-names.json').write_text(json.dumps(names,indent=2));print('exports',len(names));print('batchmatmul',sum('batch_matmul' in n for n in names));print('i8matmul',sum('i8xi8xi32' in n for n in names));print('elementwise1572864',sum('elementwise_1572864_f32' in n for n in names))
