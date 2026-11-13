.section .vmfb_data,"a",@progbits
.balign 64
.global vmfb_payload_start
vmfb_payload_start:
.incbin "/home/loren/work/runs/tlHead/int8_head/gemmini.vmfb"
.global vmfb_payload_end
vmfb_payload_end:
.section .rodata,"a",@progbits
.balign 64
.global _binary_resnet50_input_f32_start
_binary_resnet50_input_f32_start:
.incbin "/home/loren/work/runs/tlHead/int8_head/spike-input.bin"
.global _binary_resnet50_input_f32_end
_binary_resnet50_input_f32_end:
.balign 64
.global _binary_resnet50_golden_f32_start
_binary_resnet50_golden_f32_start:
.incbin "/home/loren/work/runs/tlHead/int8_head/spike-golden.bin"
.global _binary_resnet50_golden_f32_end
_binary_resnet50_golden_f32_end:
.section .rodata,"a",@progbits
.balign 8
.global _binary_resnet50_gemmini_embedded_vmfb_start
_binary_resnet50_gemmini_embedded_vmfb_start: .quad vmfb_payload_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_end: .quad vmfb_payload_end
