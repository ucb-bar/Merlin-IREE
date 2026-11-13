from pathlib import Path
import json,subprocess,os
R=Path('/home/loren/work/runs/fixW'); K='/home/loren/work/runs/fixN';N='/home/loren/work/runs/fixC/tools-env/bin/ninja'
# Relocate only generated build text. Preserve all copied compiled objects.
for p in (R/'build-numerics').rglob('*'):
 if p.is_file() and (p.suffix in ('.cmake','.ninja','.json') or p.name in ('CMakeCache.txt','.ninja_log')):
  try:s=p.read_text()
  except UnicodeError:continue
  if K in s:p.write_text(s.replace(K+'/src/build/host-merlin-release',str(R/'build-numerics')).replace(K+'/build',str(R/'build-numerics')).replace(K+'/src',str(R/'src')))
# Execute only the changed translation unit and the affected shared-library
# link from the copied build graph. No command may write to the original run.
cc=json.loads((R/'build/compile_commands.json').read_text())
cmd=next(x['command'] for x in cc if x['file']==str(R/'src/compiler/src/merlin/Dialect/Gemmini/Transforms/LegalizeForLLVMExport.cpp'))
commands=[cmd + " -Wno-error=dangling"]
link=subprocess.check_output([N,'-C',str(R/'build-numerics'),'-t','commands','lib/libIREECompiler.so'],text=True).splitlines()[-1]
archive = subprocess.check_output([N,'-C',str(R/'build-numerics'),'-t','commands','lib/libiree_gemmini_compiler_Dialect_Gemmini_Transforms_Transforms.a'],text=True).splitlines()[-1]
commands.append(archive)
commands.append(link)
for target in ['tools/iree-compile','tools/iree-opt']:
 commands.append(subprocess.check_output([N,'-C',str(R/'build-numerics'),'-t','commands',target],text=True).splitlines()[-1])
(R/'numerics-incremental-commands.json').write_text(json.dumps(commands,indent=2))
env=os.environ.copy();env['LD_LIBRARY_PATH']='/home/loren/work/runs/fixC/toolchain/usr/lib/x86_64-linux-gnu';env['PATH']='/home/loren/work/runs/fixC/tools-env/bin:/home/loren/work/runs/fixC/toolchain/bin:'+env['PATH']
for i,c in enumerate(commands):
 assert K not in c
 with (R/f'numerics-incremental-{i}.log').open('w') as f:
  code=subprocess.run(['taskset','-c','0','bash','-c',c],cwd=R/'build-numerics',env=env,stdout=f,stderr=subprocess.STDOUT).returncode
 print(i,code,flush=True)
 if code:raise SystemExit(code)
