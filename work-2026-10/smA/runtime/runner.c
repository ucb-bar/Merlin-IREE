// Bare-metal IREE runner for the canonical-source INT8 QDQ ResNet-50 VMFB.
// The VMFB, canonical f32 input, and ONNX Runtime QDQ golden are embedded.

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "iree/async/util/proactor_pool.h"
#include "iree/base/api.h"
#include "iree/base/threading/thread.h"
#include "iree/hal/api.h"
#include "iree/hal/device.h"
#include "iree/hal/device_group.h"
#include "iree/hal/drivers/local_sync/sync_device.h"
#include "iree/hal/local/executable_loader.h"
#include "iree/hal/local/loaders/embedded_elf_loader.h"
#include "iree/modules/hal/module.h"
#include "iree/vm/api.h"
#include "iree/vm/bytecode/module.h"

extern const uint8_t _binary_resnet50_gemmini_embedded_vmfb_start[];
extern const uint8_t _binary_resnet50_gemmini_embedded_vmfb_end[];
extern const uint8_t _binary_resnet50_input_f32_start[];
extern const uint8_t _binary_resnet50_input_f32_end[];
extern const uint8_t _binary_resnet50_golden_f32_start[];
extern const uint8_t _binary_resnet50_golden_f32_end[];

static iree_status_t create_device(iree_allocator_t host_allocator,
                                   iree_hal_device_t** out_device) {
  iree_hal_sync_device_params_t params;
  iree_hal_sync_device_params_initialize(&params);
  iree_hal_executable_loader_t* loader = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_embedded_elf_loader_create(
      NULL, host_allocator, &loader));
  iree_string_view_t identifier = iree_make_cstring_view("local-sync");
  iree_hal_allocator_t* device_allocator = NULL;
  iree_status_t status = iree_hal_allocator_create_heap(
      identifier, host_allocator, host_allocator, &device_allocator);
  iree_async_proactor_pool_t* proactor_pool = NULL;
  if (iree_status_is_ok(status)) {
    iree_async_proactor_pool_options_t options =
        iree_async_proactor_pool_options_default();
    memset(&options.runner, 0, sizeof(options.runner));
    status = iree_async_proactor_pool_create(1, NULL, options, host_allocator,
                                             &proactor_pool);
  }
  iree_hal_device_create_params_t create_params =
      iree_hal_device_create_params_default();
  create_params.proactor_pool = proactor_pool;
  if (iree_status_is_ok(status)) {
    status = iree_hal_sync_device_create(
        identifier, &params, &create_params, 1, &loader, device_allocator,
        host_allocator, out_device);
  }
  iree_async_proactor_pool_release(proactor_pool);
  iree_hal_allocator_release(device_allocator);
  iree_hal_executable_loader_release(loader);
  return status;
}

#if defined(IREE_PLATFORM_GENERIC)
iree_status_t iree_thread_create(iree_thread_entry_t entry, void* entry_arg,
                                 iree_thread_create_params_t params,
                                 iree_allocator_t allocator,
                                 iree_thread_t** out_thread) {
  (void)entry;
  (void)entry_arg;
  (void)params;
  (void)allocator;
  *out_thread = NULL;
  return iree_ok_status();
}
void iree_thread_release(iree_thread_t* thread) { (void)thread; }
void iree_thread_yield(void) {}
void iree_thread_join(iree_thread_t* thread) { (void)thread; }
#endif

static uint64_t read_cycles(void) {
  uint64_t cycles;
  asm volatile("rdcycle %0" : "=r"(cycles));
  return cycles;
}

extern void perfx_trace_reset(uint64_t);
extern void perfx_trace_dump(void);
static void emit_words(const uint32_t* words,int count) {
 static char buffer[65536]; const char* hex="0123456789abcdef"; size_t used=0;
 for(int j=0;j<count;++j) {
  uint32_t w=words[j];
  for(int shift=28;shift>=0;shift-=4) buffer[used++]=hex[(w>>shift)&15];
  if(j%32==31)buffer[used++]='\n';
  if(used>sizeof(buffer)-16){fwrite(buffer,1,used,stdout);used=0;}
 }
 if(used)fwrite(buffer,1,used,stdout);putchar('\n');
}

iree_status_t Run(void) {
  iree_vm_instance_t* instance = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_instance_create(
      IREE_VM_TYPE_CAPACITY_DEFAULT, iree_allocator_system(), &instance));
  IREE_RETURN_IF_ERROR(iree_hal_module_register_all_types(instance));
  iree_hal_device_t* device = NULL;
  IREE_RETURN_IF_ERROR(create_device(iree_allocator_system(), &device));
  iree_hal_device_group_t* group = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_device_group_create_from_device(
      device, iree_allocator_system(), &group));
  iree_vm_module_t* hal_module = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_module_create(
      instance, iree_hal_module_device_policy_default(), group,
      IREE_HAL_MODULE_FLAG_SYNCHRONOUS,
      iree_hal_module_debug_sink_stdio(stderr), iree_allocator_system(),
      &hal_module));
  iree_hal_device_group_release(group);

  iree_const_byte_span_t vmfb = iree_make_const_byte_span(
      _binary_resnet50_gemmini_embedded_vmfb_start,
      (size_t)(_binary_resnet50_gemmini_embedded_vmfb_end -
               _binary_resnet50_gemmini_embedded_vmfb_start));
  iree_vm_module_t* bytecode_module = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_bytecode_module_create(
      instance, IREE_VM_BYTECODE_MODULE_FLAG_NONE, vmfb,
      iree_allocator_null(), iree_allocator_system(), &bytecode_module));
  iree_vm_context_t* context = NULL;
  iree_vm_module_t* modules[] = {hal_module, bytecode_module};
  IREE_RETURN_IF_ERROR(iree_vm_context_create_with_modules(
      instance, IREE_VM_CONTEXT_FLAG_NONE, 2, modules,
      iree_allocator_system(), &context));
  iree_vm_module_release(hal_module);
  iree_vm_module_release(bytecode_module);

  iree_vm_function_t main_function;
  IREE_RETURN_IF_ERROR(iree_vm_context_resolve_function(
      context, iree_make_cstring_view("module.main"), &main_function));
  iree_hal_buffer_params_t params = {
      .type = IREE_HAL_MEMORY_TYPE_DEVICE_LOCAL,
      .usage = IREE_HAL_BUFFER_USAGE_DEFAULT};
iree_vm_list_t *inputs=NULL,*outputs=NULL;
 IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 16, iree_allocator_system(), &inputs));
 IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 16, iree_allocator_system(), &outputs));
{extern const uint8_t inp0_start[],inp0_end[]; iree_hal_dim_t sh[]={1}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),1,sh,IREE_HAL_ELEMENT_TYPE_BOOL_8,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp0_start,inp0_end-inp0_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp1_start[],inp1_end[]; iree_hal_dim_t sh[]={1}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),1,sh,IREE_HAL_ELEMENT_TYPE_BOOL_8,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp1_start,inp1_end-inp1_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp2_start[],inp2_end[]; iree_hal_dim_t sh[]={1}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),1,sh,IREE_HAL_ELEMENT_TYPE_BOOL_8,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp2_start,inp2_end-inp2_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp3_start[],inp3_end[]; iree_hal_dim_t sh[]={1,48}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),2,sh,IREE_HAL_ELEMENT_TYPE_BOOL_8,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp3_start,inp3_end-inp3_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp4_start[],inp4_end[]; iree_hal_dim_t sh[]={1,241,960}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp4_start,inp4_end-inp4_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp5_start[],inp5_end[]; iree_hal_dim_t sh[]={1,241,320}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp5_start,inp5_end-inp5_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp6_start[],inp6_end[]; iree_hal_dim_t sh[]={1,241,320}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp6_start,inp6_end-inp6_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp7_start[],inp7_end[]; iree_hal_dim_t sh[]={1,50,960}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp7_start,inp7_end-inp7_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp8_start[],inp8_end[]; iree_hal_dim_t sh[]={1,50,320}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp8_start,inp8_end-inp8_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
{extern const uint8_t inp9_start[],inp9_end[]; iree_hal_dim_t sh[]={1,50,320}; iree_hal_buffer_view_t* view=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),3,sh,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(inp9_start,inp9_end-inp9_start),&view));
 iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(view); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
  fprintf(stdout,
          "RESNET50_INT8 input=1x3x224x224 dim=16 bank_rows=2048 "
          "acc_rows=512 vmfb=%lu bytes\n",
          (unsigned long)vmfb.data_length);
  fflush(stdout);
  // One complete invocation: no warm-up is included in the cycle count.
  uint64_t start = read_cycles();
  perfx_trace_reset(start);
  IREE_RETURN_IF_ERROR(iree_vm_invoke(context, main_function,
                                      IREE_VM_INVOCATION_FLAG_NONE, NULL,
                                      inputs, outputs,
                                      iree_allocator_system()));
  uint64_t cycles = read_cycles() - start;
  perfx_trace_dump();

int errors=0;
{iree_hal_buffer_view_t* view=iree_vm_list_get_buffer_view_assign(outputs,0); uint32_t* result=malloc(231360*4);
 IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(device,iree_hal_buffer_view_buffer(view),0,result,231360*4,IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,iree_infinite_timeout()));
 printf("OUTPUT 0 231360\n");emit_words(result,231360);free(result);}
{iree_hal_buffer_view_t* view=iree_vm_list_get_buffer_view_assign(outputs,1); uint32_t* result=malloc(231360*4);
 IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(device,iree_hal_buffer_view_buffer(view),0,result,231360*4,IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,iree_infinite_timeout()));
 printf("OUTPUT 1 231360\n");emit_words(result,231360);free(result);}
printf("CYCLES %lu\n",(unsigned long)cycles);
  iree_vm_list_release(inputs);
  iree_vm_list_release(outputs);
  iree_vm_context_release(context);
  iree_hal_device_release(device);
  iree_vm_instance_release(instance);
  if (errors) {
    return iree_make_status(IREE_STATUS_DATA_LOSS,
                            "Gemmini output differs from INT8 QDQ golden");
  }
  if (0) {
    return iree_make_status(IREE_STATUS_DATA_LOSS,
                            "canonical top-1 class changed");
  }
  return iree_ok_status();
}

int main(void) {
  setvbuf(stdout,NULL,_IOFBF,65536);
  iree_status_t status = Run();
  if (!iree_status_is_ok(status)) {
    fprintf(stderr, "RESNET50_INT8_FAILED: ");
    iree_status_fprint(stderr, status);
    fprintf(stderr, "\n");
    iree_status_free(status);
    return 1;
  }
  fprintf(stdout, "RESNET50_INT8_PASS\n");
  return 0;
}
