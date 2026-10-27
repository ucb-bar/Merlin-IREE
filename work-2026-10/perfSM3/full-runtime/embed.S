.section .vmfb_data,"a",@progbits
.balign 64
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-model.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.section .rodata,"a",@progbits
.balign 64
.global _binary_resnet50_golden_f32_start
.global _binary_resnet50_golden_f32_end
_binary_resnet50_golden_f32_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-cpu-golden.f32"
_binary_resnet50_golden_f32_end:
.section .rodata,"a",@progbits
.balign 64
.global pytorch_start
.global pytorch_end
pytorch_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-pytorch-golden.f32"
pytorch_end:
.section .rodata,"a",@progbits
.balign 64
.global input0_start
.global input0_end
input0_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input0.bin"
input0_end:
.section .rodata,"a",@progbits
.balign 64
.global input1_start
.global input1_end
input1_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input1.bin"
input1_end:
.section .rodata,"a",@progbits
.balign 64
.global input2_start
.global input2_end
input2_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input2.bin"
input2_end:
.section .rodata,"a",@progbits
.balign 64
.global input3_start
.global input3_end
input3_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input3.bin"
input3_end:
.section .rodata,"a",@progbits
.balign 64
.global input4_start
.global input4_end
input4_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input4.bin"
input4_end:
.section .rodata,"a",@progbits
.balign 64
.global input5_start
.global input5_end
input5_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input5.bin"
input5_end:
.section .rodata,"a",@progbits
.balign 64
.global input6_start
.global input6_end
input6_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input6.bin"
input6_end:
.section .rodata,"a",@progbits
.balign 64
.global input7_start
.global input7_end
input7_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input7.bin"
input7_end:
.section .rodata,"a",@progbits
.balign 64
.global input8_start
.global input8_end
input8_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input8.bin"
input8_end:
.section .rodata,"a",@progbits
.balign 64
.global input9_start
.global input9_end
input9_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input9.bin"
input9_end:
.section .rodata,"a",@progbits
.balign 64
.global input10_start
.global input10_end
input10_start:
.incbin "/home/loren/work/runs/perfSM3/full-runtime/payload-input10.bin"
input10_end:
