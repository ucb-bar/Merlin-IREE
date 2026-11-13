// Bare-metal IREE kernel-suite runner (F2 cycle campaign 2026-10-28).
// For every case in cases.h: deterministic inputs are generated on the target, uploaded once
// (resident), then iree_vm_invoke is timed with rdcycle/rdinstret once cold and NWARM times warm.
// Output lines:  CASE <name> <idx> <cycles> <instret>   (idx 0 = cold)
//                CHECK <name> <0 = bitwise match with the NumPy checksum | 1 = mismatch> <checksums...>
// With PERFX_TRACE the runtime also prints per-dispatch intervals for every invoke (TRACE_BEGIN/END).
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

#ifndef NWARM
#define NWARM 5
#endif

#if defined(PERFX_TRACE) && PERFX_TRACE
void perfx_trace_reset(uint64_t origin);
void perfx_trace_dump(void);
#endif

typedef struct { uint64_t seed; int rank; const iree_hal_dim_t* shape; iree_hal_element_type_t et; } kin_t;
typedef struct {
  const char* name; const char* fn; int nin; kin_t in[3]; int nout; int is_f32;
  uint64_t expect[2]; int has_expect;
} kcase_t;
#include "cases.h"

extern const uint8_t kernels_vmfb_start[];
extern const uint8_t kernels_vmfb_end[];

static iree_status_t create_device(iree_allocator_t host_allocator, iree_hal_device_t** out_device) {
  iree_hal_sync_device_params_t params;
  iree_hal_sync_device_params_initialize(&params);
  iree_hal_executable_loader_t* loader = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_embedded_elf_loader_create(NULL, host_allocator, &loader));
  iree_string_view_t identifier = iree_make_cstring_view("local-sync");
  iree_hal_allocator_t* device_allocator = NULL;
  iree_status_t status = iree_hal_allocator_create_heap(identifier, host_allocator, host_allocator, &device_allocator);
  iree_async_proactor_pool_t* proactor_pool = NULL;
  if (iree_status_is_ok(status)) {
    iree_async_proactor_pool_options_t options = iree_async_proactor_pool_options_default();
    memset(&options.runner, 0, sizeof(options.runner));
    status = iree_async_proactor_pool_create(1, NULL, options, host_allocator, &proactor_pool);
  }
  iree_hal_device_create_params_t create_params = iree_hal_device_create_params_default();
  create_params.proactor_pool = proactor_pool;
  if (iree_status_is_ok(status)) {
    status = iree_hal_sync_device_create(identifier, &params, &create_params, 1, &loader, device_allocator,
                                         host_allocator, out_device);
  }
  iree_async_proactor_pool_release(proactor_pool);
  iree_hal_allocator_release(device_allocator);
  iree_hal_executable_loader_release(loader);
  return status;
}

#if defined(IREE_PLATFORM_GENERIC)
iree_status_t iree_thread_create(iree_thread_entry_t entry, void* entry_arg, iree_thread_create_params_t params,
                                 iree_allocator_t allocator, iree_thread_t** out_thread) {
  (void)entry; (void)entry_arg; (void)params; (void)allocator; *out_thread = NULL; return iree_ok_status();
}
void iree_thread_release(iree_thread_t* thread) { (void)thread; }
void iree_thread_yield(void) {}
void iree_thread_join(iree_thread_t* thread) { (void)thread; }
#endif

static inline uint64_t rd_cycle(void) { uint64_t c; __asm__ volatile("rdcycle %0" : "=r"(c)::"memory"); return c; }
static inline uint64_t rd_instret(void) { uint64_t c; __asm__ volatile("rdinstret %0" : "=r"(c)::"memory"); return c; }

static inline int64_t gen_val(uint64_t seed, uint64_t i) {
  uint64_t z = seed * 0x100000001B3ull + i + 0x9E3779B97F4A7C15ull;
  z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ull;
  z = (z ^ (z >> 27)) * 0x94D049BB133111EBull;
  z = z ^ (z >> 31);
  return (int64_t)((z >> 33) % 31) - 15;
}

