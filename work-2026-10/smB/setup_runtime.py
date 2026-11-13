from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/smB');S=R.parent/'fixW/repro';D=R/'runtime';D.mkdir(exist_ok=True)
for n in ['runner.c','libc_strict.c','embed.S','iree_runtime_plugin.cmake','build_runtime.sh','run_spike.sh']:
 s=(S/n).read_text().replace(str(S),str(D)).replace('taskset -c 0-23','taskset -c 24-47').replace('taskset -c 0 ','taskset -c 24 ')
 if n=='runner.c':
  s=s.replace('768u','24576u * sizeof(float)').replace('1280','24576').replace('shape[2] = {32, 24}','shape[3] = {12, 4, 512}').replace('), 2, shape', '), 3, shape').replace('IREE_HAL_ELEMENT_TYPE_SINT_8','IREE_HAL_ELEMENT_TYPE_FLOAT_32')
 (D/n).write_text(s)
for n in ['clang','deps','toolchain']:
 (D/n).symlink_to((S/n).resolve())
