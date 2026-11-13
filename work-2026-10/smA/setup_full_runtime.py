from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/smA');S=R/'runtime';D=R/'runtime-full';D.mkdir(exist_ok=True);P=R/'full'
for n in ['toolchain','clang','deps']:
 if not (D/n).exists():(D/n).symlink_to((S/n).resolve(),target_is_directory=True)
for n in ['libc_strict.c','local_executable.c','build_runtime.sh','iree_runtime_plugin.cmake']:
 s=(S/n).read_text().replace(str(S),str(D)).replace('__merlin_heap_size=134217728','__merlin_heap_size=1073741824').replace('__merlin_stack_size_min=8388608','__merlin_stack_size_min=134217728')
 if n=='build_runtime.sh':s=s.replace('python3 /home/loren/work/runs/smA/pack_dump.py "$PWD/runner.c"','')
 if n=='iree_runtime_plugin.cmake':s=s.replace('"${CMAKE_CURRENT_LIST_DIR}/libc_strict.c" ','');s+='\nadd_compile_definitions(PERFX_TRACE=1)\n'
 (D/n).write_text(s)
s=(R.parent/'perfX/smolvla/runner.c').read_text().replace('if (errors[0] || errors[1])','if (errors[0] || errors[1] || bits[0])');(D/'runner.c').write_text(s)
s=(R.parent/'perfX/smolvla/embed.S').read_text().replace(str(R.parent/'perfX/smolvla/payload-model.vmfb'),str(P/'model.vmfb'))
for i in range(11):
 name=f'payload-input{i}.bin';shutil.copyfile(R.parent/'perfX/smolvla'/name,P/name);s=s.replace(str(R.parent/'perfX/smolvla'/name),str(P/name))
for name in ['payload-cpu-golden.f32','payload-pytorch-golden.f32']:
 shutil.copyfile(R.parent/'perfX/smolvla'/name,P/name);s=s.replace(str(R.parent/'perfX/smolvla'/name),str(P/name))
assert (P/'payload-cpu-golden.f32').read_bytes()==(R.parent/'fixJ/smol-fp32-peeled/output.bin').read_bytes()
(D/'embed.S').write_text(s)
