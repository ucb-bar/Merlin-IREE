.section .rodata
.balign 16
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/fixW/repro-i32/resnet.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.section .rodata
.balign 16
.global _binary_resnet50_input_f32_start
.global _binary_resnet50_input_f32_end
_binary_resnet50_input_f32_start:
.incbin "/home/loren/work/runs/fixW/repro-i32/input.bin"
_binary_resnet50_input_f32_end:
.section .rodata
.balign 16
.global _binary_resnet50_golden_f32_start
.global _binary_resnet50_golden_f32_end
_binary_resnet50_golden_f32_start:
.incbin "/home/loren/work/runs/fixW/repro-i32/golden.i32"
_binary_resnet50_golden_f32_end:
