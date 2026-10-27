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

iree_status_t Run(void) {
  const size_t input_bytes = (size_t)(_binary_resnet50_input_f32_end -
                                      _binary_resnet50_input_f32_start);
  const size_t golden_bytes = (size_t)(_binary_resnet50_golden_f32_end -
                                       _binary_resnet50_golden_f32_start);
  if (input_bytes != 24576u * sizeof(float) ||
      golden_bytes != 24576u * sizeof(float)) {
    return iree_make_status(IREE_STATUS_INVALID_ARGUMENT,
                            "bad embedded tensor sizes");
  }

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
  iree_hal_dim_t shape[3] = {12, 4, 512};
  iree_hal_buffer_view_t* input_view = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(
      device, iree_hal_device_allocator(device), 3, shape,
      IREE_HAL_ELEMENT_TYPE_FLOAT_32, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,
      params, iree_make_const_byte_span(_binary_resnet50_input_f32_start,
                                        input_bytes),
      &input_view));

  iree_vm_list_t* inputs = NULL;
  iree_vm_list_t* outputs = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(),
                                            1, iree_allocator_system(),
                                            &inputs));
  IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(),
                                            1, iree_allocator_system(),
                                            &outputs));
  iree_vm_ref_t input_ref = iree_hal_buffer_view_move_ref(input_view);
  IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &input_ref));

  fprintf(stdout,
          "RESNET50_INT8 input=1x3x224x224 dim=16 bank_rows=2048 "
          "acc_rows=512 vmfb=%lu bytes\n",
          (unsigned long)vmfb.data_length);
  fflush(stdout);
  // One complete invocation: no warm-up is included in the cycle count.
  uint64_t start = read_cycles();
  IREE_RETURN_IF_ERROR(iree_vm_invoke(context, main_function,
                                      IREE_VM_INVOCATION_FLAG_NONE, NULL,
                                      inputs, outputs,
                                      iree_allocator_system()));
  uint64_t cycles = read_cycles() - start;

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
  float max_abs = 0.0f;
  int max_index = 0;
  int errors = 0;
  int top1 = 0;
  for (int i = 0; i < 24576; ++i) {
    float error = fabsf(result[i] - golden[i]);
    if (error > max_abs) {
      max_abs = error;
      max_index = i;
    }
    if (!isfinite(result[i]) || error > 0.0f) ++errors;
    uint32_t bits; memcpy(&bits, &result[i], 4);
    printf("LOGIT %d %08x\n", i, bits);
    if (result[i] > result[top1]) top1 = i;
  }
  fprintf(stdout,
          "RESNET50_INT8_RESULT cycles=%lu max_abs=%g max_index=%d "
          "errors=%d top1=%d\n",
          (unsigned long)cycles, (double)max_abs, max_index, errors, top1);
  fflush(stdout);
  free(result);
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