static iree_status_t make_input(iree_hal_device_t* device, const kin_t* in, iree_hal_buffer_view_t** out_view) {
  uint64_t n = 1;
  for (int d = 0; d < in->rank; ++d) n *= in->shape[d];
  size_t esz = in->et == IREE_HAL_ELEMENT_TYPE_FLOAT_32 ? 4 : 1;
  void* host = malloc(n * esz);
  if (!host) return iree_make_status(IREE_STATUS_RESOURCE_EXHAUSTED, "input malloc %lu", (unsigned long)(n * esz));
  if (esz == 4) { float* p = (float*)host; for (uint64_t i = 0; i < n; ++i) p[i] = (float)gen_val(in->seed, i); }
  else { int8_t* p = (int8_t*)host; for (uint64_t i = 0; i < n; ++i) p[i] = (int8_t)gen_val(in->seed, i); }
  iree_hal_buffer_params_t params = {.type = IREE_HAL_MEMORY_TYPE_DEVICE_LOCAL, .usage = IREE_HAL_BUFFER_USAGE_DEFAULT};
  iree_status_t st = iree_hal_buffer_view_allocate_buffer_copy(
      device, iree_hal_device_allocator(device), in->rank, in->shape, in->et, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,
      params, iree_make_const_byte_span(host, n * esz), out_view);
  free(host);
  return st;
}

static iree_status_t checksum_view(iree_hal_device_t* device, iree_hal_buffer_view_t* v, int is_f32, uint64_t* out) {
  iree_device_size_t bytes = iree_hal_buffer_view_byte_length(v);
  void* h = malloc((size_t)bytes);
  if (!h) return iree_make_status(IREE_STATUS_RESOURCE_EXHAUSTED, "output malloc");
  IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(device, iree_hal_buffer_view_buffer(v), 0, h, bytes,
                                                    IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT, iree_infinite_timeout()));
  uint64_t n = bytes / 4, s = 0;
  if (is_f32) { const uint32_t* p = (const uint32_t*)h; for (uint64_t i = 0; i < n; ++i) s += (uint64_t)p[i] * ((i % 65521) + 1); }
  else { const int32_t* p = (const int32_t*)h; for (uint64_t i = 0; i < n; ++i) s += (uint64_t)(int64_t)p[i] * ((i % 65521) + 1); }
  free(h);
  *out = s;
  return iree_ok_status();
}

static iree_status_t run_case(iree_vm_context_t* context, iree_hal_device_t* device, const kcase_t* c, int* fails) {
  iree_vm_function_t fn;
  IREE_RETURN_IF_ERROR(iree_vm_context_resolve_function(context, iree_make_cstring_view(c->fn), &fn));
  iree_vm_list_t* inputs = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), c->nin, iree_allocator_system(), &inputs));
  for (int j = 0; j < c->nin; ++j) {
    iree_hal_buffer_view_t* v = NULL;
    IREE_RETURN_IF_ERROR(make_input(device, &c->in[j], &v));
    iree_vm_ref_t r = iree_hal_buffer_view_move_ref(v);
    IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(inputs, &r));
  }
  printf("CASE_BEGIN %s\n", c->name); fflush(stdout);
  iree_vm_list_t* outputs = NULL;
  for (int it = 0; it <= NWARM; ++it) {
    if (outputs) { iree_vm_list_release(outputs); outputs = NULL; }
    IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(), c->nout, iree_allocator_system(), &outputs));
#if defined(PERFX_TRACE) && PERFX_TRACE
    uint64_t o = rd_cycle(); perfx_trace_reset(o);
#endif
    uint64_t i0 = rd_instret(), c0 = rd_cycle();
    IREE_RETURN_IF_ERROR(iree_vm_invoke(context, fn, IREE_VM_INVOCATION_FLAG_NONE, NULL, inputs, outputs, iree_allocator_system()));
    uint64_t c1 = rd_cycle(), i1 = rd_instret();
    printf("CASE %s %d %lu %lu\n", c->name, it, (unsigned long)(c1 - c0), (unsigned long)(i1 - i0));
