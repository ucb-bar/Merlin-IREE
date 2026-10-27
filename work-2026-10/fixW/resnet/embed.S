.section .rodata
.balign 16
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/fixW/resnet/resnet.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.section .rodata
.balign 16
.global _binary_resnet50_input_f32_start
.global _binary_resnet50_input_f32_end
_binary_resnet50_input_f32_start:
.incbin "/home/loren/work/runs/resnet50/artifacts/resnet50_input.f32"
_binary_resnet50_input_f32_end:
.section .rodata
.balign 16
.global _binary_resnet50_golden_f32_start
.global _binary_resnet50_golden_f32_end
_binary_resnet50_golden_f32_start:
.incbin "/home/loren/work/runs/fixW/resnet/golden.f32"
_binary_resnet50_golden_f32_end:
