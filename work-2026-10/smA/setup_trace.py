from pathlib import Path
import shutil
R=Path('/home/loren/work/runs/smA');D=R/'runtime'
shutil.copyfile(R.parent/'perfX/iree/runtime/src/iree/hal/local/local_executable.c',D/'local_executable.c')
p=D/'iree_runtime_plugin.cmake';s=p.read_text();s=s.replace('SRCS ', 'SRCS "${CMAKE_CURRENT_LIST_DIR}/local_executable.c" ')
s+='\nset_source_files_properties("${CMAKE_CURRENT_LIST_DIR}/local_executable.c" PROPERTIES COMPILE_DEFINITIONS "PERFX_TRACE=1")\n';p.write_text(s)
p=R/'runner-template.c';s=p.read_text().replace('iree_status_t Run(void) {','extern void perfx_trace_reset(uint64_t);\nextern void perfx_trace_dump(void);\niree_status_t Run(void) {')
# Reset trace immediately before invoke, dump before output.
s=s.replace('uint64_t start = read_cycles();','uint64_t start = read_cycles();\n  perfx_trace_reset(start);')
# inspect actual timer syntax below
p.write_text(s)
