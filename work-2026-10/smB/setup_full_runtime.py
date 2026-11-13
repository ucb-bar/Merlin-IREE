from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/smB');S=R.parent/'perfX';D=R/'full-runtime';D.mkdir(exist_ok=True);I=D/'iree';I.mkdir(exist_ok=True)
for p in (S/'iree').iterdir():
 if p.name=='runtime':shutil.copytree(p,I/p.name,dirs_exist_ok=True)
 elif p.is_dir():
  if not (I/p.name).exists():(I/p.name).symlink_to(p.resolve())
 else:shutil.copy2(p,I/p.name)
# Trace capacity exceeds expected dispatch count; clamp only diagnostic loop bounds via separate ELF patch.
p=I/'runtime/src/iree/hal/local/local_executable.c';s=p.read_text().replace('#define PERFX_CAP 32768','#define PERFX_CAP 65536');s=s.replace('perfx_records[i].x=workgroup_count_x; perfx_records[i].y=workgroup_count_y; perfx_records[i].z=workgroup_count_z;', 'perfx_records[i].x=((volatile const iree_hal_executable_dispatch_state_v0_t*)dispatch_state)->workgroup_count_x; perfx_records[i].y=((volatile const iree_hal_executable_dispatch_state_v0_t*)dispatch_state)->workgroup_count_y; perfx_records[i].z=((volatile const iree_hal_executable_dispatch_state_v0_t*)dispatch_state)->workgroup_count_z;');p.write_text(s)
for name in ['runner.c','embed.S']:
 s=(S/'smolvla'/name).read_text().replace(str(S/'smolvla'),str(D))
 s=s.replace('if (errors[0] || errors[1])','if (errors[0] || errors[1] || bits[0])')
 (D/name).write_text(s)
for p in (S/'smolvla').glob('payload-*'):
 if p.name=='payload-model.vmfb':continue
 shutil.copy2(p,D/p.name)
# VMFB installed only after successful compiler completion.
(D/'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.26)
project(smB C CXX ASM)
include(CheckCSourceCompiles)
option(PERFX_TRACE "Trace" OFF)
if(PERFX_TRACE)
add_compile_definitions(PERFX_TRACE=1)
endif()
add_subdirectory(iree)
add_executable(smolvla.elf runner.c embed.S)
target_link_libraries(smolvla.elf PRIVATE iree::base iree::hal iree::hal::drivers::local_sync::sync_driver iree::hal::local iree::hal::local::loaders::embedded_elf_loader iree::modules::hal iree::vm iree::vm::bytecode::module m "-Wl,--defsym=__merlin_heap_size=1073741824" "-Wl,--defsym=__merlin_stack_size_min=134217728")
''')
s=(S/'build.sh').read_text().replace(str(S),str(D)).replace('32-47','24-47').replace('-j16','-j24').replace('resnet.elf tinyllama.elf smolvla.elf','smolvla.elf').replace('$R/toolchain/riscv_firesim.toolchain.cmake',str(S/'toolchain/riscv_firesim.toolchain.cmake'))
(D/'build.sh').write_text(s)