#if defined(PERFX_TRACE) && PERFX_TRACE
    printf("TRACE_BEGIN %s %d\n", c->name, it); perfx_trace_dump();
#endif
    fflush(stdout);
  }
  int bad = 0;
  printf("CHECK %s", c->name);
  uint64_t got[2] = {0, 0};
  for (int k = 0; k < c->nout; ++k) {
    iree_hal_buffer_view_t* v = iree_vm_list_get_buffer_view_assign(outputs, k);
    IREE_RETURN_IF_ERROR(checksum_view(device, v, c->is_f32, &got[k]));
    if (c->has_expect && got[k] != c->expect[k]) bad = 1;
  }
  printf(" %d", c->has_expect ? bad : -1);
  for (int k = 0; k < c->nout; ++k) printf(" %lu", (unsigned long)got[k]);
  printf("\n"); fflush(stdout);
  if (bad) ++*fails;
  iree_vm_list_release(outputs);
  iree_vm_list_release(inputs);
  return iree_ok_status();
}

static iree_status_t Run(int* fails) {
  iree_vm_instance_t* instance = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_instance_create(IREE_VM_TYPE_CAPACITY_DEFAULT, iree_allocator_system(), &instance));
  IREE_RETURN_IF_ERROR(iree_hal_module_register_all_types(instance));
  iree_hal_device_t* device = NULL;
  IREE_RETURN_IF_ERROR(create_device(iree_allocator_system(), &device));
  iree_hal_device_group_t* group = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_device_group_create_from_device(device, iree_allocator_system(), &group));
  iree_vm_module_t* hal_module = NULL;
  IREE_RETURN_IF_ERROR(iree_hal_module_create(instance, iree_hal_module_device_policy_default(), group,
                                              IREE_HAL_MODULE_FLAG_SYNCHRONOUS, iree_hal_module_debug_sink_stdio(stderr),
                                              iree_allocator_system(), &hal_module));
  iree_hal_device_group_release(group);
  iree_const_byte_span_t vmfb = iree_make_const_byte_span(kernels_vmfb_start, (size_t)(kernels_vmfb_end - kernels_vmfb_start));
  iree_vm_module_t* bytecode_module = NULL;
  IREE_RETURN_IF_ERROR(iree_vm_bytecode_module_create(instance, IREE_VM_BYTECODE_MODULE_FLAG_NONE, vmfb,
                                                      iree_allocator_null(), iree_allocator_system(), &bytecode_module));
  iree_vm_context_t* context = NULL;
  iree_vm_module_t* modules[] = {hal_module, bytecode_module};
  IREE_RETURN_IF_ERROR(iree_vm_context_create_with_modules(instance, IREE_VM_CONTEXT_FLAG_NONE, 2, modules,
                                                           iree_allocator_system(), &context));
  iree_vm_module_release(hal_module);
  iree_vm_module_release(bytecode_module);
  printf("KPROF_BEGIN cases=%d warm=%d vmfb=%lu\n", NCASES, NWARM, (unsigned long)vmfb.data_length); fflush(stdout);
  for (int k = 0; k < NCASES; ++k) {
    iree_status_t st = run_case(context, device, &CASES[k], fails);
    if (!iree_status_is_ok(st)) {
      printf("CASE_ERROR %s ", CASES[k].name); fflush(stdout);
      iree_status_fprint(stdout, st); printf("\n"); fflush(stdout);
      iree_status_free(st); ++*fails;
    }
  }
  iree_vm_context_release(context);
  iree_hal_device_release(device);
  iree_vm_instance_release(instance);
  return iree_ok_status();
}

int main(void) {
  int fails = 0;
  iree_status_t status = Run(&fails);
  if (!iree_status_is_ok(status)) {
    printf("KPROF_FAILED: "); iree_status_fprint(stdout, status); printf("\n");
    iree_status_free(status); return 1;
  }
  printf("KPROF_DONE %d\n", fails); fflush(stdout);
  return fails ? 2 : 0;
}
