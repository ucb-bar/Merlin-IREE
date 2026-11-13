from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/smA');S=R.parent/'probeP2';D=R/'runtime';D.mkdir(exist_ok=True)
for n in ['toolchain','clang','deps']:
 if not (D/n).exists():(D/n).symlink_to((S/'runtime-fast'/n).resolve(),target_is_directory=True)
for n in ['libc_strict.c','iree_runtime_plugin.cmake','build_runtime.sh']:
 t=(S/'runtime-fast'/n).read_text().replace(str(S/'runtime-fast'),str(D)).replace(str(S/'pack_dump.py'),str(R/'pack_dump.py')).replace('80-87','24-47').replace('-j8','-j24');(D/n).write_text(t)
shutil.copyfile(S/'pack_dump.py',R/'pack_dump.py');shutil.copyfile(S/'runner-template.c',R/'runner-template.c')
t=(S/'probes.py').read_text().replace("'80-87'","'24-47'").replace("'80'","'24'")
t=t[:t.index('def compare(D):')]
(R/'probe_support.py').write_text(t)
