iree_cc_binary(NAME resnet SRCS "${CMAKE_CURRENT_LIST_DIR}/local_executable.c" "${CMAKE_CURRENT_LIST_DIR}/runner.c" "${CMAKE_CURRENT_LIST_DIR}/embed.S" DEPS iree::base iree::hal iree::hal::drivers::local_sync::sync_driver iree::hal::local iree::hal::local::loaders::embedded_elf_loader iree::modules::hal iree::vm iree::vm::bytecode::module)
get_property(allTargets DIRECTORY PROPERTY BUILDSYSTEM_TARGETS)
foreach(t IN LISTS allTargets)
 if(t MATCHES "resnet$")
 target_link_libraries(${t} PRIVATE "-Wl,--defsym=__merlin_heap_size=1073741824" "-Wl,--defsym=__merlin_stack_size_min=134217728")
 endif()
endforeach()

set_source_files_properties("${CMAKE_CURRENT_LIST_DIR}/local_executable.c" PROPERTIES COMPILE_DEFINITIONS "PERFX_TRACE=0")

add_compile_definitions(PERFX_TRACE=0)
