.section .rodata
.balign 16
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/attE1/conv-ukernels.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.balign 16
.global _binary_resnet50_input_f32_start
.global _binary_resnet50_input_f32_end
_binary_resnet50_input_f32_start:
.incbin "/home/loren/work/runs/attE1/runtime/input.bin"
_binary_resnet50_input_f32_end:
