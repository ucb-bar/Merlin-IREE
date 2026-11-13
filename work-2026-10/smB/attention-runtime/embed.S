 .section .rodata,"a",@progbits
.balign 64
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/resnet.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.balign 64
.global _binary_resnet50_golden_f32_start
.global _binary_resnet50_golden_f32_end
_binary_resnet50_golden_f32_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/golden.f32"
_binary_resnet50_golden_f32_end:
.balign 64
.global input0_start
.global input0_end
input0_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/input0.bin"
input0_end:
.balign 64
.global input1_start
.global input1_end
input1_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/input1.bin"
input1_end:
.balign 64
.global input2_start
.global input2_end
input2_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/input2.bin"
input2_end:
.balign 64
.global input3_start
.global input3_end
input3_start:
.incbin "/home/loren/work/runs/smB/attention-runtime/input3.bin"
input3_end:
