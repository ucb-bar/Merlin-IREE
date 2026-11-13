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

extern const uint8_t input0_start[], input0_end[];
extern const uint8_t input1_start[], input1_end[];
extern const uint8_t input2_start[], input2_end[];
extern const uint8_t input3_start[], input3_end[];
extern const uint8_t input4_start[], input4_end[];
extern const uint8_t input5_start[], input5_end[];
extern const uint8_t input6_start[], input6_end[];
extern const uint8_t input7_start[], input7_end[];
extern const uint8_t input8_start[], input8_end[];
extern const uint8_t input9_start[], input9_end[];
extern const uint8_t input10_start[], input10_end[];
extern const uint8_t pytorch_start[], pytorch_end[];

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

extern const uint8_t input11_start[],input11_end[];
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
  iree_vm_list_t* inputs = NULL;
  iree_vm_list_t* outputs = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 11, iree_allocator_system(), &inputs));
  IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), 1, iree_allocator_system(), &outputs));
 {iree_hal_dim_t shape[] = {1,12,4,64};iree_hal_buffer_view_t* v=NULL;IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),4,shape,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(input0_start,input0_end-input0_start),&v));iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(v);IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
 {iree_hal_dim_t shape[] = {1,12,1024,64};iree_hal_buffer_view_t* v=NULL;IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),4,shape,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(input1_start,input1_end-input1_start),&v));iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(v);IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
 {iree_hal_dim_t shape[] = {1,12,1024,64};iree_hal_buffer_view_t* v=NULL;IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),4,shape,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(input2_start,input2_end-input2_start),&v));iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(v);IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
 {iree_hal_dim_t shape[] = {1,1,4,1024};iree_hal_buffer_view_t* v=NULL;IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device,iree_hal_device_allocator(device),4,shape,IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,params,iree_make_const_byte_span(input3_start,input3_end-input3_start),&v));iree_vm_ref_t ref=iree_hal_buffer_view_move_ref(v);IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs,&ref));}
  printf("PROBE_START\n"); fflush(stdout);
  uint64_t start=read_cycles();
  IREE_RETURN_IF_ERROR(iree_vm_invoke(context, main_function, IREE_VM_INVOCATION_FLAG_NONE, NULL, inputs, outputs, iree_allocator_system()));
  printf("PROBE_CYCLES %lu\n",(unsigned long)(read_cycles()-start));
  const float* golden=(const float*)_binary_resnet50_golden_f32_start;
  size_t offset=0; int failures=0;
  for(size_t o=0;o<iree_vm_list_size(outputs);o++) {
    iree_hal_buffer_view_t* v=iree_vm_list_get_buffer_view_assign(outputs,o);
    size_t bytes=iree_hal_buffer_view_byte_length(v),n=bytes/4;
    float* data=malloc(bytes);
    IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(device,iree_hal_buffer_view_buffer(v),0,data,bytes,IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,iree_infinite_timeout()));
    size_t bits=0,bad=0; double maxabs=0,ss=0;
    for(size_t i=0;i<n;i++) { float a=data[i],b=golden[offset+i]; uint32_t x,y; memcpy(&x,&a,4);memcpy(&y,&b,4);bits+=x!=y;double d=fabs((double)a-b);if(d>maxabs)maxabs=d;ss+=d*d;if(!isfinite(a)||!isfinite(b)||d>.001+.001*fabs((double)b)){ if(bad<8)printf("BAD %lu %lu %08x %08x\n",(unsigned long)o,(unsigned long)i,x,y);bad++;} }
    printf("OUTPUT %lu count=%lu bits=%lu bad=%lu max_abs=%.12g rmse=%.12g\n",(unsigned long)o,(unsigned long)n,(unsigned long)bits,(unsigned long)bad,maxabs,sqrt(ss/n)); fflush(stdout);
    if(bits){printf("RAW %lu ",(unsigned long)o);for(size_t i=0;i<n;i++){uint32_t x;memcpy(&x,&data[i],4);printf("%08x",x);}printf("\n");}
    failures+=bad!=0;offset+=n;free(data);
  }
  printf("PROBE_DONE failures=%d\n",failures);fflush(stdout);
  return iree_ok_status();
}
int main(void){iree_status_t s=Run();if(!iree_status_is_ok(s)){iree_status_fprint(stderr,s);return 1;}return 0;}
