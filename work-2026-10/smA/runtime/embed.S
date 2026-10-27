.section .rodata
.balign 16
.global _binary_resnet50_gemmini_embedded_vmfb_start
.global _binary_resnet50_gemmini_embedded_vmfb_end
_binary_resnet50_gemmini_embedded_vmfb_start:
.incbin "/home/loren/work/runs/smA/attention-unroll/rv.vmfb"
_binary_resnet50_gemmini_embedded_vmfb_end:
.balign 16
.global inp0_start
.global inp0_end
inp0_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input0.bin"
inp0_end:
.balign 16
.global inp1_start
.global inp1_end
inp1_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input1.bin"
inp1_end:
.balign 16
.global inp2_start
.global inp2_end
inp2_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input2.bin"
inp2_end:
.balign 16
.global inp3_start
.global inp3_end
inp3_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input3.bin"
inp3_end:
.balign 16
.global inp4_start
.global inp4_end
inp4_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input4.bin"
inp4_end:
.balign 16
.global inp5_start
.global inp5_end
inp5_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input5.bin"
inp5_end:
.balign 16
.global inp6_start
.global inp6_end
inp6_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input6.bin"
inp6_end:
.balign 16
.global inp7_start
.global inp7_end
inp7_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input7.bin"
inp7_end:
.balign 16
.global inp8_start
.global inp8_end
inp8_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input8.bin"
inp8_end:
.balign 16
.global inp9_start
.global inp9_end
inp9_start:
.incbin "/home/loren/work/runs/probeP2/attention-layer0/input9.bin"
inp9_end:
