from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/fixW')
for model,template in [('tinyllama','gemT'),('smolvla','gemV')]:
 D=R/model;D.mkdir(exist_ok=True);T=Path('/home/loren/work/runs')/template
 files=['CMakeLists.txt','runner.c','embed.S','run_spike.sh','analyze.py','build_runtime.sh'] if model=='tinyllama' else ['CMakeLists.txt','runner.c','embed.S','run_spike.sh','analyze.py','build_runner.sh']
 for name in files:
  s=(T/name).read_text().replace(str(T),str(D)).replace('runs/'+template,'runs/fixW/'+model).replace('/home/loren/work/iree-latest/source/Merlin-IREE/third_party/iree_bar',str(R/'src/third_party/iree_bar')).replace('80-85','2-23').replace('12-17','2-23').replace('-j6','-j22').replace('taskset -c 80 ','taskset -c 1 ').replace('taskset -c 12 ','taskset -c 1 ')
  if model=='tinyllama':s=s.replace('project(gemT','project(fixW_tinyllama')
  else:s=s.replace('project(gemV','project(fixW_smolvla')
  (D/name).write_text(s)
 if model=='tinyllama':
  shutil.copyfile(T/'libc_safe.c',D/'libc_safe.c')
  for name in ['input.bin','golden.bin']:shutil.copyfile(T/name,D/name)
  for name in ['llvm','toolchain','deps']:(D/name).symlink_to(T/name)
 else:
  for name in ['cpu-golden.f32','pytorch-golden.f32']:shutil.copyfile(T/name,D/name)
  # Copy embedded inputs, never rerun prepare.py (it overwrites runner).
  shutil.copytree(T/'inputs',D/'inputs',dirs_exist_ok=True)
  for name in ['tools','deps','firesim']:(D/name).symlink_to(T/name)
 s=(R/'resnet/compile.sh').read_text().replace('0-23','2-23').replace('number-of-threads=24','number-of-threads=22')
 (D/'compile.sh').write_text(s)
 inp='/home/loren/work/runs/tinyllama2/int8/model.mlir' if model=='tinyllama' else '/home/loren/work/runs/smolvla/fp32/smolVLA.q.int8.mlir'
 (D/'compile_model.sh').write_text(f'''#!/bin/bash
set -euo pipefail
cd {D}
bash compile.sh {inp} model.vmfb --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-hal-dump-executable-intermediates-to={D}/intermediates
''')
 if model=='smolvla':
  p=D/'embed.S';p.write_text(p.read_text().replace(str(D/'smolvla.vmfb'),str(D/'model.vmfb')))
