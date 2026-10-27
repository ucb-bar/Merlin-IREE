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

iree_status_t Run(void) {
  const size_t golden_bytes = 1600 * sizeof(float);
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
  {
    iree_hal_dim_t shape[] = {1, 3, 512, 512};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 4, shape, IREE_HAL_ELEMENT_TYPE_BFLOAT_16, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input0_start, input0_end-input0_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 3, 512, 512};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 4, shape, IREE_HAL_ELEMENT_TYPE_BFLOAT_16, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input1_start, input1_end-input1_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 3, 512, 512};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 4, shape, IREE_HAL_ELEMENT_TYPE_BFLOAT_16, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input2_start, input2_end-input2_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 1, shape, IREE_HAL_ELEMENT_TYPE_BOOL_8, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input3_start, input3_end-input3_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 1, shape, IREE_HAL_ELEMENT_TYPE_BOOL_8, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input4_start, input4_end-input4_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 1, shape, IREE_HAL_ELEMENT_TYPE_BOOL_8, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input5_start, input5_end-input5_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 48};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 2, shape, IREE_HAL_ELEMENT_TYPE_SINT_64, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input6_start, input6_end-input6_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 48};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 2, shape, IREE_HAL_ELEMENT_TYPE_BOOL_8, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input7_start, input7_end-input7_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 32};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 2, shape, IREE_HAL_ELEMENT_TYPE_FLOAT_32, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input8_start, input8_end-input8_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1, 50, 32};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 3, shape, IREE_HAL_ELEMENT_TYPE_FLOAT_32, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input9_start, input9_end-input9_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  {
    iree_hal_dim_t shape[] = {1};
    iree_hal_buffer_view_t* view = NULL;
    IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(device, iree_hal_device_allocator(device), 1, shape, IREE_HAL_ELEMENT_TYPE_FLOAT_32, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, params, iree_make_const_byte_span(input10_start, input10_end-input10_start), &view));
    iree_vm_ref_t ref = iree_hal_buffer_view_move_ref(view);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &ref));
  }
  fprintf(stdout,
          "SMOLVLA_INT8 inputs=11 outputs=1600 dim=16 bank_rows=2048 "
          "acc_rows=512 vmfb=%lu bytes\n",
          (unsigned long)vmfb.data_length);
  fflush(stdout);
  // One complete invocation: no warm-up is included in the cycle count.
  #if PERFX_TRACE
  extern void perfx_trace_reset(uint64_t);
  extern void perfx_trace_dump(void);
#endif
  uint64_t start = read_cycles();
#if PERFX_TRACE
  perfx_trace_reset(start);
#endif
  IREE_RETURN_IF_ERROR(iree_vm_invoke(context, main_function,
                                      IREE_VM_INVOCATION_FLAG_NONE, NULL,
                                      inputs, outputs,
                                      iree_allocator_system()));
  uint64_t cycles = read_cycles() - start;
#if PERFX_TRACE
  perfx_trace_dump();
#endif

  iree_hal_buffer_view_t* output_view =
      iree_vm_list_get_buffer_view_assign(outputs, 0);
  float* result = (float*)malloc(golden_bytes);
  if (!result) {
    return iree_make_status(IREE_STATUS_RESOURCE_EXHAUSTED,
                            "output allocation failed");
  }
  IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(
      device, iree_hal_buffer_view_buffer(output_view), 0, result,
      golden_bytes, IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,
      iree_infinite_timeout()));
  const float* golden = (const float*)_binary_resnet50_golden_f32_start;
  const float* pytorch = (const float*)pytorch_start;
  double max_abs[2]={0,0}, sumsq[2]={0,0};
  int errors[2]={0,0}, bits[2]={0,0}, finite=0;
  for (int i=0;i<1600;++i) {
    uint32_t raw; memcpy(&raw,&result[i],4);
    printf("OUTPUT %d %08x\n",i,(unsigned)raw);
    finite += isfinite(result[i]) ? 1 : 0;
    for (int j=0;j<2;++j) {
      float ref=j?pytorch[i]:golden[i]; uint32_t rb; memcpy(&rb,&ref,4);
      double delta=fabs((double)result[i]-(double)ref);
      if(delta>max_abs[j])max_abs[j]=delta;
      sumsq[j]+=delta*delta;
      if(!isfinite(result[i]) || !isfinite(ref) || delta>0.001+0.001*fabs((double)ref))++errors[j];
      if(raw!=rb)++bits[j];
    }
  }
  printf("SMOLVLA_RESULT cycles=%lu finite=%d total=1600\n",(unsigned long)cycles,finite);
  for(int j=0;j<2;++j)printf("COMPARE reference=%s errors=%d unequal_bits=%d max_abs=%.17g rmse=%.17g atol=0.001 rtol=0.001\n",j?"pytorch":"cpu",errors[j],bits[j],max_abs[j],sqrt(sumsq[j]/1600.0));
  fflush(stdout);
  free(result);
  iree_vm_list_release(inputs);
  iree_vm_list_release(outputs);
  iree_vm_context_release(context);
  iree_hal_device_release(device);
  iree_vm_instance_release(instance);
  if (errors[0] || errors[1] || bits[0]) return iree_make_status(IREE_STATUS_DATA_LOSS,"unchanged full-output gate failed");
  return iree_ok_status();
}

static char perfx_stdout_buffer[16u * 1024u * 1024u];

int main(void) {
  if (setvbuf(stdout, perfx_stdout_buffer, _IOFBF, sizeof(perfx_stdout_buffer))) return 2;
  iree_status_t status = Run();
  if (!iree_status_is_ok(status)) {
    fprintf(stderr, "SMOLVLA_INT8_FAILED: ");
    iree_status_fprint(stderr, status);
    fprintf(stderr, "\n");
    iree_status_free(status);
    return 1;
  }
  fprintf(stdout, "SMOLVLA_INT8_PASS\n");
  fflush(stdout);
  return 0;
}
// This toolchain's newlib strncmp performs unaligned ld on arbitrary strings.
// Byte loads preserve standard strncmp semantics on scalar Rocket/Spike.
int strncmp(const char* a, const char* b, size_t n) {
  const volatile unsigned char* p=(const volatile unsigned char*)a;
  const volatile unsigned char* q=(const volatile unsigned char*)b;
  for(size_t i=0;i<n;++i){unsigned char x=p[i],y=q[i];if(x!=y)return (int)x-(int)y;if(!x)return 0;}
  return 0;
}
int memcmp(const void* a,const void* b,size_t n){const volatile unsigned char*p=a,*q=b;for(size_t i=0;i<n;++i){unsigned char x=p[i],y=q[i];if(x!=y)return(int)x-(int)y;}return 0;}
int strcmp(const char*a,const char*b){const volatile unsigned char*p=(const volatile unsigned char*)a,*q=(const volatile unsigned char*)b;for(;;){unsigned char x=*p++,y=*q++;if(x!=y)return(int)x-(int)y;if(!x)return 0;}}
size_t strlen(const char*a){const volatile unsigned char*p=(const volatile unsigned char*)a;size_t n=0;while(p[n])++n;return n;}
void* memchr(const void*a,int c,size_t n){const volatile unsigned char*p=a;for(size_t i=0;i<n;++i)if(p[i]==(unsigned char)c)return(void*)(p+i);return NULL;}
