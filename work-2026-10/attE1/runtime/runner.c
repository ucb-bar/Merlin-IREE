#include <stdint.h>
#include <stdio.h>
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
extern const uint8_t _binary_resnet50_gemmini_embedded_vmfb_start[], _binary_resnet50_gemmini_embedded_vmfb_end[];
extern const uint8_t _binary_resnet50_input_f32_start[], _binary_resnet50_input_f32_end[];
static iree_status_t create_device(iree_allocator_t a, iree_hal_device_t** d) {
 iree_hal_sync_device_params_t p; iree_hal_sync_device_params_initialize(&p);
 iree_hal_executable_loader_t* l=NULL; IREE_RETURN_IF_ERROR(iree_hal_embedded_elf_loader_create(NULL,a,&l));
 iree_string_view_t id=iree_make_cstring_view("local-sync"); iree_hal_allocator_t* da=NULL;
 IREE_RETURN_IF_ERROR(iree_hal_allocator_create_heap(id,a,a,&da));
 iree_async_proactor_pool_t* pp=NULL; iree_async_proactor_pool_options_t o=iree_async_proactor_pool_options_default(); memset(&o.runner,0,sizeof(o.runner));
 IREE_RETURN_IF_ERROR(iree_async_proactor_pool_create(1,NULL,o,a,&pp));
 iree_hal_device_create_params_t cp=iree_hal_device_create_params_default(); cp.proactor_pool=pp;
 iree_status_t s=iree_hal_sync_device_create(id,&p,&cp,1,&l,da,a,d); iree_async_proactor_pool_release(pp); iree_hal_allocator_release(da); iree_hal_executable_loader_release(l); return s;
}
#if defined(IREE_PLATFORM_GENERIC)
iree_status_t iree_thread_create(iree_thread_entry_t e,void*x,iree_thread_create_params_t p,iree_allocator_t a,iree_thread_t**t){(void)e;(void)x;(void)p;(void)a;*t=NULL;return iree_ok_status();}
void iree_thread_release(iree_thread_t*t){(void)t;} void iree_thread_yield(void){} void iree_thread_join(iree_thread_t*t){(void)t;}
#endif
static uint64_t rdcycle(void){uint64_t x;asm volatile("rdcycle %0":"=r"(x));return x;}
iree_status_t Run(void) {
 iree_vm_instance_t* inst=NULL; IREE_RETURN_IF_ERROR(iree_vm_instance_create(IREE_VM_TYPE_CAPACITY_DEFAULT,iree_allocator_system(),&inst));
 IREE_RETURN_IF_ERROR(iree_hal_module_register_all_types(inst)); iree_hal_device_t* dev=NULL; IREE_RETURN_IF_ERROR(create_device(iree_allocator_system(),&dev));
 iree_hal_device_group_t* group=NULL; IREE_RETURN_IF_ERROR(iree_hal_device_group_create_from_device(dev,iree_allocator_system(),&group));
 iree_vm_module_t* hm=NULL; IREE_RETURN_IF_ERROR(iree_hal_module_create(inst,iree_hal_module_device_policy_default(),group,IREE_HAL_MODULE_FLAG_SYNCHRONOUS,iree_hal_module_debug_sink_stdio(stderr),iree_allocator_system(),&hm)); iree_hal_device_group_release(group);
 iree_const_byte_span_t vb=iree_make_const_byte_span(_binary_resnet50_gemmini_embedded_vmfb_start,(size_t)(_binary_resnet50_gemmini_embedded_vmfb_end-_binary_resnet50_gemmini_embedded_vmfb_start));
 iree_vm_module_t* bm=NULL; IREE_RETURN_IF_ERROR(iree_vm_bytecode_module_create(inst,IREE_VM_BYTECODE_MODULE_FLAG_NONE,vb,iree_allocator_null(),iree_allocator_system(),&bm));
 iree_vm_context_t* ctx=NULL; iree_vm_module_t* mods[]={hm,bm}; IREE_RETURN_IF_ERROR(iree_vm_context_create_with_modules(inst,IREE_VM_CONTEXT_FLAG_NONE,2,mods,iree_allocator_system(),&ctx)); iree_vm_module_release(hm); iree_vm_module_release(bm);
 iree_vm_function_t f; IREE_RETURN_IF_ERROR(iree_vm_context_resolve_function(ctx,iree_make_cstring_view("module.main"),&f));
 const uint8_t* data=_binary_resnet50_input_f32_start; iree_hal_buffer_params_t bp={.type=IREE_HAL_MEMORY_TYPE_DEVICE_LOCAL,.usage=IREE_HAL_BUFFER_USAGE_DEFAULT};
 iree_hal_dim_t dims[2][4]={{1,512,512,3},{768,16,16,3}}; size_t elems[2]={1u*512u*512u*3u,768u*16u*16u*3u};
 iree_vm_list_t* ins=NULL,*outs=NULL; IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(),2,iree_allocator_system(),&ins)); IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(),1,iree_allocator_system(),&outs));
 size_t off=0; for(int i=0;i<2;i++){iree_hal_buffer_view_t* v=NULL; IREE_RETURN_IF_ERROR(iree_hal_buffer_view_allocate_buffer_copy(dev,iree_hal_device_allocator(dev),4,dims[i],IREE_HAL_ELEMENT_TYPE_FLOAT_32,IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,bp,iree_make_const_byte_span(data+off,elems[i]*4),&v)); off+=elems[i]*4; iree_vm_ref_t r=iree_hal_buffer_view_move_ref(v); IREE_RETURN_IF_ERROR(iree_vm_list_push_ref_move(ins,&r));}
 fprintf(stdout,"CONV_1x512x512x3_f768x16x16x3 vmfb=%lu bytes\n",(unsigned long)vb.data_length); fflush(stdout); uint64_t st=rdcycle(); IREE_RETURN_IF_ERROR(iree_vm_invoke(ctx,f,IREE_VM_INVOCATION_FLAG_NONE,NULL,ins,outs,iree_allocator_system())); uint64_t cy=rdcycle()-st; iree_hal_buffer_view_t* ov=iree_vm_list_get_buffer_view_assign(outs,0); size_t out_n=1u*32u*32u*768u; float* result=(float*)malloc(out_n*4); IREE_RETURN_IF_ERROR(iree_hal_device_transfer_d2h(dev,iree_hal_buffer_view_buffer(ov),0,result,out_n*4,IREE_HAL_TRANSFER_BUFFER_FLAG_DEFAULT,iree_infinite_timeout())); uint64_t h=1469598103934665603ULL; for(size_t i=0;i<out_n;i++){uint32_t u; memcpy(&u,&result[i],4); h=(h^u)*1099511628211ULL;} double macs=32.0*32.0*768.0*16.0*16.0*3.0; printf("CONV_RESULT cycles=%lu macs=%.0f instr_per_mac=%.9f output_hash=%016lx\n",(unsigned long)cy,macs,(double)cy/macs,(unsigned long)h); fflush(stdout); free(result);
 iree_vm_list_release(ins); iree_vm_list_release(outs); iree_vm_context_release(ctx); iree_hal_device_release(dev); iree_vm_instance_release(inst); return iree_ok_status();
}
int main(void){iree_status_t s=Run();if(!iree_status_is_ok(s)){iree_status_fprint(stderr,s);fprintf(stderr,"\n");iree_status_free(s);return 1;}return 0;}
