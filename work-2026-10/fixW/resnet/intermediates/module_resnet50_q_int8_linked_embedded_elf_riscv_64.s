	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.file	"resnet50_q_int8_linked"
	.section	.text._initializer_0_dispatch_0_transpose_64x64_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_0_dispatch_0_transpose_64x64_i8,@function
_initializer_0_dispatch_0_transpose_64x64_i8:
.Lfunc_begin0:
	.file	1 "/home/loren/work/runs/resnet50/artifacts" "resnet50.q.int8.mlir"
	.loc	1 1 0
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
	li	a4, 0
.Ltmp0:
	.loc	1 691 12 prologue_end
	ld	a1, 32(a1)
	lui	a7, 22
	ld	a5, 0(a1)
	lwu	a3, 0(a2)
	ld	a6, 8(a1)
	addi	a2, a7, 1024
	add	a7, a5, a2
	slli	a3, a3, 1
.LBB0_1:
	.loc	1 0 12 is_stmt 0
	or	a1, a4, a3
	.loc	1 691 12
	add	a4, a7, a1
	slli	a1, a1, 6
	add	a5, a6, a1
	lui	a1, 1
.LBB0_2:
	lbu	a2, 0(a4)
	addi	a4, a4, 64
	addi	a1, a1, -64
	sb	a2, 0(a5)
	addi	a5, a5, 1
	bnez	a1, .LBB0_2
	.loc	1 0 12
	li	a4, 1
	.loc	1 691 12
	andi	a1, a0, 1
	li	a0, 1
	beqz	a1, .LBB0_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 691 12 epilogue_begin
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp1:
.Lfunc_end0:
	.size	_initializer_0_dispatch_0_transpose_64x64_i8, .Lfunc_end0-_initializer_0_dispatch_0_transpose_64x64_i8
	.cfi_endproc

	.section	.text._initializer_1_dispatch_0_transpose_64x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_1_dispatch_0_transpose_64x256_i8,@function
_initializer_1_dispatch_0_transpose_64x256_i8:
.Lfunc_begin1:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp2:
	.loc	1 692 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 1
	slli	a4, a2, 62
	srli	a5, a2, 2
	srli	a4, a4, 56
	slli	a5, a5, 11
	or	a4, a4, a5
	slli	a5, a2, 1
	andi	a2, a2, 3
	andi	a5, a5, -8
	slli	a2, a2, 12
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 23
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 8
.LBB1_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB1_2:
	.loc	1 692 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 64
	bnez	a4, .LBB1_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB1_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 692 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp3:
.Lfunc_end1:
	.size	_initializer_1_dispatch_0_transpose_64x256_i8, .Lfunc_end1-_initializer_1_dispatch_0_transpose_64x256_i8
	.cfi_endproc

	.section	.text._initializer_2_dispatch_0_transpose_64x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_2_dispatch_0_transpose_64x256_i8,@function
_initializer_2_dispatch_0_transpose_64x256_i8:
.Lfunc_begin2:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp4:
	.loc	1 706 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 5
	slli	a4, a2, 62
	srli	a5, a2, 2
	srli	a4, a4, 56
	slli	a5, a5, 11
	or	a4, a4, a5
	slli	a5, a2, 1
	andi	a2, a2, 3
	andi	a5, a5, -8
	slli	a2, a2, 12
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 27
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 8
.LBB2_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB2_2:
	.loc	1 706 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 64
	bnez	a4, .LBB2_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB2_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 706 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp5:
.Lfunc_end2:
	.size	_initializer_2_dispatch_0_transpose_64x256_i8, .Lfunc_end2-_initializer_2_dispatch_0_transpose_64x256_i8
	.cfi_endproc

	.section	.text._initializer_3_dispatch_0_transpose_256x64_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_3_dispatch_0_transpose_256x64_i8,@function
_initializer_3_dispatch_0_transpose_256x64_i8:
.Lfunc_begin3:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp6:
	.loc	1 715 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 31
	lui	a4, 9
	addi	a3, a3, 1024
	slli	a5, a2, 3
	add	a3, a3, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a2, a2, a4
	add	a3, a3, a5
	add	a2, a2, a1
	li	a6, 8
.LBB3_1:
	.loc	1 0 12 is_stmt 0
	lui	a4, 4
	mv	a5, a2
	mv	a1, a3
.LBB3_2:
	.loc	1 715 12 is_stmt 1
	lbu	a0, 0(a1)
	addi	a1, a1, 256
	addi	a4, a4, -256
	sb	a0, 0(a5)
	addi	a5, a5, 1
	bnez	a4, .LBB3_2
	addi	a7, a7, 1
	addi	a3, a3, 1
	addi	a2, a2, 64
	bne	a7, a6, .LBB3_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 715 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp7:
.Lfunc_end3:
	.size	_initializer_3_dispatch_0_transpose_256x64_i8, .Lfunc_end3-_initializer_3_dispatch_0_transpose_256x64_i8
	.cfi_endproc

	.section	.text._initializer_4_dispatch_0_transpose_64x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_4_dispatch_0_transpose_64x256_i8,@function
_initializer_4_dispatch_0_transpose_64x256_i8:
.Lfunc_begin4:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp8:
	.loc	1 727 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 13
	slli	a4, a2, 62
	srli	a5, a2, 2
	srli	a4, a4, 56
	slli	a5, a5, 11
	or	a4, a4, a5
	slli	a5, a2, 1
	andi	a2, a2, 3
	andi	a5, a5, -8
	slli	a2, a2, 12
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 35
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 8
.LBB4_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB4_2:
	.loc	1 727 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 64
	bnez	a4, .LBB4_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB4_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 727 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp9:
.Lfunc_end4:
	.size	_initializer_4_dispatch_0_transpose_64x256_i8, .Lfunc_end4-_initializer_4_dispatch_0_transpose_64x256_i8
	.cfi_endproc

	.section	.text._initializer_5_dispatch_0_transpose_256x64_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_5_dispatch_0_transpose_256x64_i8,@function
_initializer_5_dispatch_0_transpose_256x64_i8:
.Lfunc_begin5:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp10:
	.loc	1 736 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 39
	lui	a4, 17
	addi	a3, a3, 1024
	slli	a5, a2, 3
	add	a3, a3, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a2, a2, a4
	add	a3, a3, a5
	add	a2, a2, a1
	li	a6, 8
.LBB5_1:
	.loc	1 0 12 is_stmt 0
	lui	a4, 4
	mv	a5, a2
	mv	a1, a3
.LBB5_2:
	.loc	1 736 12 is_stmt 1
	lbu	a0, 0(a1)
	addi	a1, a1, 256
	addi	a4, a4, -256
	sb	a0, 0(a5)
	addi	a5, a5, 1
	bnez	a4, .LBB5_2
	addi	a7, a7, 1
	addi	a3, a3, 1
	addi	a2, a2, 64
	bne	a7, a6, .LBB5_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 736 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp11:
.Lfunc_end5:
	.size	_initializer_5_dispatch_0_transpose_256x64_i8, .Lfunc_end5-_initializer_5_dispatch_0_transpose_256x64_i8
	.cfi_endproc

	.section	.text._initializer_6_dispatch_0_transpose_64x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_6_dispatch_0_transpose_64x256_i8,@function
_initializer_6_dispatch_0_transpose_64x256_i8:
.Lfunc_begin6:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp12:
	.loc	1 748 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 21
	slli	a4, a2, 62
	srli	a5, a2, 2
	srli	a4, a4, 56
	slli	a5, a5, 11
	or	a4, a4, a5
	slli	a5, a2, 1
	andi	a2, a2, 3
	andi	a5, a5, -8
	slli	a2, a2, 12
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 43
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 8
.LBB6_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB6_2:
	.loc	1 748 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 64
	bnez	a4, .LBB6_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB6_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 748 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp13:
.Lfunc_end6:
	.size	_initializer_6_dispatch_0_transpose_64x256_i8, .Lfunc_end6-_initializer_6_dispatch_0_transpose_64x256_i8
	.cfi_endproc

	.section	.text._initializer_7_dispatch_0_transpose_256x128_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_7_dispatch_0_transpose_256x128_i8,@function
_initializer_7_dispatch_0_transpose_256x128_i8:
.Lfunc_begin7:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp14:
	.loc	1 757 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 25
	slli	a4, a2, 63
	srli	a5, a2, 1
	srli	a4, a4, 57
	slli	a5, a5, 11
	or	a4, a4, a5
	slli	a5, a2, 3
	andi	a2, a2, 1
	andi	a5, a5, -16
	slli	a2, a2, 14
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 47
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 16
.LBB7_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB7_2:
	.loc	1 757 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB7_2
	addi	a7, a7, 1
	addi	a3, a3, 128
	addi	a2, a2, 1
	bne	a7, a6, .LBB7_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 757 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp15:
.Lfunc_end7:
	.size	_initializer_7_dispatch_0_transpose_256x128_i8, .Lfunc_end7-_initializer_7_dispatch_0_transpose_256x128_i8
	.cfi_endproc

	.section	.text._initializer_8_dispatch_0_transpose_256x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_8_dispatch_0_transpose_256x512_i8,@function
_initializer_8_dispatch_0_transpose_256x512_i8:
.Lfunc_begin8:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp16:
	.loc	1 758 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 3
	slli	a4, a2, 61
	srli	a4, a4, 55
	slli	a5, a3, 15
	or	a4, a4, a5
	lui	a6, 33
	andi	a2, a2, 7
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 55
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB8_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB8_2:
	.loc	1 758 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB8_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB8_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 758 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp17:
.Lfunc_end8:
	.size	_initializer_8_dispatch_0_transpose_256x512_i8, .Lfunc_end8-_initializer_8_dispatch_0_transpose_256x512_i8
	.cfi_endproc

	.section	.text._initializer_9_dispatch_0_transpose_128x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_9_dispatch_0_transpose_128x512_i8,@function
_initializer_9_dispatch_0_transpose_128x512_i8:
.Lfunc_begin9:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp18:
	.loc	1 772 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 65
	slli	a4, a2, 61
	srli	a5, a2, 3
	srli	a4, a4, 55
	slli	a5, a5, 14
	or	a4, a4, a5
	slli	a5, a2, 2
	andi	a2, a2, 7
	andi	a5, a5, -32
	slli	a2, a2, 13
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 87
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB9_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB9_2:
	.loc	1 772 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 128
	bnez	a4, .LBB9_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB9_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 772 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp19:
.Lfunc_end9:
	.size	_initializer_9_dispatch_0_transpose_128x512_i8, .Lfunc_end9-_initializer_9_dispatch_0_transpose_128x512_i8
	.cfi_endproc

	.section	.text._initializer_10_dispatch_0_transpose_512x128_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_10_dispatch_0_transpose_512x128_i8,@function
_initializer_10_dispatch_0_transpose_512x128_i8:
.Lfunc_begin10:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp20:
	.loc	1 781 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 81
	slli	a4, a2, 63
	srli	a5, a2, 1
	srli	a4, a4, 57
	slli	a5, a5, 12
	or	a4, a4, a5
	slli	a5, a2, 4
	andi	a2, a2, 1
	andi	a5, a5, -32
	slli	a2, a2, 15
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 103
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB10_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB10_2:
	.loc	1 781 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 512
	bnez	a4, .LBB10_2
	addi	a7, a7, 1
	addi	a3, a3, 128
	addi	a2, a2, 1
	bne	a7, a6, .LBB10_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 781 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp21:
.Lfunc_end10:
	.size	_initializer_10_dispatch_0_transpose_512x128_i8, .Lfunc_end10-_initializer_10_dispatch_0_transpose_512x128_i8
	.cfi_endproc

	.section	.text._initializer_11_dispatch_0_transpose_128x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_11_dispatch_0_transpose_128x512_i8,@function
_initializer_11_dispatch_0_transpose_128x512_i8:
.Lfunc_begin11:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp22:
	.loc	1 793 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 97
	slli	a4, a2, 61
	srli	a5, a2, 3
	srli	a4, a4, 55
	slli	a5, a5, 14
	or	a4, a4, a5
	slli	a5, a2, 2
	andi	a2, a2, 7
	andi	a5, a5, -32
	slli	a2, a2, 13
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 119
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB11_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB11_2:
	.loc	1 793 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 128
	bnez	a4, .LBB11_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB11_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 793 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp23:
.Lfunc_end11:
	.size	_initializer_11_dispatch_0_transpose_128x512_i8, .Lfunc_end11-_initializer_11_dispatch_0_transpose_128x512_i8
	.cfi_endproc

	.section	.text._initializer_12_dispatch_0_transpose_512x128_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_12_dispatch_0_transpose_512x128_i8,@function
_initializer_12_dispatch_0_transpose_512x128_i8:
.Lfunc_begin12:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp24:
	.loc	1 802 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 113
	slli	a4, a2, 63
	srli	a5, a2, 1
	srli	a4, a4, 57
	slli	a5, a5, 12
	or	a4, a4, a5
	slli	a5, a2, 4
	andi	a2, a2, 1
	andi	a5, a5, -32
	slli	a2, a2, 15
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 135
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB12_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB12_2:
	.loc	1 802 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 512
	bnez	a4, .LBB12_2
	addi	a7, a7, 1
	addi	a3, a3, 128
	addi	a2, a2, 1
	bne	a7, a6, .LBB12_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 802 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp25:
.Lfunc_end12:
	.size	_initializer_12_dispatch_0_transpose_512x128_i8, .Lfunc_end12-_initializer_12_dispatch_0_transpose_512x128_i8
	.cfi_endproc

	.section	.text._initializer_13_dispatch_0_transpose_128x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_13_dispatch_0_transpose_128x512_i8,@function
_initializer_13_dispatch_0_transpose_128x512_i8:
.Lfunc_begin13:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp26:
	.loc	1 814 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 129
	slli	a4, a2, 61
	srli	a5, a2, 3
	srli	a4, a4, 55
	slli	a5, a5, 14
	or	a4, a4, a5
	slli	a5, a2, 2
	andi	a2, a2, 7
	andi	a5, a5, -32
	slli	a2, a2, 13
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 151
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB13_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB13_2:
	.loc	1 814 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 128
	bnez	a4, .LBB13_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB13_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 814 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp27:
.Lfunc_end13:
	.size	_initializer_13_dispatch_0_transpose_128x512_i8, .Lfunc_end13-_initializer_13_dispatch_0_transpose_128x512_i8
	.cfi_endproc

	.section	.text._initializer_14_dispatch_0_transpose_512x128_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_14_dispatch_0_transpose_512x128_i8,@function
_initializer_14_dispatch_0_transpose_512x128_i8:
.Lfunc_begin14:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp28:
	.loc	1 823 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 145
	slli	a4, a2, 63
	srli	a5, a2, 1
	srli	a4, a4, 57
	slli	a5, a5, 12
	or	a4, a4, a5
	slli	a5, a2, 4
	andi	a2, a2, 1
	andi	a5, a5, -32
	slli	a2, a2, 15
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 167
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB14_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB14_2:
	.loc	1 823 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 512
	bnez	a4, .LBB14_2
	addi	a7, a7, 1
	addi	a3, a3, 128
	addi	a2, a2, 1
	bne	a7, a6, .LBB14_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 823 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp29:
.Lfunc_end14:
	.size	_initializer_14_dispatch_0_transpose_512x128_i8, .Lfunc_end14-_initializer_14_dispatch_0_transpose_512x128_i8
	.cfi_endproc

	.section	.text._initializer_15_dispatch_0_transpose_128x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_15_dispatch_0_transpose_128x512_i8,@function
_initializer_15_dispatch_0_transpose_128x512_i8:
.Lfunc_begin15:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp30:
	.loc	1 835 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 161
	slli	a4, a2, 61
	srli	a5, a2, 3
	srli	a4, a4, 55
	slli	a5, a5, 14
	or	a4, a4, a5
	slli	a5, a2, 2
	andi	a2, a2, 7
	andi	a5, a5, -32
	slli	a2, a2, 13
	add	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	add	a3, a3, a4
	lui	a4, 183
	addi	a4, a4, 1024
	add	a2, a2, a4
	add	a3, a3, a1
	add	a2, a2, a5
	li	a6, 32
.LBB15_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB15_2:
	.loc	1 835 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 128
	bnez	a4, .LBB15_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB15_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 835 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp31:
.Lfunc_end15:
	.size	_initializer_15_dispatch_0_transpose_128x512_i8, .Lfunc_end15-_initializer_15_dispatch_0_transpose_128x512_i8
	.cfi_endproc

	.section	.text._initializer_16_dispatch_0_transpose_512x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_16_dispatch_0_transpose_512x256_i8,@function
_initializer_16_dispatch_0_transpose_512x256_i8:
.Lfunc_begin16:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp32:
	.loc	1 844 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 177
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 15
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 199
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB16_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB16_2:
	.loc	1 844 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 512
	bnez	a4, .LBB16_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB16_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 844 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp33:
.Lfunc_end16:
	.size	_initializer_16_dispatch_0_transpose_512x256_i8, .Lfunc_end16-_initializer_16_dispatch_0_transpose_512x256_i8
	.cfi_endproc

	.section	.text._initializer_17_dispatch_0_transpose_512x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_17_dispatch_0_transpose_512x1024_i8,@function
_initializer_17_dispatch_0_transpose_512x1024_i8:
.Lfunc_begin17:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp34:
	.loc	1 845 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 209
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 15
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 231
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB17_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB17_2:
	.loc	1 845 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 512
	bnez	a4, .LBB17_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB17_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 845 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp35:
.Lfunc_end17:
	.size	_initializer_17_dispatch_0_transpose_512x1024_i8, .Lfunc_end17-_initializer_17_dispatch_0_transpose_512x1024_i8
	.cfi_endproc

	.section	.text._initializer_18_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_18_dispatch_0_transpose_256x1024_i8,@function
_initializer_18_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin18:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp36:
	.loc	1 859 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 337
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 359
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB18_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB18_2:
	.loc	1 859 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB18_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB18_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 859 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp37:
.Lfunc_end18:
	.size	_initializer_18_dispatch_0_transpose_256x1024_i8, .Lfunc_end18-_initializer_18_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_19_dispatch_0_transpose_1024x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_19_dispatch_0_transpose_1024x256_i8,@function
_initializer_19_dispatch_0_transpose_1024x256_i8:
.Lfunc_begin19:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp38:
	.loc	1 868 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 401
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 423
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB19_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB19_2:
	.loc	1 868 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB19_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB19_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 868 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp39:
.Lfunc_end19:
	.size	_initializer_19_dispatch_0_transpose_1024x256_i8, .Lfunc_end19-_initializer_19_dispatch_0_transpose_1024x256_i8
	.cfi_endproc

	.section	.text._initializer_20_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_20_dispatch_0_transpose_256x1024_i8,@function
_initializer_20_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin20:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp40:
	.loc	1 880 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 465
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 487
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB20_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB20_2:
	.loc	1 880 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB20_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB20_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 880 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp41:
.Lfunc_end20:
	.size	_initializer_20_dispatch_0_transpose_256x1024_i8, .Lfunc_end20-_initializer_20_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_21_dispatch_0_transpose_1024x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_21_dispatch_0_transpose_1024x256_i8,@function
_initializer_21_dispatch_0_transpose_1024x256_i8:
.Lfunc_begin21:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp42:
	.loc	1 889 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 529
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 551
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB21_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB21_2:
	.loc	1 889 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB21_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB21_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 889 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp43:
.Lfunc_end21:
	.size	_initializer_21_dispatch_0_transpose_1024x256_i8, .Lfunc_end21-_initializer_21_dispatch_0_transpose_1024x256_i8
	.cfi_endproc

	.section	.text._initializer_22_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_22_dispatch_0_transpose_256x1024_i8,@function
_initializer_22_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin22:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp44:
	.loc	1 901 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 593
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 615
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB22_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB22_2:
	.loc	1 901 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB22_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB22_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 901 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp45:
.Lfunc_end22:
	.size	_initializer_22_dispatch_0_transpose_256x1024_i8, .Lfunc_end22-_initializer_22_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_23_dispatch_0_transpose_1024x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_23_dispatch_0_transpose_1024x256_i8,@function
_initializer_23_dispatch_0_transpose_1024x256_i8:
.Lfunc_begin23:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp46:
	.loc	1 910 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 657
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 679
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB23_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB23_2:
	.loc	1 910 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB23_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB23_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 910 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp47:
.Lfunc_end23:
	.size	_initializer_23_dispatch_0_transpose_1024x256_i8, .Lfunc_end23-_initializer_23_dispatch_0_transpose_1024x256_i8
	.cfi_endproc

	.section	.text._initializer_24_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_24_dispatch_0_transpose_256x1024_i8,@function
_initializer_24_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin24:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp48:
	.loc	1 922 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 721
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 743
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB24_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB24_2:
	.loc	1 922 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB24_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB24_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 922 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp49:
.Lfunc_end24:
	.size	_initializer_24_dispatch_0_transpose_256x1024_i8, .Lfunc_end24-_initializer_24_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_25_dispatch_0_transpose_1024x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_25_dispatch_0_transpose_1024x256_i8,@function
_initializer_25_dispatch_0_transpose_1024x256_i8:
.Lfunc_begin25:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp50:
	.loc	1 931 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 785
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 807
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB25_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB25_2:
	.loc	1 931 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB25_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB25_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 931 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp51:
.Lfunc_end25:
	.size	_initializer_25_dispatch_0_transpose_1024x256_i8, .Lfunc_end25-_initializer_25_dispatch_0_transpose_1024x256_i8
	.cfi_endproc

	.section	.text._initializer_26_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_26_dispatch_0_transpose_256x1024_i8,@function
_initializer_26_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin26:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp52:
	.loc	1 943 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 849
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 871
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB26_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB26_2:
	.loc	1 943 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB26_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB26_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 943 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp53:
.Lfunc_end26:
	.size	_initializer_26_dispatch_0_transpose_256x1024_i8, .Lfunc_end26-_initializer_26_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_27_dispatch_0_transpose_1024x256_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_27_dispatch_0_transpose_1024x256_i8,@function
_initializer_27_dispatch_0_transpose_1024x256_i8:
.Lfunc_begin27:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp54:
	.loc	1 952 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 2
	slli	a4, a2, 62
	srli	a4, a4, 56
	slli	a5, a3, 14
	or	a4, a4, a5
	lui	a6, 913
	andi	a2, a2, 3
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 935
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB27_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB27_2:
	.loc	1 952 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB27_2
	addi	a7, a7, 1
	addi	a3, a3, 256
	addi	a2, a2, 1
	bne	a7, a6, .LBB27_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 952 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp55:
.Lfunc_end27:
	.size	_initializer_27_dispatch_0_transpose_1024x256_i8, .Lfunc_end27-_initializer_27_dispatch_0_transpose_1024x256_i8
	.cfi_endproc

	.section	.text._initializer_28_dispatch_0_transpose_256x1024_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_28_dispatch_0_transpose_256x1024_i8,@function
_initializer_28_dispatch_0_transpose_256x1024_i8:
.Lfunc_begin28:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp56:
	.loc	1 964 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 4
	slli	a4, a2, 60
	srli	a4, a4, 54
	slli	a5, a3, 16
	or	a4, a4, a5
	lui	a6, 977
	andi	a2, a2, 15
	slli	a3, a3, 6
	slli	a2, a2, 14
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 999
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB28_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB28_2:
	.loc	1 964 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 256
	bnez	a4, .LBB28_2
	addi	a7, a7, 1
	addi	a3, a3, 1024
	addi	a2, a2, 1
	bne	a7, a6, .LBB28_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 964 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp57:
.Lfunc_end28:
	.size	_initializer_28_dispatch_0_transpose_256x1024_i8, .Lfunc_end28-_initializer_28_dispatch_0_transpose_256x1024_i8
	.cfi_endproc

	.section	.text._initializer_29_dispatch_0_transpose_1024x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_29_dispatch_0_transpose_1024x512_i8,@function
_initializer_29_dispatch_0_transpose_1024x512_i8:
.Lfunc_begin29:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp58:
	.loc	1 973 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 3
	slli	a4, a2, 61
	srli	a4, a4, 55
	slli	a5, a3, 15
	or	a4, a4, a5
	lui	a6, 1041
	andi	a2, a2, 7
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 1063
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a2, a1, a5
	li	a6, 64
.LBB29_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a2
	mv	a1, a3
.LBB29_2:
	.loc	1 973 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a1)
	addi	a1, a1, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB29_2
	addi	a7, a7, 1
	addi	a3, a3, 512
	addi	a2, a2, 1
	bne	a7, a6, .LBB29_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 973 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp59:
.Lfunc_end29:
	.size	_initializer_29_dispatch_0_transpose_1024x512_i8, .Lfunc_end29-_initializer_29_dispatch_0_transpose_1024x512_i8
	.cfi_endproc

	.section	.text._initializer_30_dispatch_0_transpose_1024x2048_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_30_dispatch_0_transpose_1024x2048_i8,@function
_initializer_30_dispatch_0_transpose_1024x2048_i8:
.Lfunc_begin30:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp60:
	.loc	1 974 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 5
	slli	a4, a2, 59
	srli	a4, a4, 53
	slli	a5, a3, 17
	or	a4, a4, a5
	lui	a6, 1169
	andi	a2, a2, 31
	slli	a3, a3, 6
	slli	a2, a2, 16
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 1191
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a1, a1, a5
	li	a6, 64
.LBB30_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a1
	mv	a2, a3
.LBB30_2:
	.loc	1 974 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a2)
	addi	a2, a2, 1
	addi	a5, a5, 1024
	bnez	a4, .LBB30_2
	addi	a7, a7, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	addi	a1, a1, 1
	bne	a7, a6, .LBB30_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 974 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp61:
.Lfunc_end30:
	.size	_initializer_30_dispatch_0_transpose_1024x2048_i8, .Lfunc_end30-_initializer_30_dispatch_0_transpose_1024x2048_i8
	.cfi_endproc

	.section	.text._initializer_31_dispatch_0_transpose_512x2048_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_31_dispatch_0_transpose_512x2048_i8,@function
_initializer_31_dispatch_0_transpose_512x2048_i8:
.Lfunc_begin31:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp62:
	.loc	1 988 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 5
	slli	a4, a2, 59
	srli	a4, a4, 53
	slli	a5, a3, 17
	or	a4, a4, a5
	lui	a6, 1681
	andi	a2, a2, 31
	slli	a3, a3, 6
	slli	a2, a2, 15
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 1703
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a1, a1, a5
	li	a6, 64
.LBB31_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a5, a1
	mv	a2, a3
.LBB31_2:
	.loc	1 988 12 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a2)
	addi	a2, a2, 1
	addi	a5, a5, 512
	bnez	a4, .LBB31_2
	addi	a7, a7, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	addi	a1, a1, 1
	bne	a7, a6, .LBB31_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 988 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp63:
.Lfunc_end31:
	.size	_initializer_31_dispatch_0_transpose_512x2048_i8, .Lfunc_end31-_initializer_31_dispatch_0_transpose_512x2048_i8
	.cfi_endproc

	.section	.text._initializer_32_dispatch_0_transpose_2048x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_32_dispatch_0_transpose_2048x512_i8,@function
_initializer_32_dispatch_0_transpose_2048x512_i8:
.Lfunc_begin32:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp64:
	.loc	1 997 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 3
	slli	a4, a2, 61
	srli	a4, a4, 55
	slli	a5, a3, 15
	or	a4, a4, a5
	lui	a5, 1937
	andi	a2, a2, 7
	slli	a3, a3, 6
	slli	a2, a2, 17
	add	a2, a2, a3
	ld	a3, 0(a1)
	ld	a1, 8(a1)
	add	a4, a4, a5
	lui	a5, 1959
	addi	a5, a5, 1024
	add	a2, a2, a5
	add	a1, a1, a4
	add	a3, a3, a2
	li	a6, 64
.LBB32_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 64
	mv	a2, a3
	mv	a5, a1
.LBB32_2:
	.loc	1 997 12 is_stmt 1
	lbu	a0, 0(a2)
	addi	a2, a2, 2047
	addi	a4, a4, -1
	sb	a0, 0(a5)
	addi	a5, a5, 1
	addi	a2, a2, 1
	bnez	a4, .LBB32_2
	addi	a7, a7, 1
	addi	a1, a1, 512
	addi	a3, a3, 1
	bne	a7, a6, .LBB32_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 997 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp65:
.Lfunc_end32:
	.size	_initializer_32_dispatch_0_transpose_2048x512_i8, .Lfunc_end32-_initializer_32_dispatch_0_transpose_2048x512_i8
	.cfi_endproc

	.section	.text._initializer_33_dispatch_0_transpose_512x2048_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_33_dispatch_0_transpose_512x2048_i8,@function
_initializer_33_dispatch_0_transpose_512x2048_i8:
.Lfunc_begin33:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp66:
	.loc	1 1009 13 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 5
	slli	a4, a2, 59
	srli	a4, a4, 53
	slli	a5, a3, 17
	or	a4, a4, a5
	lui	a6, 2193
	andi	a2, a2, 31
	slli	a3, a3, 6
	slli	a2, a2, 15
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 2215
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a1, a1, a5
	li	a6, 64
.LBB33_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 64
	mv	a5, a1
	mv	a2, a3
.LBB33_2:
	.loc	1 1009 13 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a2)
	addi	a2, a2, 1
	addi	a5, a5, 512
	bnez	a4, .LBB33_2
	addi	a7, a7, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	addi	a1, a1, 1
	bne	a7, a6, .LBB33_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1009 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp67:
.Lfunc_end33:
	.size	_initializer_33_dispatch_0_transpose_512x2048_i8, .Lfunc_end33-_initializer_33_dispatch_0_transpose_512x2048_i8
	.cfi_endproc

	.section	.text._initializer_34_dispatch_0_transpose_2048x512_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_34_dispatch_0_transpose_2048x512_i8,@function
_initializer_34_dispatch_0_transpose_2048x512_i8:
.Lfunc_begin34:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp68:
	.loc	1 1018 13 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 3
	slli	a4, a2, 61
	srli	a4, a4, 55
	slli	a5, a3, 15
	or	a4, a4, a5
	lui	a5, 2449
	andi	a2, a2, 7
	slli	a3, a3, 6
	slli	a2, a2, 17
	add	a2, a2, a3
	ld	a3, 0(a1)
	ld	a1, 8(a1)
	add	a4, a4, a5
	lui	a5, 2471
	addi	a5, a5, 1024
	add	a2, a2, a5
	add	a1, a1, a4
	add	a3, a3, a2
	li	a6, 64
.LBB34_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 64
	mv	a2, a3
	mv	a5, a1
.LBB34_2:
	.loc	1 1018 13 is_stmt 1
	lbu	a0, 0(a2)
	addi	a2, a2, 2047
	addi	a4, a4, -1
	sb	a0, 0(a5)
	addi	a5, a5, 1
	addi	a2, a2, 1
	bnez	a4, .LBB34_2
	addi	a7, a7, 1
	addi	a1, a1, 512
	addi	a3, a3, 1
	bne	a7, a6, .LBB34_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1018 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp69:
.Lfunc_end34:
	.size	_initializer_34_dispatch_0_transpose_2048x512_i8, .Lfunc_end34-_initializer_34_dispatch_0_transpose_2048x512_i8
	.cfi_endproc

	.section	.text._initializer_35_dispatch_0_transpose_512x2048_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_35_dispatch_0_transpose_512x2048_i8,@function
_initializer_35_dispatch_0_transpose_512x2048_i8:
.Lfunc_begin35:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp70:
	.loc	1 1030 13 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 5
	slli	a4, a2, 59
	srli	a4, a4, 53
	slli	a5, a3, 17
	or	a4, a4, a5
	lui	a6, 2705
	andi	a2, a2, 31
	slli	a3, a3, 6
	slli	a2, a2, 15
	add	a2, a2, a3
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	add	a4, a4, a6
	lui	a1, 2727
	addi	a1, a1, 1024
	add	a1, a1, a2
	add	a3, a3, a4
	add	a1, a1, a5
	li	a6, 64
.LBB35_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 64
	mv	a5, a1
	mv	a2, a3
.LBB35_2:
	.loc	1 1030 13 is_stmt 1
	lbu	a0, 0(a5)
	addi	a4, a4, -1
	sb	a0, 0(a2)
	addi	a2, a2, 1
	addi	a5, a5, 512
	bnez	a4, .LBB35_2
	addi	a7, a7, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	addi	a1, a1, 1
	bne	a7, a6, .LBB35_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1030 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp71:
.Lfunc_end35:
	.size	_initializer_35_dispatch_0_transpose_512x2048_i8, .Lfunc_end35-_initializer_35_dispatch_0_transpose_512x2048_i8
	.cfi_endproc

	.section	.text._initializer_36_dispatch_0_transpose_2048x1000_i8,"ax",@progbits
	.p2align	1
	.type	_initializer_36_dispatch_0_transpose_2048x1000_i8,@function
_initializer_36_dispatch_0_transpose_2048x1000_i8:
.Lfunc_begin36:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp72:
	.loc	1 1045 13 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 205
	li	a6, 50
	addi	a3, a3, -819
	slli	a3, a3, 12
	addi	a3, a3, -819
	mul	a3, a2, a3
	srli	a5, a3, 36
	slli	a4, a5, 2
	slli	a3, a5, 4
	add	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	sub	a2, a2, a3
	lui	a3, 16
	addi	a3, a3, -1536
	mul	a3, a5, a3
	add	a1, a1, a3
	lui	a3, 2961
	slli	a5, a5, 6
	add	a4, a4, a5
	lui	a5, 2983
	addi	a5, a5, 1024
	mul	a2, a2, a6
	add	a1, a1, a3
	add	a3, a4, a5
	slli	a2, a2, 32
	srli	a4, a2, 32
	srli	a2, a2, 21
	add	a1, a1, a4
	add	a3, a3, a2
	li	a6, 64
.LBB36_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 50
	mv	a2, a3
	mv	a5, a1
.LBB36_2:
	.loc	1 1045 13 is_stmt 1
	lbu	a0, 0(a2)
	addi	a2, a2, 2047
	addi	a4, a4, -1
	sb	a0, 0(a5)
	addi	a5, a5, 1
	addi	a2, a2, 1
	bnez	a4, .LBB36_2
	addi	a7, a7, 1
	addi	a1, a1, 1000
	addi	a3, a3, 1
	bne	a7, a6, .LBB36_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1045 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp73:
.Lfunc_end36:
	.size	_initializer_36_dispatch_0_transpose_2048x1000_i8, .Lfunc_end36-_initializer_36_dispatch_0_transpose_2048x1000_i8
	.cfi_endproc

	.section	.text._initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin37:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp74:
	.loc	1 691 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	ld	a7, 0(a1)
	ld	a1, 8(a1)
	lui	a4, 3461
	slli	a2, a2, 14
	add	a2, a2, a4
	add	a2, a2, a1
	li	a6, 64
.LBB37_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB37_2:
	.loc	1 691 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB37_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB37_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 691 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp75:
.Lfunc_end37:
	.size	_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end37-_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin38:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp76:
	.loc	1 700 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 3657
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a7, a4, 256
	add	a2, a2, a1
	li	a6, 64
.LBB38_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB38_2:
	.loc	1 700 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB38_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB38_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 700 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp77:
.Lfunc_end38:
	.size	_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end38-_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin39:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp78:
	.loc	1 715 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 3853
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a7, a4, 512
	add	a2, a2, a1
	li	a6, 64
.LBB39_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB39_2:
	.loc	1 715 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB39_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB39_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 715 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp79:
.Lfunc_end39:
	.size	_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end39-_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin40:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp80:
	.loc	1 721 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 4049
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a7, a4, 768
	add	a2, a2, a1
	li	a6, 64
.LBB40_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB40_2:
	.loc	1 721 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB40_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB40_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 721 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp81:
.Lfunc_end40:
	.size	_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end40-_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin41:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp82:
	.loc	1 736 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 4245
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a7, a4, 1024
	add	a2, a2, a1
	li	a6, 64
.LBB41_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB41_2:
	.loc	1 736 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB41_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB41_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 736 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp83:
.Lfunc_end41:
	.size	_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end41-_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32,@function
_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32:
.Lfunc_begin42:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp84:
	.loc	1 742 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 4441
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a7, a4, 1280
	add	a2, a2, a1
	li	a6, 64
.LBB42_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a2
	mv	a1, a7
.LBB42_2:
	.loc	1 742 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB42_2
	addi	a0, a0, 1
	addi	a2, a2, 256
	bne	a0, a6, .LBB42_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 742 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp85:
.Lfunc_end42:
	.size	_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32, .Lfunc_end42-_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32
	.cfi_endproc

	.section	.text._initializer_43_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin43:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp86:
	.loc	1 766 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 1
	slli	a4, a3, 13
	slli	a3, a3, 16
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a1, a1, a3
	lui	a3, 4637
	add	a2, a2, a4
	add	a3, a3, a1
	addi	a7, a2, 1536
	li	a6, 112
.LBB43_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB43_2:
	.loc	1 766 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB43_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB43_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 766 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp87:
.Lfunc_end43:
	.size	_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end43-_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_44_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin44:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp88:
	.loc	1 781 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 1
	slli	a4, a3, 13
	slli	a3, a3, 16
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a1, a1, a3
	lui	a3, 4735
	add	a2, a2, a4
	add	a3, a3, a1
	addi	a2, a2, 2047
	addi	a7, a2, 1
	li	a6, 112
.LBB44_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB44_2:
	.loc	1 781 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB44_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB44_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 781 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp89:
.Lfunc_end44:
	.size	_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end44-_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_45_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin45:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp90:
	.loc	1 787 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 1
	slli	a4, a3, 13
	slli	a3, a3, 16
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a1, a1, a3
	lui	a3, 4833
	add	a2, a2, a4
	add	a3, a3, a1
	addi	a1, a2, 2047
	addi	a7, a1, 513
	li	a6, 112
.LBB45_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB45_2:
	.loc	1 787 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB45_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB45_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 787 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp91:
.Lfunc_end45:
	.size	_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end45-_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_46_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin46:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp92:
	.loc	1 802 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 1
	slli	a4, a3, 13
	slli	a3, a3, 16
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a1, a1, a3
	lui	a3, 4931
	add	a2, a2, a4
	add	a3, a3, a1
	addi	a1, a2, 2047
	addi	a7, a1, 1025
	li	a6, 112
.LBB46_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB46_2:
	.loc	1 802 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB46_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB46_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 802 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp93:
.Lfunc_end46:
	.size	_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end46-_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_47_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin47:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp94:
	.loc	1 808 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	srli	a3, a2, 1
	slli	a4, a3, 13
	slli	a3, a3, 16
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a1, a1, a3
	lui	a3, 5029
	add	a2, a2, a4
	add	a3, a3, a1
	addi	a1, a2, 2047
	addi	a7, a1, 1537
	li	a6, 112
.LBB47_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB47_2:
	.loc	1 808 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB47_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB47_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 808 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp95:
.Lfunc_end47:
	.size	_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end47-_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_48_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin48:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp96:
	.loc	1 823 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 1
	srli	a4, a2, 1
	slli	a5, a4, 13
	slli	a4, a4, 16
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 5127
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB48_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB48_2:
	.loc	1 823 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB48_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB48_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 823 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp97:
.Lfunc_end48:
	.size	_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end48-_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_49_dispatch_0_elementwise_broadcast_784x128_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32,@function
_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32:
.Lfunc_begin49:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp98:
	.loc	1 829 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	li	a3, 9
	slli	a3, a3, 9
	srli	a4, a2, 1
	slli	a5, a4, 13
	slli	a4, a4, 16
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 1
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 5225
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB49_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB49_2:
	.loc	1 829 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB49_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB49_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 829 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp99:
.Lfunc_end49:
	.size	_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32, .Lfunc_end49-_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32
	.cfi_endproc

	.section	.text._initializer_50_dispatch_0_elementwise_broadcast_784x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32,@function
_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32:
.Lfunc_begin50:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp100:
	.loc	1 844 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	li	a3, 5
	slli	a3, a3, 10
	srli	a4, a2, 2
	slli	a5, a4, 14
	slli	a4, a4, 17
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 3
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 5323
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB50_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB50_2:
	.loc	1 844 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB50_2
	addi	a0, a0, 1
	addi	a3, a3, 1024
	bne	a0, a6, .LBB50_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 844 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp101:
.Lfunc_end50:
	.size	_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32, .Lfunc_end50-_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32
	.cfi_endproc

	.section	.text._initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin51:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp102:
	.loc	1 845 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	li	a4, 3
	slli	a4, a4, 11
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 5519
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB51_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB51_2:
	.loc	1 845 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB51_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB51_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 845 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp103:
.Lfunc_end51:
	.size	_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end51-_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_52_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin52:
	.cfi_startproc
	.loc	1 853 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB52_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 853 12
	bgeu	a0, a2, .LBB52_4
.LBB52_2:
	li	a0, 0
	ret
.LBB52_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 853 12
	bltu	a0, a2, .LBB52_2
.LBB52_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 853 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 5
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 11
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 5715
	add	a0, a0, a1
	add	a7, a3, a5
.LBB52_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB52_6:
	.loc	1 853 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB52_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB52_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 853 12
	li	a0, 0
	ret
.Ltmp104:
.Lfunc_end52:
	.size	_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end52-_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin53:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp105:
	.loc	1 859 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	li	a4, 11
	slli	a4, a4, 10
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 5764
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB53_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB53_2:
	.loc	1 859 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB53_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB53_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 859 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp106:
.Lfunc_end53:
	.size	_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end53-_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_54_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin54:
	.cfi_startproc
	.loc	1 868 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB54_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 868 12
	bgeu	a0, a2, .LBB54_4
.LBB54_2:
	li	a0, 0
	ret
.LBB54_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 868 12
	bltu	a0, a2, .LBB54_2
.LBB54_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 868 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 15
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 10
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 5960
	add	a0, a0, a1
	add	a7, a3, a5
.LBB54_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB54_6:
	.loc	1 868 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB54_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB54_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 868 12
	li	a0, 0
	ret
.Ltmp107:
.Lfunc_end54:
	.size	_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end54-_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_55_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin55:
	.cfi_startproc
	.loc	1 874 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB55_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 874 12
	bgeu	a0, a2, .LBB55_4
.LBB55_2:
	li	a0, 0
	ret
.LBB55_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 874 12
	bltu	a0, a2, .LBB55_2
.LBB55_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 874 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	lui	a6, 4
	sub	a4, a4, a5
	slli	a3, a3, 8
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6009
	add	a0, a0, a1
	add	a7, a3, a5
.LBB55_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB55_6:
	.loc	1 874 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB55_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB55_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 874 12
	li	a0, 0
	ret
.Ltmp108:
.Lfunc_end55:
	.size	_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end55-_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin56:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp109:
	.loc	1 880 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	li	a4, 17
	slli	a4, a4, 10
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 6058
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB56_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB56_2:
	.loc	1 880 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB56_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB56_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 880 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp110:
.Lfunc_end56:
	.size	_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end56-_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_57_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin57:
	.cfi_startproc
	.loc	1 889 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB57_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 889 12
	bgeu	a0, a2, .LBB57_4
.LBB57_2:
	li	a0, 0
	ret
.LBB57_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 889 12
	bltu	a0, a2, .LBB57_2
.LBB57_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 889 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 21
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 10
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6254
	add	a0, a0, a1
	add	a7, a3, a5
.LBB57_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB57_6:
	.loc	1 889 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB57_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB57_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 889 12
	li	a0, 0
	ret
.Ltmp111:
.Lfunc_end57:
	.size	_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end57-_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_58_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin58:
	.cfi_startproc
	.loc	1 895 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB58_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 895 12
	bgeu	a0, a2, .LBB58_4
.LBB58_2:
	li	a0, 0
	ret
.LBB58_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 895 12
	bltu	a0, a2, .LBB58_2
.LBB58_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 895 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 11
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 11
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6303
	add	a0, a0, a1
	add	a7, a3, a5
.LBB58_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB58_6:
	.loc	1 895 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB58_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB58_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 895 12
	li	a0, 0
	ret
.Ltmp112:
.Lfunc_end58:
	.size	_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end58-_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin59:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp113:
	.loc	1 901 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	li	a4, 23
	slli	a4, a4, 10
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 6352
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB59_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB59_2:
	.loc	1 901 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB59_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB59_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 901 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp114:
.Lfunc_end59:
	.size	_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end59-_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_60_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin60:
	.cfi_startproc
	.loc	1 910 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB60_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 910 12
	bgeu	a0, a2, .LBB60_4
.LBB60_2:
	li	a0, 0
	ret
.LBB60_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 910 12
	bltu	a0, a2, .LBB60_2
.LBB60_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 910 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 27
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 10
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6548
	add	a0, a0, a1
	add	a7, a3, a5
.LBB60_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB60_6:
	.loc	1 910 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB60_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB60_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 910 12
	li	a0, 0
	ret
.Ltmp115:
.Lfunc_end60:
	.size	_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end60-_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_61_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin61:
	.cfi_startproc
	.loc	1 916 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB61_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 916 12
	bgeu	a0, a2, .LBB61_4
.LBB61_2:
	li	a0, 0
	ret
.LBB61_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 916 12
	bltu	a0, a2, .LBB61_2
.LBB61_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 916 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	lui	a6, 7
	sub	a4, a4, a5
	slli	a3, a3, 8
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6597
	add	a0, a0, a1
	add	a7, a3, a5
.LBB61_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB61_6:
	.loc	1 916 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB61_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB61_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 916 12
	li	a0, 0
	ret
.Ltmp116:
.Lfunc_end61:
	.size	_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end61-_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin62:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp117:
	.loc	1 922 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	li	a4, 29
	slli	a4, a4, 10
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 6646
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB62_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB62_2:
	.loc	1 922 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB62_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB62_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 922 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp118:
.Lfunc_end62:
	.size	_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end62-_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_63_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin63:
	.cfi_startproc
	.loc	1 931 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB63_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 931 12
	bgeu	a0, a2, .LBB63_4
.LBB63_2:
	li	a0, 0
	ret
.LBB63_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 931 12
	bltu	a0, a2, .LBB63_2
.LBB63_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 931 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	lui	a6, 8
	sub	a4, a4, a5
	slli	a3, a3, 8
	addi	a5, a6, 1024
	ld	a7, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a5
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6842
	add	a0, a0, a1
	add	a7, a7, a3
.LBB63_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB63_6:
	.loc	1 931 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB63_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB63_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 931 12
	li	a0, 0
	ret
.Ltmp119:
.Lfunc_end63:
	.size	_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end63-_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_64_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin64:
	.cfi_startproc
	.loc	1 937 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB64_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 937 12
	bgeu	a0, a2, .LBB64_4
.LBB64_2:
	li	a0, 0
	ret
.LBB64_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 937 12
	bltu	a0, a2, .LBB64_2
.LBB64_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 937 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	li	a6, 17
	sub	a4, a4, a5
	slli	a3, a3, 8
	slli	a6, a6, 11
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 6891
	add	a0, a0, a1
	add	a7, a3, a5
.LBB64_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB64_6:
	.loc	1 937 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB64_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB64_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 937 12
	li	a0, 0
	ret
.Ltmp120:
.Lfunc_end64:
	.size	_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end64-_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin65:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp121:
	.loc	1 943 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	lui	a4, 9
	addi	a4, a4, -1024
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 6940
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB65_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB65_2:
	.loc	1 943 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB65_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB65_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 943 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp122:
.Lfunc_end65:
	.size	_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end65-_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_66_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin66:
	.cfi_startproc
	.loc	1 952 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB66_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 952 12
	bgeu	a0, a2, .LBB66_4
.LBB66_2:
	li	a0, 0
	ret
.LBB66_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 952 12
	bltu	a0, a2, .LBB66_2
.LBB66_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 952 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	lui	a6, 10
	sub	a4, a4, a5
	slli	a3, a3, 8
	addi	a5, a6, -1024
	ld	a7, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a5
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 7136
	add	a0, a0, a1
	add	a7, a7, a3
.LBB66_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB66_6:
	.loc	1 952 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB66_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB66_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 952 12
	li	a0, 0
	ret
.Ltmp123:
.Lfunc_end66:
	.size	_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end66-_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_67_dispatch_0_elementwise_broadcast_196x256_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32,@function
_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32:
.Lfunc_begin67:
	.cfi_startproc
	.loc	1 958 12 prologue_end is_stmt 1
	lwu	a3, 0(a2)
	li	a0, -112
	srli	a4, a3, 2
	mul	a0, a4, a0
	li	a2, -84
	bge	a0, a2, .LBB67_3
	.loc	1 0 12 is_stmt 0
	li	a2, -195
	.loc	1 958 12
	bgeu	a0, a2, .LBB67_4
.LBB67_2:
	li	a0, 0
	ret
.LBB67_3:
	.loc	1 0 12
	li	a0, -84
	li	a2, -195
	.loc	1 958 12
	bltu	a0, a2, .LBB67_2
.LBB67_4:
	.loc	1 0 12
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
	ld	a1, 32(a1)
	.loc	1 958 12
	slli	a5, a4, 14
	slli	a4, a4, 17
	andi	a3, a3, 3
	lui	a6, 10
	sub	a4, a4, a5
	slli	a3, a3, 8
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	or	a4, a4, a3
	add	a3, a3, a6
	addi	a6, a0, 195
	add	a0, a4, a1
	lui	a1, 7185
	add	a0, a0, a1
	add	a7, a3, a5
.LBB67_5:
	.loc	1 0 12
	mv	a4, a2
	li	a2, 256
	mv	a5, a7
	mv	a1, a0
.LBB67_6:
	.loc	1 958 12 is_stmt 1
	ld	a3, 0(a5)
	addi	a2, a2, -8
	sd	a3, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a2, .LBB67_6
	addi	a2, a4, 1
	addi	a0, a0, 1024
	bne	a4, a6, .LBB67_5
	.cfi_def_cfa sp, 16
	.loc	1 0 12 is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	.loc	1 958 12
	li	a0, 0
	ret
.Ltmp124:
.Lfunc_end67:
	.size	_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32, .Lfunc_end67-_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32
	.cfi_endproc

	.section	.text._initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32,@function
_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32:
.Lfunc_begin68:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp125:
	.loc	1 964 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 98
	lui	a4, 10
	addi	a4, a4, 1024
	srli	a5, a2, 4
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 15
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 7234
	add	a3, a3, a4
	add	a4, a3, a1
	lui	a6, 1
	add	t0, a2, a5
	li	a7, 98
.LBB68_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 256
	mv	a3, t0
	mv	a1, a4
.LBB68_2:
	.loc	1 964 12 is_stmt 1
	ld	a2, 0(a3)
	addi	a5, a5, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a3, a3, 8
	bnez	a5, .LBB68_2
	addi	a0, a0, 1
	add	a4, a4, a6
	bne	a0, a7, .LBB68_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 964 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp126:
.Lfunc_end68:
	.size	_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32, .Lfunc_end68-_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32
	.cfi_endproc

	.section	.text._initializer_69_dispatch_0_elementwise_broadcast_196x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32,@function
_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32:
.Lfunc_begin69:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp127:
	.loc	1 973 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 49
	lui	a4, 11
	addi	a4, a4, 1024
	srli	a5, a2, 3
	mul	a3, a5, a3
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	or	a3, a3, a2
	add	a2, a2, a4
	lui	a4, 7430
	add	a3, a3, a4
	add	a3, a3, a1
	add	a7, a2, a5
	li	a6, 98
.LBB69_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB69_2:
	.loc	1 973 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB69_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB69_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 973 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp128:
.Lfunc_end69:
	.size	_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32, .Lfunc_end69-_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32
	.cfi_endproc

	.section	.text._initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32,@function
_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32:
.Lfunc_begin70:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp129:
	.loc	1 974 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 12
	lui	a4, 7528
	addi	a3, a3, -1024
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	t0, a3, a5
	lui	a6, 2
	add	a2, a2, a1
	li	a7, 49
.LBB70_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 512
	mv	a3, a2
	mv	a1, t0
.LBB70_2:
	.loc	1 974 12 is_stmt 1
	ld	a4, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, -8
	sd	a4, 0(a3)
	addi	a3, a3, 8
	bnez	a5, .LBB70_2
	addi	a0, a0, 1
	add	a2, a2, a6
	bne	a0, a7, .LBB70_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 974 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp130:
.Lfunc_end70:
	.size	_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32, .Lfunc_end70-_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32
	.cfi_endproc

	.section	.text._initializer_71_dispatch_0_elementwise_broadcast_49x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32,@function
_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32:
.Lfunc_begin71:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp131:
	.loc	1 982 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 14
	lui	a4, 7626
	addi	a3, a3, -1024
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	a7, a3, a5
	add	a2, a2, a1
	li	a6, 49
.LBB71_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 512
	mv	a5, a2
	mv	a1, a7
.LBB71_2:
	.loc	1 982 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB71_2
	addi	a0, a0, 1
	addi	a2, a2, 2047
	addi	a2, a2, 1
	bne	a0, a6, .LBB71_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 982 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp132:
.Lfunc_end71:
	.size	_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32, .Lfunc_end71-_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32
	.cfi_endproc

	.section	.text._initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32,@function
_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32:
.Lfunc_begin72:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp133:
	.loc	1 988 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 14
	lui	a4, 7651
	addi	a3, a3, 1024
	addi	a4, a4, -2048
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	t0, a3, a5
	lui	a6, 2
	add	a2, a2, a1
	li	a7, 49
.LBB72_1:
	.loc	1 0 12 is_stmt 0
	li	a5, 512
	mv	a3, a2
	mv	a1, t0
.LBB72_2:
	.loc	1 988 12 is_stmt 1
	ld	a4, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, -8
	sd	a4, 0(a3)
	addi	a3, a3, 8
	bnez	a5, .LBB72_2
	addi	a0, a0, 1
	add	a2, a2, a6
	bne	a0, a7, .LBB72_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 988 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp134:
.Lfunc_end72:
	.size	_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32, .Lfunc_end72-_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32
	.cfi_endproc

	.section	.text._initializer_73_dispatch_0_elementwise_broadcast_49x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32,@function
_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32:
.Lfunc_begin73:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp135:
	.loc	1 997 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 16
	lui	a4, 7749
	addi	a3, a3, 1024
	addi	a4, a4, -2048
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	a7, a3, a5
	add	a2, a2, a1
	li	a6, 49
.LBB73_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 512
	mv	a5, a2
	mv	a1, a7
.LBB73_2:
	.loc	1 997 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB73_2
	addi	a0, a0, 1
	addi	a2, a2, 2047
	addi	a2, a2, 1
	bne	a0, a6, .LBB73_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 997 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp136:
.Lfunc_end73:
	.size	_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32, .Lfunc_end73-_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32
	.cfi_endproc

	.section	.text._initializer_74_dispatch_0_elementwise_broadcast_49x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32,@function
_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32:
.Lfunc_begin74:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp137:
	.loc	1 1003 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 17
	lui	a4, 7773
	addi	a3, a3, -1024
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	a7, a3, a5
	add	a2, a2, a1
	li	a6, 49
.LBB74_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 512
	mv	a5, a2
	mv	a1, a7
.LBB74_2:
	.loc	1 1003 12 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB74_2
	addi	a0, a0, 1
	addi	a2, a2, 2047
	addi	a2, a2, 1
	bne	a0, a6, .LBB74_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1003 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp138:
.Lfunc_end74:
	.size	_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32, .Lfunc_end74-_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32
	.cfi_endproc

	.section	.text._initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32,@function
_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32:
.Lfunc_begin75:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp139:
	.loc	1 1009 13 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 17
	lui	a4, 7798
	addi	a3, a3, 1024
	addi	a4, a4, -2048
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	t0, a3, a5
	lui	a6, 2
	add	a2, a2, a1
	li	a7, 49
.LBB75_1:
	.loc	1 0 13 is_stmt 0
	li	a5, 512
	mv	a3, a2
	mv	a1, t0
.LBB75_2:
	.loc	1 1009 13 is_stmt 1
	ld	a4, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, -8
	sd	a4, 0(a3)
	addi	a3, a3, 8
	bnez	a5, .LBB75_2
	addi	a0, a0, 1
	add	a2, a2, a6
	bne	a0, a7, .LBB75_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1009 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp140:
.Lfunc_end75:
	.size	_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32, .Lfunc_end75-_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32
	.cfi_endproc

	.section	.text._initializer_76_dispatch_0_elementwise_broadcast_49x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32,@function
_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32:
.Lfunc_begin76:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp141:
	.loc	1 1018 13 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 19
	lui	a4, 7896
	addi	a3, a3, 1024
	addi	a4, a4, -2048
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	a7, a3, a5
	add	a2, a2, a1
	li	a6, 49
.LBB76_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 512
	mv	a5, a2
	mv	a1, a7
.LBB76_2:
	.loc	1 1018 13 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB76_2
	addi	a0, a0, 1
	addi	a2, a2, 2047
	addi	a2, a2, 1
	bne	a0, a6, .LBB76_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1018 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp142:
.Lfunc_end76:
	.size	_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32, .Lfunc_end76-_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32
	.cfi_endproc

	.section	.text._initializer_77_dispatch_0_elementwise_broadcast_49x512_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32,@function
_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32:
.Lfunc_begin77:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp143:
	.loc	1 1024 13 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 20
	lui	a4, 7920
	addi	a3, a3, -1024
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	a7, a3, a5
	add	a2, a2, a1
	li	a6, 49
.LBB77_1:
	.loc	1 0 13 is_stmt 0
	li	a4, 512
	mv	a5, a2
	mv	a1, a7
.LBB77_2:
	.loc	1 1024 13 is_stmt 1
	ld	a3, 0(a1)
	addi	a1, a1, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB77_2
	addi	a0, a0, 1
	addi	a2, a2, 2047
	addi	a2, a2, 1
	bne	a0, a6, .LBB77_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1024 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp144:
.Lfunc_end77:
	.size	_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32, .Lfunc_end77-_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32
	.cfi_endproc

	.section	.text._initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32,"ax",@progbits
	.p2align	1
	.type	_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32,@function
_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32:
.Lfunc_begin78:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp145:
	.loc	1 1030 13 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 20
	lui	a4, 7945
	addi	a3, a3, 1024
	addi	a4, a4, -2048
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 9
	add	a3, a3, a2
	add	a2, a2, a4
	add	t0, a3, a5
	lui	a6, 2
	add	a2, a2, a1
	li	a7, 49
.LBB78_1:
	.loc	1 0 13 is_stmt 0
	li	a5, 512
	mv	a3, a2
	mv	a1, t0
.LBB78_2:
	.loc	1 1030 13 is_stmt 1
	ld	a4, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, -8
	sd	a4, 0(a3)
	addi	a3, a3, 8
	bnez	a5, .LBB78_2
	addi	a0, a0, 1
	add	a2, a2, a6
	bne	a0, a7, .LBB78_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1030 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp146:
.Lfunc_end78:
	.size	_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32, .Lfunc_end78-_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8,@function
main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8:
.Lfunc_begin79:
	.cfi_startproc
	.loc	1 574 12 prologue_end is_stmt 1
	lwu	a2, 0(a2)
	srli	a0, a2, 3
	andi	a0, a0, -2
	li	a4, 2
	bltu	a4, a0, .LBB79_34
	.loc	1 0 12 is_stmt 0
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	sd	s1, 136(sp)
	sd	s2, 128(sp)
	sd	s3, 120(sp)
	sd	s4, 112(sp)
	sd	s5, 104(sp)
	sd	s6, 96(sp)
	sd	s7, 88(sp)
	sd	s8, 80(sp)
	sd	s9, 72(sp)
	sd	s10, 64(sp)
	sd	s11, 56(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	addi	s0, sp, 160
	.cfi_def_cfa s0, 0
	ld	a1, 32(a1)
	slli	a3, a2, 60
	ld	t0, 0(a1)
	ld	a1, 8(a1)
	sd	a1, -120(s0)
	srli	a1, a3, 62
	li	a3, 3
	.loc	1 574 12
	sub	a5, a3, a0
	andi	a3, a2, 3
	sd	a5, -152(s0)
	bltu	a5, a4, .LBB79_3
	.loc	1 0 12
	li	a4, 2
	sd	a4, -152(s0)
.LBB79_3:
	li	a4, 0
	lui	a6, 9
	li	a5, 168
	.loc	1 574 12 is_stmt 1
	srli	a2, a2, 4
	lui	s1, 98
	mul	a7, a2, s1
	slli	s1, a3, 5
	mul	a5, a3, a5
	slli	a3, a3, 8
	sub	a3, a3, s1
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 274400
	fmv.w.x	fa2, s1
	lui	s1, 12
	add	a0, a0, a5
	addi	a2, a6, 1776
	addi	a5, s1, 1024
	mul	a2, a1, a2
	mul	a1, a1, a5
	lui	a5, 250162
	addi	a5, a5, 2026
	fmv.w.x	fa1, a5
	lui	s8, 2048
	add	a0, a0, a2
	lui	s6, 1024
	fmv.w.x	fa0, zero
	add	a1, a1, a7
	addi	s8, s8, -1
	addi	a0, a0, 2047
	or	a1, a1, a3
	addi	a0, a0, 32
	add	t4, t0, a1
	ld	a1, -120(s0)
	add	s2, a1, a0
	addi	a0, a0, 168
	sd	a0, -160(s0)
	li	t1, 31
	j	.LBB79_5
.LBB79_4:
	.loc	1 0 12 is_stmt 0
	ld	a4, -128(s0)
	.loc	1 574 12
	addi	a4, a4, 1
	ld	s2, -144(s0)
	addi	s2, s2, 1
	ld	t4, -136(s0)
	lui	a0, 49
	add	t4, t4, a0
	ld	a0, -152(s0)
	beq	a4, a0, .LBB79_33
.LBB79_5:
	.loc	1 0 12
	li	s5, 0
	sd	a4, -128(s0)
	ld	a0, -160(s0)
	.loc	1 574 12
	add	a0, a0, a4
	sd	a0, -112(s0)
	sd	t4, -136(s0)
	sd	s2, -144(s0)
	j	.LBB79_7
.LBB79_6:
	addi	s5, s5, 1
	addi	s2, s2, 690
	addi	t4, t4, 896
	li	a0, 56
	beq	s5, a0, .LBB79_4
.LBB79_7:
	li	a0, 690
	mul	a0, s5, a0
	ld	a1, -112(s0)
	add	a0, a0, a1
	ld	s7, -120(s0)
	add	s7, s7, a0
	mv	s3, t4
	mv	s4, s2
	j	.LBB79_9
.LBB79_8:
	.loc	1 574 12 is_stmt 1
	fcvt.l.s	a0, ft0, rtz
	fcvt.l.s	a1, ft2, rtz
	sb	a1, 0(s4)
	sb	a0, 3(s4)
	addi	s4, s4, 6
	addi	s3, s3, 8
	beq	s4, s7, .LBB79_6
.LBB79_9:
	flw	ft0, 0(s3)
	fdiv.s	ft0, ft0, fa1
	fabs.s	ft1, ft0
	flt.s	a1, ft1, fa5
	fmv.s	ft2, ft0
	beqz	a1, .LBB79_11
	fcvt.w.s	a1, ft0, rmm
	fcvt.s.w	ft1, a1, rmm
	fsgnj.s	ft2, ft1, ft0
.LBB79_11:
	flw	ft1, 4(s3)
	fdiv.s	ft1, ft1, fa1
	fabs.s	ft3, ft1
	flt.s	a1, ft3, fa5
	fmv.s	ft3, ft1
	beqz	a1, .LBB79_13
	fcvt.w.s	a1, ft1, rmm
	fcvt.s.w	ft3, a1, rmm
	fsgnj.s	ft3, ft3, ft1
.LBB79_13:
	fmv.x.w	a3, ft2
	slli	a1, a3, 33
	srli	a1, a1, 56
	addi	a2, a1, -128
	sltu	a4, a1, a2
	addi	a4, a4, -1
	and	t2, a4, a2
	bltu	t2, t1, .LBB79_15
	.loc	1 0 12 is_stmt 0
	li	t2, 31
.LBB79_15:
	.loc	1 574 12 is_stmt 1
	fmv.x.w	s9, ft3
	slli	a2, s9, 33
	srli	t6, a2, 56
	addi	a4, t6, -128
	sltu	s1, t6, a4
	addi	s1, s1, -1
	and	t5, s1, a4
	bltu	t5, t1, .LBB79_17
	.loc	1 0 12 is_stmt 0
	li	t5, 31
.LBB79_17:
	.loc	1 574 12 is_stmt 1
	fmv.x.w	a6, ft0
	slli	s1, a6, 33
	srli	a7, s1, 56
	addi	t0, a7, -127
	sgtz	s1, t0
	neg	s1, s1
	and	t3, s1, t0
	blt	t3, t1, .LBB79_19
	.loc	1 0 12 is_stmt 0
	li	t3, 31
.LBB79_19:
	.loc	1 574 12 is_stmt 1
	fmv.x.w	s10, ft1
	slli	s1, s10, 33
	srli	ra, s1, 56
	addi	s11, ra, -127
	sgtz	s1, s11
	neg	s1, s1
	and	s1, s1, s11
	blt	s1, t1, .LBB79_21
	.loc	1 0 12 is_stmt 0
	li	s1, 31
.LBB79_21:
	.loc	1 574 12 is_stmt 1
	addi	a1, a1, -127
	sllw	a3, a3, t2
	addi	t0, t0, 1
	srlw	a5, s6, t3
	srlw	a4, s8, t3
	addi	a2, a7, -126
	seqz	a1, a1
	and	a3, a3, s8
	seqz	a0, t0
	and	a4, a4, a6
	snez	a3, a3
	addi	a0, a0, -1
	or	a1, a1, a3
	and	a0, a0, a5
	xor	a0, a0, a4
	seqz	a0, a0
	sltiu	a2, a2, 24
	and	a0, a0, a2
	and	a0, a0, a1
	beqz	a0, .LBB79_23
	fsgnj.s	ft4, fa4, ft0
	fsub.s	ft2, ft2, ft4
.LBB79_23:
	addi	a0, t6, -127
	sllw	a1, s9, t5
	addi	s11, s11, 1
	srlw	a2, s6, s1
	srlw	a3, s8, s1
	addi	a4, ra, -126
	seqz	a0, a0
	and	a1, a1, s8
	seqz	a5, s11
	and	a3, a3, s10
	snez	a1, a1
	addi	a5, a5, -1
	or	a0, a0, a1
	and	a2, a2, a5
	xor	a2, a2, a3
	seqz	a1, a2
	sltiu	a2, a4, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB79_28
	fsgnj.s	ft0, ft2, ft0
	fadd.s	ft2, ft0, fa0
	fle.s	a0, ft2, fa3
	fmv.s	ft0, fa3
	beqz	a0, .LBB79_29
.LBB79_25:
	fsgnj.s	ft1, ft3, ft1
	fadd.s	ft2, ft1, fa0
	fle.s	a0, ft2, fa3
	fmv.s	ft1, fa3
	beqz	a0, .LBB79_30
.LBB79_26:
	fle.s	a0, fa2, ft0
	fmv.s	ft2, fa2
	beqz	a0, .LBB79_31
.LBB79_27:
	fle.s	a0, fa2, ft1
	fmv.s	ft0, fa2
	bnez	a0, .LBB79_8
	j	.LBB79_32
.LBB79_28:
	fsgnj.s	ft4, fa4, ft1
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft0, ft2, ft0
	fadd.s	ft2, ft0, fa0
	fle.s	a0, ft2, fa3
	fmv.s	ft0, fa3
	bnez	a0, .LBB79_25
.LBB79_29:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft0, ft2
	.loc	1 574 12
	fsgnj.s	ft1, ft3, ft1
	fadd.s	ft2, ft1, fa0
	fle.s	a0, ft2, fa3
	fmv.s	ft1, fa3
	bnez	a0, .LBB79_26
.LBB79_30:
	.loc	1 0 12
	fmv.s	ft1, ft2
	.loc	1 574 12
	fle.s	a0, fa2, ft0
	fmv.s	ft2, fa2
	bnez	a0, .LBB79_27
.LBB79_31:
	.loc	1 0 12
	fmv.s	ft2, ft0
	.loc	1 574 12
	fle.s	a0, fa2, ft1
	fmv.s	ft0, fa2
	bnez	a0, .LBB79_8
.LBB79_32:
	.loc	1 0 12
	fmv.s	ft0, ft1
	j	.LBB79_8
.LBB79_33:
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)
	ld	s0, 144(sp)
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s3, 120(sp)
	ld	s4, 112(sp)
	ld	s5, 104(sp)
	ld	s6, 96(sp)
	ld	s7, 88(sp)
	ld	s8, 80(sp)
	ld	s9, 72(sp)
	ld	s10, 64(sp)
	ld	s11, 56(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	.cfi_restore s10
	.cfi_restore s11
	addi	sp, sp, 160
	.cfi_def_cfa_offset 0
.LBB79_34:
	.loc	1 574 12 is_stmt 1
	li	a0, 0
	ret
.Ltmp147:
.Lfunc_end79:
	.size	main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8, .Lfunc_end79-main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32,@function
main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32:
.Lfunc_begin80:
	.loc	1 1 0
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp148:
	.loc	1 682 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 39
	addi	a3, a3, -1024
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	slli	a2, a2, 14
	add	a2, a2, a3
	addi	a3, a4, 2047
	add	a1, a1, a2
	addi	a7, a3, 1985
	li	a6, 64
.LBB80_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a1
	mv	a2, a7
.LBB80_2:
	.loc	1 682 12 is_stmt 1
	ld	a3, 0(a2)
	addi	a2, a2, 8
	addi	a4, a4, -8
	sd	a3, 0(a5)
	addi	a5, a5, 8
	bnez	a4, .LBB80_2
	addi	a0, a0, 1
	addi	a1, a1, 256
	bne	a0, a6, .LBB80_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 682 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp149:
.Lfunc_end80:
	.size	main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32, .Lfunc_end80-main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_2_generic_112x112x7x7x3_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_2_generic_112x112x7x7x3_i8,@function
main_graph$async_dispatch_2_generic_112x112x7x7x3_i8:
.Lfunc_begin81:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp150:
	.loc	1 574 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 682 12
	lwu	a1, 0(a2)
	lui	a2, 5
	li	a3, 168
	lui	a4, 64
	addi	a2, a2, 1600
	addi	a4, a4, 1280
	srli	a5, a1, 2
	mul	a2, a5, a2
	mul	a4, a5, a4
	lui	a5, 1
	addi	a5, a5, 20
	andi	a1, a1, 3
	mul	a3, a1, a3
	mul	a5, a1, a5
	lui	s1, 823
	add	a2, a2, a3
	li	s5, 7
	addi	a3, s1, -1024
	add	a4, a4, a5
	.loc	1 574 12
	ld	t1, 0(a0)
	.loc	1 682 12
	add	a3, a3, a4
	li	t3, 28
	ld	t2, 8(a0)
	add	t1, t1, a2
	lui	a7, 4
	addi	a7, a7, 80
	add	t2, t2, a3
	li	a6, 16
.LBB81_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t2
	mv	t6, t1
.LBB81_2:
	li	s2, 0
	mv	s3, t5
	mv	s4, t6
.LBB81_3:
	li	a2, 0
	mv	a4, s3
	mv	a3, s4
.LBB81_4:
	li	a0, -3
	mv	a5, a4
	mv	s1, a3
.LBB81_5:
	.loc	1 682 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	bnez	a0, .LBB81_5
	addi	a2, a2, 1
	addi	a3, a3, 3
	addi	a4, a4, 3
	bne	a2, s5, .LBB81_4
	addi	s2, s2, 1
	addi	s4, s4, 690
	addi	s3, s3, 21
	bne	s2, s5, .LBB81_3
	addi	t4, t4, 1
	addi	t6, t6, 6
	addi	t5, t5, 147
	bne	t4, t3, .LBB81_2
	addi	t0, t0, 1
	addi	t1, t1, 1380
	add	t2, t2, a7
	bne	t0, a6, .LBB81_1
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 682 12 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp151:
.Lfunc_end81:
	.size	main_graph$async_dispatch_2_generic_112x112x7x7x3_i8, .Lfunc_end81-main_graph$async_dispatch_2_generic_112x112x7x7x3_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32,@function
main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32:
.Lfunc_begin82:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -288
	.cfi_def_cfa_offset 288
	sd	ra, 280(sp)
	sd	s0, 272(sp)
	sd	s1, 264(sp)
	sd	s2, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 288
	.cfi_def_cfa s0, 0
	li	t1, 0
	lui	a6, 2048
.Ltmp152:
	.loc	1 682 12 prologue_end
	ld	a1, 32(a1)
	.loc	1 687 12
	lwu	a4, 0(a2)
	li	a7, 147
	lui	t0, 823
	lui	t2, 1
	li	t4, -1
	li	a0, 1
	li	s1, 127
	slli	a3, a0, 48
	slli	a0, s1, 39
	addi	a0, a0, 1
	slli	a0, a0, 16
	.loc	1 682 12
	ld	t5, 0(a1)
	ld	a5, 8(a1)
	ld	t3, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a0, a0, 4
	gemmini.config	a0, a3
	lui	a0, 243179
	li	a1, 2
	addi	a0, a0, -785
	slli	a0, a0, 32
	addi	a0, a0, 16
	gemmini.config	a1, a0
	li	t6, 64
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a0, s1, 257
	gemmini.config	a0, a7
	addi	a0, s1, 265
	gemmini.config	a0, t6
	li	a0, 256
	addi	a1, s1, 273
	gemmini.config	a1, a0
	li	a0, 13
	lui	a1, 160
	addi	s1, t0, -1024
	addi	a3, t2, 192
	slli	a0, a0, 32
	addi	a1, a1, 1
	slli	a1, a1, 16
	addi	a1, a1, 1
	gemmini.loop_ws.config.bounds	a0, a1
	slli	a0, a4, 2
	andi	a0, a0, -16
	mul	a1, a0, a7
	add	a1, a1, s1
	slli	a2, a4, 62
	srli	a2, a2, 58
	add	a3, a3, a2
	add	a3, a3, a5
	srli	a5, t4, 1
	add	a1, a1, t5
	and	a1, a1, a5
	and	a3, a3, a5
	gemmini.loop_ws.config.addrs.ab	a1, a3
	lui	a1, 39
	lui	a3, 274400
	fmv.w.x	fa5, a3
	.loc	1 687 12
	srli	a3, a4, 2
	andi	a4, a4, 3
	slli	a3, a3, 12
	slli	a4, a4, 6
	or	a3, a3, a4
	addi	t2, s0, -288
	.loc	1 682 12
	slli	a0, a0, 8
	slli	a2, a2, 2
	add	a0, a0, a2
	lui	a2, 1273
	addi	a2, a2, -256
	.loc	1 687 12
	add	a2, a2, a3
	li	t0, 16
	.loc	1 682 12
	add	a0, a0, t5
	lui	a3, 80
	.loc	1 687 12
	add	t3, t3, a2
	lui	t5, 790528
	addi	a6, a6, -1
	addi	a1, a1, -1024
	addi	a3, a3, 1
	.loc	1 682 12
	add	a0, a0, a1
	and	a1, t2, a5
	and	a0, a0, a5
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	a7, t6
	gemmini.loop_ws.config.strides.dc	t6, t0
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 256950
	addi	a0, a0, -533
	fmv.w.x	fa4, a0
	lui	a7, 1024
	j	.LBB82_2
.LBB82_1:
	.loc	1 687 12
	addi	t1, t1, 1
	addi	t2, t2, 16
	addi	t3, t3, 256
	beq	t1, t0, .LBB82_15
.LBB82_2:
	.loc	1 0 12 is_stmt 0
	li	a0, 16
	mv	a3, t3
	mv	a2, t2
	j	.LBB82_4
.LBB82_3:
	.loc	1 686 12 is_stmt 1
	fcvt.l.s	a1, fa2, rtz
	.loc	1 687 12
	addi	a2, a2, 1
	addi	a0, a0, -1
	fcvt.s.w	fa3, a1
	fmul.s	fa3, fa3, fa4
	fsw	fa3, 0(a3)
	addi	a3, a3, 4
	beqz	a0, .LBB82_1
.LBB82_4:
	.loc	1 687 12
	lb	a1, 0(a2)
	.loc	1 685 12
	sgtz	a4, a1
	neg	a4, a4
	and	t6, a4, a1
	fcvt.s.lu	fa3, t6
	.loc	1 686 12
	fmv.x.w	a4, fa3
	srliw	a1, a4, 23
	addi	a5, a1, -128
	sltu	s1, a1, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	li	s2, 31
	bgeu	a5, s2, .LBB82_8
	addi	s1, a1, -127
	sgtz	a1, s1
	neg	a1, a1
	and	a1, a1, s1
	bge	a1, s2, .LBB82_9
.LBB82_6:
	beq	s1, t4, .LBB82_10
.LBB82_7:
	srlw	s2, a7, a1
	j	.LBB82_11
.LBB82_8:
	.loc	1 0 12 is_stmt 0
	li	a5, 31
	.loc	1 686 12
	addi	s1, a1, -127
	sgtz	a1, s1
	neg	a1, a1
	and	a1, a1, s1
	blt	a1, s2, .LBB82_6
.LBB82_9:
	.loc	1 0 12
	li	a1, 31
	.loc	1 686 12
	bne	s1, t4, .LBB82_7
.LBB82_10:
	.loc	1 0 12
	li	s2, 0
.LBB82_11:
	seqz	s1, s1
	srlw	a5, a6, a5
	.loc	1 686 12 is_stmt 1
	srlw	a1, a6, a1
	and	a5, a5, a4
	and	a1, a1, a4
	add	a4, a4, t5
	srliw	a4, a4, 26
	snez	a5, a5
	xor	a1, a1, s2
	or	a5, a5, s1
	seqz	a1, a1
	sltiu	a4, a4, 3
	and	a1, a1, a4
	and	a1, a1, a5
	beqz	a1, .LBB82_13
	addi	t6, t6, -1
	slli	t6, t6, 56
	srai	a1, t6, 56
	fcvt.s.w	fa3, a1
	fabs.s	fa3, fa3
.LBB82_13:
	fle.s	a1, fa5, fa3
	fmv.s	fa2, fa5
	bnez	a1, .LBB82_3
	.loc	1 0 12 is_stmt 0
	fmv.s	fa2, fa3
	j	.LBB82_3
.LBB82_15:
	.loc	1 682 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 288
	.loc	1 682 12 epilogue_begin is_stmt 0
	ld	ra, 280(sp)
	ld	s0, 272(sp)
	ld	s1, 264(sp)
	ld	s2, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 288
	.cfi_def_cfa_offset 0
	ret
.Ltmp153:
.Lfunc_end82:
	.size	main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32, .Lfunc_end82-main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_4_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_4_slow_memcpy,@function
main_graph$async_dispatch_4_slow_memcpy:
.Lfunc_begin83:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp154:
	.loc	1 687 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 688 12
	lwu	a1, 0(a2)
	li	a2, 7
	lui	a3, 1273
	lui	a4, 57
	slli	a2, a2, 11
	slli	a5, a1, 63
	srli	a1, a1, 1
	srai	a5, a5, 63
	and	a2, a2, a5
	slli	a5, a1, 15
	mul	a4, a1, a4
	slli	a1, a1, 18
	sub	a1, a1, a5
	.loc	1 687 12
	ld	a5, 0(a0)
	.loc	1 688 12
	ld	a0, 8(a0)
	or	a1, a1, a2
	add	a2, a2, a4
	lui	a4, 2064
	add	a1, a1, a5
	li	t4, 56
	add	a0, a0, a2
	lui	a6, 7
	addi	t2, a3, -256
	addi	t3, a4, 512
	add	t2, t2, a1
	addi	a7, a6, 512
	add	t3, t3, a0
	li	t0, 8
.LBB83_1:
	.loc	1 0 12 is_stmt 0
	li	t5, 0
	mv	a2, t3
	mv	a1, t2
.LBB83_2:
	li	a0, 256
	mv	a5, a2
	mv	a3, a1
.LBB83_3:
	.loc	1 688 12 is_stmt 1
	ld	a4, 0(a3)
	addi	a3, a3, 8
	addi	a0, a0, -8
	sd	a4, 0(a5)
	addi	a5, a5, 8
	bnez	a0, .LBB83_3
	addi	t5, t5, 1
	addi	a1, a1, 256
	addi	a2, a2, 256
	bne	t5, t4, .LBB83_2
	addi	t1, t1, 1
	add	t2, t2, a6
	add	t3, t3, a7
	bne	t1, t0, .LBB83_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 688 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp155:
.Lfunc_end83:
	.size	main_graph$async_dispatch_4_slow_memcpy, .Lfunc_end83-main_graph$async_dispatch_4_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_5_conv_64x56x56x3x3_f32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_5_conv_64x56x56x3x3_f32,@function
main_graph$async_dispatch_5_conv_64x56x56x3x3_f32:
.Lfunc_begin84:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	sd	ra, 248(sp)
	sd	s0, 240(sp)
	sd	s1, 232(sp)
	sd	s2, 224(sp)
	sd	s3, 216(sp)
	sd	s4, 208(sp)
	sd	s5, 200(sp)
	sd	s6, 192(sp)
	sd	s7, 184(sp)
	sd	s8, 176(sp)
	sd	s9, 168(sp)
	sd	s10, 160(sp)
	sd	s11, 152(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	addi	s0, sp, 256
	.cfi_def_cfa s0, 0
	andi	sp, sp, -64
	li	s1, 0
.Ltmp156:
	.loc	1 688 12 prologue_end
	ld	a0, 32(a1)
	lui	a6, 2057
	lwu	a2, 0(a2)
	addi	s2, sp, 132
	li	a7, -1
	lui	t0, 7
	li	s10, 3
	lui	a5, 256950
	lui	t1, 307200
	lui	s9, 2048
	lui	a1, 260096
	fmv.w.x	fa5, zero
	lui	a3, 798720
	lui	a4, 274400
	slli	a7, a7, 32
	addi	s11, t0, 512
	addi	a5, a5, -533
	fmv.w.x	fa4, t1
	addi	t2, s9, -1
	fmv.w.x	fa3, a1
	fmv.w.x	fa2, a3
	fmv.w.x	fa1, a4
	addi	a1, a7, 511
	fmv.w.x	fa0, a5
	slli	a1, a1, 23
	sd	a1, 104(sp)
	ld	a1, 0(a0)
	ld	a0, 8(a0)
	sd	a0, 40(sp)
	slli	a0, a2, 62
	andi	a3, a2, 1
	slli	a2, a2, 1
	srli	a0, a0, 63
	andi	a2, a2, -8
	sd	a2, 32(sp)
	slli	a2, a3, 2
	slli	a4, a3, 5
	slli	a5, a3, 3
	slli	a3, a3, 6
	sub	a4, a4, a2
	slli	a2, a0, 2
	sub	t0, a3, a5
	slli	a3, a0, 5
	sub	a3, a3, a2
	sd	a3, 64(sp)
	slli	a2, a0, 3
	slli	a0, a0, 6
	sub	a0, a0, a2
	sd	a0, 56(sp)
	sd	a4, 96(sp)
	addiw	a4, a4, 1
	sd	a4, 88(sp)
	add	a1, a1, a6
	sd	a1, 24(sp)
	sd	t2, 112(sp)
	li	s6, 31
	j	.LBB84_2
.LBB84_1:
	.loc	1 0 12 is_stmt 0
	ld	s1, 48(sp)
	.loc	1 688 12
	addi	s1, s1, 1
	li	a0, 8
	beq	s1, a0, .LBB84_40
.LBB84_2:
	.loc	1 0 12
	li	a3, 0
	sd	s1, 48(sp)
	ld	a0, 32(sp)
	.loc	1 688 12
	or	a0, a0, s1
	slli	ra, a0, 2
	ld	a1, 24(sp)
	add	ra, ra, a1
	ld	a1, 40(sp)
	add	a0, a0, a1
	sd	a0, 72(sp)
	j	.LBB84_4
.LBB84_3:
	.loc	1 0 12
	ld	a3, 80(sp)
	.loc	1 688 12
	addi	a3, a3, 1
	li	a0, 28
	beq	a3, a0, .LBB84_1
.LBB84_4:
	.loc	1 0 12
	li	a0, 0
	ld	a1, 64(sp)
	add	a1, a1, a3
	slli	a2, a1, 9
	slli	a1, a1, 12
	sub	a1, a1, a2
	sd	a3, 80(sp)
	slli	t6, a3, 1
	ld	a2, 56(sp)
	add	t6, t6, a2
	ld	a2, 72(sp)
	.loc	1 688 12
	add	a1, a1, a2
	sd	a1, 120(sp)
	j	.LBB84_6
.LBB84_5:
	.loc	1 689 12 is_stmt 1
	fcvt.l.s	a0, ft0, rtz
	fcvt.l.s	a1, ft2, rtz
	ld	a2, 96(sp)
	.loc	1 688 12
	add	a2, a2, t4
	slli	a2, a2, 6
	ld	a3, 120(sp)
	add	a2, a2, a3
	sb	a1, 0(a2)
	ld	a1, 88(sp)
	add	a1, a1, t4
	slli	a1, a1, 6
	add	a1, a1, a3
	sb	a0, 0(a1)
	addi	a0, t4, 2
	li	a1, 26
	bgeu	t4, a1, .LBB84_3
.LBB84_6:
	.loc	1 0 12 is_stmt 0
	li	s3, 0
	mv	t4, a0
	ld	a0, 104(sp)
	.loc	1 688 12
	sd	a0, 128(sp)
	j	.LBB84_8
.LBB84_7:
	addi	s3, s3, 1
	beq	s3, s10, .LBB84_16
.LBB84_8:
	.loc	1 0 12
	li	a1, 0
	.loc	1 688 12
	add	a0, t6, s3
	mul	a3, a0, s11
	add	a3, a3, ra
	li	a6, 1
	j	.LBB84_10
.LBB84_9:
	andi	a0, a6, 1
	li	a1, 2
	li	a6, 0
	beqz	a0, .LBB84_7
.LBB84_10:
	.loc	1 0 12
	li	s1, 0
	li	a0, 0
	or	a7, a1, t0
	addi	a1, sp, 128
	j	.LBB84_12
.LBB84_11:
	.loc	1 688 12
	fsw	ft1, 0(a1)
	li	a0, 1
	andi	a2, s1, 1
	li	s1, 1
	mv	a1, s2
	bnez	a2, .LBB84_9
.LBB84_12:
	.loc	1 0 12
	li	a5, 0
	flw	ft0, 0(a1)
	or	a0, a0, t4
	slli	a0, a0, 1
	add	a2, a7, a0
	mv	a0, a6
	j	.LBB84_14
.LBB84_13:
	.loc	1 688 12 is_stmt 1
	andi	a4, a0, 1
	li	a5, 1
	fmv.s	ft0, ft1
	li	a0, 0
	beqz	a4, .LBB84_11
.LBB84_14:
	.loc	1 688 12
	or	a5, a5, a2
	slli	a5, a5, 8
	add	a5, a5, a3
	flw	ft1, -256(a5)
	fle.s	a5, ft0, ft1
	feq.s	a4, ft1, ft1
	xori	a4, a4, 1
	or	a4, a4, a5
	bnez	a4, .LBB84_13
	.loc	1 0 12 is_stmt 0
	fmv.s	ft1, ft0
	j	.LBB84_13
.LBB84_16:
	.loc	1 689 12 is_stmt 1
	flw	ft0, 128(sp)
	flw	ft1, 132(sp)
	fdiv.s	ft0, ft0, fa0
	fabs.s	ft2, ft0
	flt.s	a0, ft2, fa4
	fmv.s	ft2, ft0
	beqz	a0, .LBB84_18
	fcvt.w.s	a0, ft0, rmm
	fcvt.s.w	ft2, a0, rmm
	fsgnj.s	ft2, ft2, ft0
.LBB84_18:
	fdiv.s	ft1, ft1, fa0
	fabs.s	ft3, ft1
	flt.s	a0, ft3, fa4
	fmv.s	ft3, ft1
	beqz	a0, .LBB84_20
	fcvt.w.s	a0, ft1, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft1
.LBB84_20:
	fmv.x.w	t2, ft2
	slli	a0, t2, 33
	srli	a7, a0, 56
	addi	a0, a7, -128
	sltu	a1, a7, a0
	addi	a1, a1, -1
	and	t5, a1, a0
	bltu	t5, s6, .LBB84_22
	.loc	1 0 12 is_stmt 0
	li	t5, 31
.LBB84_22:
	.loc	1 689 12 is_stmt 1
	fmv.x.w	s5, ft3
	slli	a0, s5, 33
	srli	s9, a0, 56
	addi	a1, s9, -128
	sltu	a3, s9, a1
	addi	a3, a3, -1
	and	s8, a3, a1
	bltu	s8, s6, .LBB84_24
	.loc	1 0 12 is_stmt 0
	li	s8, 31
.LBB84_24:
	.loc	1 689 12 is_stmt 1
	fmv.x.w	t1, ft0
	slli	a1, t1, 33
	srli	s4, a1, 56
	addi	a4, s4, -127
	sgtz	a1, a4
	neg	a1, a1
	and	t3, a1, a4
	blt	t3, s6, .LBB84_26
	.loc	1 0 12 is_stmt 0
	li	t3, 31
.LBB84_26:
	.loc	1 689 12 is_stmt 1
	fmv.x.w	s3, ft1
	slli	s1, s3, 33
	srli	s7, s1, 56
	addi	a6, s7, -127
	sgtz	a1, a6
	neg	a1, a1
	and	a1, a1, a6
	blt	a1, s6, .LBB84_28
	.loc	1 0 12 is_stmt 0
	li	a1, 31
.LBB84_28:
	.loc	1 689 12 is_stmt 1
	addi	a5, a7, -127
	sllw	a2, t2, t5
	addi	a4, a4, 1
	lui	a7, 1024
	srlw	s1, a7, t3
	ld	t2, 112(sp)
	srlw	a3, t2, t3
	addi	a0, s4, -126
	seqz	a5, a5
	and	a2, a2, t2
	seqz	a4, a4
	and	a3, a3, t1
	snez	a2, a2
	addi	a4, a4, -1
	or	a2, a2, a5
	and	a4, a4, s1
	xor	a3, a3, a4
	seqz	a3, a3
	sltiu	a0, a0, 24
	and	a0, a0, a3
	and	a0, a0, a2
	beqz	a0, .LBB84_30
	fsgnj.s	ft4, fa3, ft0
	fsub.s	ft2, ft2, ft4
.LBB84_30:
	addi	a0, s9, -127
	sllw	a2, s5, s8
	addi	a6, a6, 1
	srlw	a3, a7, a1
	srlw	a1, t2, a1
	addi	a4, s7, -126
	seqz	a0, a0
	and	a2, a2, t2
	seqz	a5, a6
	and	a1, a1, s3
	snez	a2, a2
	addi	a5, a5, -1
	or	a0, a0, a2
	and	a3, a3, a5
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a4, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB84_35
	fsgnj.s	ft0, ft2, ft0
	fadd.s	ft2, ft0, fa5
	fle.s	a0, ft2, fa2
	fmv.s	ft0, fa2
	beqz	a0, .LBB84_36
.LBB84_32:
	fsgnj.s	ft1, ft3, ft1
	fadd.s	ft2, ft1, fa5
	fle.s	a0, ft2, fa2
	fmv.s	ft1, fa2
	beqz	a0, .LBB84_37
.LBB84_33:
	fle.s	a0, fa1, ft0
	fmv.s	ft2, fa1
	beqz	a0, .LBB84_38
.LBB84_34:
	fle.s	a0, fa1, ft1
	fmv.s	ft0, fa1
	bnez	a0, .LBB84_5
	j	.LBB84_39
.LBB84_35:
	fsgnj.s	ft4, fa3, ft1
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft0, ft2, ft0
	fadd.s	ft2, ft0, fa5
	fle.s	a0, ft2, fa2
	fmv.s	ft0, fa2
	bnez	a0, .LBB84_32
.LBB84_36:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft0, ft2
	.loc	1 689 12
	fsgnj.s	ft1, ft3, ft1
	fadd.s	ft2, ft1, fa5
	fle.s	a0, ft2, fa2
	fmv.s	ft1, fa2
	bnez	a0, .LBB84_33
.LBB84_37:
	.loc	1 0 12
	fmv.s	ft1, ft2
	.loc	1 689 12
	fle.s	a0, fa1, ft0
	fmv.s	ft2, fa1
	bnez	a0, .LBB84_34
.LBB84_38:
	.loc	1 0 12
	fmv.s	ft2, ft0
	.loc	1 689 12
	fle.s	a0, fa1, ft1
	fmv.s	ft0, fa1
	bnez	a0, .LBB84_5
.LBB84_39:
	.loc	1 0 12
	fmv.s	ft0, ft1
	j	.LBB84_5
.LBB84_40:
	.loc	1 688 12 is_stmt 1
	li	a0, 0
	.loc	1 688 12 epilogue_begin is_stmt 0
	addi	sp, s0, -256
	.cfi_def_cfa sp, 256
	ld	ra, 248(sp)
	ld	s0, 240(sp)
	ld	s1, 232(sp)
	ld	s2, 224(sp)
	ld	s3, 216(sp)
	ld	s4, 208(sp)
	ld	s5, 200(sp)
	ld	s6, 192(sp)
	ld	s7, 184(sp)
	ld	s8, 176(sp)
	ld	s9, 168(sp)
	ld	s10, 160(sp)
	ld	s11, 152(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	.cfi_restore s10
	.cfi_restore s11
	addi	sp, sp, 256
	.cfi_def_cfa_offset 0
	ret
.Ltmp157:
.Lfunc_end84:
	.size	main_graph$async_dispatch_5_conv_64x56x56x3x3_f32, .Lfunc_end84-main_graph$async_dispatch_5_conv_64x56x56x3x3_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32,@function
main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32:
.Lfunc_begin85:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp158:
	.loc	1 691 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	li	a2, 1
	li	a6, 127
	slli	a2, a2, 48
	slli	a4, a6, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a1)
	ld	a3, 8(a1)
	ld	a7, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	lui	a2, 31073
	li	a4, 6
	addi	a2, a2, 415
	slli	a2, a2, 35
	addi	a2, a2, 64
	gemmini.config	a4, a2
	li	a2, 64
	slli	a6, a6, 35
	addi	a6, a6, 1
	slli	a6, a6, 20
	addi	a4, a6, 257
	gemmini.config	a4, a2
	addi	a4, a6, 265
	gemmini.config	a4, a2
	li	a4, 256
	addi	a1, a6, 273
	gemmini.config	a1, a4
	lui	a1, 49
	srli	a4, a0, 2
	slli	a0, a0, 62
	slli	a4, a4, 10
	srli	a0, a0, 58
	add	a5, a5, a4
	or	a4, a4, a0
	add	a1, a1, a4
	add	a1, a1, a7
	lui	a6, 3461
	slli	a4, a4, 2
	add	a0, a0, a3
	add	a3, a3, a4
	li	a4, -1
	add	a3, a3, a6
	lui	a6, 262145
	srli	a4, a4, 1
	and	a5, a5, a4
	and	a0, a0, a4
	and	a1, a1, a4
	and	a3, a3, a4
	lui	a4, 80
	slli	a6, a6, 4
	addi	a4, a4, 257
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	zero, a6
	gemmini.loop_ws.config.addrs.ab	a5, a0
	gemmini.loop_ws.config.addrs.dc	a3, a1
	gemmini.loop_ws.config.strides.ab	a2, a2
	gemmini.loop_ws.config.strides.dc	a2, a2
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 691 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp159:
.Lfunc_end85:
	.size	main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32, .Lfunc_end85-main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32,@function
main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32:
.Lfunc_begin86:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp160:
	.loc	1 692 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 3
	addi	a3, a3, 1408
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	srli	a5, a2, 2
	andi	a2, a2, 3
	slli	a5, a5, 16
	slli	a2, a2, 8
	or	a5, a5, a2
	add	a2, a2, a3
	lui	a3, 98
	add	a3, a3, a5
	add	a3, a3, a1
	add	a7, a2, a4
	li	a6, 64
.LBB86_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB86_2:
	.loc	1 692 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB86_2
	addi	a0, a0, 1
	addi	a3, a3, 1024
	bne	a0, a6, .LBB86_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 692 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp161:
.Lfunc_end86:
	.size	main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32, .Lfunc_end86-main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_8_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_8_slow_memcpy,@function
main_graph$async_dispatch_8_slow_memcpy:
.Lfunc_begin87:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	li	t4, 0
	li	a5, 0
	li	a7, 7
.Ltmp162:
	.loc	1 698 12 prologue_end
	ld	a0, 24(a1)
	ld	a1, 32(a1)
	.loc	1 700 12
	lwu	t0, 0(a2)
	li	a2, 29
	slli	a7, a7, 9
	slli	a2, a2, 8
	addi	a6, a7, 128
	.loc	1 698 12
	lwu	t1, 0(a0)
	.loc	1 700 12
	lwu	a0, 4(a0)
	.loc	1 698 12
	ld	a3, 0(a1)
	.loc	1 700 12
	ld	t6, 8(a1)
	mul	a1, t0, a2
	slli	t0, t0, 1
	add	a1, a1, a7
	.loc	1 698 12
	add	t1, t1, a3
	.loc	1 700 12
	add	a0, a0, a1
	add	a1, a0, t6
	addi	t2, a0, 256
	addi	t3, a1, 192
	li	t5, 56
.LBB87_1:
	.loc	1 0 12 is_stmt 0
	li	a2, 0
	or	a0, a5, t0
	.loc	1 700 12
	mul	a1, a5, a6
	mul	a4, a0, a7
	add	a5, t3, a1
	add	a4, a4, t1
	add	s2, t2, a1
.LBB87_2:
	slli	a1, a2, 6
	add	a1, a1, s2
	add	a3, t6, a1
	mv	a1, a4
	mv	s1, a5
.LBB87_3:
	lh	a0, 0(a1)
	sh	a0, 0(s1)
	addi	s1, s1, 2
	addi	a1, a1, 2
	bne	s1, a3, .LBB87_3
	addi	a2, a2, 1
	addi	a4, a4, 64
	addi	a5, a5, 64
	bne	a2, t5, .LBB87_2
	.loc	1 0 12
	li	a5, 1
	.loc	1 700 12
	andi	a0, t4, 1
	li	t4, 1
	beqz	a0, .LBB87_1
	li	a0, 0
	.cfi_def_cfa sp, 32
	.loc	1 700 12 epilogue_begin
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
.Ltmp163:
.Lfunc_end87:
	.size	main_graph$async_dispatch_8_slow_memcpy, .Lfunc_end87-main_graph$async_dispatch_8_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_9_generic_56x56x3x3x64_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_9_generic_56x56x3x3x64_i8,@function
main_graph$async_dispatch_9_generic_56x56x3x3x64_i8:
.Lfunc_begin88:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp164:
	.loc	1 700 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a1, 935
	li	a3, 29
	slli	a3, a3, 10
	ld	a4, 0(a0)
	ld	a0, 8(a0)
	srli	a5, a2, 2
	slli	s1, a5, 12
	mul	a3, a5, a3
	slli	a5, a5, 18
	sub	a5, a5, s1
	lui	s1, 882
	addi	a1, a1, -1792
	add	a0, a0, a1
	slli	a1, a2, 62
	srai	a1, a1, 4
	srli	a1, a1, 61
	slli	a1, a1, 2
	add	a4, a4, s1
	slli	s1, a1, 9
	slli	a1, a1, 6
	or	s1, s1, a1
	add	a3, a3, a1
	li	s9, 24
	add	a5, a5, s1
	li	s5, 3
	slli	a2, a2, 63
	srli	a2, a2, 58
	or	a3, a3, a2
	or	a2, a2, a5
	li	t3, 28
	add	t1, a3, a4
	lui	a6, 8
	addi	a6, a6, -512
	add	t2, a2, a0
	li	a7, 8
.LBB88_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t1
	mv	t6, t2
.LBB88_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB88_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB88_4:
	li	a0, 0
	mv	a3, s7
	mv	a4, s8
.LBB88_5:
	mv	a2, a0
	li	a0, -8
	mv	s1, a3
	mv	a5, a4
.LBB88_6:
	.loc	1 700 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a0, a0, 1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	addi	s1, s1, 1
	bnez	a0, .LBB88_6
	addi	a0, a2, 8
	addi	a4, a4, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB88_5
	addi	s6, s6, 1
	addi	s8, s8, 64
	addi	s7, s7, 64
	bne	s6, s5, .LBB88_4
	addi	s3, s3, 1
	addi	s4, s4, 192
	addi	a0, s2, 2047
	addi	s2, a0, 1665
	bne	s3, s5, .LBB88_3
	addi	t4, t4, 1
	addi	t6, t6, 576
	addi	t5, t5, 64
	bne	t4, t3, .LBB88_2
	addi	t0, t0, 1
	add	t2, t2, a6
	addi	a0, t1, 2047
	addi	t1, a0, 1665
	bne	t0, a7, .LBB88_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 700 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp165:
.Lfunc_end88:
	.size	main_graph$async_dispatch_9_generic_56x56x3x3x64_i8, .Lfunc_end88-main_graph$async_dispatch_9_generic_56x56x3x3x64_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32,@function
main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32:
.Lfunc_begin89:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp166:
	.loc	1 700 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 4
	li	a2, 1
	li	t0, 127
	lui	a7, 244477
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 576
	addi	a2, a7, 1037
	slli	a2, a2, 32
	addi	a2, a2, 64
	gemmini.config	a4, a2
	li	a7, 64
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 256
	addi	a4, a6, -1664
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 2
	slli	a0, a0, 62
	andi	a2, a2, -16
	srli	a0, a0, 58
	slli	a3, a2, 9
	slli	a2, a2, 6
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 3657
	add	a2, a2, t1
	lui	a4, 935
	addi	a4, a4, -1792
	add	a3, a3, a4
	lui	a4, 49
	add	t3, t3, a0
	add	a4, a4, t3
	li	a5, -1
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 576
	srli	a5, a5, 1
	and	a1, a1, a5
	and	a3, a3, a5
	and	a4, a4, a5
	and	a0, a0, a5
	lui	a5, 80
	addi	a2, a2, 1
	addi	a5, a5, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a4
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 700 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp167:
.Lfunc_end89:
	.size	main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32, .Lfunc_end89-main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32,@function
main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32:
.Lfunc_begin90:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp168:
	.loc	1 706 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 13
	addi	a3, a3, -1664
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	srli	a5, a2, 2
	andi	a2, a2, 3
	slli	a5, a5, 16
	slli	a2, a2, 8
	or	a5, a5, a2
	add	a2, a2, a3
	lui	a3, 1376
	addi	a3, a3, -1792
	add	a3, a3, a5
	add	a3, a3, a1
	add	a7, a2, a4
	li	a6, 64
.LBB90_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB90_2:
	.loc	1 706 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB90_2
	addi	a0, a0, 1
	addi	a3, a3, 1024
	bne	a0, a6, .LBB90_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 706 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp169:
.Lfunc_end90:
	.size	main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32, .Lfunc_end90-main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32,@function
main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32:
.Lfunc_begin91:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp170:
	.loc	1 706 12 prologue_end
	ld	a3, 32(a1)
	lwu	t2, 0(a2)
	lui	a6, 49
	li	a2, 1
	li	t0, 127
	lui	a7, 124181
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t3, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 4
	gemmini.config	a4, a2
	li	a4, 2
	li	t1, 64
	addi	a2, a7, -287
	slli	a2, a2, 33
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a4, t0, 257
	gemmini.config	a4, t1
	addi	a4, t0, 265
	gemmini.config	a4, a7
	li	a4, 1024
	addi	a2, t0, 273
	gemmini.config	a2, a4
	andi	a2, t2, -16
	slli	a4, a2, 6
	add	a4, a4, a6
	lui	a0, 5
	slli	t2, t2, 60
	srli	a3, t2, 56
	slli	a2, a2, 8
	add	a0, a0, a3
	or	a2, a2, a3
	add	a0, a0, a1
	lui	a1, 882
	add	a1, a1, a2
	add	a1, a1, t3
	lui	a3, 1376
	slli	a2, a2, 2
	add	a4, a4, a5
	add	a2, a2, a5
	li	a5, -1
	addi	a3, a3, -1792
	add	a2, a2, a3
	lui	a3, 262145
	srli	a5, a5, 1
	and	a4, a4, a5
	and	a0, a0, a5
	and	a1, a1, a5
	and	a2, a2, a5
	lui	a5, 80
	slli	a3, a3, 4
	addi	a5, a5, 1
	addi	a3, a3, 1
	gemmini.loop_ws.config.bounds	zero, a3
	gemmini.loop_ws.config.addrs.ab	a4, a0
	gemmini.loop_ws.config.addrs.dc	a2, a1
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 706 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp171:
.Lfunc_end91:
	.size	main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32, .Lfunc_end91-main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32,@function
main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32:
.Lfunc_begin92:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t4, 2048
.Ltmp172:
	.loc	1 692 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a6, 1
	lui	t3, 98
	li	t6, -1
	li	a1, 1
	li	t0, 127
	lui	s1, 247953
	li	a5, 2
	li	t5, 64
	slli	a1, a1, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t2, 0(a0)
	ld	a3, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 4
	gemmini.config	a4, a1
	li	a0, 256
	li	a1, 1024
	addi	a4, s1, 1649
	slli	a4, a4, 32
	addi	a4, a4, 16
	gemmini.config	a5, a4
	lui	a4, 1078
	lui	a5, 307200
	fmv.w.x	fa5, a5
	lui	a5, 260096
	fmv.w.x	fa4, a5
	lui	a5, 798720
	fmv.w.x	fa3, a5
	lui	a5, 256811
	addi	a5, a5, -399
	fmv.w.x	fa2, a5
	lui	a5, 254235
	addi	a5, a5, 377
	fmv.w.x	fa1, a5
	lui	a5, 254787
	slli	t0, t0, 35
	addi	a5, a5, -1446
	addi	t0, t0, 1
	fmv.w.x	fa0, a5
	slli	t0, t0, 20
	addi	a5, t0, 257
	gemmini.config	a5, t5
	addi	a5, t0, 265
	gemmini.config	a5, a0
	andi	a5, a2, -16
	addi	s1, t0, 273
	gemmini.config	s1, a1
	slli	a1, a2, 60
	.loc	1 713 12
	srli	a2, a2, 4
	.loc	1 692 12
	srli	a1, a1, 56
	slli	s1, a5, 10
	.loc	1 713 12
	slli	a2, a2, 12
	.loc	1 692 12
	add	a6, a6, a1
	.loc	1 713 12
	or	a2, a2, a1
	.loc	1 692 12
	slli	a1, a1, 2
	add	a1, a1, s1
	lui	s1, 882
	.loc	1 713 12
	add	a4, a4, a2
	add	a2, a2, s1
	addi	t0, s0, -320
	.loc	1 692 12
	add	a3, a3, a6
	lui	s1, 262145
	.loc	1 713 12
	add	t1, t1, a4
	li	a6, 16
	.loc	1 692 12
	slli	a5, a5, 6
	add	a5, a5, t2
	add	a1, a1, t2
	.loc	1 713 12
	add	t2, t2, a2
	lui	a2, 80
	fmv.w.x	ft0, zero
	addi	s2, t4, -1
	.loc	1 692 12
	add	a1, a1, t3
	srli	a4, t6, 1
	slli	s1, s1, 4
	addi	a2, a2, 1
	and	a5, a5, a4
	and	a3, a3, a4
	and	a1, a1, a4
	and	a4, t0, a4
	addi	s1, s1, 1
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a5, a3
	gemmini.loop_ws.config.addrs.dc	a1, a4
	gemmini.loop_ws.config.strides.ab	t5, a0
	gemmini.loop_ws.config.strides.dc	a0, a6
	gemmini.loop_ws	a2, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t4, 1024
	li	s6, 31
	j	.LBB92_2
.LBB92_1:
	.loc	1 713 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 256
	addi	t2, t2, 256
	beq	a7, a6, .LBB92_30
.LBB92_2:
	.loc	1 0 12 is_stmt 0
	li	t5, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB92_4
.LBB92_3:
	.loc	1 713 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t5, t5, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t5, .LBB92_1
.LBB92_4:
	.loc	1 713 12
	lb	a0, 0(s5)
	lb	a1, 0(s3)
	.loc	1 696 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 708 12
	fcvt.s.w	ft3, a1
	.loc	1 709 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 710 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB92_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB92_6:
	fmv.x.w	a1, ft3
	slli	s1, a1, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a2, s1, a0
	addi	a2, a2, -1
	and	a3, a2, a0
	bltu	a3, s6, .LBB92_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB92_8:
	.loc	1 710 12 is_stmt 1
	fmv.x.w	a4, ft2
	slli	a5, a4, 33
	srli	a5, a5, 56
	addi	a2, a5, -127
	sgtz	a0, a2
	neg	a0, a0
	and	a0, a0, a2
	blt	a0, s6, .LBB92_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB92_10:
	.loc	1 710 12 is_stmt 1
	beq	a2, t6, .LBB92_12
	srlw	a2, t4, a0
	j	.LBB92_13
.LBB92_12:
	.loc	1 0 12 is_stmt 0
	li	a2, 0
.LBB92_13:
	addi	s1, s1, -127
	srlw	a3, s2, a3
	.loc	1 710 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a5, a5, -126
	seqz	s1, s1
	and	a1, a1, a3
	and	a0, a0, a4
	snez	a1, a1
	xor	a0, a0, a2
	or	a1, a1, s1
	seqz	a0, a0
	sltiu	a2, a5, 24
	and	a0, a0, a2
	and	a0, a0, a1
	fmv.s	ft4, ft0
	bnez	a0, .LBB92_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB92_22
.LBB92_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB92_17
.LBB92_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB92_17:
	.loc	1 710 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 712 12
	sgtz	a1, a0
	neg	a1, a1
	and	a1, a1, a0
	fcvt.s.lu	ft2, a1
	.loc	1 713 12
	fmv.x.w	a4, ft2
	srliw	a0, a4, 23
	addi	a2, a0, -128
	sltu	a3, a0, a2
	addi	a3, a3, -1
	and	a3, a3, a2
	li	a2, 31
	bgeu	a3, a2, .LBB92_23
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	bge	a0, a2, .LBB92_24
.LBB92_19:
	beq	a5, t6, .LBB92_25
.LBB92_20:
	srlw	a2, t4, a0
	j	.LBB92_26
.LBB92_21:
	.loc	1 710 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB92_15
.LBB92_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 710 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB92_16
	j	.LBB92_17
.LBB92_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 713 12 is_stmt 1
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	blt	a0, a2, .LBB92_19
.LBB92_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 713 12
	bne	a5, t6, .LBB92_20
.LBB92_25:
	.loc	1 0 12
	li	a2, 0
.LBB92_26:
	seqz	a5, a5
	srlw	a3, s2, a3
	.loc	1 713 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a4
	and	a0, a0, a4
	add	a4, a4, t3
	srliw	a4, a4, 26
	snez	a3, a3
	xor	a0, a0, a2
	or	a3, a3, a5
	seqz	a0, a0
	sltiu	a2, a4, 3
	and	a0, a0, a2
	and	a0, a0, a3
	beqz	a0, .LBB92_28
	addi	a1, a1, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	fcvt.s.w	ft2, a1
	fabs.s	ft2, ft2
.LBB92_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB92_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB92_3
.LBB92_30:
	.loc	1 692 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 692 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp173:
.Lfunc_end92:
	.size	main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32, .Lfunc_end92-main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32,@function
main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32:
.Lfunc_begin93:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp174:
	.loc	1 715 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	lui	a7, 1078
	lui	a6, 9
	li	a4, 1
	li	t0, 127
	slli	a4, a4, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	a1, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a4
	lui	a4, 125168
	li	a5, 6
	addi	a4, a4, 197
	slli	a4, a4, 33
	addi	a4, a4, 64
	gemmini.config	a5, a4
	slli	a4, a0, 2
	andi	a4, a4, -16
	slli	a5, a4, 8
	add	a5, a5, a7
	li	a7, 256
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	slli	a0, a0, 62
	srli	a0, a0, 58
	add	a6, a6, a0
	slli	a4, a4, 6
	or	a0, a0, a4
	addi	a4, t0, 257
	gemmini.config	a4, a7
	lui	a4, 3853
	add	a2, a2, a5
	li	a5, 64
	add	a6, a6, a3
	add	a3, a3, a4
	addi	a4, t0, 265
	gemmini.config	a4, a5
	add	a1, a1, a0
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, -1
	addi	a4, t0, 273
	gemmini.config	a4, a7
	lui	t0, 256
	srli	a3, a3, 1
	and	a2, a2, a3
	and	a4, a6, a3
	and	a1, a1, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	t0, t0, 1
	addi	a3, a3, 257
	slli	t0, t0, 16
	addi	t0, t0, 1
	gemmini.loop_ws.config.bounds	zero, t0
	gemmini.loop_ws.config.addrs.ab	a2, a4
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	a7, a5
	gemmini.loop_ws.config.strides.dc	a5, a5
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 715 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp175:
.Lfunc_end93:
	.size	main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32, .Lfunc_end93-main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_16_generic_56x56x3x3x64_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_16_generic_56x56x3x3x64_i8,@function
main_graph$async_dispatch_16_generic_56x56x3x3x64_i8:
.Lfunc_begin94:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp176:
	.loc	1 721 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a1, 102
	li	a3, 29
	slli	a3, a3, 10
	ld	a4, 0(a0)
	ld	a0, 8(a0)
	srli	a5, a2, 2
	slli	s1, a5, 12
	mul	a3, a5, a3
	slli	a5, a5, 18
	sub	a5, a5, s1
	lui	s1, 49
	addi	a1, a1, -1792
	add	a0, a0, a1
	slli	a1, a2, 62
	srai	a1, a1, 4
	srli	a1, a1, 61
	slli	a1, a1, 2
	add	a4, a4, s1
	slli	s1, a1, 9
	slli	a1, a1, 6
	or	s1, s1, a1
	add	a3, a3, a1
	li	s9, 24
	add	a5, a5, s1
	li	s5, 3
	slli	a2, a2, 63
	srli	a2, a2, 58
	or	a3, a3, a2
	or	a2, a2, a5
	li	t3, 28
	add	t1, a3, a4
	lui	a6, 8
	addi	a6, a6, -512
	add	t2, a2, a0
	li	a7, 8
.LBB94_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t1
	mv	t6, t2
.LBB94_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB94_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB94_4:
	li	a0, 0
	mv	a3, s7
	mv	a4, s8
.LBB94_5:
	mv	a2, a0
	li	a0, -8
	mv	s1, a3
	mv	a5, a4
.LBB94_6:
	.loc	1 721 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a0, a0, 1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	addi	s1, s1, 1
	bnez	a0, .LBB94_6
	addi	a0, a2, 8
	addi	a4, a4, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB94_5
	addi	s6, s6, 1
	addi	s8, s8, 64
	addi	s7, s7, 64
	bne	s6, s5, .LBB94_4
	addi	s3, s3, 1
	addi	s4, s4, 192
	addi	a0, s2, 2047
	addi	s2, a0, 1665
	bne	s3, s5, .LBB94_3
	addi	t4, t4, 1
	addi	t6, t6, 576
	addi	t5, t5, 64
	bne	t4, t3, .LBB94_2
	addi	t0, t0, 1
	add	t2, t2, a6
	addi	a0, t1, 2047
	addi	t1, a0, 1665
	bne	t0, a7, .LBB94_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 721 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp177:
.Lfunc_end94:
	.size	main_graph$async_dispatch_16_generic_56x56x3x3x64_i8, .Lfunc_end94-main_graph$async_dispatch_16_generic_56x56x3x3x64_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32,@function
main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32:
.Lfunc_begin95:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp178:
	.loc	1 721 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 13
	li	a2, 1
	li	t0, 127
	lui	a7, 123230
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 576
	addi	a2, a7, 573
	slli	a2, a2, 33
	addi	a2, a2, 64
	gemmini.config	a4, a2
	li	a7, 64
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 256
	addi	a4, a6, -640
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 2
	slli	a0, a0, 62
	andi	a2, a2, -16
	srli	a0, a0, 58
	slli	a3, a2, 9
	slli	a2, a2, 6
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 4049
	add	a2, a2, t1
	lui	a4, 102
	addi	a4, a4, -1792
	add	a3, a3, a4
	li	a4, -1
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 576
	srli	a4, a4, 1
	and	a1, a1, a4
	and	a5, t3, a4
	and	a3, a3, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a2, a2, 1
	addi	a4, a4, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 721 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp179:
.Lfunc_end95:
	.size	main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32, .Lfunc_end95-main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32,@function
main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32:
.Lfunc_begin96:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp180:
	.loc	1 727 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 22
	addi	a3, a3, -640
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	srli	a5, a2, 2
	andi	a2, a2, 3
	slli	a5, a5, 16
	slli	a2, a2, 8
	or	a5, a5, a2
	add	a2, a2, a3
	lui	a3, 1274
	add	a3, a3, a5
	add	a3, a3, a1
	add	a7, a2, a4
	li	a6, 64
.LBB96_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB96_2:
	.loc	1 727 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB96_2
	addi	a0, a0, 1
	addi	a3, a3, 1024
	bne	a0, a6, .LBB96_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 727 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp181:
.Lfunc_end96:
	.size	main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32, .Lfunc_end96-main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32,@function
main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32:
.Lfunc_begin97:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t4, 2048
.Ltmp182:
	.loc	1 727 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a6, 13
	lui	t3, 1274
	li	t6, -1
	li	a1, 1
	li	t0, 127
	lui	s1, 247191
	li	a5, 2
	li	t5, 64
	slli	a1, a1, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t2, 0(a0)
	ld	a3, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 4
	gemmini.config	a4, a1
	li	a0, 256
	li	a1, 1024
	addi	a4, s1, 1711
	slli	a4, a4, 32
	addi	a4, a4, 16
	gemmini.config	a5, a4
	lui	a4, 49
	lui	a5, 307200
	fmv.w.x	fa5, a5
	lui	a5, 260096
	fmv.w.x	fa4, a5
	lui	a5, 798720
	fmv.w.x	fa3, a5
	lui	a5, 254787
	addi	a5, a5, -1446
	fmv.w.x	fa2, a5
	lui	a5, 255630
	addi	a5, a5, -867
	fmv.w.x	fa1, a5
	lui	a5, 255267
	slli	t0, t0, 35
	addi	a5, a5, -1345
	addi	t0, t0, 1
	fmv.w.x	fa0, a5
	slli	t0, t0, 20
	addi	a5, t0, 257
	gemmini.config	a5, t5
	addi	a5, t0, 265
	gemmini.config	a5, a0
	andi	a5, a2, -16
	addi	s1, t0, 273
	gemmini.config	s1, a1
	slli	a1, a2, 60
	.loc	1 734 12
	srli	a2, a2, 4
	.loc	1 727 12
	srli	a1, a1, 56
	slli	s1, a5, 10
	.loc	1 734 12
	slli	a2, a2, 12
	.loc	1 727 12
	add	a6, a6, a1
	.loc	1 734 12
	or	a2, a2, a1
	.loc	1 727 12
	slli	a1, a1, 2
	add	a1, a1, s1
	lui	s1, 1078
	.loc	1 734 12
	add	a4, a4, a2
	add	a2, a2, s1
	addi	t0, s0, -320
	.loc	1 727 12
	add	a3, a3, a6
	lui	s1, 262145
	.loc	1 734 12
	add	t1, t1, a4
	li	a6, 16
	.loc	1 727 12
	slli	a5, a5, 6
	add	a5, a5, t2
	add	a1, a1, t2
	.loc	1 734 12
	add	t2, t2, a2
	lui	a2, 80
	fmv.w.x	ft0, zero
	addi	s2, t4, -1
	.loc	1 727 12
	add	a1, a1, t3
	srli	a4, t6, 1
	slli	s1, s1, 4
	addi	a2, a2, 1
	and	a5, a5, a4
	and	a3, a3, a4
	and	a1, a1, a4
	and	a4, t0, a4
	addi	s1, s1, 1
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a5, a3
	gemmini.loop_ws.config.addrs.dc	a1, a4
	gemmini.loop_ws.config.strides.ab	t5, a0
	gemmini.loop_ws.config.strides.dc	a0, a6
	gemmini.loop_ws	a2, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t4, 1024
	li	s6, 31
	j	.LBB97_2
.LBB97_1:
	.loc	1 734 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 256
	addi	t2, t2, 256
	beq	a7, a6, .LBB97_30
.LBB97_2:
	.loc	1 0 12 is_stmt 0
	li	t5, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB97_4
.LBB97_3:
	.loc	1 734 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t5, t5, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t5, .LBB97_1
.LBB97_4:
	.loc	1 734 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 714 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 729 12
	fcvt.s.w	ft3, a1
	.loc	1 730 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 731 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB97_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB97_6:
	fmv.x.w	a1, ft3
	slli	s1, a1, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a2, s1, a0
	addi	a2, a2, -1
	and	a3, a2, a0
	bltu	a3, s6, .LBB97_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB97_8:
	.loc	1 731 12 is_stmt 1
	fmv.x.w	a4, ft2
	slli	a5, a4, 33
	srli	a5, a5, 56
	addi	a2, a5, -127
	sgtz	a0, a2
	neg	a0, a0
	and	a0, a0, a2
	blt	a0, s6, .LBB97_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB97_10:
	.loc	1 731 12 is_stmt 1
	beq	a2, t6, .LBB97_12
	srlw	a2, t4, a0
	j	.LBB97_13
.LBB97_12:
	.loc	1 0 12 is_stmt 0
	li	a2, 0
.LBB97_13:
	addi	s1, s1, -127
	srlw	a3, s2, a3
	.loc	1 731 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a5, a5, -126
	seqz	s1, s1
	and	a1, a1, a3
	and	a0, a0, a4
	snez	a1, a1
	xor	a0, a0, a2
	or	a1, a1, s1
	seqz	a0, a0
	sltiu	a2, a5, 24
	and	a0, a0, a2
	and	a0, a0, a1
	fmv.s	ft4, ft0
	bnez	a0, .LBB97_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB97_22
.LBB97_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB97_17
.LBB97_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB97_17:
	.loc	1 731 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 733 12
	sgtz	a1, a0
	neg	a1, a1
	and	a1, a1, a0
	fcvt.s.lu	ft2, a1
	.loc	1 734 12
	fmv.x.w	a4, ft2
	srliw	a0, a4, 23
	addi	a2, a0, -128
	sltu	a3, a0, a2
	addi	a3, a3, -1
	and	a3, a3, a2
	li	a2, 31
	bgeu	a3, a2, .LBB97_23
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	bge	a0, a2, .LBB97_24
.LBB97_19:
	beq	a5, t6, .LBB97_25
.LBB97_20:
	srlw	a2, t4, a0
	j	.LBB97_26
.LBB97_21:
	.loc	1 731 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB97_15
.LBB97_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 731 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB97_16
	j	.LBB97_17
.LBB97_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 734 12 is_stmt 1
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	blt	a0, a2, .LBB97_19
.LBB97_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 734 12
	bne	a5, t6, .LBB97_20
.LBB97_25:
	.loc	1 0 12
	li	a2, 0
.LBB97_26:
	seqz	a5, a5
	srlw	a3, s2, a3
	.loc	1 734 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a4
	and	a0, a0, a4
	add	a4, a4, t3
	srliw	a4, a4, 26
	snez	a3, a3
	xor	a0, a0, a2
	or	a3, a3, a5
	seqz	a0, a0
	sltiu	a2, a4, 3
	and	a0, a0, a2
	and	a0, a0, a3
	beqz	a0, .LBB97_28
	addi	a1, a1, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	fcvt.s.w	ft2, a1
	fabs.s	ft2, ft2
.LBB97_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB97_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB97_3
.LBB97_30:
	.loc	1 727 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 727 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp183:
.Lfunc_end97:
	.size	main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32, .Lfunc_end97-main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32,@function
main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32:
.Lfunc_begin98:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp184:
	.loc	1 736 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	lui	a7, 49
	lui	a6, 17
	li	a4, 1
	li	t0, 127
	slli	a4, a4, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	a1, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a4
	lui	a4, 62711
	li	a5, 6
	addi	a4, a4, 1761
	slli	a4, a4, 34
	addi	a4, a4, 64
	gemmini.config	a5, a4
	slli	a4, a0, 2
	andi	a4, a4, -16
	slli	a5, a4, 8
	add	a5, a5, a7
	li	a7, 256
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	slli	a0, a0, 62
	srli	a0, a0, 58
	add	a6, a6, a0
	slli	a4, a4, 6
	or	a0, a0, a4
	addi	a4, t0, 257
	gemmini.config	a4, a7
	lui	a4, 4245
	add	a2, a2, a5
	li	a5, 64
	add	a6, a6, a3
	add	a3, a3, a4
	addi	a4, t0, 265
	gemmini.config	a4, a5
	add	a1, a1, a0
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, -1
	addi	a4, t0, 273
	gemmini.config	a4, a7
	lui	t0, 256
	srli	a3, a3, 1
	and	a2, a2, a3
	and	a4, a6, a3
	and	a1, a1, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	t0, t0, 1
	addi	a3, a3, 257
	slli	t0, t0, 16
	addi	t0, t0, 1
	gemmini.loop_ws.config.bounds	zero, t0
	gemmini.loop_ws.config.addrs.ab	a2, a4
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	a7, a5
	gemmini.loop_ws.config.strides.dc	a5, a5
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 736 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp185:
.Lfunc_end98:
	.size	main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32, .Lfunc_end98-main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_22_generic_56x56x3x3x64_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_22_generic_56x56x3x3x64_i8,@function
main_graph$async_dispatch_22_generic_56x56x3x3x64_i8:
.Lfunc_begin99:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp186:
	.loc	1 742 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a1, 298
	li	a3, 29
	slli	a3, a3, 10
	ld	a4, 0(a0)
	ld	a0, 8(a0)
	srli	a5, a2, 2
	slli	s1, a5, 12
	mul	a3, a5, a3
	slli	a5, a5, 18
	sub	a5, a5, s1
	lui	s1, 245
	addi	a1, a1, -1792
	add	a0, a0, a1
	slli	a1, a2, 62
	srai	a1, a1, 4
	srli	a1, a1, 61
	slli	a1, a1, 2
	add	a4, a4, s1
	slli	s1, a1, 9
	slli	a1, a1, 6
	or	s1, s1, a1
	add	a3, a3, a1
	li	s9, 24
	add	a5, a5, s1
	li	s5, 3
	slli	a2, a2, 63
	srli	a2, a2, 58
	or	a3, a3, a2
	or	a2, a2, a5
	li	t3, 28
	add	t1, a3, a4
	lui	a6, 8
	addi	a6, a6, -512
	add	t2, a2, a0
	li	a7, 8
.LBB99_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t1
	mv	t6, t2
.LBB99_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB99_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB99_4:
	li	a0, 0
	mv	a3, s7
	mv	a4, s8
.LBB99_5:
	mv	a2, a0
	li	a0, -8
	mv	s1, a3
	mv	a5, a4
.LBB99_6:
	.loc	1 742 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a0, a0, 1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	addi	s1, s1, 1
	bnez	a0, .LBB99_6
	addi	a0, a2, 8
	addi	a4, a4, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB99_5
	addi	s6, s6, 1
	addi	s8, s8, 64
	addi	s7, s7, 64
	bne	s6, s5, .LBB99_4
	addi	s3, s3, 1
	addi	s4, s4, 192
	addi	a0, s2, 2047
	addi	s2, a0, 1665
	bne	s3, s5, .LBB99_3
	addi	t4, t4, 1
	addi	t6, t6, 576
	addi	t5, t5, 64
	bne	t4, t3, .LBB99_2
	addi	t0, t0, 1
	add	t2, t2, a6
	addi	a0, t1, 2047
	addi	t1, a0, 1665
	bne	t0, a7, .LBB99_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 742 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp187:
.Lfunc_end99:
	.size	main_graph$async_dispatch_22_generic_56x56x3x3x64_i8, .Lfunc_end99-main_graph$async_dispatch_22_generic_56x56x3x3x64_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32,@function
main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32:
.Lfunc_begin100:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp188:
	.loc	1 742 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 22
	li	a2, 1
	li	t0, 127
	lui	a7, 245349
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 576
	addi	a2, a7, 1663
	slli	a2, a2, 32
	addi	a2, a2, 64
	gemmini.config	a4, a2
	li	a7, 64
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 256
	addi	a4, a6, 384
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 2
	slli	a0, a0, 62
	andi	a2, a2, -16
	srli	a0, a0, 58
	slli	a3, a2, 9
	slli	a2, a2, 6
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 4441
	add	a2, a2, t1
	lui	a4, 298
	addi	a4, a4, -1792
	add	a3, a3, a4
	li	a4, -1
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 576
	srli	a4, a4, 1
	and	a1, a1, a4
	and	a5, t3, a4
	and	a3, a3, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a2, a2, 1
	addi	a4, a4, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 742 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp189:
.Lfunc_end100:
	.size	main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32, .Lfunc_end100-main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32,@function
main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32:
.Lfunc_begin101:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp190:
	.loc	1 748 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 31
	addi	a3, a3, 384
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	srli	a5, a2, 2
	andi	a2, a2, 3
	slli	a5, a5, 16
	slli	a2, a2, 8
	or	a5, a5, a2
	add	a2, a2, a3
	lui	a3, 739
	addi	a3, a3, -1792
	add	a3, a3, a5
	add	a3, a3, a1
	add	a7, a2, a4
	li	a6, 64
.LBB101_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB101_2:
	.loc	1 748 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB101_2
	addi	a0, a0, 1
	addi	a3, a3, 1024
	bne	a0, a6, .LBB101_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 748 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp191:
.Lfunc_end101:
	.size	main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32, .Lfunc_end101-main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32,@function
main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32:
.Lfunc_begin102:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t4, 2048
.Ltmp192:
	.loc	1 748 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	a6, 21
	lui	t3, 739
	li	t6, -1
	li	a1, 1
	li	t0, 127
	lui	s1, 248143
	li	a5, 2
	li	t5, 64
	slli	a1, a1, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t2, 0(a0)
	ld	a3, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 4
	gemmini.config	a4, a1
	li	a0, 256
	li	a1, 1024
	addi	a4, s1, -1195
	slli	a4, a4, 32
	addi	a4, a4, 16
	gemmini.config	a5, a4
	lui	a4, 245
	lui	a5, 307200
	fmv.w.x	fa5, a5
	lui	a5, 260096
	fmv.w.x	fa4, a5
	lui	a5, 798720
	fmv.w.x	fa3, a5
	lui	a5, 255267
	addi	a5, a5, -1345
	fmv.w.x	fa2, a5
	lui	a5, 254966
	addi	a5, a5, -1564
	fmv.w.x	fa1, a5
	lui	a5, 255035
	slli	t0, t0, 35
	addi	a5, a5, 1478
	addi	t0, t0, 1
	fmv.w.x	fa0, a5
	slli	t0, t0, 20
	addi	a5, t0, 257
	gemmini.config	a5, t5
	addi	a5, t0, 265
	gemmini.config	a5, a0
	andi	a5, a2, -16
	addi	s1, t0, 273
	gemmini.config	s1, a1
	slli	a1, a2, 60
	.loc	1 755 12
	srli	a2, a2, 4
	.loc	1 748 12
	srli	a1, a1, 56
	slli	s1, a5, 10
	.loc	1 755 12
	slli	a2, a2, 12
	.loc	1 748 12
	add	a6, a6, a1
	.loc	1 755 12
	or	a2, a2, a1
	.loc	1 748 12
	slli	a1, a1, 2
	add	a1, a1, s1
	lui	s1, 49
	.loc	1 755 12
	add	a4, a4, a2
	add	a2, a2, s1
	addi	t0, s0, -320
	.loc	1 748 12
	add	a3, a3, a6
	lui	s1, 262145
	.loc	1 755 12
	add	t1, t1, a4
	li	a6, 16
	.loc	1 748 12
	slli	a5, a5, 6
	add	a5, a5, t2
	add	a1, a1, t2
	.loc	1 755 12
	add	t2, t2, a2
	lui	a2, 80
	fmv.w.x	ft0, zero
	addi	s2, t4, -1
	addi	a4, t3, -1792
	.loc	1 748 12
	add	a1, a1, a4
	srli	a4, t6, 1
	slli	s1, s1, 4
	addi	a2, a2, 1
	and	a5, a5, a4
	and	a3, a3, a4
	and	a1, a1, a4
	and	a4, t0, a4
	addi	s1, s1, 1
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a5, a3
	gemmini.loop_ws.config.addrs.dc	a1, a4
	gemmini.loop_ws.config.strides.ab	t5, a0
	gemmini.loop_ws.config.strides.dc	a0, a6
	gemmini.loop_ws	a2, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t4, 1024
	li	s6, 31
	j	.LBB102_2
.LBB102_1:
	.loc	1 755 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 256
	addi	t2, t2, 256
	beq	a7, a6, .LBB102_30
.LBB102_2:
	.loc	1 0 12 is_stmt 0
	li	t5, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB102_4
.LBB102_3:
	.loc	1 755 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t5, t5, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t5, .LBB102_1
.LBB102_4:
	.loc	1 755 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 735 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 750 12
	fcvt.s.w	ft3, a1
	.loc	1 751 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 752 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB102_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB102_6:
	fmv.x.w	a1, ft3
	slli	s1, a1, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a2, s1, a0
	addi	a2, a2, -1
	and	a3, a2, a0
	bltu	a3, s6, .LBB102_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB102_8:
	.loc	1 752 12 is_stmt 1
	fmv.x.w	a4, ft2
	slli	a5, a4, 33
	srli	a5, a5, 56
	addi	a2, a5, -127
	sgtz	a0, a2
	neg	a0, a0
	and	a0, a0, a2
	blt	a0, s6, .LBB102_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB102_10:
	.loc	1 752 12 is_stmt 1
	beq	a2, t6, .LBB102_12
	srlw	a2, t4, a0
	j	.LBB102_13
.LBB102_12:
	.loc	1 0 12 is_stmt 0
	li	a2, 0
.LBB102_13:
	addi	s1, s1, -127
	srlw	a3, s2, a3
	.loc	1 752 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a5, a5, -126
	seqz	s1, s1
	and	a1, a1, a3
	and	a0, a0, a4
	snez	a1, a1
	xor	a0, a0, a2
	or	a1, a1, s1
	seqz	a0, a0
	sltiu	a2, a5, 24
	and	a0, a0, a2
	and	a0, a0, a1
	fmv.s	ft4, ft0
	bnez	a0, .LBB102_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB102_22
.LBB102_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB102_17
.LBB102_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB102_17:
	.loc	1 752 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 754 12
	sgtz	a1, a0
	neg	a1, a1
	and	a1, a1, a0
	fcvt.s.lu	ft2, a1
	.loc	1 755 12
	fmv.x.w	a4, ft2
	srliw	a0, a4, 23
	addi	a2, a0, -128
	sltu	a3, a0, a2
	addi	a3, a3, -1
	and	a3, a3, a2
	li	a2, 31
	bgeu	a3, a2, .LBB102_23
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	bge	a0, a2, .LBB102_24
.LBB102_19:
	beq	a5, t6, .LBB102_25
.LBB102_20:
	srlw	a2, t4, a0
	j	.LBB102_26
.LBB102_21:
	.loc	1 752 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB102_15
.LBB102_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 752 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB102_16
	j	.LBB102_17
.LBB102_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 755 12 is_stmt 1
	addi	a5, a0, -127
	sgtz	a0, a5
	neg	a0, a0
	and	a0, a0, a5
	blt	a0, a2, .LBB102_19
.LBB102_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 755 12
	bne	a5, t6, .LBB102_20
.LBB102_25:
	.loc	1 0 12
	li	a2, 0
.LBB102_26:
	seqz	a5, a5
	srlw	a3, s2, a3
	.loc	1 755 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a4
	and	a0, a0, a4
	add	a4, a4, t3
	srliw	a4, a4, 26
	snez	a3, a3
	xor	a0, a0, a2
	or	a3, a3, a5
	seqz	a0, a0
	sltiu	a2, a4, 3
	and	a0, a0, a2
	and	a0, a0, a3
	beqz	a0, .LBB102_28
	addi	a1, a1, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	fcvt.s.w	ft2, a1
	fabs.s	ft2, ft2
.LBB102_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB102_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB102_3
.LBB102_30:
	.loc	1 748 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 748 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp193:
.Lfunc_end102:
	.size	main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32, .Lfunc_end102-main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32,@function
main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32:
.Lfunc_begin103:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp194:
	.loc	1 757 12 prologue_end
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	lui	a3, 31
	addi	a3, a3, 1408
	ld	a4, 0(a1)
	ld	a1, 8(a1)
	srli	a5, a2, 1
	andi	a2, a2, 1
	slli	a5, a5, 15
	slli	a2, a2, 8
	or	a5, a5, a2
	add	a2, a2, a3
	lui	a3, 1523
	addi	a3, a3, -1792
	add	a3, a3, a5
	add	a3, a3, a1
	add	a7, a2, a4
	li	a6, 64
.LBB103_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a1, a3
.LBB103_2:
	.loc	1 757 12 is_stmt 1
	ld	a2, 0(a5)
	addi	a4, a4, -8
	sd	a2, 0(a1)
	addi	a1, a1, 8
	addi	a5, a5, 8
	bnez	a4, .LBB103_2
	addi	a0, a0, 1
	addi	a3, a3, 512
	bne	a0, a6, .LBB103_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 757 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp195:
.Lfunc_end103:
	.size	main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32, .Lfunc_end103-main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32,@function
main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32:
.Lfunc_begin104:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp196:
	.loc	1 757 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 245
	li	a2, 1
	li	t0, 127
	lui	a7, 247358
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 256
	addi	a2, a7, 795
	slli	a2, a2, 32
	addi	a2, a2, 128
	gemmini.config	a4, a2
	li	a7, 128
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t1
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 512
	addi	a4, t0, 273
	gemmini.config	a4, a2
	slli	a2, a0, 1
	andi	a2, a2, -16
	slli	a4, a2, 8
	add	a4, a4, a6
	lui	a3, 25
	slli	a0, a0, 61
	srli	a0, a0, 57
	add	a3, a3, a0
	slli	a2, a2, 7
	or	a0, a0, a2
	add	a1, a1, a3
	lui	a2, 1523
	addi	a2, a2, -1792
	add	a4, a4, a5
	add	a2, a2, a5
	li	a3, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 256
	srli	a3, a3, 1
	and	a4, a4, a3
	and	a1, a1, a3
	and	a5, t2, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	a2, a2, 1
	addi	a3, a3, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a4, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 757 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp197:
.Lfunc_end104:
	.size	main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32, .Lfunc_end104-main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32,@function
main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32:
.Lfunc_begin105:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp198:
	.loc	1 758 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 31
	addi	a3, a3, 1920
	srli	a4, a2, 3
	slli	a5, a4, 15
	slli	a4, a4, 18
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 441
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB105_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB105_2:
	.loc	1 758 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB105_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB105_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 758 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp199:
.Lfunc_end105:
	.size	main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32, .Lfunc_end105-main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_29_generic_28x28x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_29_generic_28x28x256_i8,@function
main_graph$async_dispatch_29_generic_28x28x256_i8:
.Lfunc_begin106:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp200:
	.loc	1 755 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 758 12
	lwu	s1, 0(a2)
	lui	a1, 12
	lui	a6, 98
	lui	a4, 49
	lui	a5, 245
	addi	a1, a1, 1024
	srli	a2, s1, 3
	mul	a3, a2, a1
	mul	a2, a2, a4
	li	s3, 24
	slli	s1, s1, 61
	srli	s1, s1, 56
	or	a3, a3, s1
	or	a2, a2, s1
	.loc	1 755 12
	ld	t3, 0(a0)
	.loc	1 758 12
	ld	t2, 8(a0)
	add	a3, a3, a6
	li	t4, 28
	add	a2, a2, a5
	li	a6, 7
	add	t2, t2, a3
	slli	t0, a6, 10
	add	t3, t3, a2
	lui	a7, 7
.LBB106_1:
	.loc	1 0 12 is_stmt 0
	li	t5, 0
	mv	t6, t3
	mv	s2, t2
.LBB106_2:
	li	a0, 0
	mv	a3, t6
	mv	a2, s2
.LBB106_3:
	mv	a5, a0
	li	a0, 8
	mv	s1, a3
	mv	a4, a2
.LBB106_4:
	.loc	1 758 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a0, a0, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a0, .LBB106_4
	addi	a0, a5, 8
	addi	a2, a2, 8
	addi	a3, a3, 8
	bltu	a5, s3, .LBB106_3
	addi	t5, t5, 1
	addi	s2, s2, 256
	addi	t6, t6, 512
	bne	t5, t4, .LBB106_2
	addi	t1, t1, 1
	add	t2, t2, t0
	add	t3, t3, a7
	bne	t1, a6, .LBB106_1
	li	a0, 0
	.cfi_def_cfa sp, 48
	.loc	1 758 12 epilogue_begin is_stmt 0
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Ltmp201:
.Lfunc_end106:
	.size	main_graph$async_dispatch_29_generic_28x28x256_i8, .Lfunc_end106-main_graph$async_dispatch_29_generic_28x28x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_30_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_30_slow_memcpy,@function
main_graph$async_dispatch_30_slow_memcpy:
.Lfunc_begin107:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	li	t2, 0
.Ltmp202:
	.loc	1 764 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 766 12
	lwu	a1, 0(a2)
	li	a6, 29
	lui	a2, 835
	li	t5, 56
	slli	a3, a6, 10
	srli	a4, a1, 1
	mul	a3, a4, a3
	slli	a5, a4, 12
	slli	a4, a4, 15
	sub	a4, a4, a5
	li	a7, 7
	addi	a2, a2, -640
	slli	a1, a1, 63
	srli	a1, a1, 57
	or	a3, a3, a1
	add	a2, a2, a3
	.loc	1 764 12
	ld	t6, 0(a0)
	.loc	1 766 12
	ld	t3, 8(a0)
	slli	a6, a6, 8
	slli	a7, a7, 10
	or	a1, a1, a4
	add	t3, t3, a2
	add	t4, t6, a1
	addi	t1, a1, 64
	li	t0, 4
.LBB107_1:
	.loc	1 0 12 is_stmt 0
	li	a3, 0
	.loc	1 766 12
	slli	a0, t2, 10
	slli	a1, t2, 13
	sub	a0, a1, a0
	add	s2, t1, a0
	mv	a4, t4
	mv	a1, t3
.LBB107_2:
	slli	a2, a3, 7
	add	a2, a2, s2
	add	a2, a2, t6
	mv	a5, a1
	mv	s1, a4
.LBB107_3:
	lh	a0, 0(s1)
	addi	s1, s1, 2
	sh	a0, 0(a5)
	addi	a5, a5, 2
	bne	s1, a2, .LBB107_3
	addi	a3, a3, 1
	addi	a1, a1, 128
	addi	a4, a4, 128
	bne	a3, t5, .LBB107_2
	addi	t2, t2, 1
	add	t3, t3, a6
	add	t4, t4, a7
	bne	t2, t0, .LBB107_1
	li	a0, 0
	.cfi_def_cfa sp, 32
	.loc	1 766 12 epilogue_begin
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
.Ltmp203:
.Lfunc_end107:
	.size	main_graph$async_dispatch_30_slow_memcpy, .Lfunc_end107-main_graph$async_dispatch_30_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_31_generic_28x28x3x3x128_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_31_generic_28x28x3x3x128_i8,@function
main_graph$async_dispatch_31_generic_28x28x3x3x128_i8:
.Lfunc_begin108:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	sd	s10, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp204:
	.loc	1 766 12 prologue_end
	ld	a0, 32(a1)
	lwu	a1, 0(a2)
	lui	t2, 147
	li	s2, 29
	lui	a3, 833
	slli	a2, s2, 11
	srli	a4, a1, 2
	slli	a5, a4, 11
	mul	a2, a4, a2
	slli	a4, a4, 17
	sub	a4, a4, a5
	ld	t1, 0(a0)
	ld	a0, 8(a0)
	slli	a1, a1, 62
	srli	a1, a1, 57
	or	a5, a2, a1
	or	a1, a1, a4
	li	s10, 24
	add	a3, a3, a5
	li	s6, 3
	add	a0, a0, a1
	li	t3, 28
	add	t1, t1, a3
	lui	a6, 8
	addi	a6, a6, -512
	add	t2, t2, a0
	li	t0, 4
.LBB108_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t1
	mv	t6, t2
.LBB108_2:
	li	s3, 0
	mv	s4, t5
	mv	s5, t6
.LBB108_3:
	li	s7, 0
	mv	s8, s4
	mv	s9, s5
.LBB108_4:
	li	a0, 0
	mv	a1, s8
	mv	a5, s9
.LBB108_5:
	mv	a3, a0
	li	s1, 8
	mv	a0, a1
	mv	a4, a5
.LBB108_6:
	.loc	1 766 12 is_stmt 1
	lbu	a2, 0(a0)
	addi	s1, s1, -1
	sb	a2, 0(a4)
	addi	a4, a4, 1
	addi	a0, a0, 1
	bnez	s1, .LBB108_6
	addi	a0, a3, 8
	addi	a5, a5, 8
	addi	a1, a1, 8
	bltu	a3, s10, .LBB108_5
	addi	s7, s7, 1
	addi	s9, s9, 128
	addi	s8, s8, 128
	bne	s7, s6, .LBB108_4
	addi	s3, s3, 1
	addi	s5, s5, 384
	slli	a0, s2, 8
	add	s4, s4, a0
	bne	s3, s6, .LBB108_3
	addi	t4, t4, 1
	addi	t6, t6, 1152
	addi	t5, t5, 256
	bne	t4, t3, .LBB108_2
	addi	a7, a7, 1
	add	t2, t2, a6
	slli	a0, s2, 9
	add	t1, t1, a0
	bne	a7, t0, .LBB108_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 766 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s10, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	.cfi_restore s10
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp205:
.Lfunc_end108:
	.size	main_graph$async_dispatch_31_generic_28x28x3x3x128_i8, .Lfunc_end108-main_graph$async_dispatch_31_generic_28x28x3x3x128_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32,@function
main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32:
.Lfunc_begin109:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp206:
	.loc	1 766 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 32
	li	a2, 1
	li	t0, 127
	lui	a7, 241826
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 1152
	addi	a2, a7, 1615
	slli	a2, a2, 32
	addi	a2, a2, 128
	gemmini.config	a4, a2
	li	a7, 128
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 512
	addi	a4, a6, -128
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 1
	slli	a0, a0, 61
	andi	a2, a2, -16
	srli	a0, a0, 57
	slli	a3, a2, 10
	slli	a2, a2, 7
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 4637
	add	a2, a2, t1
	lui	a4, 147
	add	a3, a3, a4
	lui	a4, 368
	addi	a4, a4, -2048
	add	t3, t3, a0
	add	a4, a4, t3
	li	a5, -1
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 1152
	srli	a5, a5, 1
	and	a1, a1, a5
	and	a3, a3, a5
	and	a4, a4, a5
	and	a0, a0, a5
	lui	a5, 80
	addi	a2, a2, 1
	addi	a5, a5, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a4
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 766 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp207:
.Lfunc_end109:
	.size	main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32, .Lfunc_end109-main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32,@function
main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32:
.Lfunc_begin110:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp208:
	.loc	1 772 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 68
	addi	a3, a3, -128
	srli	a4, a2, 3
	slli	a5, a4, 15
	slli	a4, a4, 18
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 833
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB110_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB110_2:
	.loc	1 772 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB110_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB110_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 772 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp209:
.Lfunc_end110:
	.size	main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32, .Lfunc_end110-main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32,@function
main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32:
.Lfunc_begin111:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp210:
	.loc	1 772 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	li	a6, 1
	li	t0, 127
	lui	a7, 15418
	slli	a5, a6, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	t2, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 4
	gemmini.config	a4, a5
	li	a4, 2
	li	t1, 128
	addi	a5, a7, -471
	slli	a5, a5, 36
	addi	a5, a5, 512
	gemmini.config	a4, a5
	li	a7, 512
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a5, t0, 257
	gemmini.config	a5, t1
	addi	a5, t0, 265
	gemmini.config	a5, a7
	lui	a5, 368
	addi	a5, a5, -2048
	slli	a6, a6, 11
	addi	a4, t0, 273
	gemmini.config	a4, a6
	srli	a4, a0, 1
	andi	a1, a4, -16
	slli	a4, a1, 7
	add	a4, a4, a5
	lui	a5, 65
	slli	a0, a0, 59
	srli	a0, a0, 55
	add	a5, a5, a0
	slli	a1, a1, 9
	or	a0, a0, a1
	lui	a1, 833
	add	a3, a3, a5
	li	a5, -1
	add	a4, a4, a2
	add	a1, a1, a2
	lui	a2, 128
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a6, a1, a0
	lui	a1, 80
	srli	a5, a5, 1
	addi	a2, a2, 1
	addi	a1, a1, 1
	slli	a2, a2, 16
	addi	a2, a2, 1
	and	a4, a4, a5
	and	a3, a3, a5
	and	a0, t2, a5
	and	a5, a6, a5
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a4, a3
	gemmini.loop_ws.config.addrs.dc	a5, a0
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 772 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp211:
.Lfunc_end111:
	.size	main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32, .Lfunc_end111-main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32,@function
main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32:
.Lfunc_begin112:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t4, 2048
.Ltmp212:
	.loc	1 758 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	t6, 98
	lui	a6, 33
	lui	t5, 441
	li	t3, -127
	li	s2, 1
	li	a5, 127
	lui	a1, 123940
	slli	a4, s2, 48
	slli	a3, a5, 39
	addi	a3, a3, 1
	slli	a3, a3, 16
	ld	t2, 0(a0)
	ld	s1, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a3, a3, 4
	gemmini.config	a3, a4
	li	a3, 2
	li	s3, 256
	addi	a1, a1, -1897
	slli	a1, a1, 33
	addi	a1, a1, 16
	gemmini.config	a3, a1
	li	a1, 512
	lui	a3, 307200
	fmv.w.x	fa5, a3
	lui	a3, 260096
	fmv.w.x	fa4, a3
	lui	a3, 798720
	fmv.w.x	fa3, a3
	lui	a3, 254419
	addi	a3, a3, 264
	fmv.w.x	fa2, a3
	lui	a3, 253955
	addi	a3, a3, -1068
	fmv.w.x	fa1, a3
	lui	a3, 254604
	slli	a5, a5, 35
	addi	a3, a3, 453
	addi	a5, a5, 1
	fmv.w.x	fa0, a3
	slli	a5, a5, 20
	addi	a3, a5, 257
	gemmini.config	a3, s3
	addi	a3, a5, 265
	gemmini.config	a3, a1
	addi	t0, s0, -320
	slli	s2, s2, 11
	addi	a3, a5, 273
	gemmini.config	a3, s2
	srli	a3, a2, 1
	andi	a3, a3, -16
	slli	a4, a3, 8
	add	a4, a4, t6
	slli	a5, a2, 59
	.loc	1 779 12
	srli	a2, a2, 5
	.loc	1 758 12
	srli	a5, a5, 55
	.loc	1 779 12
	slli	a2, a2, 13
	.loc	1 758 12
	add	a6, a6, a5
	slli	a3, a3, 11
	.loc	1 779 12
	or	a2, a2, a5
	.loc	1 758 12
	slli	a5, a5, 2
	add	a3, a3, a5
	lui	a5, 256
	add	s1, s1, a6
	lui	a0, 147
	.loc	1 779 12
	add	a0, a0, a2
	add	t1, t1, a0
	li	a6, 16
	.loc	1 758 12
	add	a4, a4, t2
	add	a3, a3, t2
	.loc	1 779 12
	add	t2, t2, a2
	lui	a0, 80
	.loc	1 758 12
	add	a3, a3, t5
	li	t5, -1
	fmv.w.x	ft0, zero
	addi	t6, t4, -1
	srli	a2, t3, 1
	addi	a5, a5, 1
	addi	a0, a0, 1
	and	a4, a4, a2
	and	a3, a3, a2
	addi	a2, a2, 63
	slli	a5, a5, 16
	and	s1, s1, a2
	and	a2, t0, a2
	addi	a5, a5, 1
	gemmini.loop_ws.config.bounds	zero, a5
	gemmini.loop_ws.config.addrs.ab	a4, s1
	gemmini.loop_ws.config.addrs.dc	a3, a2
	gemmini.loop_ws.config.strides.ab	s3, a1
	gemmini.loop_ws.config.strides.dc	a1, a6
	gemmini.loop_ws	a0, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t4, 1024
	li	s6, 31
	j	.LBB112_2
.LBB112_1:
	.loc	1 779 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 512
	addi	t2, t2, 512
	beq	a7, a6, .LBB112_30
.LBB112_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB112_4
.LBB112_3:
	.loc	1 779 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB112_1
.LBB112_4:
	.loc	1 779 12
	lb	a0, 0(s5)
	lb	a1, 0(s3)
	.loc	1 762 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 774 12
	fcvt.s.w	ft3, a1
	.loc	1 775 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 776 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB112_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB112_6:
	fmv.x.w	a5, ft3
	slli	s1, a5, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a2, a1, a0
	bltu	a2, s6, .LBB112_8
	.loc	1 0 12 is_stmt 0
	li	a2, 31
.LBB112_8:
	.loc	1 776 12 is_stmt 1
	fmv.x.w	a3, ft2
	slli	a4, a3, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB112_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB112_10:
	.loc	1 776 12 is_stmt 1
	beq	a1, t5, .LBB112_12
	srlw	a1, t4, a0
	j	.LBB112_13
.LBB112_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB112_13:
	addi	s1, s1, -127
	srlw	a2, t6, a2
	.loc	1 776 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a5
	and	a0, a0, a3
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB112_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB112_22
.LBB112_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB112_17
.LBB112_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB112_17:
	.loc	1 776 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 778 12
	sgtz	a1, a0
	neg	a5, a1
	and	a5, a5, a0
	fcvt.s.lu	ft2, a5
	.loc	1 779 12
	fmv.x.w	a3, ft2
	srliw	a0, a3, 23
	addi	a1, a0, -128
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a2, a2, a1
	li	a1, 31
	bgeu	a2, a1, .LBB112_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB112_24
.LBB112_19:
	beq	a4, t5, .LBB112_25
.LBB112_20:
	srlw	a1, t4, a0
	j	.LBB112_26
.LBB112_21:
	.loc	1 776 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB112_15
.LBB112_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 776 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB112_16
	j	.LBB112_17
.LBB112_23:
	.loc	1 0 12
	li	a2, 31
	.loc	1 779 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB112_19
.LBB112_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 779 12
	bne	a4, t5, .LBB112_20
.LBB112_25:
	.loc	1 0 12
	li	a1, 0
.LBB112_26:
	seqz	a4, a4
	srlw	a2, t6, a2
	.loc	1 779 12 is_stmt 1
	srlw	a0, t6, a0
	and	a2, a2, a3
	and	a0, a0, a3
	add	a3, a3, t3
	srliw	a3, a3, 26
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, a4
	seqz	a0, a0
	sltiu	a1, a3, 3
	and	a0, a0, a1
	and	a0, a0, a2
	beqz	a0, .LBB112_28
	addi	a5, a5, -1
	slli	a5, a5, 56
	srai	a5, a5, 56
	fcvt.s.w	ft2, a5
	fabs.s	ft2, ft2
.LBB112_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB112_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB112_3
.LBB112_30:
	.loc	1 758 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 758 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp213:
.Lfunc_end112:
	.size	main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32, .Lfunc_end112-main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32,@function
main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32:
.Lfunc_begin113:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp214:
	.loc	1 781 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	lui	a7, 147
	lui	a6, 81
	li	a4, 1
	li	t0, 127
	slli	a4, a4, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	a1, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a4
	lui	a4, 61890
	li	a5, 6
	addi	a4, a4, -1473
	slli	a4, a4, 34
	addi	a4, a4, 128
	gemmini.config	a5, a4
	slli	a4, a0, 1
	andi	a4, a4, -16
	slli	a5, a4, 9
	add	a5, a5, a7
	li	a7, 512
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	slli	a0, a0, 61
	srli	a0, a0, 57
	add	a6, a6, a0
	slli	a4, a4, 7
	or	a0, a0, a4
	addi	a4, t0, 257
	gemmini.config	a4, a7
	lui	a4, 4735
	add	a2, a2, a5
	li	a5, 128
	add	a6, a6, a3
	add	a3, a3, a4
	addi	a4, t0, 265
	gemmini.config	a4, a5
	add	a1, a1, a0
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, -1
	addi	a4, t0, 273
	gemmini.config	a4, a7
	lui	t0, 512
	srli	a3, a3, 1
	and	a2, a2, a3
	and	a4, a6, a3
	and	a1, a1, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	t0, t0, 1
	addi	a3, a3, 257
	slli	t0, t0, 16
	addi	t0, t0, 1
	gemmini.loop_ws.config.bounds	zero, t0
	gemmini.loop_ws.config.addrs.ab	a2, a4
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	a7, a5
	gemmini.loop_ws.config.strides.dc	a5, a5
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 781 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp215:
.Lfunc_end113:
	.size	main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32, .Lfunc_end113-main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_37_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_37_slow_memcpy,@function
main_graph$async_dispatch_37_slow_memcpy:
.Lfunc_begin114:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	li	t3, 0
	li	a7, 7
.Ltmp216:
	.loc	1 787 12 prologue_end
	ld	a0, 24(a1)
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	slli	a3, a7, 11
	addiw	a3, a3, 1024
	lwu	a0, 0(a0)
	srli	a4, a2, 1
	mul	a3, a4, a3
	slli	a5, a4, 11
	slli	a4, a4, 14
	sub	a4, a4, a5
	.loc	1 785 12
	ld	t5, 0(a1)
	.loc	1 787 12
	ld	a1, 8(a1)
	slli	a2, a2, 63
	srli	a2, a2, 57
	or	a3, a3, a2
	or	a2, a2, a4
	li	t4, 28
	slli	a7, a7, 9
	add	a0, a0, a3
	add	a1, a1, a7
	add	t1, t5, a2
	addi	t0, a2, 64
	add	a0, a0, a1
	addi	t2, a0, 384
	li	a6, 4
.LBB114_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 0
	.loc	1 787 12
	mul	t6, t3, a7
	add	t6, t6, t0
	mv	a5, t1
	mv	a2, t2
.LBB114_2:
	slli	a0, a4, 7
	add	a0, a0, t6
	add	a1, t5, a0
	mv	a0, a2
	mv	a3, a5
.LBB114_3:
	lh	s1, 0(a3)
	addi	a3, a3, 2
	sh	s1, 0(a0)
	addi	a0, a0, 2
	bne	a3, a1, .LBB114_3
	addi	a4, a4, 1
	addi	a2, a2, 128
	addi	a5, a5, 128
	bne	a4, t4, .LBB114_2
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	a1, t1, 2047
	addi	t2, a0, 1793
	addi	t1, a1, 1537
	bne	t3, a6, .LBB114_1
	li	a0, 0
	.cfi_def_cfa sp, 32
	.loc	1 787 12 epilogue_begin
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
.Ltmp217:
.Lfunc_end114:
	.size	main_graph$async_dispatch_37_slow_memcpy, .Lfunc_end114-main_graph$async_dispatch_37_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_38_generic_28x28x3x3x128_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_38_generic_28x28x3x3x128_i8,@function
main_graph$async_dispatch_38_generic_28x28x3x3x128_i8:
.Lfunc_begin115:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp218:
	.loc	1 787 12 prologue_end
	lwu	a0, 0(a2)
	ld	a1, 32(a1)
	lui	t2, 245
	lui	a2, 25
	srli	a3, a0, 2
	slli	a4, a3, 11
	slli	a5, a3, 17
	sub	a5, a5, a4
	slli	a4, a3, 10
	slli	a3, a3, 14
	sub	a3, a3, a4
	ld	a4, 0(a1)
	ld	s1, 8(a1)
	slli	a0, a0, 62
	srli	a0, a0, 57
	or	a5, a5, a0
	or	a0, a0, a3
	li	s9, 24
	add	a5, a5, s1
	li	s5, 3
	add	a0, a0, a4
	li	t3, 28
	add	t2, t2, a5
	lui	a3, 8
	addi	t0, a2, -2048
	addi	a7, a3, -512
	add	t0, t0, a0
	li	a6, 4
.LBB115_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t0
	mv	t6, t2
.LBB115_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB115_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB115_4:
	li	a5, 0
	mv	a3, s7
	mv	a0, s8
.LBB115_5:
	mv	a2, a5
	li	a5, 8
	mv	s1, a3
	mv	a4, a0
.LBB115_6:
	.loc	1 787 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a5, a5, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a5, .LBB115_6
	addi	a5, a2, 8
	addi	a0, a0, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB115_5
	addi	s6, s6, 1
	addi	s8, s8, 128
	addi	s7, s7, 128
	bne	s6, s5, .LBB115_4
	addi	s3, s3, 1
	addi	s4, s4, 384
	addi	a0, s2, 2047
	addi	s2, a0, 1793
	bne	s3, s5, .LBB115_3
	addi	t4, t4, 1
	addi	t6, t6, 1152
	addi	t5, t5, 128
	bne	t4, t3, .LBB115_2
	addi	t1, t1, 1
	add	t2, t2, a7
	addi	a0, t0, 2047
	addi	t0, a0, 1793
	bne	t1, a6, .LBB115_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 787 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp219:
.Lfunc_end115:
	.size	main_graph$async_dispatch_38_generic_28x28x3x3x128_i8, .Lfunc_end115-main_graph$async_dispatch_38_generic_28x28x3x3x128_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32,@function
main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32:
.Lfunc_begin116:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp220:
	.loc	1 787 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 68
	li	a2, 1
	li	t0, 127
	lui	a7, 122240
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 1152
	addi	a2, a7, 185
	slli	a2, a2, 33
	addi	a2, a2, 128
	gemmini.config	a4, a2
	li	a7, 128
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 512
	addi	a4, a6, 1920
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 1
	slli	a0, a0, 61
	andi	a2, a2, -16
	srli	a0, a0, 57
	slli	a3, a2, 10
	slli	a2, a2, 7
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 4833
	add	a2, a2, t1
	lui	a4, 245
	add	a3, a3, a4
	li	a4, -1
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 1152
	srli	a4, a4, 1
	and	a1, a1, a4
	and	a5, t3, a4
	and	a3, a3, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a2, a2, 1
	addi	a4, a4, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 787 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp221:
.Lfunc_end116:
	.size	main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32, .Lfunc_end116-main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32,@function
main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32:
.Lfunc_begin117:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp222:
	.loc	1 793 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 104
	addi	a3, a3, 1920
	srli	a4, a2, 3
	slli	a5, a4, 15
	slli	a4, a4, 18
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a1, 466
	addi	a4, a1, -2048
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB117_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB117_2:
	.loc	1 793 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB117_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB117_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 793 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp223:
.Lfunc_end117:
	.size	main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32, .Lfunc_end117-main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32,@function
main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32:
.Lfunc_begin118:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t3, 2048
.Ltmp224:
	.loc	1 793 12 prologue_end
	ld	a3, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 97
	lui	t5, 466
	li	t4, -1
	addi	t0, s0, -320
	li	s2, 1
	li	s3, 127
	lui	s1, 246261
	li	a0, 2
	slli	a4, s2, 48
	slli	a5, s3, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a3)
	ld	a2, 8(a3)
	ld	t1, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a4
	li	t6, 128
	li	s4, 512
	addi	a3, s1, -297
	slli	a3, a3, 32
	addi	a3, a3, 16
	gemmini.config	a0, a3
	lui	a3, 25
	lui	a0, 307200
	fmv.w.x	fa5, a0
	lui	a0, 260096
	fmv.w.x	fa4, a0
	lui	a0, 798720
	fmv.w.x	fa3, a0
	lui	a0, 254604
	addi	a0, a0, 453
	fmv.w.x	fa2, a0
	lui	a0, 253692
	addi	a0, a0, -325
	fmv.w.x	fa1, a0
	lui	a0, 254251
	slli	s3, s3, 35
	slli	s2, s2, 11
	addi	a0, a0, -1722
	addi	s3, s3, 1
	fmv.w.x	fa0, a0
	slli	s3, s3, 20
	addi	a0, s3, 257
	gemmini.config	a0, t6
	addi	a0, s3, 265
	gemmini.config	a0, s4
	srli	a0, a1, 1
	addi	a5, s3, 273
	gemmini.config	a5, s2
	slli	a5, a1, 59
	.loc	1 800 12
	srli	a1, a1, 5
	.loc	1 793 12
	andi	a0, a0, -16
	srli	a5, a5, 55
	.loc	1 800 12
	slli	a1, a1, 13
	.loc	1 793 12
	add	a6, a6, a5
	slli	s1, a0, 11
	.loc	1 800 12
	or	a1, a1, a5
	.loc	1 793 12
	slli	a5, a5, 2
	add	a5, a5, s1
	lui	s1, 147
	addi	a3, a3, -2048
	.loc	1 800 12
	add	a3, a3, a1
	add	a1, a1, s1
	lui	s1, 128
	.loc	1 793 12
	add	a2, a2, a6
	li	a6, 16
	.loc	1 800 12
	add	t1, t1, a3
	lui	a3, 80
	fmv.w.x	ft0, zero
	addi	s2, t3, -1
	addi	a4, t5, -2048
	.loc	1 793 12
	slli	a0, a0, 7
	add	a0, a0, t2
	add	a5, a5, t2
	.loc	1 800 12
	add	t2, t2, a1
	srli	a1, t4, 1
	addi	s1, s1, 1
	addi	a3, a3, 1
	.loc	1 793 12
	add	a4, a4, a5
	and	a5, t0, a1
	slli	s1, s1, 16
	addi	s1, s1, 1
	and	a0, a0, a1
	and	a2, a2, a1
	and	a1, a1, a4
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a0, a2
	gemmini.loop_ws.config.addrs.dc	a1, a5
	gemmini.loop_ws.config.strides.ab	t6, s4
	gemmini.loop_ws.config.strides.dc	s4, a6
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t5, 1024
	li	s6, 31
	j	.LBB118_2
.LBB118_1:
	.loc	1 800 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 512
	addi	t2, t2, 512
	beq	a7, a6, .LBB118_30
.LBB118_2:
	.loc	1 0 12 is_stmt 0
	li	t6, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB118_4
.LBB118_3:
	.loc	1 800 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t6, t6, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t6, .LBB118_1
.LBB118_4:
	.loc	1 800 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 780 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 795 12
	fcvt.s.w	ft3, a1
	.loc	1 796 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 797 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB118_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB118_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a4, a1, a0
	bltu	a4, s6, .LBB118_8
	.loc	1 0 12 is_stmt 0
	li	a4, 31
.LBB118_8:
	.loc	1 797 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a3, a5, 33
	srli	a3, a3, 56
	addi	a1, a3, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB118_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB118_10:
	.loc	1 797 12 is_stmt 1
	beq	a1, t4, .LBB118_12
	srlw	a1, t5, a0
	j	.LBB118_13
.LBB118_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB118_13:
	addi	s1, s1, -127
	srlw	a4, s2, a4
	.loc	1 797 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a3, a3, -126
	seqz	s1, s1
	and	a2, a2, a4
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a3, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB118_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB118_22
.LBB118_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB118_17
.LBB118_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB118_17:
	.loc	1 797 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 799 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 800 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB118_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB118_24
.LBB118_19:
	beq	a4, t4, .LBB118_25
.LBB118_20:
	srlw	a1, t5, a0
	j	.LBB118_26
.LBB118_21:
	.loc	1 797 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB118_15
.LBB118_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 797 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB118_16
	j	.LBB118_17
.LBB118_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 800 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB118_19
.LBB118_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 800 12
	bne	a4, t4, .LBB118_20
.LBB118_25:
	.loc	1 0 12
	li	a1, 0
.LBB118_26:
	seqz	a4, a4
	srlw	a3, s2, a3
	.loc	1 800 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB118_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB118_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB118_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB118_3
.LBB118_30:
	.loc	1 793 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 793 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp225:
.Lfunc_end118:
	.size	main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32, .Lfunc_end118-main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32,@function
main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32:
.Lfunc_begin119:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp226:
	.loc	1 802 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	lui	a7, 25
	lui	a6, 113
	li	a4, 1
	li	t0, 127
	slli	a4, a4, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	t1, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a4
	lui	a4, 61980
	li	a5, 6
	addi	a1, a7, -2048
	addi	a4, a4, -65
	slli	a4, a4, 34
	addi	a4, a4, 128
	gemmini.config	a5, a4
	slli	a4, a0, 1
	andi	a4, a4, -16
	slli	a5, a4, 9
	add	a1, a1, a5
	li	t2, 512
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	slli	a0, a0, 61
	srli	a0, a0, 57
	add	a6, a6, a0
	slli	a4, a4, 7
	or	a0, a0, a4
	addi	a4, t0, 257
	gemmini.config	a4, t2
	lui	a4, 4931
	add	a1, a1, a2
	li	a2, 128
	add	a6, a6, a3
	add	a3, a3, a4
	addi	a4, t0, 265
	gemmini.config	a4, a2
	add	t1, t1, a0
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, -1
	addi	a4, t0, 273
	gemmini.config	a4, t2
	lui	a7, 512
	srli	a3, a3, 1
	and	a1, a1, a3
	and	a4, a6, a3
	and	a5, t1, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	a7, a7, 1
	addi	a3, a3, 257
	slli	a7, a7, 16
	addi	a7, a7, 1
	gemmini.loop_ws.config.bounds	zero, a7
	gemmini.loop_ws.config.addrs.ab	a1, a4
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a2
	gemmini.loop_ws.config.strides.dc	a2, a2
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 802 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp227:
.Lfunc_end119:
	.size	main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32, .Lfunc_end119-main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_44_generic_28x28x3x3x128_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_44_generic_28x28x3x3x128_i8,@function
main_graph$async_dispatch_44_generic_28x28x3x3x128_i8:
.Lfunc_begin120:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp228:
	.loc	1 808 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a6, 151
	lui	a3, 123
	srli	a0, s1, 2
	slli	a5, a0, 11
	slli	a4, a0, 17
	sub	a4, a4, a5
	slli	a5, a0, 10
	slli	a0, a0, 14
	sub	a0, a0, a5
	ld	a5, 0(a1)
	ld	a2, 8(a1)
	slli	s1, s1, 62
	srli	s1, s1, 57
	or	a4, a4, s1
	or	a0, a0, s1
	li	s9, 24
	add	a2, a2, a4
	li	s5, 3
	add	a0, a0, a5
	li	t3, 28
	addi	t2, a6, -1536
	add	t2, t2, a2
	lui	a2, 8
	addi	t0, a3, -2048
	addi	a7, a2, -512
	add	t0, t0, a0
	li	a6, 4
.LBB120_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t0
	mv	t6, t2
.LBB120_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB120_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB120_4:
	li	a5, 0
	mv	a3, s7
	mv	a0, s8
.LBB120_5:
	mv	a2, a5
	li	a5, 8
	mv	s1, a3
	mv	a4, a0
.LBB120_6:
	.loc	1 808 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a5, a5, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a5, .LBB120_6
	addi	a5, a2, 8
	addi	a0, a0, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB120_5
	addi	s6, s6, 1
	addi	s8, s8, 128
	addi	s7, s7, 128
	bne	s6, s5, .LBB120_4
	addi	s3, s3, 1
	addi	s4, s4, 384
	addi	a0, s2, 2047
	addi	s2, a0, 1793
	bne	s3, s5, .LBB120_3
	addi	t4, t4, 1
	addi	t6, t6, 1152
	addi	t5, t5, 128
	bne	t4, t3, .LBB120_2
	addi	t1, t1, 1
	add	t2, t2, a7
	addi	a0, t0, 2047
	addi	t0, a0, 1793
	bne	t1, a6, .LBB120_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 808 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp229:
.Lfunc_end120:
	.size	main_graph$async_dispatch_44_generic_28x28x3x3x128_i8, .Lfunc_end120-main_graph$async_dispatch_44_generic_28x28x3x3x128_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32,@function
main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32:
.Lfunc_begin121:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp230:
	.loc	1 808 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 105
	li	a2, 1
	li	t0, 127
	lui	a7, 122570
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 1152
	addi	a2, a7, -881
	slli	a2, a2, 33
	addi	a2, a2, 128
	gemmini.config	a4, a2
	li	a7, 128
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 512
	addi	a4, a6, -128
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 1
	slli	a0, a0, 61
	andi	a2, a2, -16
	srli	a0, a0, 57
	slli	a3, a2, 10
	slli	a2, a2, 7
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 5029
	add	a2, a2, t1
	lui	a4, 151
	addi	a4, a4, -1536
	add	a3, a3, a4
	li	a4, -1
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 1152
	srli	a4, a4, 1
	and	a1, a1, a4
	and	a5, t3, a4
	and	a3, a3, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a2, a2, 1
	addi	a4, a4, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 808 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp231:
.Lfunc_end121:
	.size	main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32, .Lfunc_end121-main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32,@function
main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32:
.Lfunc_begin122:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp232:
	.loc	1 814 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 141
	addi	a3, a3, -128
	srli	a4, a2, 3
	slli	a5, a4, 15
	slli	a4, a4, 18
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a1, 371
	addi	a4, a1, 512
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB122_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB122_2:
	.loc	1 814 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB122_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB122_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 814 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp233:
.Lfunc_end122:
	.size	main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32, .Lfunc_end122-main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32,@function
main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32:
.Lfunc_begin123:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t3, 2048
.Ltmp234:
	.loc	1 814 12 prologue_end
	ld	a3, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 129
	lui	t5, 371
	li	t4, -1
	addi	t0, s0, -320
	li	s2, 1
	li	s3, 127
	lui	s1, 62178
	li	a0, 2
	slli	a4, s2, 48
	slli	a5, s3, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a3)
	ld	a2, 8(a3)
	ld	t1, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a4
	li	t6, 128
	li	s4, 512
	addi	a3, s1, 1835
	slli	a3, a3, 34
	addi	a3, a3, 16
	gemmini.config	a0, a3
	lui	a3, 123
	lui	a0, 307200
	fmv.w.x	fa5, a0
	lui	a0, 260096
	fmv.w.x	fa4, a0
	lui	a0, 798720
	fmv.w.x	fa3, a0
	lui	a0, 254251
	addi	a0, a0, -1722
	fmv.w.x	fa2, a0
	lui	a0, 252141
	addi	a0, a0, -534
	fmv.w.x	fa1, a0
	lui	a0, 254299
	slli	s3, s3, 35
	slli	s2, s2, 11
	addi	a0, a0, 420
	addi	s3, s3, 1
	fmv.w.x	fa0, a0
	slli	s3, s3, 20
	addi	a0, s3, 257
	gemmini.config	a0, t6
	addi	a0, s3, 265
	gemmini.config	a0, s4
	srli	a0, a1, 1
	addi	a5, s3, 273
	gemmini.config	a5, s2
	slli	a5, a1, 59
	.loc	1 821 12
	srli	a1, a1, 5
	.loc	1 814 12
	andi	a0, a0, -16
	srli	a5, a5, 55
	.loc	1 821 12
	slli	a1, a1, 13
	.loc	1 814 12
	add	a6, a6, a5
	slli	s1, a0, 11
	.loc	1 821 12
	or	a1, a1, a5
	.loc	1 814 12
	slli	a5, a5, 2
	add	a5, a5, s1
	lui	s1, 25
	addi	a3, a3, -2048
	addi	s1, s1, -2048
	.loc	1 821 12
	add	a3, a3, a1
	add	a1, a1, s1
	lui	s1, 128
	.loc	1 814 12
	add	a2, a2, a6
	li	a6, 16
	.loc	1 821 12
	add	t1, t1, a3
	lui	a3, 80
	fmv.w.x	ft0, zero
	addi	s2, t3, -1
	addi	a4, t5, 512
	.loc	1 814 12
	slli	a0, a0, 7
	add	a0, a0, t2
	add	a5, a5, t2
	.loc	1 821 12
	add	t2, t2, a1
	srli	a1, t4, 1
	addi	s1, s1, 1
	addi	a3, a3, 1
	.loc	1 814 12
	add	a4, a4, a5
	and	a5, t0, a1
	slli	s1, s1, 16
	addi	s1, s1, 1
	and	a0, a0, a1
	and	a2, a2, a1
	and	a1, a1, a4
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a0, a2
	gemmini.loop_ws.config.addrs.dc	a1, a5
	gemmini.loop_ws.config.strides.ab	t6, s4
	gemmini.loop_ws.config.strides.dc	s4, a6
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t5, 1024
	li	s6, 31
	j	.LBB123_2
.LBB123_1:
	.loc	1 821 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 512
	addi	t2, t2, 512
	beq	a7, a6, .LBB123_30
.LBB123_2:
	.loc	1 0 12 is_stmt 0
	li	t6, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB123_4
.LBB123_3:
	.loc	1 821 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t6, t6, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t6, .LBB123_1
.LBB123_4:
	.loc	1 821 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 801 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 816 12
	fcvt.s.w	ft3, a1
	.loc	1 817 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 818 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB123_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB123_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a4, a1, a0
	bltu	a4, s6, .LBB123_8
	.loc	1 0 12 is_stmt 0
	li	a4, 31
.LBB123_8:
	.loc	1 818 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a3, a5, 33
	srli	a3, a3, 56
	addi	a1, a3, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB123_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB123_10:
	.loc	1 818 12 is_stmt 1
	beq	a1, t4, .LBB123_12
	srlw	a1, t5, a0
	j	.LBB123_13
.LBB123_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB123_13:
	addi	s1, s1, -127
	srlw	a4, s2, a4
	.loc	1 818 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a3, a3, -126
	seqz	s1, s1
	and	a2, a2, a4
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a3, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB123_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB123_22
.LBB123_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB123_17
.LBB123_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB123_17:
	.loc	1 818 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 820 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 821 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB123_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB123_24
.LBB123_19:
	beq	a4, t4, .LBB123_25
.LBB123_20:
	srlw	a1, t5, a0
	j	.LBB123_26
.LBB123_21:
	.loc	1 818 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB123_15
.LBB123_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 818 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB123_16
	j	.LBB123_17
.LBB123_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 821 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB123_19
.LBB123_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 821 12
	bne	a4, t4, .LBB123_20
.LBB123_25:
	.loc	1 0 12
	li	a1, 0
.LBB123_26:
	seqz	a4, a4
	srlw	a3, s2, a3
	.loc	1 821 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB123_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB123_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB123_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB123_3
.LBB123_30:
	.loc	1 814 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 814 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp235:
.Lfunc_end123:
	.size	main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32, .Lfunc_end123-main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32,@function
main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32:
.Lfunc_begin124:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp236:
	.loc	1 823 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	lui	a7, 123
	lui	a6, 145
	li	a4, 1
	li	t0, 127
	slli	a4, a4, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	t1, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a4
	lui	a4, 246619
	li	a5, 6
	addi	a1, a7, -2048
	addi	a4, a4, 835
	slli	a4, a4, 32
	addi	a4, a4, 128
	gemmini.config	a5, a4
	slli	a4, a0, 1
	andi	a4, a4, -16
	slli	a5, a4, 9
	add	a1, a1, a5
	li	t2, 512
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	slli	a0, a0, 61
	srli	a0, a0, 57
	add	a6, a6, a0
	slli	a4, a4, 7
	or	a0, a0, a4
	addi	a4, t0, 257
	gemmini.config	a4, t2
	lui	a4, 5127
	add	a1, a1, a2
	li	a2, 128
	add	a6, a6, a3
	add	a3, a3, a4
	addi	a4, t0, 265
	gemmini.config	a4, a2
	add	t1, t1, a0
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, -1
	addi	a4, t0, 273
	gemmini.config	a4, t2
	lui	a7, 512
	srli	a3, a3, 1
	and	a1, a1, a3
	and	a4, a6, a3
	and	a5, t1, a3
	and	a0, a0, a3
	lui	a3, 80
	addi	a7, a7, 1
	addi	a3, a3, 257
	slli	a7, a7, 16
	addi	a7, a7, 1
	gemmini.loop_ws.config.bounds	zero, a7
	gemmini.loop_ws.config.addrs.ab	a1, a4
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a2
	gemmini.loop_ws.config.strides.dc	a2, a2
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 823 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp237:
.Lfunc_end124:
	.size	main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32, .Lfunc_end124-main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_50_generic_28x28x3x3x128_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_50_generic_28x28x3x3x128_i8,@function
main_graph$async_dispatch_50_generic_28x28x3x3x128_i8:
.Lfunc_begin125:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp238:
	.loc	1 829 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a6, 221
	lui	a3, 25
	srli	a0, s1, 2
	slli	a5, a0, 11
	slli	a4, a0, 17
	sub	a4, a4, a5
	slli	a5, a0, 10
	slli	a0, a0, 14
	sub	a0, a0, a5
	ld	a5, 0(a1)
	ld	a2, 8(a1)
	slli	s1, s1, 62
	srli	s1, s1, 57
	or	a4, a4, s1
	or	a0, a0, s1
	li	s9, 24
	add	a2, a2, a4
	li	s5, 3
	add	a0, a0, a5
	li	t3, 28
	addi	t2, a6, -2048
	add	t2, t2, a2
	lui	a2, 8
	addi	t0, a3, -2048
	addi	a7, a2, -512
	add	t0, t0, a0
	li	a6, 4
.LBB125_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t0
	mv	t6, t2
.LBB125_2:
	li	s3, 0
	mv	s2, t5
	mv	s4, t6
.LBB125_3:
	li	s6, 0
	mv	s7, s2
	mv	s8, s4
.LBB125_4:
	li	a5, 0
	mv	a3, s7
	mv	a0, s8
.LBB125_5:
	mv	a2, a5
	li	a5, 8
	mv	s1, a3
	mv	a4, a0
.LBB125_6:
	.loc	1 829 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a5, a5, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a5, .LBB125_6
	addi	a5, a2, 8
	addi	a0, a0, 8
	addi	a3, a3, 8
	bltu	a2, s9, .LBB125_5
	addi	s6, s6, 1
	addi	s8, s8, 128
	addi	s7, s7, 128
	bne	s6, s5, .LBB125_4
	addi	s3, s3, 1
	addi	s4, s4, 384
	addi	a0, s2, 2047
	addi	s2, a0, 1793
	bne	s3, s5, .LBB125_3
	addi	t4, t4, 1
	addi	t6, t6, 1152
	addi	t5, t5, 128
	bne	t4, t3, .LBB125_2
	addi	t1, t1, 1
	add	t2, t2, a7
	addi	a0, t0, 2047
	addi	t0, a0, 1793
	bne	t1, a6, .LBB125_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 829 12 epilogue_begin is_stmt 0
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp239:
.Lfunc_end125:
	.size	main_graph$async_dispatch_50_generic_28x28x3x3x128_i8, .Lfunc_end125-main_graph$async_dispatch_50_generic_28x28x3x3x128_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32,@function
main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32:
.Lfunc_begin126:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp240:
	.loc	1 829 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 141
	li	a2, 1
	li	t0, 127
	lui	a7, 121864
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t1, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t2, 1152
	addi	a2, a7, -367
	slli	a2, a2, 33
	addi	a2, a2, 128
	gemmini.config	a4, a2
	li	a7, 128
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t2
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 512
	addi	a4, a6, 1920
	addi	a3, t0, 273
	gemmini.config	a3, a2
	slli	a2, a0, 1
	slli	a0, a0, 61
	andi	a2, a2, -16
	srli	a0, a0, 57
	slli	a3, a2, 10
	slli	a2, a2, 7
	add	a4, a4, a0
	add	a3, a3, a2
	or	a0, a0, a2
	add	a3, a3, a5
	add	a1, a1, a4
	lui	a2, 5225
	add	a2, a2, t1
	lui	a4, 221
	addi	a4, a4, -2048
	add	a3, a3, a4
	li	a4, -1
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, a2
	lui	a2, 1152
	srli	a4, a4, 1
	and	a1, a1, a4
	and	a5, t3, a4
	and	a3, a3, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a2, a2, 1
	addi	a4, a4, 257
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	zero, a2
	gemmini.loop_ws.config.addrs.ab	a3, a1
	gemmini.loop_ws.config.addrs.dc	a0, a5
	gemmini.loop_ws.config.strides.ab	t2, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 829 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp241:
.Lfunc_end126:
	.size	main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32, .Lfunc_end126-main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32,@function
main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32:
.Lfunc_begin127:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a0, 0
.Ltmp242:
	.loc	1 835 12 prologue_end
	lwu	a2, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 177
	addi	a3, a3, 1920
	srli	a4, a2, 3
	slli	a5, a4, 15
	slli	a4, a4, 18
	sub	a4, a4, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	andi	a2, a2, 7
	slli	a2, a2, 8
	add	a3, a3, a2
	or	a2, a2, a4
	add	a2, a2, a1
	lui	a4, 441
	add	a7, a3, a5
	add	a3, a2, a4
	li	a6, 112
.LBB127_1:
	.loc	1 0 12 is_stmt 0
	li	a4, 256
	mv	a5, a7
	mv	a2, a3
.LBB127_2:
	.loc	1 835 12 is_stmt 1
	ld	a1, 0(a5)
	addi	a4, a4, -8
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a5, a5, 8
	bnez	a4, .LBB127_2
	addi	a0, a0, 1
	addi	a3, a3, 2047
	addi	a3, a3, 1
	bne	a0, a6, .LBB127_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 835 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp243:
.Lfunc_end127:
	.size	main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32, .Lfunc_end127-main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32,@function
main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32:
.Lfunc_begin128:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)
	sd	s0, 304(sp)
	sd	s1, 296(sp)
	sd	s2, 288(sp)
	sd	s3, 280(sp)
	sd	s4, 272(sp)
	sd	s5, 264(sp)
	sd	s6, 256(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	li	a7, 0
	lui	t3, 2048
.Ltmp244:
	.loc	1 835 12 prologue_end
	ld	a3, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 161
	lui	t5, 441
	li	t4, -1
	addi	t0, s0, -320
	li	s2, 1
	li	s3, 127
	lui	s1, 30932
	li	a0, 2
	slli	a4, s2, 48
	slli	a5, s3, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a3)
	ld	a2, 8(a3)
	ld	t1, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a4
	li	t6, 128
	li	s4, 512
	addi	a3, s1, -1787
	slli	a3, a3, 35
	addi	a3, a3, 16
	gemmini.config	a0, a3
	lui	a3, 25
	lui	a0, 307200
	fmv.w.x	fa5, a0
	lui	a0, 260096
	fmv.w.x	fa4, a0
	lui	a0, 798720
	fmv.w.x	fa3, a0
	lui	a0, 254299
	addi	a0, a0, 420
	fmv.w.x	fa2, a0
	lui	a0, 251933
	addi	a0, a0, -1475
	fmv.w.x	fa1, a0
	lui	a0, 254190
	slli	s3, s3, 35
	slli	s2, s2, 11
	addi	a0, a0, 1800
	addi	s3, s3, 1
	fmv.w.x	fa0, a0
	slli	s3, s3, 20
	addi	a0, s3, 257
	gemmini.config	a0, t6
	addi	a0, s3, 265
	gemmini.config	a0, s4
	srli	a0, a1, 1
	addi	a5, s3, 273
	gemmini.config	a5, s2
	slli	a5, a1, 59
	.loc	1 842 12
	srli	a1, a1, 5
	.loc	1 835 12
	andi	a0, a0, -16
	srli	a5, a5, 55
	.loc	1 842 12
	slli	a1, a1, 13
	.loc	1 835 12
	add	a6, a6, a5
	slli	s1, a0, 11
	.loc	1 842 12
	or	a1, a1, a5
	.loc	1 835 12
	slli	a5, a5, 2
	add	a5, a5, s1
	lui	s1, 123
	addi	a3, a3, -2048
	addi	s1, s1, -2048
	.loc	1 842 12
	add	a3, a3, a1
	add	a1, a1, s1
	lui	s1, 128
	.loc	1 835 12
	add	a2, a2, a6
	li	a6, 16
	.loc	1 842 12
	add	t1, t1, a3
	lui	a3, 80
	fmv.w.x	ft0, zero
	addi	s2, t3, -1
	.loc	1 835 12
	slli	a0, a0, 7
	add	a0, a0, t2
	add	a5, a5, t2
	.loc	1 842 12
	add	t2, t2, a1
	srli	a1, t4, 1
	addi	s1, s1, 1
	addi	a3, a3, 1
	.loc	1 835 12
	add	a5, a5, t5
	and	a4, t0, a1
	slli	s1, s1, 16
	addi	s1, s1, 1
	and	a0, a0, a1
	and	a2, a2, a1
	and	a1, a1, a5
	gemmini.loop_ws.config.bounds	zero, s1
	gemmini.loop_ws.config.addrs.ab	a0, a2
	gemmini.loop_ws.config.addrs.dc	a1, a4
	gemmini.loop_ws.config.strides.ab	t6, s4
	gemmini.loop_ws.config.strides.dc	s4, a6
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	t3, 790528
	lui	t5, 1024
	li	s6, 31
	j	.LBB128_2
.LBB128_1:
	.loc	1 842 12
	addi	a7, a7, 1
	addi	t0, t0, 16
	addi	t1, t1, 512
	addi	t2, t2, 512
	beq	a7, a6, .LBB128_30
.LBB128_2:
	.loc	1 0 12 is_stmt 0
	li	t6, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB128_4
.LBB128_3:
	.loc	1 842 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	t6, t6, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	t6, .LBB128_1
.LBB128_4:
	.loc	1 842 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 822 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 837 12
	fcvt.s.w	ft3, a1
	.loc	1 838 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 839 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB128_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB128_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a4, a1, a0
	bltu	a4, s6, .LBB128_8
	.loc	1 0 12 is_stmt 0
	li	a4, 31
.LBB128_8:
	.loc	1 839 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a3, a5, 33
	srli	a3, a3, 56
	addi	a1, a3, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB128_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB128_10:
	.loc	1 839 12 is_stmt 1
	beq	a1, t4, .LBB128_12
	srlw	a1, t5, a0
	j	.LBB128_13
.LBB128_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB128_13:
	addi	s1, s1, -127
	srlw	a4, s2, a4
	.loc	1 839 12 is_stmt 1
	srlw	a0, s2, a0
	addi	a3, a3, -126
	seqz	s1, s1
	and	a2, a2, a4
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a3, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB128_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB128_22
.LBB128_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB128_17
.LBB128_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB128_17:
	.loc	1 839 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 841 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 842 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB128_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB128_24
.LBB128_19:
	beq	a4, t4, .LBB128_25
.LBB128_20:
	srlw	a1, t5, a0
	j	.LBB128_26
.LBB128_21:
	.loc	1 839 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB128_15
.LBB128_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 839 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB128_16
	j	.LBB128_17
.LBB128_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 842 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB128_19
.LBB128_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 842 12
	bne	a4, t4, .LBB128_20
.LBB128_25:
	.loc	1 0 12
	li	a1, 0
.LBB128_26:
	seqz	a4, a4
	srlw	a3, s2, a3
	.loc	1 842 12 is_stmt 1
	srlw	a0, s2, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB128_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB128_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB128_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB128_3
.LBB128_30:
	.loc	1 835 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 320
	.loc	1 835 12 epilogue_begin is_stmt 0
	ld	ra, 312(sp)
	ld	s0, 304(sp)
	ld	s1, 296(sp)
	ld	s2, 288(sp)
	ld	s3, 280(sp)
	ld	s4, 272(sp)
	ld	s5, 264(sp)
	ld	s6, 256(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 320
	.cfi_def_cfa_offset 0
	ret
.Ltmp245:
.Lfunc_end128:
	.size	main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32, .Lfunc_end128-main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32,@function
main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32:
.Lfunc_begin129:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp246:
	.loc	1 844 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 25
	li	a2, 1
	li	t0, 127
	lui	a7, 247355
	slli	a2, a2, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a5, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 512
	addi	a2, a7, 1773
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a2, t0, 257
	gemmini.config	a2, t1
	addi	a2, t0, 265
	gemmini.config	a2, a7
	li	a2, 1024
	addi	a4, a6, -2048
	addi	a3, t0, 273
	gemmini.config	a3, a2
	andi	a2, a0, -16
	slli	a3, a2, 9
	add	a3, a3, a4
	lui	a4, 177
	slli	a0, a0, 60
	srli	a0, a0, 56
	slli	a2, a2, 8
	add	a4, a4, a0
	or	a0, a0, a2
	add	a3, a3, a5
	lui	a2, 123
	addi	a2, a2, -2048
	add	a2, a2, a0
	add	a2, a2, t2
	lui	a5, 5323
	slli	a0, a0, 2
	add	a4, a4, a1
	add	a0, a0, a1
	li	a1, -1
	add	a0, a0, a5
	lui	a5, 512
	srli	a1, a1, 1
	and	a3, a3, a1
	and	a4, a4, a1
	and	a2, a2, a1
	and	a0, a0, a1
	lui	a1, 80
	addi	a5, a5, 1
	addi	a1, a1, 257
	slli	a5, a5, 16
	addi	a5, a5, 1
	gemmini.loop_ws.config.bounds	zero, a5
	gemmini.loop_ws.config.addrs.ab	a3, a4
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 844 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp247:
.Lfunc_end129:
	.size	main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32, .Lfunc_end129-main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_55_generic_14x14x512_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_55_generic_14x14x512_i8,@function
main_graph$async_dispatch_55_generic_14x14x512_i8:
.Lfunc_begin130:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp248:
	.loc	1 842 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 845 12
	lwu	s1, 0(a2)
	lui	a3, 12
	lui	a4, 49
	lui	a5, 25
	li	s3, 24
	addi	a3, a3, 1024
	srli	a2, s1, 4
	mul	a3, a2, a3
	mul	a2, a2, a4
	li	t4, 14
	slli	s1, s1, 60
	srli	s1, s1, 55
	or	a3, a3, s1
	or	a2, a2, s1
	.loc	1 842 12
	ld	t3, 0(a0)
	.loc	1 845 12
	ld	t2, 8(a0)
	addi	a0, a5, -2048
	add	a0, a0, a2
	li	a6, 7
	add	t2, t2, a3
	slli	t0, a6, 10
	add	t3, t3, a0
	lui	a7, 7
.LBB130_1:
	.loc	1 0 12 is_stmt 0
	li	t5, 0
	mv	t6, t3
	mv	s2, t2
.LBB130_2:
	li	a0, 0
	mv	a3, t6
	mv	a2, s2
.LBB130_3:
	mv	a5, a0
	li	a0, 8
	mv	s1, a3
	mv	a4, a2
.LBB130_4:
	.loc	1 845 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a0, a0, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a0, .LBB130_4
	addi	a0, a5, 8
	addi	a2, a2, 8
	addi	a3, a3, 8
	bltu	a5, s3, .LBB130_3
	addi	t5, t5, 1
	addi	s2, s2, 512
	addi	t6, t6, 1024
	bne	t5, t4, .LBB130_2
	addi	t1, t1, 1
	add	t2, t2, t0
	add	t3, t3, a7
	bne	t1, a6, .LBB130_1
	li	a0, 0
	.cfi_def_cfa sp, 48
	.loc	1 845 12 epilogue_begin is_stmt 0
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Ltmp249:
.Lfunc_end130:
	.size	main_graph$async_dispatch_55_generic_14x14x512_i8, .Lfunc_end130-main_graph$async_dispatch_55_generic_14x14x512_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_56_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_56_slow_memcpy,@function
main_graph$async_dispatch_56_slow_memcpy:
.Lfunc_begin131:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	li	t2, 0
.Ltmp250:
	.loc	1 851 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 853 12
	lwu	a1, 0(a2)
	lui	a2, 173
	lui	a3, 123
	li	t5, 28
	srli	a4, a1, 2
	slli	a5, a4, 11
	slli	s1, a4, 15
	slli	a4, a4, 12
	sub	a5, s1, a5
	sub	s1, s1, a4
	.loc	1 851 12
	ld	t6, 0(a0)
	.loc	1 853 12
	ld	a0, 8(a0)
	slli	a1, a1, 62
	srli	a1, a1, 56
	or	a5, a5, a1
	or	a1, a1, s1
	li	a6, 15
	add	a0, a0, a5
	li	a7, 7
	addi	t3, a2, 1792
	addi	a2, a3, -2048
	slli	a6, a6, 9
	slli	a7, a7, 10
	add	a1, a1, a2
	add	t3, t3, a0
	add	t4, t6, a1
	addi	t1, a1, 64
	li	t0, 4
.LBB131_1:
	.loc	1 0 12 is_stmt 0
	li	a3, 0
	.loc	1 853 12
	slli	a0, t2, 10
	slli	a1, t2, 13
	sub	a0, a1, a0
	add	s2, t1, a0
	mv	a4, t4
	mv	a1, t3
.LBB131_2:
	slli	a2, a3, 8
	add	a2, a2, s2
	add	a2, a2, t6
	mv	a5, a1
	mv	s1, a4
.LBB131_3:
	lh	a0, 0(s1)
	addi	s1, s1, 2
	sh	a0, 0(a5)
	addi	a5, a5, 2
	bne	s1, a2, .LBB131_3
	addi	a3, a3, 1
	addi	a1, a1, 256
	addi	a4, a4, 256
	bne	a3, t5, .LBB131_2
	addi	t2, t2, 1
	add	t3, t3, a6
	add	t4, t4, a7
	bne	t2, t0, .LBB131_1
	li	a0, 0
	.cfi_def_cfa sp, 32
	.loc	1 853 12 epilogue_begin
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
.Ltmp251:
.Lfunc_end131:
	.size	main_graph$async_dispatch_56_slow_memcpy, .Lfunc_end131-main_graph$async_dispatch_56_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_57_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_57_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_57_generic_14x14x3x3x256_i8:
.Lfunc_begin132:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	li	t1, 0
	li	a0, 0
.Ltmp252:
	.loc	1 853 12 prologue_end
	lwu	s1, 0(a2)
	li	t6, 15
	ld	a1, 32(a1)
	lui	a3, 25
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	slli	a5, a2, 11
	slli	a2, a2, 15
	sub	a2, a2, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	s1, s1, 61
	srli	s1, s1, 56
	or	a4, a4, s1
	or	a2, a2, s1
	lui	s1, 172
	add	a4, a4, a1
	li	s9, 24
	add	a2, a2, a5
	li	s5, 3
	addi	a6, a3, -2048
	add	a6, a6, a4
	slli	a3, t6, 11
	addi	t0, s1, -2048
	addi	a7, a3, 1536
	add	t0, t0, a2
	li	t2, 14
.LBB132_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	.loc	1 853 12
	slli	a2, a0, 10
	slli	a3, a0, 14
	sub	a3, a3, a2
	mul	t3, a0, a7
	add	t3, t3, a6
	add	t5, t0, a3
.LBB132_2:
	.loc	1 0 12
	li	s2, 0
	mv	s3, t5
	mv	s4, t3
.LBB132_3:
	li	s6, 0
	mv	s7, s3
	mv	s8, s4
.LBB132_4:
	li	a2, 0
	mv	a0, s7
	mv	a5, s8
.LBB132_5:
	mv	a3, a2
	li	a2, 8
	mv	s1, a0
	mv	a4, a5
.LBB132_6:
	.loc	1 853 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	a2, a2, -1
	sb	a1, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, 1
	bnez	a2, .LBB132_6
	addi	a2, a3, 8
	addi	a5, a5, 8
	addi	a0, a0, 8
	bltu	a3, s9, .LBB132_5
	addi	s6, s6, 1
	addi	s8, s8, 256
	addi	s7, s7, 256
	bne	s6, s5, .LBB132_4
	addi	s2, s2, 1
	addi	s4, s4, 768
	slli	a0, t6, 9
	add	s3, s3, a0
	bne	s2, s5, .LBB132_3
	addi	t4, t4, 1
	addi	a0, t3, 2047
	addi	t3, a0, 257
	addi	t5, t5, 512
	bne	t4, t2, .LBB132_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 853 12
	andi	a1, t1, 1
	li	t1, 1
	beqz	a1, .LBB132_1
	li	a0, 0
	.cfi_def_cfa sp, 96
	.loc	1 853 12 epilogue_begin
	ld	ra, 88(sp)
	ld	s0, 80(sp)
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Ltmp253:
.Lfunc_end132:
	.size	main_graph$async_dispatch_57_generic_14x14x3x3x256_i8, .Lfunc_end132-main_graph$async_dispatch_57_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin133:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp254:
	.loc	1 853 12 prologue_end
	ld	a1, 32(a1)
	lwu	t2, 0(a2)
	li	a7, 1
	lui	a6, 25
	li	t0, 127
	lui	a2, 244865
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a4, 0(a1)
	ld	t4, 8(a1)
	ld	t3, 16(a1)
	ld	t1, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, 693
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t5, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t5
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, -2048
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t2, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 178
	addi	a5, a5, -128
	slli	t2, t2, 60
	srli	a1, t2, 56
	add	a5, a5, a1
	slli	a3, a3, 8
	or	a1, a1, a3
	add	a0, a0, a4
	lui	a3, 135
	add	a5, a5, t4
	lui	a4, 5715
	add	a4, a4, t3
	li	a6, -1
	addi	a3, a3, -1024
	add	t1, t1, a1
	add	a3, a3, t1
	lui	t0, 2048
	slli	a1, a1, 2
	add	a1, a1, a4
	li	t1, 12
	srli	a4, a6, 1
	and	a0, a0, a4
	and	a5, a5, a4
	and	a3, a3, a4
	and	a1, a1, a4
	lui	a6, 80
	addi	t0, t0, 1
	slli	t0, t0, 16
	addi	t0, t0, 1
	gemmini.loop_ws.config.bounds	t1, t0
	lui	a4, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	t0, 256
	add	a4, a4, a5
	lui	a5, 160
	addi	a0, a6, 257
	addi	t0, t0, 1
	addi	a5, a5, 257
	slli	t0, t0, 16
	addi	t0, t0, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t5
	gemmini.loop_ws.config.strides.dc	t5, t5
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t1, t0
	gemmini.loop_ws.config.addrs.ab	a7, a4
	gemmini.loop_ws.config.addrs.dc	zero, a3
	gemmini.loop_ws.config.strides.ab	a2, t5
	gemmini.loop_ws.config.strides.dc	t5, t5
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 853 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp255:
.Lfunc_end133:
	.size	main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32, .Lfunc_end133-main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin134:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp256:
	.loc	1 859 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 135
	li	a2, 1
	li	a1, 127
	lui	a7, 245112
	slli	a2, a2, 48
	slli	a5, a1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t0, 0(a3)
	ld	a4, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	a5, 2
	li	t1, 256
	addi	a2, a7, -639
	slli	a2, a2, 32
	addi	a2, a2, 1024
	gemmini.config	a5, a2
	li	a7, 1024
	slli	a1, a1, 35
	addi	a1, a1, 1
	slli	a1, a1, 20
	addi	a2, a1, 257
	gemmini.config	a2, t1
	addi	a2, a1, 265
	gemmini.config	a2, a7
	lui	a2, 1
	addi	a1, a1, 273
	gemmini.config	a1, a2
	lui	a1, 256
	li	a2, 12
	addi	a3, a6, -1024
	addi	a1, a1, 1
	slli	a1, a1, 16
	addi	a1, a1, 1
	gemmini.loop_ws.config.bounds	a2, a1
	srli	a1, a0, 4
	andi	a1, a1, -4
	slli	a2, a1, 8
	add	a2, a2, a3
	lui	a3, 337
	slli	a0, a0, 58
	srli	a0, a0, 54
	add	a3, a3, a0
	slli	a1, a1, 10
	or	a0, a0, a1
	add	a2, a2, t0
	lui	a1, 5764
	add	a3, a3, a4
	add	a1, a1, a4
	lui	a4, 25
	addi	a4, a4, -2048
	add	t2, t2, a0
	add	a4, a4, t2
	li	a5, -1
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a5, a5, 1
	addi	a1, a1, 1
	and	a2, a2, a5
	and	a3, a3, a5
	and	a4, a4, a5
	and	a0, a0, a5
	gemmini.loop_ws.config.addrs.ab	a2, a3
	gemmini.loop_ws.config.addrs.dc	a0, a4
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 859 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp257:
.Lfunc_end134:
	.size	main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32, .Lfunc_end134-main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32,@function
main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32:
.Lfunc_begin135:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp258:
	.loc	1 845 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 209
	lui	t3, 5519
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 248841
	li	a4, 2
	li	t5, 512
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	t6, t6, 15
	slli	t6, t6, 32
	addi	t6, t6, 16
	gemmini.config	a4, t6
	lui	a4, 512
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 74
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 251671
	addi	s1, s1, 1487
	fmv.w.x	fa2, s1
	lui	s1, 252414
	addi	s1, s1, -356
	fmv.w.x	fa1, s1
	lui	s1, 252441
	addi	a4, a4, 1
	addi	s1, s1, 1901
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 866 12
	srli	a3, a3, 6
	.loc	1 845 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 866 12
	slli	a3, a3, 12
	.loc	1 845 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 866 12
	or	a3, a3, a2
	.loc	1 845 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 25
	addi	a5, a5, -2048
	addi	a2, a2, -2048
	.loc	1 866 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 845 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 866 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 845 12
	slli	s1, s1, 9
	add	s1, s1, t2
	.loc	1 866 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 845 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB135_2
.LBB135_1:
	.loc	1 866 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB135_30
.LBB135_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB135_4
.LBB135_3:
	.loc	1 866 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB135_1
.LBB135_4:
	.loc	1 866 12
	lb	a0, 0(s5)
	lb	a1, 0(s3)
	.loc	1 849 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 861 12
	fcvt.s.w	ft3, a1
	.loc	1 862 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 863 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB135_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB135_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB135_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB135_8:
	.loc	1 863 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB135_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB135_10:
	.loc	1 863 12 is_stmt 1
	beq	a1, t4, .LBB135_12
	srlw	a1, t5, a0
	j	.LBB135_13
.LBB135_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB135_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 863 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB135_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB135_22
.LBB135_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB135_17
.LBB135_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB135_17:
	.loc	1 863 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 865 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 866 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB135_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB135_24
.LBB135_19:
	beq	a4, t4, .LBB135_25
.LBB135_20:
	srlw	a1, t5, a0
	j	.LBB135_26
.LBB135_21:
	.loc	1 863 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB135_15
.LBB135_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 863 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB135_16
	j	.LBB135_17
.LBB135_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 866 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB135_19
.LBB135_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 866 12
	bne	a4, t4, .LBB135_20
.LBB135_25:
	.loc	1 0 12
	li	a1, 0
.LBB135_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 866 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB135_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB135_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB135_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB135_3
.LBB135_30:
	.loc	1 845 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 845 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp259:
.Lfunc_end135:
	.size	main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32, .Lfunc_end135-main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32,@function
main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32:
.Lfunc_begin136:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp260:
	.loc	1 868 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 74
	li	a2, 1
	li	a5, 127
	lui	a7, 246200
	slli	a2, a2, 48
	slli	a4, a5, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 1024
	addi	a2, a7, -675
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 1024
	addi	a5, a5, 273
	gemmini.config	a5, t1
	li	a5, 12
	addi	a3, a6, -2048
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 2
	andi	a4, a4, -4
	slli	a5, a4, 10
	add	a3, a3, a5
	lui	a5, 401
	slli	a0, a0, 60
	srli	a0, a0, 56
	add	a5, a5, a0
	slli	a4, a4, 8
	or	a0, a0, a4
	add	a3, a3, t0
	lui	a4, 5960
	add	a5, a5, a1
	add	a1, a1, a4
	li	a4, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a4, a4, 1
	addi	a1, a1, 257
	and	a3, a3, a4
	and	a5, a5, a4
	and	a2, t2, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a3, a5
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 868 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp261:
.Lfunc_end136:
	.size	main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32, .Lfunc_end136-main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_62_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_62_slow_memcpy,@function
main_graph$async_dispatch_62_slow_memcpy:
.Lfunc_begin137:
	.cfi_startproc
	.loc	1 874 12 prologue_end is_stmt 1
	lwu	a2, 0(a2)
	slli	a5, a2, 1
	andi	a5, a5, -8
	li	a0, 13
	bltu	a0, a5, .LBB137_10
	.loc	1 0 12 is_stmt 0
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	ld	a0, 24(a1)
	ld	a1, 32(a1)
	slli	a3, a2, 62
	li	a6, 7
	srli	a3, a3, 56
	lwu	t0, 0(a0)
	ld	t6, 0(a1)
	ld	a4, 8(a1)
	li	t5, 14
	.loc	1 874 12
	sub	a7, t5, a5
	li	a0, 8
	slli	a6, a6, 9
	bltu	a7, a0, .LBB137_3
	.loc	1 0 12
	li	a7, 8
.LBB137_3:
	li	t3, 0
	.loc	1 874 12 is_stmt 1
	srli	a2, a2, 2
	add	a4, a4, a6
	slli	a0, a2, 15
	slli	a2, a2, 12
	sub	a1, a0, a2
	or	a0, a0, a3
	add	a0, a0, t0
	or	a1, a1, a3
	add	a0, a0, a4
	add	t2, t6, a1
	addi	t1, a1, 64
	addi	t4, a0, 768
	lui	t0, 1
.LBB137_4:
	.loc	1 0 12 is_stmt 0
	li	a5, 0
	.loc	1 874 12
	mul	a3, t3, a6
	add	s2, t1, a3
	mv	a4, t2
	mv	a1, t4
.LBB137_5:
	slli	a0, a5, 8
	add	a0, a0, s2
	add	a0, a0, t6
	mv	a2, a1
	mv	s1, a4
.LBB137_6:
	lh	a3, 0(s1)
	addi	s1, s1, 2
	sh	a3, 0(a2)
	addi	a2, a2, 2
	bne	s1, a0, .LBB137_6
	addi	a5, a5, 1
	addi	a1, a1, 256
	addi	a4, a4, 256
	bne	a5, t5, .LBB137_5
	addi	t3, t3, 1
	add	t4, t4, t0
	addi	a0, t2, 2047
	addi	t2, a0, 1537
	bne	t3, a7, .LBB137_4
	.cfi_def_cfa sp, 32
	.loc	1 0 12
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
.LBB137_10:
	.loc	1 874 12 is_stmt 1
	li	a0, 0
	ret
.Ltmp262:
.Lfunc_end137:
	.size	main_graph$async_dispatch_62_slow_memcpy, .Lfunc_end137-main_graph$async_dispatch_62_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_63_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_63_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_63_generic_14x14x3x3x256_i8:
.Lfunc_begin138:
	.loc	1 1 0
	.cfi_startproc
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	li	t0, 0
	li	a0, 0
.Ltmp263:
	.loc	1 874 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 123
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	lui	a5, 12
	slli	s1, s1, 61
	srli	s1, s1, 56
	slli	a2, a2, 13
	or	a2, a2, s1
	or	a4, a4, s1
	ld	a6, 0(a1)
	ld	s1, 8(a1)
	addi	a1, a5, 1024
	add	a2, a2, a1
	li	s8, 24
	add	a4, a4, s1
	li	s4, 3
	add	a6, a6, a2
	lui	t5, 1
	addi	a7, a3, -2048
	add	a7, a7, a4
	li	t1, 14
.LBB138_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	.loc	1 874 12
	slli	a2, a0, 9
	slli	a3, a0, 15
	sub	a3, a3, a2
	slli	a0, a0, 12
	add	t2, a7, a3
	add	t4, a6, a0
.LBB138_2:
	.loc	1 0 12
	li	t6, 0
	mv	s2, t4
	mv	s3, t2
.LBB138_3:
	li	s5, 0
	mv	s6, s2
	mv	s7, s3
.LBB138_4:
	li	a0, 0
	mv	a3, s6
	mv	a5, s7
.LBB138_5:
	mv	a2, a0
	li	a4, 8
	mv	a0, a3
	mv	s1, a5
.LBB138_6:
	.loc	1 874 12 is_stmt 1
	lbu	a1, 0(a0)
	addi	a4, a4, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	bnez	a4, .LBB138_6
	addi	a0, a2, 8
	addi	a5, a5, 8
	addi	a3, a3, 8
	bltu	a2, s8, .LBB138_5
	addi	s5, s5, 1
	addi	s7, s7, 256
	addi	s6, s6, 256
	bne	s5, s4, .LBB138_4
	addi	t6, t6, 1
	addi	s3, s3, 768
	add	s2, s2, t5
	bne	t6, s4, .LBB138_3
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	t2, a0, 257
	addi	t4, t4, 256
	bne	t3, t1, .LBB138_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 874 12
	andi	a1, t0, 1
	li	t0, 1
	beqz	a1, .LBB138_1
	li	a0, 0
	.cfi_def_cfa sp, 80
	.loc	1 874 12 epilogue_begin
	ld	ra, 72(sp)
	ld	s0, 64(sp)
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Ltmp264:
.Lfunc_end138:
	.size	main_graph$async_dispatch_63_generic_14x14x3x3x256_i8, .Lfunc_end138-main_graph$async_dispatch_63_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin139:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp265:
	.loc	1 874 12 prologue_end
	ld	a1, 32(a1)
	lwu	t4, 0(a2)
	li	a7, 1
	lui	a6, 123
	li	t0, 127
	lui	a2, 247158
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t5, 0(a1)
	ld	t1, 8(a1)
	ld	t2, 16(a1)
	ld	t3, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, -1745
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t6, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t6
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, -2048
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t4, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 322
	addi	a5, a5, -128
	slli	t4, t4, 60
	srli	a4, t4, 56
	add	a5, a5, a4
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a0, a0, t5
	lui	a4, 6009
	add	a5, a5, t1
	li	a1, -1
	add	a4, a4, t2
	lui	a6, 2048
	add	t3, t3, a3
	slli	a3, a3, 2
	add	a3, a3, a4
	li	t0, 12
	srli	a1, a1, 1
	and	a0, a0, a1
	and	a5, a5, a1
	and	a4, t3, a1
	and	a1, a1, a3
	lui	t1, 80
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a3, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	a6, 256
	add	a3, a3, a5
	lui	a5, 160
	addi	a0, t1, 257
	addi	a6, a6, 1
	addi	a5, a5, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t0, a6
	gemmini.loop_ws.config.addrs.ab	a7, a3
	gemmini.loop_ws.config.addrs.dc	zero, a4
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 874 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp266:
.Lfunc_end139:
	.size	main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32, .Lfunc_end139-main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin140:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp267:
	.loc	1 880 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 465
	lui	t3, 6058
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 246541
	li	a4, 2
	li	t5, 256
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	a2, t6, 1245
	slli	a2, a2, 32
	addi	a2, a2, 16
	gemmini.config	a4, a2
	lui	a4, 256
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 12
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 252441
	addi	s1, s1, 1901
	fmv.w.x	fa2, s1
	lui	s1, 252346
	addi	s1, s1, 550
	fmv.w.x	fa1, s1
	lui	s1, 252449
	addi	a4, a4, 1
	addi	s1, s1, 1311
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 887 12
	srli	a3, a3, 6
	.loc	1 880 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 887 12
	slli	a3, a3, 12
	.loc	1 880 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 887 12
	or	a3, a3, a2
	.loc	1 880 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 74
	addi	a5, a5, 1024
	addi	a2, a2, -2048
	.loc	1 887 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 880 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 887 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 880 12
	slli	s1, s1, 8
	add	s1, s1, t2
	.loc	1 887 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 880 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB140_2
.LBB140_1:
	.loc	1 887 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB140_30
.LBB140_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB140_4
.LBB140_3:
	.loc	1 887 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB140_1
.LBB140_4:
	.loc	1 887 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 867 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 882 12
	fcvt.s.w	ft3, a1
	.loc	1 883 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 884 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB140_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB140_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB140_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB140_8:
	.loc	1 884 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB140_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB140_10:
	.loc	1 884 12 is_stmt 1
	beq	a1, t4, .LBB140_12
	srlw	a1, t5, a0
	j	.LBB140_13
.LBB140_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB140_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 884 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB140_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB140_22
.LBB140_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB140_17
.LBB140_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB140_17:
	.loc	1 884 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 886 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 887 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB140_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB140_24
.LBB140_19:
	beq	a4, t4, .LBB140_25
.LBB140_20:
	srlw	a1, t5, a0
	j	.LBB140_26
.LBB140_21:
	.loc	1 884 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB140_15
.LBB140_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 884 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB140_16
	j	.LBB140_17
.LBB140_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 887 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB140_19
.LBB140_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 887 12
	bne	a4, t4, .LBB140_20
.LBB140_25:
	.loc	1 0 12
	li	a1, 0
.LBB140_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 887 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB140_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB140_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB140_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB140_3
.LBB140_30:
	.loc	1 880 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 880 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp268:
.Lfunc_end140:
	.size	main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32, .Lfunc_end140-main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32,@function
main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32:
.Lfunc_begin141:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp269:
	.loc	1 889 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 12
	li	a2, 1
	li	a5, 127
	lui	a7, 246254
	slli	a2, a2, 48
	slli	a4, a5, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 1024
	addi	a2, a7, 945
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 1024
	addi	a5, a5, 273
	gemmini.config	a5, t1
	li	a5, 12
	addi	a3, a6, 1024
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 2
	andi	a4, a4, -4
	slli	a5, a4, 10
	add	a3, a3, a5
	lui	a5, 529
	slli	a0, a0, 60
	srli	a0, a0, 56
	add	a5, a5, a0
	slli	a4, a4, 8
	or	a0, a0, a4
	add	a3, a3, t0
	lui	a4, 6254
	add	a5, a5, a1
	add	a1, a1, a4
	li	a4, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a4, a4, 1
	addi	a1, a1, 257
	and	a3, a3, a4
	and	a5, a5, a4
	and	a2, t2, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a3, a5
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 889 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp270:
.Lfunc_end141:
	.size	main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32, .Lfunc_end141-main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_68_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_68_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_68_generic_14x14x3x3x256_i8:
.Lfunc_begin142:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	li	t0, 0
	li	a0, 0
.Ltmp271:
	.loc	1 895 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 77
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	lui	a5, 61
	slli	s1, s1, 61
	srli	s1, s1, 56
	slli	a2, a2, 13
	or	a2, a2, s1
	or	a4, a4, s1
	ld	a6, 0(a1)
	ld	s1, 8(a1)
	addi	a1, a5, 1024
	add	a2, a2, a1
	li	s8, 24
	add	a4, a4, s1
	li	s4, 3
	add	a6, a6, a2
	lui	t5, 1
	addi	a7, a3, 1024
	add	a7, a7, a4
	li	t1, 14
.LBB142_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	.loc	1 895 12
	slli	a2, a0, 9
	slli	a3, a0, 15
	sub	a3, a3, a2
	slli	a0, a0, 12
	add	t2, a7, a3
	add	t4, a6, a0
.LBB142_2:
	.loc	1 0 12
	li	t6, 0
	mv	s2, t4
	mv	s3, t2
.LBB142_3:
	li	s5, 0
	mv	s6, s2
	mv	s7, s3
.LBB142_4:
	li	a0, 0
	mv	a3, s6
	mv	a5, s7
.LBB142_5:
	mv	a2, a0
	li	a4, 8
	mv	a0, a3
	mv	s1, a5
.LBB142_6:
	.loc	1 895 12 is_stmt 1
	lbu	a1, 0(a0)
	addi	a4, a4, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	bnez	a4, .LBB142_6
	addi	a0, a2, 8
	addi	a5, a5, 8
	addi	a3, a3, 8
	bltu	a2, s8, .LBB142_5
	addi	s5, s5, 1
	addi	s7, s7, 256
	addi	s6, s6, 256
	bne	s5, s4, .LBB142_4
	addi	t6, t6, 1
	addi	s3, s3, 768
	add	s2, s2, t5
	bne	t6, s4, .LBB142_3
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	t2, a0, 257
	addi	t4, t4, 256
	bne	t3, t1, .LBB142_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 895 12
	andi	a1, t0, 1
	li	t0, 1
	beqz	a1, .LBB142_1
	li	a0, 0
	.cfi_def_cfa sp, 80
	.loc	1 895 12 epilogue_begin
	ld	ra, 72(sp)
	ld	s0, 64(sp)
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Ltmp272:
.Lfunc_end142:
	.size	main_graph$async_dispatch_68_generic_14x14x3x3x256_i8, .Lfunc_end142-main_graph$async_dispatch_68_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin143:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp273:
	.loc	1 895 12 prologue_end
	ld	a1, 32(a1)
	lwu	t4, 0(a2)
	li	a7, 1
	lui	a6, 77
	li	t0, 127
	lui	a2, 243791
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t5, 0(a1)
	ld	t1, 8(a1)
	ld	t2, 16(a1)
	ld	t3, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, 1933
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t6, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t6
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, 1024
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t4, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 466
	addi	a5, a5, -128
	slli	t4, t4, 60
	srli	a4, t4, 56
	add	a5, a5, a4
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a0, a0, t5
	lui	a4, 6303
	add	a5, a5, t1
	li	a1, -1
	add	a4, a4, t2
	lui	a6, 2048
	add	t3, t3, a3
	slli	a3, a3, 2
	add	a3, a3, a4
	li	t0, 12
	srli	a1, a1, 1
	and	a0, a0, a1
	and	a5, a5, a1
	and	a4, t3, a1
	and	a1, a1, a3
	lui	t1, 80
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a3, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	a6, 256
	add	a3, a3, a5
	lui	a5, 160
	addi	a0, t1, 257
	addi	a6, a6, 1
	addi	a5, a5, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t0, a6
	gemmini.loop_ws.config.addrs.ab	a7, a3
	gemmini.loop_ws.config.addrs.dc	zero, a4
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 895 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp274:
.Lfunc_end143:
	.size	main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32, .Lfunc_end143-main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin144:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp275:
	.loc	1 901 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 593
	lui	t3, 6352
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 248398
	li	a4, 2
	li	t5, 256
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	a2, t6, 465
	slli	a2, a2, 32
	addi	a2, a2, 16
	gemmini.config	a4, a2
	lui	a4, 256
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 61
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 252449
	addi	s1, s1, 1311
	fmv.w.x	fa2, s1
	lui	s1, 253110
	addi	s1, s1, 1904
	fmv.w.x	fa1, s1
	lui	s1, 254299
	addi	a4, a4, 1
	addi	s1, s1, 845
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 908 12
	srli	a3, a3, 6
	.loc	1 901 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 908 12
	slli	a3, a3, 12
	.loc	1 901 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 908 12
	or	a3, a3, a2
	.loc	1 901 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 12
	addi	a5, a5, 1024
	addi	a2, a2, 1024
	.loc	1 908 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 901 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 908 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 901 12
	slli	s1, s1, 8
	add	s1, s1, t2
	.loc	1 908 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 901 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB144_2
.LBB144_1:
	.loc	1 908 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB144_30
.LBB144_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB144_4
.LBB144_3:
	.loc	1 908 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB144_1
.LBB144_4:
	.loc	1 908 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 888 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 903 12
	fcvt.s.w	ft3, a1
	.loc	1 904 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 905 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB144_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB144_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB144_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB144_8:
	.loc	1 905 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB144_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB144_10:
	.loc	1 905 12 is_stmt 1
	beq	a1, t4, .LBB144_12
	srlw	a1, t5, a0
	j	.LBB144_13
.LBB144_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB144_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 905 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB144_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB144_22
.LBB144_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB144_17
.LBB144_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB144_17:
	.loc	1 905 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 907 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 908 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB144_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB144_24
.LBB144_19:
	beq	a4, t4, .LBB144_25
.LBB144_20:
	srlw	a1, t5, a0
	j	.LBB144_26
.LBB144_21:
	.loc	1 905 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB144_15
.LBB144_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 905 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB144_16
	j	.LBB144_17
.LBB144_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 908 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB144_19
.LBB144_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 908 12
	bne	a4, t4, .LBB144_20
.LBB144_25:
	.loc	1 0 12
	li	a1, 0
.LBB144_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 908 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB144_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB144_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB144_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB144_3
.LBB144_30:
	.loc	1 901 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 901 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp276:
.Lfunc_end144:
	.size	main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32, .Lfunc_end144-main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32,@function
main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32:
.Lfunc_begin145:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp277:
	.loc	1 910 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 61
	li	a2, 1
	li	a5, 127
	lui	a7, 60588
	slli	a2, a2, 48
	slli	a4, a5, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 1024
	addi	a2, a7, -487
	slli	a2, a2, 34
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 1024
	addi	a5, a5, 273
	gemmini.config	a5, t1
	li	a5, 12
	addi	a3, a6, 1024
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 2
	andi	a4, a4, -4
	slli	a5, a4, 10
	add	a3, a3, a5
	lui	a5, 657
	slli	a0, a0, 60
	srli	a0, a0, 56
	add	a5, a5, a0
	slli	a4, a4, 8
	or	a0, a0, a4
	add	a3, a3, t0
	lui	a4, 6548
	add	a5, a5, a1
	add	a1, a1, a4
	li	a4, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a4, a4, 1
	addi	a1, a1, 257
	and	a3, a3, a4
	and	a5, a5, a4
	and	a2, t2, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a3, a5
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 910 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp278:
.Lfunc_end145:
	.size	main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32, .Lfunc_end145-main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_73_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_73_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_73_generic_14x14x3x3x256_i8:
.Lfunc_begin146:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	li	t0, 0
	li	a0, 0
.Ltmp279:
	.loc	1 916 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 110
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	lui	a5, 12
	slli	s1, s1, 61
	srli	s1, s1, 56
	slli	a2, a2, 13
	or	a2, a2, s1
	or	a4, a4, s1
	ld	a6, 0(a1)
	ld	s1, 8(a1)
	addi	a1, a5, 1024
	add	a2, a2, a1
	li	s8, 24
	add	a4, a4, s1
	li	s4, 3
	add	a6, a6, a2
	lui	t5, 1
	addi	a7, a3, 1024
	add	a7, a7, a4
	li	t1, 14
.LBB146_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	.loc	1 916 12
	slli	a2, a0, 9
	slli	a3, a0, 15
	sub	a3, a3, a2
	slli	a0, a0, 12
	add	t2, a7, a3
	add	t4, a6, a0
.LBB146_2:
	.loc	1 0 12
	li	t6, 0
	mv	s2, t4
	mv	s3, t2
.LBB146_3:
	li	s5, 0
	mv	s6, s2
	mv	s7, s3
.LBB146_4:
	li	a0, 0
	mv	a3, s6
	mv	a5, s7
.LBB146_5:
	mv	a2, a0
	li	a4, 8
	mv	a0, a3
	mv	s1, a5
.LBB146_6:
	.loc	1 916 12 is_stmt 1
	lbu	a1, 0(a0)
	addi	a4, a4, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	bnez	a4, .LBB146_6
	addi	a0, a2, 8
	addi	a5, a5, 8
	addi	a3, a3, 8
	bltu	a2, s8, .LBB146_5
	addi	s5, s5, 1
	addi	s7, s7, 256
	addi	s6, s6, 256
	bne	s5, s4, .LBB146_4
	addi	t6, t6, 1
	addi	s3, s3, 768
	add	s2, s2, t5
	bne	t6, s4, .LBB146_3
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	t2, a0, 257
	addi	t4, t4, 256
	bne	t3, t1, .LBB146_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 916 12
	andi	a1, t0, 1
	li	t0, 1
	beqz	a1, .LBB146_1
	li	a0, 0
	.cfi_def_cfa sp, 80
	.loc	1 916 12 epilogue_begin
	ld	ra, 72(sp)
	ld	s0, 64(sp)
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Ltmp280:
.Lfunc_end146:
	.size	main_graph$async_dispatch_73_generic_14x14x3x3x256_i8, .Lfunc_end146-main_graph$async_dispatch_73_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin147:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp281:
	.loc	1 916 12 prologue_end
	ld	a1, 32(a1)
	lwu	t4, 0(a2)
	li	a7, 1
	lui	a6, 110
	li	t0, 127
	lui	a2, 245764
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t5, 0(a1)
	ld	t1, 8(a1)
	ld	t2, 16(a1)
	ld	t3, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, -333
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t6, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t6
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, 1024
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t4, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 610
	addi	a5, a5, -128
	slli	t4, t4, 60
	srli	a4, t4, 56
	add	a5, a5, a4
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a0, a0, t5
	lui	a4, 6597
	add	a5, a5, t1
	li	a1, -1
	add	a4, a4, t2
	lui	a6, 2048
	add	t3, t3, a3
	slli	a3, a3, 2
	add	a3, a3, a4
	li	t0, 12
	srli	a1, a1, 1
	and	a0, a0, a1
	and	a5, a5, a1
	and	a4, t3, a1
	and	a1, a1, a3
	lui	t1, 80
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a3, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	a6, 256
	add	a3, a3, a5
	lui	a5, 160
	addi	a0, t1, 257
	addi	a6, a6, 1
	addi	a5, a5, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t0, a6
	gemmini.loop_ws.config.addrs.ab	a7, a3
	gemmini.loop_ws.config.addrs.dc	zero, a4
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 916 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp282:
.Lfunc_end147:
	.size	main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32, .Lfunc_end147-main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin148:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp283:
	.loc	1 922 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 721
	lui	t3, 6646
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 15443
	li	a4, 2
	li	t5, 256
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	a2, t6, 1847
	slli	a2, a2, 36
	addi	a2, a2, 16
	gemmini.config	a4, a2
	lui	a4, 256
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 12
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 254299
	addi	s1, s1, 845
	fmv.w.x	fa2, s1
	lui	s1, 257073
	addi	s1, s1, 1860
	fmv.w.x	fa1, s1
	lui	s1, 257078
	addi	a4, a4, 1
	addi	s1, s1, -559
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 929 12
	srli	a3, a3, 6
	.loc	1 922 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 929 12
	slli	a3, a3, 12
	.loc	1 922 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 929 12
	or	a3, a3, a2
	.loc	1 922 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 61
	addi	a5, a5, 1024
	addi	a2, a2, 1024
	.loc	1 929 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 922 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 929 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 922 12
	slli	s1, s1, 8
	add	s1, s1, t2
	.loc	1 929 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 922 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB148_2
.LBB148_1:
	.loc	1 929 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB148_30
.LBB148_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB148_4
.LBB148_3:
	.loc	1 929 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB148_1
.LBB148_4:
	.loc	1 929 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 909 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 924 12
	fcvt.s.w	ft3, a1
	.loc	1 925 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 926 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB148_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB148_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB148_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB148_8:
	.loc	1 926 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB148_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB148_10:
	.loc	1 926 12 is_stmt 1
	beq	a1, t4, .LBB148_12
	srlw	a1, t5, a0
	j	.LBB148_13
.LBB148_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB148_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 926 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB148_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB148_22
.LBB148_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB148_17
.LBB148_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB148_17:
	.loc	1 926 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 928 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 929 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB148_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB148_24
.LBB148_19:
	beq	a4, t4, .LBB148_25
.LBB148_20:
	srlw	a1, t5, a0
	j	.LBB148_26
.LBB148_21:
	.loc	1 926 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB148_15
.LBB148_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 926 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB148_16
	j	.LBB148_17
.LBB148_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 929 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB148_19
.LBB148_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 929 12
	bne	a4, t4, .LBB148_20
.LBB148_25:
	.loc	1 0 12
	li	a1, 0
.LBB148_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 929 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB148_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB148_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB148_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB148_3
.LBB148_30:
	.loc	1 922 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 922 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp284:
.Lfunc_end148:
	.size	main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32, .Lfunc_end148-main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32,@function
main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32:
.Lfunc_begin149:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp285:
	.loc	1 931 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 12
	li	a2, 1
	li	a5, 127
	lui	a7, 244420
	slli	a2, a2, 48
	slli	a4, a5, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 1024
	addi	a2, a7, 593
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 1024
	addi	a5, a5, 273
	gemmini.config	a5, t1
	li	a5, 12
	addi	a3, a6, 1024
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 2
	andi	a4, a4, -4
	slli	a5, a4, 10
	add	a3, a3, a5
	lui	a5, 785
	slli	a0, a0, 60
	srli	a0, a0, 56
	add	a5, a5, a0
	slli	a4, a4, 8
	or	a0, a0, a4
	add	a3, a3, t0
	lui	a4, 6842
	add	a5, a5, a1
	add	a1, a1, a4
	li	a4, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a4, a4, 1
	addi	a1, a1, 257
	and	a3, a3, a4
	and	a5, a5, a4
	and	a2, t2, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a3, a5
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 931 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp286:
.Lfunc_end149:
	.size	main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32, .Lfunc_end149-main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_78_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_78_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_78_generic_14x14x3x3x256_i8:
.Lfunc_begin150:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	li	t0, 0
	li	a0, 0
.Ltmp287:
	.loc	1 937 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 77
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	lui	a5, 61
	slli	s1, s1, 61
	srli	s1, s1, 56
	slli	a2, a2, 13
	or	a2, a2, s1
	or	a4, a4, s1
	ld	a6, 0(a1)
	ld	s1, 8(a1)
	addi	a1, a5, 1024
	add	a2, a2, a1
	li	s8, 24
	add	a4, a4, s1
	li	s4, 3
	add	a6, a6, a2
	lui	t5, 1
	addi	a7, a3, 1024
	add	a7, a7, a4
	li	t1, 14
.LBB150_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	.loc	1 937 12
	slli	a2, a0, 9
	slli	a3, a0, 15
	sub	a3, a3, a2
	slli	a0, a0, 12
	add	t2, a7, a3
	add	t4, a6, a0
.LBB150_2:
	.loc	1 0 12
	li	t6, 0
	mv	s2, t4
	mv	s3, t2
.LBB150_3:
	li	s5, 0
	mv	s6, s2
	mv	s7, s3
.LBB150_4:
	li	a0, 0
	mv	a3, s6
	mv	a5, s7
.LBB150_5:
	mv	a2, a0
	li	a4, 8
	mv	a0, a3
	mv	s1, a5
.LBB150_6:
	.loc	1 937 12 is_stmt 1
	lbu	a1, 0(a0)
	addi	a4, a4, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	bnez	a4, .LBB150_6
	addi	a0, a2, 8
	addi	a5, a5, 8
	addi	a3, a3, 8
	bltu	a2, s8, .LBB150_5
	addi	s5, s5, 1
	addi	s7, s7, 256
	addi	s6, s6, 256
	bne	s5, s4, .LBB150_4
	addi	t6, t6, 1
	addi	s3, s3, 768
	add	s2, s2, t5
	bne	t6, s4, .LBB150_3
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	t2, a0, 257
	addi	t4, t4, 256
	bne	t3, t1, .LBB150_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 937 12
	andi	a1, t0, 1
	li	t0, 1
	beqz	a1, .LBB150_1
	li	a0, 0
	.cfi_def_cfa sp, 80
	.loc	1 937 12 epilogue_begin
	ld	ra, 72(sp)
	ld	s0, 64(sp)
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Ltmp288:
.Lfunc_end150:
	.size	main_graph$async_dispatch_78_generic_14x14x3x3x256_i8, .Lfunc_end150-main_graph$async_dispatch_78_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin151:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp289:
	.loc	1 937 12 prologue_end
	ld	a1, 32(a1)
	lwu	t4, 0(a2)
	li	a7, 1
	lui	a6, 77
	li	t0, 127
	lui	a2, 246515
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t5, 0(a1)
	ld	t1, 8(a1)
	ld	t2, 16(a1)
	ld	t3, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, -723
	slli	a2, a2, 32
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t6, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t6
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, 1024
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t4, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 754
	addi	a5, a5, -128
	slli	t4, t4, 60
	srli	a4, t4, 56
	add	a5, a5, a4
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a0, a0, t5
	lui	a4, 6891
	add	a5, a5, t1
	li	a1, -1
	add	a4, a4, t2
	lui	a6, 2048
	add	t3, t3, a3
	slli	a3, a3, 2
	add	a3, a3, a4
	li	t0, 12
	srli	a1, a1, 1
	and	a0, a0, a1
	and	a5, a5, a1
	and	a4, t3, a1
	and	a1, a1, a3
	lui	t1, 80
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a3, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	a6, 256
	add	a3, a3, a5
	lui	a5, 160
	addi	a0, t1, 257
	addi	a6, a6, 1
	addi	a5, a5, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t0, a6
	gemmini.loop_ws.config.addrs.ab	a7, a3
	gemmini.loop_ws.config.addrs.dc	zero, a4
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 937 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp290:
.Lfunc_end151:
	.size	main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32, .Lfunc_end151-main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin152:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp291:
	.loc	1 943 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 849
	lui	t3, 6940
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 246397
	li	a4, 2
	li	t5, 256
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	a2, t6, 1305
	slli	a2, a2, 32
	addi	a2, a2, 16
	gemmini.config	a4, a2
	lui	a4, 256
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 61
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 257078
	addi	s1, s1, -559
	fmv.w.x	fa2, s1
	lui	s1, 256726
	addi	s1, s1, 591
	fmv.w.x	fa1, s1
	lui	s1, 256303
	addi	a4, a4, 1
	addi	s1, s1, 1905
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 950 12
	srli	a3, a3, 6
	.loc	1 943 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 950 12
	slli	a3, a3, 12
	.loc	1 943 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 950 12
	or	a3, a3, a2
	.loc	1 943 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 12
	addi	a5, a5, 1024
	addi	a2, a2, 1024
	.loc	1 950 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 943 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 950 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 943 12
	slli	s1, s1, 8
	add	s1, s1, t2
	.loc	1 950 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 943 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB152_2
.LBB152_1:
	.loc	1 950 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB152_30
.LBB152_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB152_4
.LBB152_3:
	.loc	1 950 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB152_1
.LBB152_4:
	.loc	1 950 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 930 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 945 12
	fcvt.s.w	ft3, a1
	.loc	1 946 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 947 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB152_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB152_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB152_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB152_8:
	.loc	1 947 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB152_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB152_10:
	.loc	1 947 12 is_stmt 1
	beq	a1, t4, .LBB152_12
	srlw	a1, t5, a0
	j	.LBB152_13
.LBB152_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB152_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 947 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB152_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB152_22
.LBB152_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB152_17
.LBB152_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB152_17:
	.loc	1 947 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 949 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 950 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB152_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB152_24
.LBB152_19:
	beq	a4, t4, .LBB152_25
.LBB152_20:
	srlw	a1, t5, a0
	j	.LBB152_26
.LBB152_21:
	.loc	1 947 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB152_15
.LBB152_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 947 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB152_16
	j	.LBB152_17
.LBB152_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 950 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB152_19
.LBB152_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 950 12
	bne	a4, t4, .LBB152_20
.LBB152_25:
	.loc	1 0 12
	li	a1, 0
.LBB152_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 950 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB152_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB152_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB152_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB152_3
.LBB152_30:
	.loc	1 943 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 943 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp292:
.Lfunc_end152:
	.size	main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32, .Lfunc_end152-main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32,@function
main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32:
.Lfunc_begin153:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp293:
	.loc	1 952 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 61
	li	a2, 1
	li	a5, 127
	lui	a7, 122987
	slli	a2, a2, 48
	slli	a4, a5, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a2
	li	a4, 6
	li	t1, 1024
	addi	a2, a7, 1667
	slli	a2, a2, 33
	addi	a2, a2, 256
	gemmini.config	a4, a2
	li	a7, 256
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 1024
	addi	a5, a5, 273
	gemmini.config	a5, t1
	li	a5, 12
	addi	a3, a6, 1024
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 2
	andi	a4, a4, -4
	slli	a5, a4, 10
	add	a3, a3, a5
	lui	a5, 913
	slli	a0, a0, 60
	srli	a0, a0, 56
	add	a5, a5, a0
	slli	a4, a4, 8
	or	a0, a0, a4
	add	a3, a3, t0
	lui	a4, 7136
	add	a5, a5, a1
	add	a1, a1, a4
	li	a4, -1
	add	t2, t2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lui	a1, 80
	srli	a4, a4, 1
	addi	a1, a1, 257
	and	a3, a3, a4
	and	a5, a5, a4
	and	a2, t2, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a3, a5
	gemmini.loop_ws.config.addrs.dc	a0, a2
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a1, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 952 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp294:
.Lfunc_end153:
	.size	main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32, .Lfunc_end153-main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_83_generic_14x14x3x3x256_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_83_generic_14x14x3x3x256_i8,@function
main_graph$async_dispatch_83_generic_14x14x3x3x256_i8:
.Lfunc_begin154:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	li	t0, 0
	li	a0, 0
.Ltmp295:
	.loc	1 958 12 prologue_end
	lwu	s1, 0(a2)
	ld	a1, 32(a1)
	lui	a3, 110
	srli	a2, s1, 3
	slli	a5, a2, 10
	slli	a4, a2, 16
	sub	a4, a4, a5
	lui	a5, 12
	slli	s1, s1, 61
	srli	s1, s1, 56
	slli	a2, a2, 13
	or	a2, a2, s1
	or	a4, a4, s1
	ld	a6, 0(a1)
	ld	s1, 8(a1)
	addi	a1, a5, 1024
	add	a2, a2, a1
	li	s8, 24
	add	a4, a4, s1
	li	s4, 3
	add	a6, a6, a2
	lui	t5, 1
	addi	a7, a3, 1024
	add	a7, a7, a4
	li	t1, 14
.LBB154_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	.loc	1 958 12
	slli	a2, a0, 9
	slli	a3, a0, 15
	sub	a3, a3, a2
	slli	a0, a0, 12
	add	t2, a7, a3
	add	t4, a6, a0
.LBB154_2:
	.loc	1 0 12
	li	t6, 0
	mv	s2, t4
	mv	s3, t2
.LBB154_3:
	li	s5, 0
	mv	s6, s2
	mv	s7, s3
.LBB154_4:
	li	a0, 0
	mv	a3, s6
	mv	a5, s7
.LBB154_5:
	mv	a2, a0
	li	a4, 8
	mv	a0, a3
	mv	s1, a5
.LBB154_6:
	.loc	1 958 12 is_stmt 1
	lbu	a1, 0(a0)
	addi	a4, a4, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a0, a0, 1
	bnez	a4, .LBB154_6
	addi	a0, a2, 8
	addi	a5, a5, 8
	addi	a3, a3, 8
	bltu	a2, s8, .LBB154_5
	addi	s5, s5, 1
	addi	s7, s7, 256
	addi	s6, s6, 256
	bne	s5, s4, .LBB154_4
	addi	t6, t6, 1
	addi	s3, s3, 768
	add	s2, s2, t5
	bne	t6, s4, .LBB154_3
	addi	t3, t3, 1
	addi	a0, t2, 2047
	addi	t2, a0, 257
	addi	t4, t4, 256
	bne	t3, t1, .LBB154_2
	.loc	1 0 12 is_stmt 0
	li	a0, 1
	.loc	1 958 12
	andi	a1, t0, 1
	li	t0, 1
	beqz	a1, .LBB154_1
	li	a0, 0
	.cfi_def_cfa sp, 80
	.loc	1 958 12 epilogue_begin
	ld	ra, 72(sp)
	ld	s0, 64(sp)
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
.Ltmp296:
.Lfunc_end154:
	.size	main_graph$async_dispatch_83_generic_14x14x3x3x256_i8, .Lfunc_end154-main_graph$async_dispatch_83_generic_14x14x3x3x256_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32,@function
main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32:
.Lfunc_begin155:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp297:
	.loc	1 958 12 prologue_end
	ld	a1, 32(a1)
	lwu	t4, 0(a2)
	li	a7, 1
	lui	a6, 110
	li	t0, 127
	lui	a2, 122265
	slli	a3, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t5, 0(a1)
	ld	t1, 8(a1)
	ld	t2, 16(a1)
	ld	t3, 24(a1)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a3
	li	a1, 6
	li	a3, 9
	addi	a2, a2, -1899
	slli	a2, a2, 33
	addi	a2, a2, 256
	gemmini.config	a1, a2
	li	t6, 256
	slli	a2, a3, 8
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a3, t0, 257
	gemmini.config	a3, a2
	addi	a3, t0, 265
	gemmini.config	a3, t6
	li	a3, 1024
	slli	a7, a7, 11
	addi	a5, a6, 1024
	addi	a0, t0, 273
	gemmini.config	a0, a3
	addiw	a0, a7, 256
	srli	a3, t4, 2
	andi	a3, a3, -4
	mul	a0, a3, a0
	add	a0, a0, a5
	lui	a5, 898
	addi	a5, a5, -128
	slli	t4, t4, 60
	srli	a4, t4, 56
	add	a5, a5, a4
	slli	a3, a3, 8
	or	a3, a3, a4
	add	a0, a0, t5
	lui	a4, 7185
	add	a5, a5, t1
	li	a1, -1
	add	a4, a4, t2
	lui	a6, 2048
	add	t3, t3, a3
	slli	a3, a3, 2
	add	a3, a3, a4
	li	t0, 12
	srli	a1, a1, 1
	and	a0, a0, a1
	and	a5, a5, a1
	and	a4, t3, a1
	and	a1, a1, a3
	lui	t1, 80
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a3, 128
	add	a7, a7, a0
	gemmini.loop_ws.config.addrs.ab	a0, a5
	lui	a6, 256
	add	a3, a3, a5
	lui	a5, 160
	addi	a0, t1, 257
	addi	a6, a6, 1
	addi	a5, a5, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.addrs.dc	a1, zero
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a0, zero
	gemmini.loop_ws.config.bounds	t0, a6
	gemmini.loop_ws.config.addrs.ab	a7, a3
	gemmini.loop_ws.config.addrs.dc	zero, a4
	gemmini.loop_ws.config.strides.ab	a2, t6
	gemmini.loop_ws.config.strides.dc	t6, t6
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 958 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp298:
.Lfunc_end155:
	.size	main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32, .Lfunc_end155-main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32,@function
main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32:
.Lfunc_begin156:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	li	a6, 0
	lui	a7, 2048
.Ltmp299:
	.loc	1 964 12 prologue_end
	ld	a0, 32(a1)
	lwu	a3, 0(a2)
	lui	t0, 977
	lui	t3, 7234
	li	t4, -1
	li	a2, 1
	li	s1, 127
	lui	t6, 245903
	li	a4, 2
	li	t5, 256
	slli	a2, a2, 48
	slli	a5, s1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	t2, 0(a0)
	ld	s2, 8(a0)
	ld	t1, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 4
	gemmini.config	a5, a2
	li	s3, 1024
	lui	a5, 1
	addi	a2, t6, 1079
	slli	a2, a2, 32
	addi	a2, a2, 16
	gemmini.config	a4, a2
	lui	a4, 256
	slli	s1, s1, 35
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t5
	addi	a2, s1, 265
	gemmini.config	a2, s3
	li	a2, 12
	addi	s1, s1, 273
	gemmini.config	s1, a5
	lui	a5, 12
	lui	s1, 307200
	fmv.w.x	fa5, s1
	lui	s1, 260096
	fmv.w.x	fa4, s1
	lui	s1, 798720
	fmv.w.x	fa3, s1
	lui	s1, 256303
	addi	s1, s1, 1905
	fmv.w.x	fa2, s1
	lui	s1, 254289
	addi	s1, s1, -843
	fmv.w.x	fa1, s1
	lui	s1, 256088
	addi	a4, a4, 1
	addi	s1, s1, -1014
	slli	a4, a4, 16
	fmv.w.x	fa0, s1
	addi	a4, a4, 1
	srli	a1, a3, 4
	gemmini.loop_ws.config.bounds	a2, a4
	slli	a2, a3, 58
	.loc	1 971 12
	srli	a3, a3, 6
	.loc	1 964 12
	andi	s1, a1, -4
	srli	a2, a2, 54
	.loc	1 971 12
	slli	a3, a3, 12
	.loc	1 964 12
	add	a4, a2, t0
	slli	a1, s1, 12
	.loc	1 971 12
	or	a3, a3, a2
	.loc	1 964 12
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, 61
	addi	a5, a5, 1024
	addi	a2, a2, 1024
	.loc	1 971 12
	add	a5, a5, a3
	add	a2, a2, a3
	addi	t0, s0, -128
	.loc	1 964 12
	add	a4, a4, s2
	add	a1, a1, s2
	li	a3, 16
	.loc	1 971 12
	add	t1, t1, a5
	lui	a5, 80
	fmv.w.x	ft0, zero
	.loc	1 964 12
	slli	s1, s1, 8
	add	s1, s1, t2
	.loc	1 971 12
	add	t2, t2, a2
	lui	a2, 274400
	addi	t6, a7, -1
	.loc	1 964 12
	add	a1, a1, t3
	srli	a0, t4, 1
	addi	a5, a5, 1
	and	s1, s1, a0
	and	a4, a4, a0
	and	a1, a1, a0
	and	a0, t0, a0
	gemmini.loop_ws.config.addrs.ab	s1, a4
	gemmini.loop_ws.config.addrs.dc	a1, a0
	gemmini.loop_ws.config.strides.ab	t5, s3
	gemmini.loop_ws.config.strides.dc	s3, a3
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft1, a2
	lui	t3, 790528
	li	a7, 4
	lui	t5, 1024
	li	s6, 31
	j	.LBB156_2
.LBB156_1:
	.loc	1 971 12
	addi	a6, a6, 1
	addi	t0, t0, 16
	addi	t1, t1, 1024
	addi	t2, t2, 1024
	beq	a6, a7, .LBB156_30
.LBB156_2:
	.loc	1 0 12 is_stmt 0
	li	s2, 16
	mv	s3, t2
	mv	s4, t1
	mv	s5, t0
	j	.LBB156_4
.LBB156_3:
	.loc	1 971 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	addi	s5, s5, 1
	addi	s2, s2, -1
	sb	a0, 0(s4)
	addi	s4, s4, 1
	addi	s3, s3, 1
	beqz	s2, .LBB156_1
.LBB156_4:
	.loc	1 971 12
	lb	a0, 0(s3)
	lb	a1, 0(s5)
	.loc	1 951 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 966 12
	fcvt.s.w	ft3, a1
	.loc	1 967 12
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 968 12
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB156_6
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB156_6:
	fmv.x.w	a2, ft3
	slli	s1, a2, 33
	srli	s1, s1, 56
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a3, a1, a0
	bltu	a3, s6, .LBB156_8
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB156_8:
	.loc	1 968 12 is_stmt 1
	fmv.x.w	a5, ft2
	slli	a4, a5, 33
	srli	a4, a4, 56
	addi	a1, a4, -127
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	blt	a0, s6, .LBB156_10
	.loc	1 0 12 is_stmt 0
	li	a0, 31
.LBB156_10:
	.loc	1 968 12 is_stmt 1
	beq	a1, t4, .LBB156_12
	srlw	a1, t5, a0
	j	.LBB156_13
.LBB156_12:
	.loc	1 0 12 is_stmt 0
	li	a1, 0
.LBB156_13:
	addi	s1, s1, -127
	srlw	a3, t6, a3
	.loc	1 968 12 is_stmt 1
	srlw	a0, t6, a0
	addi	a4, a4, -126
	seqz	s1, s1
	and	a2, a2, a3
	and	a0, a0, a5
	snez	a2, a2
	xor	a0, a0, a1
	or	a2, a2, s1
	seqz	a0, a0
	sltiu	a1, a4, 24
	and	a0, a0, a1
	and	a0, a0, a2
	fmv.s	ft4, ft0
	bnez	a0, .LBB156_21
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB156_22
.LBB156_15:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB156_17
.LBB156_16:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB156_17:
	.loc	1 968 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 970 12
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	fcvt.s.lu	ft2, a2
	.loc	1 971 12
	fmv.x.w	a5, ft2
	srliw	a0, a5, 23
	addi	a1, a0, -128
	sltu	a3, a0, a1
	addi	a3, a3, -1
	and	a3, a3, a1
	li	a1, 31
	bgeu	a3, a1, .LBB156_23
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	bge	a0, a1, .LBB156_24
.LBB156_19:
	beq	a4, t4, .LBB156_25
.LBB156_20:
	srlw	a1, t5, a0
	j	.LBB156_26
.LBB156_21:
	.loc	1 968 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB156_15
.LBB156_22:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 968 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB156_16
	j	.LBB156_17
.LBB156_23:
	.loc	1 0 12
	li	a3, 31
	.loc	1 971 12 is_stmt 1
	addi	a4, a0, -127
	sgtz	a0, a4
	neg	a0, a0
	and	a0, a0, a4
	blt	a0, a1, .LBB156_19
.LBB156_24:
	.loc	1 0 12 is_stmt 0
	li	a0, 31
	.loc	1 971 12
	bne	a4, t4, .LBB156_20
.LBB156_25:
	.loc	1 0 12
	li	a1, 0
.LBB156_26:
	seqz	a4, a4
	srlw	a3, t6, a3
	.loc	1 971 12 is_stmt 1
	srlw	a0, t6, a0
	and	a3, a3, a5
	and	a0, a0, a5
	add	a5, a5, t3
	srliw	a5, a5, 26
	snez	a3, a3
	xor	a0, a0, a1
	or	a3, a3, a4
	seqz	a0, a0
	sltiu	a1, a5, 3
	and	a0, a0, a1
	and	a0, a0, a3
	beqz	a0, .LBB156_28
	addi	a2, a2, -1
	slli	a2, a2, 56
	srai	a2, a2, 56
	fcvt.s.w	ft2, a2
	fabs.s	ft2, ft2
.LBB156_28:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB156_3
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB156_3
.LBB156_30:
	.loc	1 964 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 128
	.loc	1 964 12 epilogue_begin is_stmt 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp300:
.Lfunc_end156:
	.size	main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32, .Lfunc_end156-main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32,@function
main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32:
.Lfunc_begin157:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp301:
	.loc	1 973 12 prologue_end
	ld	a1, 32(a1)
	lwu	a0, 0(a2)
	li	a6, 1
	li	t0, 127
	lui	a7, 123799
	slli	a5, a6, 48
	slli	a4, t0, 39
	addi	a4, a4, 1
	slli	a4, a4, 16
	ld	a2, 0(a1)
	ld	a3, 8(a1)
	ld	t2, 16(a1)
	#APP
	fence
	#NO_APP
	addi	a4, a4, 12
	gemmini.config	a4, a5
	li	a4, 6
	li	t1, 1024
	addi	a5, a7, -1893
	slli	a5, a5, 33
	addi	a5, a5, 512
	gemmini.config	a4, a5
	li	a7, 512
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	addi	a5, t0, 257
	gemmini.config	a5, t1
	addi	a5, t0, 265
	gemmini.config	a5, a7
	lui	a5, 12
	addi	a5, a5, 1024
	slli	a6, a6, 11
	addi	a4, t0, 273
	gemmini.config	a4, a6
	srli	a4, a0, 3
	andi	a1, a4, -4
	slli	a4, a1, 10
	add	a4, a4, a5
	lui	a5, 1041
	slli	a0, a0, 59
	srli	a0, a0, 55
	add	a5, a5, a0
	slli	a1, a1, 9
	or	a0, a0, a1
	lui	a1, 61
	add	a2, a2, a4
	lui	a4, 7430
	add	a5, a5, a3
	add	a3, a3, a4
	li	a4, -1
	addi	a1, a1, 1024
	add	t2, t2, a0
	add	a1, a1, t2
	lui	a6, 1024
	slli	a0, a0, 2
	add	a0, a0, a3
	li	a3, 12
	srli	a4, a4, 1
	and	a2, a2, a4
	and	a5, a5, a4
	and	a1, a1, a4
	and	a0, a0, a4
	lui	a4, 80
	addi	a6, a6, 1
	addi	a4, a4, 257
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	a3, a6
	gemmini.loop_ws.config.addrs.ab	a2, a5
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 973 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp302:
.Lfunc_end157:
	.size	main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32, .Lfunc_end157-main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_87_generic_7x7x1024_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_87_generic_7x7x1024_i8,@function
main_graph$async_dispatch_87_generic_7x7x1024_i8:
.Lfunc_begin158:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp303:
	.loc	1 971 12 prologue_end
	ld	a0, 32(a1)
	.loc	1 974 12
	lwu	a2, 0(a2)
	lui	a3, 12
	li	s2, 24
	li	t3, 7
	addi	a3, a3, 1024
	.loc	1 971 12
	ld	t1, 0(a0)
	.loc	1 974 12
	ld	t2, 8(a0)
	slli	a2, a2, 5
	add	a3, a3, a2
	add	t1, t1, a3
	lui	a6, 7
	add	t2, t2, a2
	slli	a7, t3, 10
.LBB158_1:
	.loc	1 0 12 is_stmt 0
	li	t5, 0
	mv	t6, t2
	mv	t4, t1
.LBB158_2:
	li	a4, 0
	mv	a0, t6
	mv	a3, t4
.LBB158_3:
	mv	a2, a4
	li	a4, 8
	mv	a5, a0
	mv	s1, a3
.LBB158_4:
	.loc	1 974 12 is_stmt 1
	lbu	a1, 0(s1)
	addi	s1, s1, 1
	addi	a4, a4, -1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	bnez	a4, .LBB158_4
	addi	a4, a2, 8
	addi	a3, a3, 8
	addi	a0, a0, 8
	bltu	a2, s2, .LBB158_3
	addi	t5, t5, 1
	addi	t4, t4, 2047
	addi	t4, t4, 1
	addi	t6, t6, 1024
	bne	t5, t3, .LBB158_2
	addi	t0, t0, 1
	add	t1, t1, a6
	add	t2, t2, a7
	bne	t0, t3, .LBB158_1
	li	a0, 0
	.cfi_def_cfa sp, 32
	.loc	1 974 12 epilogue_begin is_stmt 0
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
.Ltmp304:
.Lfunc_end158:
	.size	main_graph$async_dispatch_87_generic_7x7x1024_i8, .Lfunc_end158-main_graph$async_dispatch_87_generic_7x7x1024_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_88_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_88_slow_memcpy,@function
main_graph$async_dispatch_88_slow_memcpy:
.Lfunc_begin159:
	.cfi_startproc
	.loc	1 982 12 prologue_end is_stmt 1
	lwu	a2, 0(a2)
	andi	a0, a2, -8
	li	a3, 13
	bltu	a3, a0, .LBB159_10
	.loc	1 0 12 is_stmt 0
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	sd	s1, 8(sp)
	sd	s2, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	ld	a1, 32(a1)
	slli	a3, a2, 61
	ld	t6, 0(a1)
	ld	a5, 8(a1)
	li	t5, 14
	.loc	1 982 12
	sub	a7, t5, a0
	li	a0, 8
	srli	a3, a3, 55
	bltu	a7, a0, .LBB159_3
	.loc	1 0 12
	li	a7, 8
.LBB159_3:
	li	t2, 0
	.loc	1 982 12 is_stmt 1
	srli	a2, a2, 3
	lui	a0, 88
	slli	a1, a2, 16
	addi	a0, a0, -512
	slli	a2, a2, 13
	sub	a2, a1, a2
	or	a1, a1, a3
	add	a0, a0, a1
	lui	a1, 61
	or	a2, a2, a3
	lui	a6, 2
	add	t3, a0, a5
	li	t1, 7
	addi	a0, a1, 1024
	add	a0, a0, a2
	add	t4, t6, a0
	addi	t0, a0, 64
	slli	t1, t1, 10
.LBB159_4:
	.loc	1 0 12 is_stmt 0
	li	a2, 0
	.loc	1 982 12
	slli	a0, t2, 10
	slli	a1, t2, 13
	sub	a1, a1, a0
	add	s2, t0, a1
	mv	a4, t4
	mv	a1, t3
.LBB159_5:
	slli	a0, a2, 9
	add	a0, a0, s2
	add	a0, a0, t6
	mv	a5, a1
	mv	s1, a4
.LBB159_6:
	lh	a3, 0(s1)
	addi	s1, s1, 2
	sh	a3, 0(a5)
	addi	a5, a5, 2
	bne	s1, a0, .LBB159_6
	addi	a2, a2, 1
	addi	a1, a1, 512
	addi	a4, a4, 512
	bne	a2, t5, .LBB159_5
	addi	t2, t2, 1
	add	t3, t3, a6
	add	t4, t4, t1
	bne	t2, a7, .LBB159_4
	.cfi_def_cfa sp, 32
	.loc	1 0 12
	ld	ra, 24(sp)
	ld	s0, 16(sp)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 32
	.cfi_def_cfa_offset 0
.LBB159_10:
	.loc	1 982 12 is_stmt 1
	li	a0, 0
	ret
.Ltmp305:
.Lfunc_end159:
	.size	main_graph$async_dispatch_88_slow_memcpy, .Lfunc_end159-main_graph$async_dispatch_88_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_89_generic_7x7x3x3x512_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_89_generic_7x7x3x3x512_i8,@function
main_graph$async_dispatch_89_generic_7x7x3x3x512_i8:
.Lfunc_begin160:
	.loc	1 1 0
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	sd	s6, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	li	t0, 0
.Ltmp306:
	.loc	1 982 12 prologue_end
	lwu	s1, 0(a2)
	ld	a2, 32(a1)
	lui	a3, 12
	lui	a4, 86
	srli	a0, s1, 4
	slli	a1, a0, 9
	slli	a5, a0, 15
	sub	a5, a5, a1
	li	s6, 24
	slli	s1, s1, 60
	srli	s1, s1, 55
	slli	a0, a0, 14
	or	a0, a0, s1
	or	a5, a5, s1
	ld	t1, 0(a2)
	ld	a2, 8(a2)
	addi	a4, a4, -1024
	add	a0, a0, a4
	li	s2, 3
	add	a2, a2, a5
	lui	t3, 2
	add	t1, t1, a0
	li	a6, 9
	addi	t2, a3, 1024
	slli	a6, a6, 9
	add	t2, t2, a2
	li	a7, 7
.LBB160_1:
	.loc	1 0 12 is_stmt 0
	li	t4, 0
	mv	t5, t1
	mv	t6, t2
.LBB160_2:
	li	s3, 0
	mv	s4, t5
	mv	s5, t6
.LBB160_3:
	li	a3, 0
	mv	a0, s4
	mv	a5, s5
.LBB160_4:
	mv	a2, a3
	li	a3, 8
	mv	a4, a0
	mv	s1, a5
.LBB160_5:
	.loc	1 982 12 is_stmt 1
	lbu	a1, 0(a4)
	addi	a3, a3, -1
	sb	a1, 0(s1)
	addi	s1, s1, 1
	addi	a4, a4, 1
	bnez	a3, .LBB160_5
	addi	a3, a2, 8
	addi	a5, a5, 8
	addi	a0, a0, 8
	bltu	a2, s6, .LBB160_4
	addi	s3, s3, 1
	addi	s5, s5, 512
	addi	s4, s4, 512
	bne	s3, s2, .LBB160_3
	addi	t4, t4, 1
	addi	t6, t6, 1536
	add	t5, t5, t3
	bne	t4, s2, .LBB160_2
	addi	t0, t0, 1
	add	t2, t2, a6
	addi	t1, t1, 1024
	bne	t0, a7, .LBB160_1
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 982 12 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s6, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp307:
.Lfunc_end160:
	.size	main_graph$async_dispatch_89_generic_7x7x3x3x512_i8, .Lfunc_end160-main_graph$async_dispatch_89_generic_7x7x3x3x512_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32,@function
main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32:
.Lfunc_begin161:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp308:
	.loc	1 982 12 prologue_end
	ld	a3, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 12
	lui	a0, 1042
	li	a7, 1
	li	t0, 127
	slli	a2, a7, 48
	slli	a5, t0, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a4, 0(a3)
	ld	t1, 8(a3)
	ld	t2, 16(a3)
	ld	t3, 24(a3)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a2
	lui	a2, 60764
	li	a5, 6
	addi	a0, a0, -128
	addi	a2, a2, 77
	slli	a2, a2, 34
	addi	a2, a2, 512
	gemmini.config	a5, a2
	srli	a2, a1, 5
	slli	a1, a1, 59
	srli	a1, a1, 55
	slli	a5, a2, 12
	slli	a2, a2, 9
	add	a5, a5, a2
	add	a0, a0, a1
	or	a1, a1, a2
	li	a2, 9
	addi	a3, a6, 1024
	slli	a2, a2, 9
	slli	t0, t0, 35
	addi	t0, t0, 1
	slli	t0, t0, 20
	add	a3, a3, a5
	addi	a5, t0, 257
	gemmini.config	a5, a2
	add	a3, a3, a4
	lui	a4, 67
	add	t1, t1, a0
	lui	a5, 7626
	addi	a0, a4, 1536
	add	a0, a0, a1
	add	t3, t3, a0
	li	a0, 512
	slli	a1, a1, 2
	add	a1, a1, t2
	addi	a4, t0, 265
	gemmini.config	a4, a0
	li	a4, -1
	add	a1, a1, a5
	lui	a6, 2048
	slli	a7, a7, 11
	addi	a5, t0, 273
	gemmini.config	a5, a7
	li	t0, 15
	srli	a4, a4, 1
	and	a3, a3, a4
	and	a5, t1, a4
	and	t1, t3, a4
	and	a1, a1, a4
	lui	a4, 1
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t0, a6
	add	a7, a7, a3
	add	a4, a4, a3
	gemmini.loop_ws.config.addrs.ab	a3, a5
	li	a3, 257
	gemmini.loop_ws.config.addrs.dc	a1, zero
	lui	t2, 256
	gemmini.loop_ws.config.strides.ab	a2, a0
	gemmini.loop_ws.config.strides.dc	a0, a0
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t0, a6
	lui	a1, 512
	add	t2, t2, a5
	add	a5, a5, a1
	addi	a1, a1, 1
	slli	a1, a1, 16
	addi	a1, a1, 1
	gemmini.loop_ws.config.addrs.ab	a7, t2
	gemmini.loop_ws.config.addrs.dc	zero, zero
	gemmini.loop_ws.config.strides.ab	a2, a0
	gemmini.loop_ws.config.strides.dc	a0, a0
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t0, a1
	gemmini.loop_ws.config.addrs.ab	a4, a5
	gemmini.loop_ws.config.addrs.dc	zero, t1
	gemmini.loop_ws.config.strides.ab	a2, a0
	gemmini.loop_ws.config.strides.dc	a0, a0
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 982 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp309:
.Lfunc_end161:
	.size	main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32, .Lfunc_end161-main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32,@function
main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32:
.Lfunc_begin162:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp310:
	.loc	1 988 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 67
	li	t0, 1
	li	a1, 127
	slli	a5, t0, 48
	slli	a2, a1, 39
	addi	a2, a2, 1
	slli	a2, a2, 16
	ld	t1, 0(a3)
	ld	a4, 8(a3)
	ld	t2, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a2, a2, 4
	gemmini.config	a2, a5
	lui	a2, 245507
	li	a5, 2
	addi	a2, a2, -937
	slli	a2, a2, 21
	addi	a2, a2, 1
	slli	a2, a2, 11
	gemmini.config	a5, a2
	li	a7, 512
	slli	a1, a1, 35
	slli	a5, t0, 11
	addi	a1, a1, 1
	slli	a1, a1, 20
	addi	a2, a1, 257
	gemmini.config	a2, a7
	addi	a2, a1, 265
	gemmini.config	a2, a5
	lui	a2, 2
	addi	a1, a1, 273
	gemmini.config	a1, a2
	lui	a1, 512
	li	a2, 15
	addi	a3, a6, 1536
	addi	a1, a1, 1
	slli	a1, a1, 16
	addi	a1, a1, 1
	gemmini.loop_ws.config.bounds	a2, a1
	srli	a1, a0, 7
	slli	a2, a1, 9
	add	a2, a2, a3
	lui	a3, 1681
	slli	a0, a0, 57
	srli	a0, a0, 53
	slli	a1, a1, 11
	add	a3, a3, a0
	or	a0, a0, a1
	add	a2, a2, t1
	lui	a1, 12
	addi	a1, a1, 1024
	add	a1, a1, a0
	add	a1, a1, t2
	lui	a6, 7651
	slli	a0, a0, 2
	add	a3, a3, a4
	add	a0, a0, a4
	li	t0, -1
	addi	a4, a6, -2048
	add	a0, a0, a4
	lui	a6, 80
	srli	a4, t0, 1
	addi	a6, a6, 1
	and	a2, a2, a4
	and	a3, a3, a4
	and	a1, a1, a4
	and	a0, a0, a4
	gemmini.loop_ws.config.addrs.ab	a2, a3
	gemmini.loop_ws.config.addrs.dc	a0, a1
	gemmini.loop_ws.config.strides.ab	a7, a5
	gemmini.loop_ws.config.strides.dc	a5, a5
	gemmini.loop_ws	a6, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 988 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp311:
.Lfunc_end162:
	.size	main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32, .Lfunc_end162-main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32,@function
main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32:
.Lfunc_begin163:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	lui	a7, 2048
.Ltmp312:
	.loc	1 974 12 prologue_end
	ld	a0, 32(a1)
	lwu	a2, 0(a2)
	lui	t2, 1169
	lui	t0, 7528
	li	t4, -1
	addi	t5, s0, -56
	li	t3, 1
	li	a1, 127
	lui	a6, 122562
	li	t6, 2
	slli	s1, t3, 48
	slli	a3, a1, 39
	addi	a3, a3, 1
	slli	a3, a3, 16
	ld	a4, 0(a0)
	ld	a5, 8(a0)
	ld	s3, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a3, a3, 4
	gemmini.config	a3, s1
	li	t1, 1024
	lui	a0, 2
	addi	a3, a6, -815
	slli	a3, a3, 33
	addi	a3, a3, 16
	gemmini.config	t6, a3
	lui	a6, 1024
	slli	a1, a1, 35
	slli	t3, t3, 11
	addi	a1, a1, 1
	slli	a1, a1, 20
	addi	a3, a1, 257
	gemmini.config	a3, t1
	addi	a3, a1, 265
	gemmini.config	a3, t3
	li	a3, 15
	addi	a1, a1, 273
	gemmini.config	a1, a0
	lui	a0, 12
	lui	a1, 307200
	fmv.w.x	fa5, a1
	lui	a1, 260096
	fmv.w.x	fa4, a1
	lui	a1, 258462
	addi	a1, a1, 1476
	fmv.w.x	fa3, a1
	lui	a1, 254079
	addi	a1, a1, -74
	fmv.w.x	fa2, a1
	lui	a1, 258570
	addi	a1, a1, -274
	fmv.w.x	fa1, a1
	addi	a1, a6, 1
	slli	a1, a1, 16
	addi	a1, a1, 1
	gemmini.loop_ws.config.bounds	a3, a1
	srli	a1, a2, 7
	slli	a2, a2, 57
	srli	a2, a2, 53
	slli	a3, a1, 11
	add	t2, t2, a2
	or	a2, a2, a3
	lui	a3, 37
	addi	a0, a0, 1024
	addi	a3, a3, -1024
	.loc	1 995 12
	add	a0, a0, a2
	add	a3, a3, a2
	.loc	1 974 12
	slli	a2, a2, 2
	add	s1, a5, t2
	add	a2, a2, a5
	li	t6, 16
	slli	a1, a1, 10
	add	a1, a1, a4
	.loc	1 995 12
	add	s2, a0, a4
	lui	a0, 80
	fmv.w.x	fa0, zero
	add	s3, s3, a3
	lui	a3, 798720
	addi	t2, a7, -1
	.loc	1 974 12
	add	a2, a2, t0
	srli	a4, t4, 1
	addi	a0, a0, 1
	and	a1, a1, a4
	and	s1, s1, a4
	and	a2, a2, a4
	and	a4, t5, a4
	gemmini.loop_ws.config.addrs.ab	a1, s1
	gemmini.loop_ws.config.addrs.dc	a2, a4
	gemmini.loop_ws.config.strides.ab	t1, t3
	gemmini.loop_ws.config.strides.dc	t3, t6
	gemmini.loop_ws	a0, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	fmv.w.x	ft0, a3
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	a7, 790528
	li	t0, 31
	j	.LBB163_2
.LBB163_1:
	.loc	1 995 12
	fcvt.l.s	a0, ft3, rtz
	addi	t5, t5, 1
	addi	s2, s2, 1
	addi	t6, t6, -1
	sb	a0, 0(s3)
	addi	s3, s3, 1
	beqz	t6, .LBB163_28
.LBB163_2:
	.loc	1 995 12
	lb	a0, 0(t5)
	lb	a1, 0(s2)
	.loc	1 978 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa3
	.loc	1 990 12
	fcvt.s.w	ft3, a1
	.loc	1 991 12
	fmadd.s	ft2, ft3, fa2, ft2
	.loc	1 992 12
	fdiv.s	ft2, ft2, fa1
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB163_4
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB163_4:
	fmv.x.w	a0, ft3
	slli	a1, a0, 33
	srli	a1, a1, 56
	addi	a2, a1, -128
	sltu	a3, a1, a2
	addi	a3, a3, -1
	and	a3, a3, a2
	bltu	a3, t0, .LBB163_6
	.loc	1 0 12 is_stmt 0
	li	a3, 31
.LBB163_6:
	.loc	1 992 12 is_stmt 1
	fmv.x.w	a2, ft2
	slli	a4, a2, 33
	srli	a4, a4, 56
	addi	a5, a4, -127
	sgtz	s1, a5
	neg	s1, s1
	and	s1, s1, a5
	blt	s1, t0, .LBB163_8
	.loc	1 0 12 is_stmt 0
	li	s1, 31
.LBB163_8:
	.loc	1 992 12 is_stmt 1
	beq	a5, t4, .LBB163_10
	srlw	a5, a6, s1
	j	.LBB163_11
.LBB163_10:
	.loc	1 0 12 is_stmt 0
	li	a5, 0
.LBB163_11:
	addi	a1, a1, -127
	srlw	a3, t2, a3
	.loc	1 992 12 is_stmt 1
	srlw	s1, t2, s1
	addi	a4, a4, -126
	seqz	a1, a1
	and	a0, a0, a3
	and	a2, a2, s1
	snez	a0, a0
	xor	a2, a2, a5
	or	a0, a0, a1
	seqz	a1, a2
	sltiu	a2, a4, 24
	and	a1, a1, a2
	and	a0, a0, a1
	fmv.s	ft4, fa0
	bnez	a0, .LBB163_19
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, fa0
	fle.s	a0, ft3, ft0
	fmv.s	ft2, ft0
	beqz	a0, .LBB163_20
.LBB163_13:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB163_15
.LBB163_14:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
.LBB163_15:
	.loc	1 992 12 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 994 12
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft2, a0
	.loc	1 995 12
	fmv.x.w	a2, ft2
	srliw	a3, a2, 23
	addi	a1, a3, -128
	sltu	a4, a3, a1
	addi	a4, a4, -1
	and	a1, a1, a4
	li	a5, 31
	bgeu	a1, a5, .LBB163_21
	addi	a4, a3, -127
	sgtz	a3, a4
	neg	a3, a3
	and	a3, a3, a4
	bge	a3, a5, .LBB163_22
.LBB163_17:
	beq	a4, t4, .LBB163_23
.LBB163_18:
	srlw	a5, a6, a3
	j	.LBB163_24
.LBB163_19:
	.loc	1 992 12
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, fa0
	fle.s	a0, ft3, ft0
	fmv.s	ft2, ft0
	bnez	a0, .LBB163_13
.LBB163_20:
	.loc	1 0 12 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 992 12
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB163_14
	j	.LBB163_15
.LBB163_21:
	.loc	1 0 12
	li	a1, 31
	.loc	1 995 12 is_stmt 1
	addi	a4, a3, -127
	sgtz	a3, a4
	neg	a3, a3
	and	a3, a3, a4
	blt	a3, a5, .LBB163_17
.LBB163_22:
	.loc	1 0 12 is_stmt 0
	li	a3, 31
	.loc	1 995 12
	bne	a4, t4, .LBB163_18
.LBB163_23:
	.loc	1 0 12
	li	a5, 0
.LBB163_24:
	seqz	a4, a4
	srlw	a1, t2, a1
	.loc	1 995 12 is_stmt 1
	srlw	a3, t2, a3
	and	a1, a1, a2
	and	a3, a3, a2
	add	a2, a2, a7
	srliw	a2, a2, 26
	snez	a1, a1
	xor	a3, a3, a5
	or	a1, a1, a4
	seqz	a3, a3
	sltiu	a2, a2, 3
	and	a2, a2, a3
	and	a1, a1, a2
	beqz	a1, .LBB163_26
	addi	a0, a0, -1
	slli	a0, a0, 56
	srai	a0, a0, 56
	fcvt.s.w	ft2, a0
	fabs.s	ft2, ft2
.LBB163_26:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB163_1
	.loc	1 0 12 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB163_1
.LBB163_28:
	.loc	1 974 12 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 974 12 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp313:
.Lfunc_end163:
	.size	main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32, .Lfunc_end163-main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32,@function
main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32:
.Lfunc_begin164:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp314:
	.loc	1 997 12 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 37
	li	a7, 1
	li	a5, 127
	slli	a4, a7, 48
	slli	a2, a5, 39
	addi	a2, a2, 1
	slli	a2, a2, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	a3, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a2, a2, 12
	gemmini.config	a2, a4
	lui	a2, 246429
	li	a4, 6
	addi	a2, a2, 859
	slli	a2, a2, 32
	addi	a2, a2, 512
	gemmini.config	a4, a2
	li	t1, 512
	slli	a7, a7, 11
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, a7
	addi	a4, a5, 265
	gemmini.config	a4, t1
	lui	a4, 2048
	addi	a5, a5, 273
	gemmini.config	a5, a7
	li	a5, 15
	addi	a2, a6, -1024
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 5
	slli	a5, a4, 11
	add	a2, a2, a5
	lui	a5, 1937
	slli	a0, a0, 59
	srli	a0, a0, 55
	slli	a4, a4, 9
	add	a5, a5, a0
	or	a0, a0, a4
	add	a2, a2, t0
	lui	a4, 7749
	add	a3, a3, a0
	slli	a0, a0, 2
	add	a5, a5, a1
	add	a0, a0, a1
	li	a1, -1
	addi	a4, a4, -2048
	add	a0, a0, a4
	lui	a4, 80
	srli	a1, a1, 1
	addi	a4, a4, 257
	and	a2, a2, a1
	and	a5, a5, a1
	and	a3, a3, a1
	and	a0, a0, a1
	gemmini.loop_ws.config.addrs.ab	a2, a5
	gemmini.loop_ws.config.addrs.dc	a0, a3
	gemmini.loop_ws.config.strides.ab	a7, t1
	gemmini.loop_ws.config.strides.dc	t1, t1
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 997 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp315:
.Lfunc_end164:
	.size	main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32, .Lfunc_end164-main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_94_slow_memcpy","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_94_slow_memcpy,@function
main_graph$async_dispatch_94_slow_memcpy:
.Lfunc_begin165:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	t1, 0
	li	a7, 9
.Ltmp316:
	.loc	1 1003 12 prologue_end
	ld	a0, 24(a1)
	ld	a1, 32(a1)
	lwu	a2, 0(a2)
	slli	a7, a7, 9
	lwu	a0, 0(a0)
	.loc	1 1001 12
	ld	t0, 0(a1)
	.loc	1 1003 12
	ld	t4, 8(a1)
	slli	a2, a2, 7
	add	a1, a2, a7
	add	t0, t0, a2
	add	a0, a0, a1
	add	a1, a0, t4
	addi	a6, a0, 640
	addi	t2, a1, 512
	li	t3, 7
.LBB165_1:
	.loc	1 0 12 is_stmt 0
	li	t6, 0
	.loc	1 1003 12
	mul	t5, t1, a7
	add	t5, t5, a6
	mv	a3, t2
	mv	a4, t0
.LBB165_2:
	slli	a0, t6, 9
	add	a0, a0, t5
	add	a2, t4, a0
	mv	a0, a4
	mv	a5, a3
.LBB165_3:
	lh	a1, 0(a0)
	sh	a1, 0(a5)
	addi	a5, a5, 2
	addi	a0, a0, 2
	bne	a5, a2, .LBB165_3
	addi	t6, t6, 1
	addi	a4, a4, 512
	addi	a3, a3, 512
	bne	t6, t3, .LBB165_2
	addi	t1, t1, 1
	addi	a0, t0, 2047
	addi	t0, a0, 1537
	add	t2, t2, a7
	bne	t1, t3, .LBB165_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1003 12 epilogue_begin
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp317:
.Lfunc_end165:
	.size	main_graph$async_dispatch_94_slow_memcpy, .Lfunc_end165-main_graph$async_dispatch_94_slow_memcpy
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_95_generic_7x7x3x3x512_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_95_generic_7x7x3x3x512_i8,@function
main_graph$async_dispatch_95_generic_7x7x3x3x512_i8:
.Lfunc_begin166:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp318:
	.loc	1 1003 12 prologue_end
	lwu	a0, 0(a2)
	ld	a1, 32(a1)
	lui	a2, 61
	srli	a3, a0, 4
	slli	a4, a3, 15
	slli	a5, a3, 9
	slli	a3, a3, 12
	sub	a4, a4, a5
	add	a3, a3, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a0, a0, 60
	srli	a0, a0, 55
	or	a4, a4, a0
	or	a0, a0, a3
	lui	a3, 6
	add	a4, a4, a1
	li	s5, 24
	add	a0, a0, a5
	li	t6, 3
	addi	t0, a2, 1024
	add	t0, t0, a4
	li	t2, 9
	addi	t1, a3, 512
	slli	t2, t2, 9
	add	t1, t1, a0
	li	a6, 7
.LBB166_1:
	.loc	1 0 12 is_stmt 0
	li	t3, 0
	mv	t4, t1
	mv	t5, t0
.LBB166_2:
	li	s2, 0
	mv	s3, t4
	mv	s4, t5
.LBB166_3:
	li	a4, 0
	mv	a0, s3
	mv	a2, s4
.LBB166_4:
	mv	s1, a4
	li	a4, 8
	mv	a5, a0
	mv	a3, a2
.LBB166_5:
	.loc	1 1003 12 is_stmt 1
	lbu	a1, 0(a5)
	addi	a4, a4, -1
	sb	a1, 0(a3)
	addi	a3, a3, 1
	addi	a5, a5, 1
	bnez	a4, .LBB166_5
	addi	a4, s1, 8
	addi	a2, a2, 8
	addi	a0, a0, 8
	bltu	s1, s5, .LBB166_4
	addi	s2, s2, 1
	addi	s4, s4, 512
	addi	s3, s3, 512
	bne	s2, t6, .LBB166_3
	addi	t3, t3, 1
	addi	t5, t5, 1536
	add	t4, t4, t2
	bne	t3, t6, .LBB166_2
	addi	a7, a7, 1
	add	t0, t0, t2
	addi	t1, t1, 512
	bne	a7, a6, .LBB166_1
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 1003 12 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp319:
.Lfunc_end166:
	.size	main_graph$async_dispatch_95_generic_7x7x3x3x512_i8, .Lfunc_end166-main_graph$async_dispatch_95_generic_7x7x3x3x512_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32,@function
main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32:
.Lfunc_begin167:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp320:
	.loc	1 1003 12 prologue_end
	ld	a0, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 61
	lui	a7, 1618
	li	t0, 1
	li	t1, 127
	slli	a2, t0, 48
	slli	a5, t1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a3, 0(a0)
	ld	t4, 8(a0)
	ld	t2, 16(a0)
	ld	t3, 24(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a2
	lui	a0, 245681
	li	a2, 6
	addi	a5, a7, -128
	addi	a0, a0, 395
	slli	a0, a0, 32
	addi	a0, a0, 512
	gemmini.config	a2, a0
	srli	a0, a1, 5
	slli	a1, a1, 59
	srli	a1, a1, 55
	slli	a2, a0, 12
	slli	a0, a0, 9
	add	a2, a2, a0
	add	a5, a5, a1
	or	a0, a0, a1
	li	a4, 9
	addi	a1, a6, 1024
	slli	a4, a4, 9
	slli	t1, t1, 35
	addi	t1, t1, 1
	slli	t1, t1, 20
	add	a1, a1, a2
	addi	a2, t1, 257
	gemmini.config	a2, a4
	add	a3, a3, a1
	lui	a6, 7773
	add	a5, a5, t4
	li	a1, 512
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, t2
	addi	a2, t1, 265
	gemmini.config	a2, a1
	li	a7, -1
	add	a0, a0, a6
	lui	a6, 2048
	slli	t0, t0, 11
	addi	a2, t1, 273
	gemmini.config	a2, t0
	li	t1, 15
	srli	a2, a7, 1
	and	a3, a3, a2
	and	a5, a5, a2
	and	a7, t3, a2
	and	a0, a0, a2
	lui	a2, 1
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t1, a6
	add	t0, t0, a3
	add	a2, a2, a3
	gemmini.loop_ws.config.addrs.ab	a3, a5
	li	a3, 257
	gemmini.loop_ws.config.addrs.dc	a0, zero
	lui	t2, 256
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t1, a6
	lui	a0, 512
	add	t2, t2, a5
	add	a5, a5, a0
	addi	a0, a0, 1
	slli	a0, a0, 16
	addi	a0, a0, 1
	gemmini.loop_ws.config.addrs.ab	t0, t2
	gemmini.loop_ws.config.addrs.dc	zero, zero
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t1, a0
	gemmini.loop_ws.config.addrs.ab	a2, a5
	gemmini.loop_ws.config.addrs.dc	zero, a7
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1003 12 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp321:
.Lfunc_end167:
	.size	main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32, .Lfunc_end167-main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32,@function
main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32:
.Lfunc_begin168:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	sd	s1, 24(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	lui	a6, 2048
.Ltmp322:
	.loc	1 1009 13 prologue_end
	ld	a0, 32(a1)
	lwu	t4, 0(a2)
	lui	t1, 2193
	lui	t0, 7798
	li	a7, -1
	addi	t3, s0, -40
	li	a2, 1
	li	s1, 127
	lui	a5, 245688
	slli	a1, a2, 48
	slli	a3, s1, 39
	addi	a3, a3, 1
	slli	a3, a3, 16
	ld	t5, 0(a0)
	ld	a4, 8(a0)
	ld	t6, 16(a0)
	#APP
	fence
	#NO_APP
	addi	a3, a3, 4
	gemmini.config	a3, a1
	li	a0, 2
	li	t2, 512
	addi	a1, a5, -761
	slli	a1, a1, 32
	addi	a1, a1, 16
	gemmini.config	a0, a1
	lui	a1, 2
	slli	s1, s1, 35
	slli	a0, a2, 11
	addi	s1, s1, 1
	slli	s1, s1, 20
	addi	a2, s1, 257
	gemmini.config	a2, t2
	addi	a2, s1, 265
	gemmini.config	a2, a0
	lui	a2, 512
	addi	a3, s1, 273
	gemmini.config	a3, a1
	li	a1, 15
	lui	a3, 307200
	fmv.w.x	fa5, a3
	lui	a3, 260096
	fmv.w.x	fa4, a3
	lui	a3, 798720
	fmv.w.x	fa3, a3
	lui	a3, 258570
	addi	a3, a3, -274
	fmv.w.x	fa2, a3
	lui	a3, 256663
	addi	a3, a3, 580
	fmv.w.x	fa1, a3
	lui	a3, 258168
	addi	a3, a3, 1124
	fmv.w.x	fa0, a3
	lui	a3, 37
	addi	a2, a2, 1
	slli	a2, a2, 16
	addi	a2, a2, 1
	gemmini.loop_ws.config.bounds	a1, a2
	srli	a1, t4, 7
	slli	t4, t4, 57
	srli	a2, t4, 53
	slli	a5, a1, 11
	add	t1, t1, a2
	or	a2, a2, a5
	lui	a5, 6
	addi	a3, a3, -1024
	addi	a5, a5, 512
	.loc	1 1016 13
	add	a3, a3, a2
	add	a5, a5, a2
	.loc	1 1009 13
	slli	a2, a2, 2
	add	s1, a4, t1
	add	a2, a2, a4
	li	t4, 16
	slli	a1, a1, 9
	add	a1, a1, t5
	.loc	1 1016 13
	add	t5, t5, a3
	lui	a3, 80
	fmv.w.x	ft0, zero
	addi	t1, a6, -1
	addi	a4, t0, -2048
	add	t6, t6, a5
	srli	a5, a7, 1
	addi	a3, a3, 1
	.loc	1 1009 13
	add	a2, a2, a4
	and	a4, t3, a5
	and	a1, a1, a5
	and	s1, s1, a5
	and	a2, a2, a5
	gemmini.loop_ws.config.addrs.ab	a1, s1
	gemmini.loop_ws.config.addrs.dc	a2, a4
	gemmini.loop_ws.config.strides.ab	t2, a0
	gemmini.loop_ws.config.strides.dc	a0, t4
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	lui	a0, 274400
	fmv.w.x	ft1, a0
	lui	a6, 790528
	lui	t0, 1024
	j	.LBB168_2
.LBB168_1:
	.loc	1 1016 13
	fcvt.l.s	a0, ft3, rtz
	addi	t3, t3, 1
	addi	t5, t5, 1
	addi	t4, t4, -1
	sb	a0, 0(t6)
	addi	t6, t6, 1
	beqz	t4, .LBB168_28
.LBB168_2:
	.loc	1 1016 13
	lb	a0, 0(t5)
	lb	a1, 0(t3)
	.loc	1 996 12
	fcvt.s.w	ft2, a0
	fmul.s	ft2, ft2, fa2
	.loc	1 1011 13
	fcvt.s.w	ft3, a1
	.loc	1 1012 13
	fmadd.s	ft2, ft3, fa1, ft2
	.loc	1 1013 13
	fdiv.s	ft2, ft2, fa0
	fabs.s	ft3, ft2
	flt.s	a0, ft3, fa5
	fmv.s	ft3, ft2
	beqz	a0, .LBB168_4
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	ft3, a0, rmm
	fsgnj.s	ft3, ft3, ft2
.LBB168_4:
	fmv.x.w	t2, ft3
	slli	a1, t2, 33
	srli	a1, a1, 56
	addi	a0, a1, -128
	sltu	a2, a1, a0
	addi	a2, a2, -1
	and	a2, a2, a0
	li	a0, 31
	bltu	a2, a0, .LBB168_6
	.loc	1 0 13 is_stmt 0
	li	a2, 31
.LBB168_6:
	.loc	1 1013 13 is_stmt 1
	fmv.x.w	a4, ft2
	slli	a3, a4, 33
	srli	a3, a3, 56
	addi	s1, a3, -127
	sgtz	a5, s1
	neg	a5, a5
	and	a5, a5, s1
	blt	a5, a0, .LBB168_8
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB168_8:
	.loc	1 1013 13 is_stmt 1
	beq	s1, a7, .LBB168_10
	srlw	a0, t0, a5
	j	.LBB168_11
.LBB168_10:
	.loc	1 0 13 is_stmt 0
	li	a0, 0
.LBB168_11:
	addi	a1, a1, -127
	srlw	a2, t1, a2
	.loc	1 1013 13 is_stmt 1
	srlw	a5, t1, a5
	addi	a3, a3, -126
	seqz	a1, a1
	and	a2, a2, t2
	and	a4, a4, a5
	snez	a2, a2
	xor	a0, a0, a4
	or	a1, a1, a2
	seqz	a0, a0
	sltiu	a2, a3, 24
	and	a0, a0, a2
	and	a0, a0, a1
	fmv.s	ft4, ft0
	bnez	a0, .LBB168_19
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	beqz	a0, .LBB168_20
.LBB168_13:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB168_15
.LBB168_14:
	.loc	1 0 13 is_stmt 0
	fmv.s	ft3, ft2
.LBB168_15:
	.loc	1 1013 13 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 1015 13
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft2, a0
	.loc	1 1016 13
	fmv.x.w	a4, ft2
	srliw	a2, a4, 23
	addi	a1, a2, -128
	sltu	a3, a2, a1
	addi	a3, a3, -1
	and	a1, a1, a3
	li	a5, 31
	bgeu	a1, a5, .LBB168_21
	addi	a3, a2, -127
	sgtz	a2, a3
	neg	a2, a2
	and	a2, a2, a3
	bge	a2, a5, .LBB168_22
.LBB168_17:
	beq	a3, a7, .LBB168_23
.LBB168_18:
	srlw	a5, t0, a2
	j	.LBB168_24
.LBB168_19:
	.loc	1 1013 13
	fsgnj.s	ft4, fa4, ft2
	fsub.s	ft3, ft3, ft4
	fsgnj.s	ft2, ft3, ft2
	fadd.s	ft3, ft2, ft0
	fle.s	a0, ft3, fa3
	fmv.s	ft2, fa3
	bnez	a0, .LBB168_13
.LBB168_20:
	.loc	1 0 13 is_stmt 0
	fmv.s	ft2, ft3
	.loc	1 1013 13
	fle.s	a0, ft1, ft3
	fmv.s	ft3, ft1
	beqz	a0, .LBB168_14
	j	.LBB168_15
.LBB168_21:
	.loc	1 0 13
	li	a1, 31
	.loc	1 1016 13 is_stmt 1
	addi	a3, a2, -127
	sgtz	a2, a3
	neg	a2, a2
	and	a2, a2, a3
	blt	a2, a5, .LBB168_17
.LBB168_22:
	.loc	1 0 13 is_stmt 0
	li	a2, 31
	.loc	1 1016 13
	bne	a3, a7, .LBB168_18
.LBB168_23:
	.loc	1 0 13
	li	a5, 0
.LBB168_24:
	seqz	a3, a3
	srlw	a1, t1, a1
	.loc	1 1016 13 is_stmt 1
	srlw	a2, t1, a2
	and	a1, a1, a4
	and	a2, a2, a4
	add	a4, a4, a6
	srliw	a4, a4, 26
	snez	a1, a1
	xor	a2, a2, a5
	or	a1, a1, a3
	seqz	a2, a2
	sltiu	a3, a4, 3
	and	a2, a2, a3
	and	a1, a1, a2
	beqz	a1, .LBB168_26
	addi	a0, a0, -1
	slli	a0, a0, 56
	srai	a0, a0, 56
	fcvt.s.w	ft2, a0
	fabs.s	ft2, ft2
.LBB168_26:
	fle.s	a0, ft1, ft2
	fmv.s	ft3, ft1
	bnez	a0, .LBB168_1
	.loc	1 0 13 is_stmt 0
	fmv.s	ft3, ft2
	j	.LBB168_1
.LBB168_28:
	.loc	1 1009 13 is_stmt 1
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 48
	.loc	1 1009 13 epilogue_begin is_stmt 0
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Ltmp323:
.Lfunc_end168:
	.size	main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32, .Lfunc_end168-main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32,@function
main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32:
.Lfunc_begin169:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp324:
	.loc	1 1018 13 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 6
	li	a7, 1
	li	a5, 127
	slli	a4, a7, 48
	slli	a2, a5, 39
	addi	a2, a2, 1
	slli	a2, a2, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	a3, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a2, a2, 12
	gemmini.config	a2, a4
	lui	a2, 246511
	li	a4, 6
	addi	a2, a2, -411
	slli	a2, a2, 32
	addi	a2, a2, 512
	gemmini.config	a4, a2
	li	t1, 512
	slli	a7, a7, 11
	slli	a5, a5, 35
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, a7
	addi	a4, a5, 265
	gemmini.config	a4, t1
	lui	a4, 2048
	addi	a5, a5, 273
	gemmini.config	a5, a7
	li	a5, 15
	addi	a2, a6, 512
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 5
	slli	a5, a4, 11
	add	a2, a2, a5
	lui	a5, 2449
	slli	a0, a0, 59
	srli	a0, a0, 55
	slli	a4, a4, 9
	add	a5, a5, a0
	or	a0, a0, a4
	add	a2, a2, t0
	lui	a4, 7896
	add	a3, a3, a0
	slli	a0, a0, 2
	add	a5, a5, a1
	add	a0, a0, a1
	li	a1, -1
	addi	a4, a4, -2048
	add	a0, a0, a4
	lui	a4, 80
	srli	a1, a1, 1
	addi	a4, a4, 257
	and	a2, a2, a1
	and	a5, a5, a1
	and	a3, a3, a1
	and	a0, a0, a1
	gemmini.loop_ws.config.addrs.ab	a2, a5
	gemmini.loop_ws.config.addrs.dc	a0, a3
	gemmini.loop_ws.config.strides.ab	a7, t1
	gemmini.loop_ws.config.strides.dc	t1, t1
	gemmini.loop_ws	a4, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1018 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp325:
.Lfunc_end169:
	.size	main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32, .Lfunc_end169-main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_100_generic_7x7x3x3x512_i8","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_100_generic_7x7x3x3x512_i8,@function
main_graph$async_dispatch_100_generic_7x7x3x3x512_i8:
.Lfunc_begin170:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	li	a7, 0
.Ltmp326:
	.loc	1 1024 13 prologue_end
	lwu	a0, 0(a2)
	ld	a1, 32(a1)
	lui	a2, 41
	srli	a3, a0, 4
	slli	a4, a3, 15
	slli	a5, a3, 9
	slli	a3, a3, 12
	sub	a4, a4, a5
	add	a3, a3, a5
	ld	a5, 0(a1)
	ld	a1, 8(a1)
	slli	a0, a0, 60
	srli	a0, a0, 55
	or	a4, a4, a0
	or	a0, a0, a3
	lui	a3, 31
	add	a4, a4, a1
	li	s5, 24
	add	a0, a0, a5
	li	t6, 3
	addi	t0, a2, -1024
	add	t0, t0, a4
	li	t2, 9
	addi	t1, a3, -1536
	slli	t2, t2, 9
	add	t1, t1, a0
	li	a6, 7
.LBB170_1:
	.loc	1 0 13 is_stmt 0
	li	t3, 0
	mv	t4, t1
	mv	t5, t0
.LBB170_2:
	li	s2, 0
	mv	s3, t4
	mv	s4, t5
.LBB170_3:
	li	a4, 0
	mv	a0, s3
	mv	a2, s4
.LBB170_4:
	mv	s1, a4
	li	a4, 8
	mv	a5, a0
	mv	a3, a2
.LBB170_5:
	.loc	1 1024 13 is_stmt 1
	lbu	a1, 0(a5)
	addi	a4, a4, -1
	sb	a1, 0(a3)
	addi	a3, a3, 1
	addi	a5, a5, 1
	bnez	a4, .LBB170_5
	addi	a4, s1, 8
	addi	a2, a2, 8
	addi	a0, a0, 8
	bltu	s1, s5, .LBB170_4
	addi	s2, s2, 1
	addi	s4, s4, 512
	addi	s3, s3, 512
	bne	s2, t6, .LBB170_3
	addi	t3, t3, 1
	addi	t5, t5, 1536
	add	t4, t4, t2
	bne	t3, t6, .LBB170_2
	addi	a7, a7, 1
	add	t0, t0, t2
	addi	t1, t1, 512
	bne	a7, a6, .LBB170_1
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 1024 13 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp327:
.Lfunc_end170:
	.size	main_graph$async_dispatch_100_generic_7x7x3x3x512_i8, .Lfunc_end170-main_graph$async_dispatch_100_generic_7x7x3x3x512_i8
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32,@function
main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32:
.Lfunc_begin171:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp328:
	.loc	1 1024 13 prologue_end
	ld	a0, 32(a1)
	lwu	a1, 0(a2)
	lui	a6, 41
	lui	a7, 2194
	li	t0, 1
	li	t1, 127
	slli	a2, t0, 48
	slli	a5, t1, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	ld	a3, 0(a0)
	ld	t4, 8(a0)
	ld	t2, 16(a0)
	ld	t3, 24(a0)
	#APP
	fence
	#NO_APP
	addi	a5, a5, 12
	gemmini.config	a5, a2
	lui	a0, 62140
	li	a2, 6
	addi	a5, a7, -128
	addi	a0, a0, 1591
	slli	a0, a0, 34
	addi	a0, a0, 512
	gemmini.config	a2, a0
	srli	a0, a1, 5
	slli	a1, a1, 59
	srli	a1, a1, 55
	slli	a2, a0, 12
	slli	a0, a0, 9
	add	a2, a2, a0
	add	a5, a5, a1
	or	a0, a0, a1
	li	a4, 9
	addi	a1, a6, -1024
	slli	a4, a4, 9
	slli	t1, t1, 35
	addi	t1, t1, 1
	slli	t1, t1, 20
	add	a1, a1, a2
	addi	a2, t1, 257
	gemmini.config	a2, a4
	add	a3, a3, a1
	lui	a6, 7920
	add	a5, a5, t4
	li	a1, 512
	add	t3, t3, a0
	slli	a0, a0, 2
	add	a0, a0, t2
	addi	a2, t1, 265
	gemmini.config	a2, a1
	li	a7, -1
	add	a0, a0, a6
	lui	a6, 2048
	slli	t0, t0, 11
	addi	a2, t1, 273
	gemmini.config	a2, t0
	li	t1, 15
	srli	a2, a7, 1
	and	a3, a3, a2
	and	a5, a5, a2
	and	a7, t3, a2
	and	a0, a0, a2
	lui	a2, 1
	addi	a6, a6, 1
	slli	a6, a6, 16
	addi	a6, a6, 1
	gemmini.loop_ws.config.bounds	t1, a6
	add	t0, t0, a3
	add	a2, a2, a3
	gemmini.loop_ws.config.addrs.ab	a3, a5
	li	a3, 257
	gemmini.loop_ws.config.addrs.dc	a0, zero
	lui	t2, 256
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t1, a6
	lui	a0, 512
	add	t2, t2, a5
	add	a5, a5, a0
	addi	a0, a0, 1
	slli	a0, a0, 16
	addi	a0, a0, 1
	gemmini.loop_ws.config.addrs.ab	t0, t2
	gemmini.loop_ws.config.addrs.dc	zero, zero
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.loop_ws.config.bounds	t1, a0
	gemmini.loop_ws.config.addrs.ab	a2, a5
	gemmini.loop_ws.config.addrs.dc	zero, a7
	gemmini.loop_ws.config.strides.ab	a4, a1
	gemmini.loop_ws.config.strides.dc	a1, a1
	gemmini.loop_ws	a3, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1024 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp329:
.Lfunc_end171:
	.size	main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32, .Lfunc_end171-main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32,@function
main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32:
.Lfunc_begin172:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Ltmp330:
	.loc	1 1030 13 prologue_end
	ld	a3, 32(a1)
	lwu	a0, 0(a2)
	lui	a6, 2705
	li	a7, 1
	li	a5, 127
	slli	a4, a7, 48
	slli	a2, a5, 39
	addi	a2, a2, 1
	slli	a2, a2, 16
	ld	t0, 0(a3)
	ld	a1, 8(a3)
	ld	a3, 16(a3)
	#APP
	fence
	#NO_APP
	addi	a2, a2, 4
	gemmini.config	a2, a4
	lui	a2, 123202
	li	a4, 2
	addi	a2, a2, -189
	slli	a2, a2, 22
	addi	a2, a2, 1
	slli	a2, a2, 11
	gemmini.config	a4, a2
	li	t1, 512
	slli	a5, a5, 35
	slli	a7, a7, 11
	addi	a5, a5, 1
	slli	a5, a5, 20
	addi	a4, a5, 257
	gemmini.config	a4, t1
	addi	a4, a5, 265
	gemmini.config	a4, a7
	lui	a4, 2
	addi	a5, a5, 273
	gemmini.config	a5, a4
	lui	a4, 512
	li	a5, 15
	addi	a4, a4, 1
	slli	a4, a4, 16
	addi	a4, a4, 1
	gemmini.loop_ws.config.bounds	a5, a4
	srli	a4, a0, 7
	slli	a0, a0, 57
	srli	a0, a0, 53
	slli	a5, a4, 11
	add	a6, a6, a0
	or	a0, a0, a5
	slli	a4, a4, 9
	add	a4, a4, t0
	lui	a5, 31
	addi	a5, a5, -1536
	add	a5, a5, a0
	add	a3, a3, a5
	lui	a5, 7945
	slli	a0, a0, 2
	add	a6, a6, a1
	add	a0, a0, a1
	li	a1, -1
	addi	a5, a5, -2048
	add	a0, a0, a5
	lui	a5, 80
	srli	a1, a1, 1
	addi	a5, a5, 1
	and	a4, a4, a1
	and	a2, a6, a1
	and	a3, a3, a1
	and	a0, a0, a1
	gemmini.loop_ws.config.addrs.ab	a4, a2
	gemmini.loop_ws.config.addrs.dc	a0, a3
	gemmini.loop_ws.config.strides.ab	t1, a7
	gemmini.loop_ws.config.strides.dc	a7, a7
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1030 13 epilogue_begin is_stmt 0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp331:
.Lfunc_end172:
	.size	main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32, .Lfunc_end172-main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32,@function
main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32:
.Lfunc_begin173:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -560
	.cfi_def_cfa_offset 560
	sd	ra, 552(sp)
	sd	s0, 544(sp)
	sd	s1, 536(sp)
	sd	s2, 528(sp)
	sd	s3, 520(sp)
	sd	s4, 512(sp)
	sd	s5, 504(sp)
	sd	s6, 496(sp)
	sd	s7, 488(sp)
	sd	s8, 480(sp)
	sd	s9, 472(sp)
	sd	s10, 464(sp)
	sd	s11, 456(sp)
	fsd	fs0, 448(sp)
	fsd	fs1, 440(sp)
	fsd	fs2, 432(sp)
	fsd	fs3, 424(sp)
	fsd	fs4, 416(sp)
	fsd	fs5, 408(sp)
	fsd	fs6, 400(sp)
	fsd	fs7, 392(sp)
	fsd	fs8, 384(sp)
	fsd	fs9, 376(sp)
	fsd	fs10, 368(sp)
	fsd	fs11, 360(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	.cfi_offset fs0, -112
	.cfi_offset fs1, -120
	.cfi_offset fs2, -128
	.cfi_offset fs3, -136
	.cfi_offset fs4, -144
	.cfi_offset fs5, -152
	.cfi_offset fs6, -160
	.cfi_offset fs7, -168
	.cfi_offset fs8, -176
	.cfi_offset fs9, -184
	.cfi_offset fs10, -192
	.cfi_offset fs11, -200
	addi	s0, sp, 560
	.cfi_def_cfa s0, 0
	li	t1, 0
.Ltmp332:
	.loc	1 1030 13 prologue_end
	ld	a1, 32(a1)
	.loc	1 1039 13
	lwu	a2, 0(a2)
	lui	a6, 31
	fmv.w.x	fa5, zero
	fsw	fa5, -524(s0)
	lui	a4, 258168
	lui	a5, 257095
	lui	a7, 254366
	lui	a3, 307200
	lui	s1, 2048
	fmv.w.x	fs9, a3
	addi	a3, a4, 1124
	fmv.w.x	fs8, a3
	addi	a3, a5, 221
	fmv.w.x	fs10, a3
	lui	a3, 252137
	addi	a4, a6, -1536
	addi	a5, a7, -1244
	addi	s3, s1, -1
	addi	a3, a3, 368
	sd	a3, -536(s0)
	fmv.w.x	fa1, a5
	.loc	1 1030 13
	ld	a3, 0(a1)
	.loc	1 1039 13
	ld	a1, 8(a1)
	sd	a1, -544(s0)
	slli	a2, a2, 5
	sd	a2, -552(s0)
	add	a4, a4, a2
	add	a3, a3, a4
	fsw	fs9, -496(s0)
	fsw	fs8, -500(s0)
	sd	s3, -208(s0)
	j	.LBB173_2
.LBB173_1:
	.loc	1 1043 13
	fcvt.l.s	a6, ft2, rtz
	fcvt.l.s	a7, fa0, rtz
	fcvt.l.s	t0, fa3, rtz
	fcvt.l.s	a4, fa2, rtz
	fcvt.l.s	a5, fa4, rtz
	fcvt.l.s	s1, ft4, rtz
	fcvt.l.s	a1, ft3, rtz
	fcvt.l.s	a2, ft1, rtz
	ld	a3, -544(s0)
	ld	a0, -520(s0)
	.loc	1 1039 13
	add	a3, a3, a0
	ld	a0, -512(s0)
	addi	t1, a0, 8
	sb	a1, 0(a3)
	sb	a2, 1(a3)
	sb	s1, 2(a3)
	sb	a5, 3(a3)
	sb	a4, 4(a3)
	sb	t0, 5(a3)
	sb	a7, 6(a3)
	sb	a6, 7(a3)
	ld	a3, -488(s0)
	addi	a3, a3, 8
	li	a1, 24
	bltu	a0, a1, .LBB173_2
	j	.LBB173_356
.LBB173_2:
	.loc	1 0 13 is_stmt 0
	ld	a0, -552(s0)
	sd	t1, -512(s0)
	.loc	1 1039 13
	add	a0, a0, t1
	sd	a0, -520(s0)
	mv	a2, a3
	flw	fa5, -524(s0)
	fmv.s	ft6, fa5
	fmv.s	ft7, fa5
	fmv.s	ft5, fa5
	fmv.s	ft4, fa5
	fmv.s	ft3, fa5
	fmv.s	ft1, fa5
	fmv.s	ft0, fa5
	fmv.s	fa0, fa5
	sd	a3, -488(s0)
	j	.LBB173_4
.LBB173_3:
	.loc	1 1037 13 is_stmt 1
	fcvt.l.s	a6, fa6, rtz
	fcvt.l.s	a7, fa7, rtz
	fcvt.l.s	a2, ft0, rtz
	fcvt.l.s	a3, fa0, rtz
	fcvt.l.s	a4, fa2, rtz
	fcvt.l.s	a5, fa3, rtz
	fcvt.l.s	s1, fa4, rtz
	fcvt.l.s	a0, fa5, rtz
	ld	a1, -240(s0)
	.loc	1 1039 13
	addi	a1, a1, 2047
	.loc	1 1038 13
	fcvt.s.w	fa5, a0
	fcvt.s.w	fa4, s1
	fcvt.s.w	fa3, a5
	fcvt.s.w	fa2, a4
	fcvt.s.w	fa0, a3
	fcvt.s.w	ft0, a2
	fcvt.s.w	ft1, a7
	fcvt.s.w	fa6, a6
	fmadd.s	ft6, fa6, fa1, ft6
	fmadd.s	ft7, ft1, fa1, ft7
	fmadd.s	ft5, ft0, fa1, ft5
	fmadd.s	ft4, fa0, fa1, ft4
	fmadd.s	ft3, fa2, fa1, ft3
	flw	ft1, -232(s0)
	fmadd.s	ft1, fa3, fa1, ft1
	flw	ft0, -224(s0)
	fmadd.s	ft0, fa4, fa1, ft0
	flw	fa0, -216(s0)
	fmadd.s	fa0, fa5, fa1, fa0
	.loc	1 1039 13
	addi	a2, a1, 1
	ld	a3, -488(s0)
	ld	a0, -248(s0)
	beq	a0, a3, .LBB173_172
.LBB173_4:
	lui	a0, 1048552
	add	a4, a2, a0
	lb	a0, -2048(a4)
	lb	a1, 0(a2)
	.loc	1 1017 13
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	.loc	1 1032 13
	fcvt.s.w	fa4, a1
	.loc	1 1033 13
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fa6, fa5, fa1
	fabs.s	fa5, fa6
	flt.s	a0, fa5, fs9
	fmv.s	fa7, fa6
	beqz	a0, .LBB173_6
	fcvt.w.s	a0, fa6, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fa7, fa5, fa6
.LBB173_6:
	.loc	1 0 0 is_stmt 0
	lb	a0, -2047(a4)
	lb	a1, 1(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	ft8, fa5, fa1
	fabs.s	fa5, ft8
	flt.s	a0, fa5, fs9
	fmv.s	ft9, ft8
	beqz	a0, .LBB173_8
	fcvt.w.s	a0, ft8, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	ft9, fa5, ft8
.LBB173_8:
	.loc	1 0 0
	lb	a0, -2046(a4)
	lb	a1, 2(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	ft10, fa5, fa1
	fabs.s	fa5, ft10
	flt.s	a0, fa5, fs9
	fmv.s	ft11, ft10
	beqz	a0, .LBB173_10
	fcvt.w.s	a0, ft10, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	ft11, fa5, ft10
.LBB173_10:
	.loc	1 0 0
	lb	a0, -2045(a4)
	lb	a1, 3(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fs0, fa5, fa1
	fabs.s	fa5, fs0
	flt.s	a0, fa5, fs9
	fmv.s	fs1, fs0
	beqz	a0, .LBB173_12
	fcvt.w.s	a0, fs0, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs1, fa5, fs0
.LBB173_12:
	.loc	1 0 0
	lb	a0, -2044(a4)
	lb	a1, 4(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fs2, fa5, fa1
	fabs.s	fa5, fs2
	flt.s	a0, fa5, fs9
	fmv.s	fs3, fs2
	beqz	a0, .LBB173_14
	fcvt.w.s	a0, fs2, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs3, fa5, fs2
.LBB173_14:
	.loc	1 0 0
	lb	a0, -2043(a4)
	lb	a1, 5(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fs4, fa5, fa1
	fabs.s	fa5, fs4
	flt.s	a0, fa5, fs9
	fmv.s	fs5, fs4
	beqz	a0, .LBB173_16
	fcvt.w.s	a0, fs4, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs5, fa5, fs4
.LBB173_16:
	.loc	1 0 0
	lb	a0, -2042(a4)
	lb	a1, 6(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fs6, fa5, fa1
	fabs.s	fa5, fs6
	flt.s	a0, fa5, fs9
	fmv.s	fs7, fs6
	beqz	a0, .LBB173_18
	fcvt.w.s	a0, fs6, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs7, fa5, fs6
.LBB173_18:
	.loc	1 0 0
	lb	a0, -2041(a4)
	sd	a2, -240(s0)
	lb	a1, 7(a2)
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fa5, fs8
	fcvt.s.w	fa4, a1
	fmadd.s	fa5, fa4, fs10, fa5
	.loc	1 1034 13
	fdiv.s	fs8, fa5, fa1
	fabs.s	fa5, fs8
	flt.s	a0, fa5, fs9
	fmv.s	fs9, fs8
	beqz	a0, .LBB173_20
	fcvt.w.s	a0, fs8, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs9, fa5, fs8
.LBB173_20:
	fmv.x.w	a2, fa7
	slli	a5, a2, 33
	srli	a5, a5, 56
	addi	a0, a5, -128
	sltu	a1, a5, a0
	addi	a1, a1, -1
	and	a7, a1, a0
	li	t4, 31
	bltu	a7, t4, .LBB173_22
	.loc	1 0 13
	li	a7, 31
.LBB173_22:
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, ft9
	sd	a0, -216(s0)
	slli	a0, a0, 33
	srli	t6, a0, 56
	addi	a0, t6, -128
	sltu	a1, t6, a0
	addi	a1, a1, -1
	and	s1, a1, a0
	bltu	s1, t4, .LBB173_24
	.loc	1 0 13 is_stmt 0
	li	s1, 31
.LBB173_24:
	sd	a4, -248(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, ft11
	sd	a0, -408(s0)
	slli	a0, a0, 33
	srli	s8, a0, 56
	addi	a0, s8, -128
	sltu	a1, s8, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_26
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_26:
	sd	a0, -424(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a4, fs1
	sd	a4, -360(s0)
	slli	a4, a4, 33
	srli	a4, a4, 56
	addi	a0, a4, -128
	sd	a4, -376(s0)
	sltu	a1, a4, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_28
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_28:
	sd	a0, -384(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, fs3
	sd	a0, -320(s0)
	slli	a0, a0, 33
	srli	a1, a0, 56
	addi	a0, a1, -128
	sd	a1, -328(s0)
	sltu	a1, a1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_30
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_30:
	sd	a0, -336(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, fs5
	sd	a0, -224(s0)
	slli	a0, a0, 33
	srli	a1, a0, 56
	addi	a0, a1, -128
	sd	a1, -304(s0)
	sltu	a1, a1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_32
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_32:
	sd	a0, -312(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, fs7
	sd	a0, -280(s0)
	slli	a0, a0, 33
	srli	a1, a0, 56
	addi	a0, a1, -128
	sd	a1, -288(s0)
	sltu	a1, a1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_34
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_34:
	sd	a0, -296(s0)
	.loc	1 1034 13 is_stmt 1
	fmv.x.w	a0, fs9
	sd	a0, -256(s0)
	slli	a0, a0, 33
	srli	a1, a0, 56
	addi	a0, a1, -128
	sd	a1, -264(s0)
	sltu	a1, a1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_36
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_36:
	sd	a0, -272(s0)
	fmv.x.w	s3, fa6
	slli	a0, s3, 33
	srli	t1, a0, 56
	addi	a6, t1, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a0, a6
	neg	a0, a0
	and	t3, a0, a6
	blt	t3, t4, .LBB173_38
	.loc	1 0 13 is_stmt 0
	li	t3, 31
.LBB173_38:
	fmv.x.w	t0, ft8
	slli	a0, t0, 33
	srli	s10, a0, 56
	addi	a1, s10, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a0, a1
	neg	a0, a0
	and	s4, a0, a1
	blt	s4, t4, .LBB173_40
	.loc	1 0 13 is_stmt 0
	li	s4, 31
.LBB173_40:
	fmv.x.w	s6, ft10
	slli	a0, s6, 33
	srli	t2, a0, 56
	addi	a1, t2, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a0, a1
	neg	a0, a0
	and	s9, a0, a1
	blt	s9, t4, .LBB173_42
	.loc	1 0 13 is_stmt 0
	li	s9, 31
.LBB173_42:
	fmv.x.w	a0, fs0
	sd	a0, -480(s0)
	slli	a0, a0, 33
	srli	t5, a0, 56
	addi	a1, t5, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a0, a1
	neg	a0, a0
	and	s5, a0, a1
	blt	s5, t4, .LBB173_44
	.loc	1 0 13 is_stmt 0
	li	s5, 31
.LBB173_44:
	fmv.x.w	a0, fs2
	sd	a0, -456(s0)
	slli	a0, a0, 33
	srli	a0, a0, 56
	sd	a0, -464(s0)
	addi	a1, a0, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a0, a1
	neg	a0, a0
	sd	a1, -472(s0)
	and	s11, a0, a1
	blt	s11, t4, .LBB173_46
	.loc	1 0 13 is_stmt 0
	li	s11, 31
.LBB173_46:
	fmv.x.w	a3, fs4
	sd	a3, -432(s0)
	slli	a3, a3, 33
	srli	a3, a3, 56
	sd	a3, -440(s0)
	addi	a0, a3, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a3, a0
	neg	a3, a3
	sd	a0, -448(s0)
	and	ra, a3, a0
	blt	ra, t4, .LBB173_48
	.loc	1 0 13 is_stmt 0
	li	ra, 31
.LBB173_48:
	fmv.x.w	a3, fs6
	sd	a3, -392(s0)
	slli	a3, a3, 33
	srli	a3, a3, 56
	sd	a3, -400(s0)
	addi	a0, a3, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a3, a0
	neg	a3, a3
	sd	a0, -416(s0)
	and	s7, a3, a0
	blt	s7, t4, .LBB173_50
	.loc	1 0 13 is_stmt 0
	li	s7, 31
.LBB173_50:
	fsw	ft1, -232(s0)
	fmv.s	ft2, fs10
	fmv.x.w	a3, fs8
	sd	a3, -344(s0)
	slli	a3, a3, 33
	srli	a3, a3, 56
	sd	a3, -352(s0)
	addi	a0, a3, -127
	.loc	1 1034 13 is_stmt 1
	sgtz	a3, a0
	neg	a3, a3
	sd	a0, -368(s0)
	and	s2, a3, a0
	blt	s2, t4, .LBB173_52
	.loc	1 0 13 is_stmt 0
	li	s2, 31
.LBB173_52:
	addi	a5, a5, -127
	.loc	1 1034 13 is_stmt 1
	sllw	a4, a2, a7
	addi	a6, a6, 1
	lui	a0, 1024
	srlw	a2, a0, t3
	ld	a0, -208(s0)
	srlw	a3, a0, t3
	addi	a1, t1, -126
	seqz	a5, a5
	and	a4, a4, a0
	seqz	a0, a6
	and	a3, a3, s3
	sltiu	a1, a1, 24
	snez	a4, a4
	addi	a0, a0, -1
	or	a4, a4, a5
	and	a0, a0, a2
	xor	a0, a0, a3
	seqz	a0, a0
	and	a0, a0, a1
	lui	a1, 260096
	fmv.w.x	ft1, a1
	and	a0, a0, a4
	fmv.w.x	fs10, zero
	bnez	a0, .LBB173_54
	.loc	1 0 13 is_stmt 0
	fmv.s	fs11, fs10
	j	.LBB173_55
.LBB173_54:
	.loc	1 1034 13
	fsgnj.s	fs11, ft1, fa6
.LBB173_55:
	.loc	1 0 13
	addi	a0, t6, -127
	ld	a1, -216(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, s1
	addi	a2, s10, -127
	addi	a2, a2, 1
	lui	a6, 1024
	srlw	a3, a6, s4
	ld	s1, -208(s0)
	srlw	a4, s1, s4
	addi	a5, s10, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	and	a4, a4, t0
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a3
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_57
	.loc	1 0 13 is_stmt 0
	fmv.s	fa5, fs10
	j	.LBB173_58
.LBB173_57:
	.loc	1 1034 13
	fsgnj.s	fa5, ft1, ft8
.LBB173_58:
	.loc	1 0 13
	fsw	fa0, -216(s0)
	addi	a0, s8, -127
	ld	a1, -408(s0)
	ld	a2, -424(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	addi	a2, t2, -127
	addi	a2, a2, 1
	srlw	a3, a6, s9
	srlw	a4, s1, s9
	addi	a5, t2, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	and	a4, a4, s6
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a3
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_60
	.loc	1 0 13 is_stmt 0
	fmv.s	fa0, fs10
	j	.LBB173_61
.LBB173_60:
	.loc	1 1034 13
	fsgnj.s	fa0, ft1, ft10
.LBB173_61:
	.loc	1 0 13
	ld	a0, -376(s0)
	addi	a0, a0, -127
	ld	a1, -360(s0)
	ld	a2, -384(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	addi	a2, t5, -127
	addi	a2, a2, 1
	srlw	a7, a6, s5
	srlw	a3, s1, s5
	addi	a5, t5, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -480(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_63
	.loc	1 0 13 is_stmt 0
	fmv.s	fa3, fs10
	j	.LBB173_64
.LBB173_63:
	.loc	1 1034 13
	fsgnj.s	fa3, ft1, fs0
.LBB173_64:
	.loc	1 0 13
	ld	a0, -328(s0)
	addi	a0, a0, -127
	ld	a1, -320(s0)
	ld	a2, -336(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	ld	a2, -472(s0)
	addi	a2, a2, 1
	srlw	a7, a6, s11
	srlw	a3, s1, s11
	ld	a4, -464(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -456(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_66
	.loc	1 0 13 is_stmt 0
	fmv.s	fa2, fs10
	j	.LBB173_67
.LBB173_66:
	.loc	1 1034 13
	fsgnj.s	fa2, ft1, fs2
.LBB173_67:
	.loc	1 0 13
	ld	a0, -304(s0)
	addi	a0, a0, -127
	ld	a1, -224(s0)
	ld	a2, -312(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	ld	a2, -448(s0)
	addi	a2, a2, 1
	srlw	a7, a6, ra
	srlw	a3, s1, ra
	ld	a4, -440(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -432(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_69
	.loc	1 0 13 is_stmt 0
	fmv.s	fa4, fs10
	j	.LBB173_70
.LBB173_69:
	.loc	1 1034 13
	fsgnj.s	fa4, ft1, fs4
.LBB173_70:
	.loc	1 0 13
	fsw	ft0, -224(s0)
	ld	a0, -288(s0)
	addi	a0, a0, -127
	ld	a1, -280(s0)
	ld	a2, -296(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	ld	a2, -416(s0)
	addi	a2, a2, 1
	srlw	a7, a6, s7
	srlw	a3, s1, s7
	ld	a4, -400(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -392(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_72
	.loc	1 0 13 is_stmt 0
	fmv.s	ft0, fs10
	j	.LBB173_73
.LBB173_72:
	.loc	1 1034 13
	fsgnj.s	ft0, ft1, fs6
.LBB173_73:
	.loc	1 0 13
	ld	a0, -264(s0)
	addi	a0, a0, -127
	ld	a1, -256(s0)
	ld	a2, -272(s0)
	.loc	1 1034 13 is_stmt 1
	sllw	a1, a1, a2
	ld	a2, -368(s0)
	addi	a2, a2, 1
	srlw	a6, a6, s2
	srlw	a3, s1, s2
	ld	a4, -352(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -344(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a6
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	fsw	ft1, -492(s0)
	bnez	a0, .LBB173_75
	.loc	1 0 13 is_stmt 0
	fmv.s	ft1, fs10
	j	.LBB173_76
.LBB173_75:
	.loc	1 1034 13
	fsgnj.s	ft1, ft1, fs8
.LBB173_76:
	.loc	1 1034 13 is_stmt 1
	fsub.s	ft1, fs9, ft1
	fsgnj.s	ft1, ft1, fs8
	fadd.s	fs9, ft1, fs10
	lui	a0, 798720
	fmv.w.x	fs8, a0
	fle.s	a0, fs9, fs8
	fmv.s	ft1, fs8
	bnez	a0, .LBB173_78
	.loc	1 0 13 is_stmt 0
	fmv.s	ft1, fs9
.LBB173_78:
	.loc	1 1034 13 is_stmt 1
	fsub.s	ft0, fs7, ft0
	fsgnj.s	ft0, ft0, fs6
	fadd.s	ft0, ft0, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fs6, fs8
	bnez	a0, .LBB173_80
	.loc	1 0 13 is_stmt 0
	fmv.s	fs6, ft0
.LBB173_80:
	.loc	1 1034 13 is_stmt 1
	fsub.s	fa4, fs5, fa4
	fsgnj.s	fa4, fa4, fs4
	fadd.s	ft0, fa4, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fa4, fs8
	flw	fs9, -496(s0)
	beqz	a0, .LBB173_142
	fsub.s	fa2, fs3, fa2
	fsgnj.s	fa2, fa2, fs2
	fadd.s	ft0, fa2, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fa2, fs8
	beqz	a0, .LBB173_143
.LBB173_82:
	fsub.s	fa3, fs1, fa3
	fsgnj.s	fa3, fa3, fs0
	fadd.s	ft0, fa3, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fa3, fs8
	beqz	a0, .LBB173_144
.LBB173_83:
	fsub.s	fa0, ft11, fa0
	fsgnj.s	fa0, fa0, ft10
	fadd.s	fa0, fa0, fs10
	fle.s	a0, fa0, fs8
	fmv.s	ft10, fs8
	beqz	a0, .LBB173_145
.LBB173_84:
	fsub.s	fa5, ft9, fa5
	fsgnj.s	fa5, fa5, ft8
	fadd.s	fa0, fa5, fs10
	fle.s	a0, fa0, fs8
	fmv.s	fa5, fs8
	beqz	a0, .LBB173_146
.LBB173_85:
	fsub.s	fa0, fa7, fs11
	fsgnj.s	fa0, fa0, fa6
	fadd.s	fa0, fa0, fs10
	fle.s	a0, fa0, fs8
	beqz	a0, .LBB173_147
.LBB173_86:
	.loc	1 0 13 is_stmt 0
	lui	a0, 274400
	fmv.w.x	fa6, a0
	.loc	1 1034 13
	fle.s	a0, fa6, ft1
	fmv.s	ft0, fa6
	fmv.s	fs10, ft2
	beqz	a0, .LBB173_148
.LBB173_87:
	fle.s	a0, fa6, fs6
	fmv.s	ft8, fa6
	beqz	a0, .LBB173_149
.LBB173_88:
	fle.s	a0, fa6, fa4
	fmv.s	ft9, fa6
	beqz	a0, .LBB173_150
.LBB173_89:
	fle.s	a0, fa6, fa2
	fmv.s	fa0, fa6
	beqz	a0, .LBB173_151
.LBB173_90:
	fle.s	a0, fa6, fa3
	fmv.s	fa4, fa6
	beqz	a0, .LBB173_152
.LBB173_91:
	fle.s	a0, fa6, ft10
	fmv.s	fa2, fa6
	beqz	a0, .LBB173_153
.LBB173_92:
	fle.s	a0, fa6, fa5
	fmv.s	fa3, fa6
	beqz	a0, .LBB173_154
.LBB173_93:
	fle.s	a0, fa6, fs8
	fmv.s	fa5, fa6
	bnez	a0, .LBB173_95
.LBB173_94:
	.loc	1 0 13
	fmv.s	fa5, fs8
.LBB173_95:
	.loc	1 1034 13 is_stmt 1
	fcvt.l.s	a0, ft0, rtz
	.loc	1 1036 13
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	fa7, a0
	.loc	1 1037 13
	fmv.x.w	a6, fa7
	srliw	a7, a6, 23
	addi	a0, a7, -128
	sltu	a1, a7, a0
	addi	a1, a1, -1
	and	s9, a1, a0
	bltu	s9, t4, .LBB173_97
	.loc	1 0 13 is_stmt 0
	li	s9, 31
.LBB173_97:
	fcvt.l.s	a0, ft8, rtz
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft8, a0
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	ra, ft8
	srliw	t1, ra, 23
	addi	a0, t1, -128
	sltu	a1, t1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	flw	fs8, -500(s0)
	bltu	a0, t4, .LBB173_99
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_99:
	sd	a0, -336(s0)
	fcvt.l.s	a0, ft9, rtz
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft9, a0
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	s10, ft9
	srliw	t2, s10, 23
	addi	a0, t2, -128
	sltu	a1, t2, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_101
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_101:
	sd	a0, -328(s0)
	fcvt.l.s	a0, fa0, rtz
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft10, a0
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	s5, ft10
	srliw	s1, s5, 23
	addi	a0, s1, -128
	sltu	a1, s1, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_103
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_103:
	sd	a0, -320(s0)
	fcvt.l.s	a0, fa4, rtz
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	ft11, a0
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	s2, ft11
	srliw	a4, s2, 23
	addi	a0, a4, -128
	sltu	a1, a4, a0
	addi	a1, a1, -1
	and	a0, a0, a1
	bltu	a0, t4, .LBB173_105
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB173_105:
	sd	a0, -304(s0)
	fcvt.l.s	a0, fa2, rtz
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a0, a1
	fcvt.s.lu	fs0, a0
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	a0, fs0
	sd	a0, -280(s0)
	srliw	a0, a0, 23
	addi	a1, a0, -128
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_107
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_107:
	sd	a1, -296(s0)
	fcvt.l.s	a1, fa3, rtz
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a1, a2
	fcvt.s.lu	fs1, a1
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	a1, fs1
	sd	a1, -264(s0)
	srliw	a1, a1, 23
	addi	a2, a1, -128
	sltu	a5, a1, a2
	addi	a5, a5, -1
	and	a2, a2, a5
	bltu	a2, t4, .LBB173_109
	.loc	1 0 13 is_stmt 0
	li	a2, 31
.LBB173_109:
	sd	a2, -288(s0)
	fcvt.l.s	a2, fa5, rtz
	sgtz	a5, a2
	neg	a5, a5
	and	a2, a2, a5
	fcvt.s.lu	fs2, a2
	.loc	1 1037 13 is_stmt 1
	fmv.x.w	a2, fs2
	sd	a2, -256(s0)
	srliw	a2, a2, 23
	addi	a5, a2, -128
	sltu	a3, a2, a5
	addi	a3, a3, -1
	and	a3, a3, a5
	bgeu	a3, t4, .LBB173_155
	.loc	1 0 13 is_stmt 0
	sd	a3, -272(s0)
	.loc	1 1037 13
	addi	t0, a7, -127
	sgtz	a3, t0
	neg	a3, a3
	and	s3, a3, t0
	bge	s3, t4, .LBB173_156
.LBB173_111:
	addi	t3, t1, -127
	sgtz	a3, t3
	neg	a3, a3
	and	a5, a3, t3
	bge	a5, t4, .LBB173_157
.LBB173_112:
	addi	t2, t2, -127
	sgtz	a3, t2
	neg	a3, a3
	and	t1, a3, t2
	bge	t1, t4, .LBB173_158
.LBB173_113:
	addi	a7, s1, -127
	sgtz	a3, a7
	neg	a3, a3
	and	s6, a3, a7
	bge	s6, t4, .LBB173_159
.LBB173_114:
	addi	s1, a4, -127
	sgtz	a3, s1
	neg	a3, a3
	and	t5, a3, s1
	bge	t5, t4, .LBB173_160
.LBB173_115:
	addi	t6, a0, -127
	sgtz	a4, t6
	neg	a4, a4
	and	s11, a4, t6
	bge	s11, t4, .LBB173_161
.LBB173_116:
	addi	s4, a1, -127
	sgtz	a1, s4
	neg	a1, a1
	and	s7, a1, s4
	bge	s7, t4, .LBB173_162
.LBB173_117:
	addi	s8, a2, -127
	sgtz	a1, s8
	neg	a1, a1
	and	a0, a1, s8
	blt	a0, t4, .LBB173_119
.LBB173_118:
	.loc	1 0 13
	li	a0, 31
.LBB173_119:
	sd	a0, -312(s0)
	.loc	1 1037 13 is_stmt 1
	seqz	a1, t0
	sllw	a2, a6, s9
	addi	t0, t0, 1
	ld	a3, -208(s0)
	and	a2, a2, a3
	snez	a2, a2
	or	a1, a1, a2
	lui	a0, 1024
	srlw	a2, a0, s3
	srlw	a4, a3, s3
	mv	s3, a3
	and	a4, a4, a6
	lui	t4, 790528
	addw	a3, a6, t4
	seqz	a0, t0
	srli	a3, a3, 26
	addi	a0, a0, -1
	and	a0, a0, a2
	xor	a0, a0, a4
	seqz	a0, a0
	sltiu	a2, a3, 3
	and	a0, a0, a2
	and	a0, a0, a1
	lui	a1, 784384
	fmv.w.x	fa5, a1
	beqz	a0, .LBB173_121
	fadd.s	fa4, fa7, fa5
	fabs.s	fa7, fa4
.LBB173_121:
	seqz	a0, t3
	ld	a1, -336(s0)
	sllw	a1, ra, a1
	addi	t3, t3, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	lui	a6, 1024
	srlw	a1, a6, a5
	srlw	a2, s3, a5
	and	a2, a2, ra
	addw	a3, ra, t4
	seqz	a4, t3
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_123
	fadd.s	fa4, ft8, fa5
	fabs.s	ft8, fa4
.LBB173_123:
	seqz	a0, t2
	ld	a1, -328(s0)
	sllw	a1, s10, a1
	addi	t2, t2, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	srlw	a1, a6, t1
	srlw	a2, s3, t1
	and	a2, a2, s10
	addw	a3, s10, t4
	seqz	a4, t2
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_125
	fadd.s	fa4, ft9, fa5
	fabs.s	ft9, fa4
.LBB173_125:
	seqz	a0, a7
	ld	a1, -320(s0)
	sllw	a1, s5, a1
	addi	a7, a7, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	srlw	a1, a6, s6
	srlw	a2, s3, s6
	and	a2, a2, s5
	addw	a3, s5, t4
	seqz	a4, a7
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_127
	fadd.s	fa4, ft10, fa5
	fabs.s	ft10, fa4
.LBB173_127:
	seqz	a0, s1
	ld	a1, -304(s0)
	sllw	a1, s2, a1
	addi	s1, s1, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	srlw	a1, a6, t5
	srlw	a2, s3, t5
	and	a2, a2, s2
	addw	a3, s2, t4
	seqz	a4, s1
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_129
	fadd.s	fa4, ft11, fa5
	fabs.s	ft11, fa4
.LBB173_129:
	.loc	1 0 13 is_stmt 0
	ld	a1, -296(s0)
	.loc	1 1037 13
	seqz	a0, t6
	ld	a3, -280(s0)
	sllw	a1, a3, a1
	addi	t6, t6, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	srlw	a1, a6, s11
	srlw	a2, s3, s11
	and	a2, a2, a3
	addw	a3, a3, t4
	seqz	a4, t6
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_131
	fadd.s	fa4, fs0, fa5
	fabs.s	fs0, fa4
.LBB173_131:
	.loc	1 0 13
	ld	a1, -288(s0)
	.loc	1 1037 13
	seqz	a0, s4
	ld	a3, -264(s0)
	sllw	a1, a3, a1
	addi	s4, s4, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	srlw	a1, a6, s7
	srlw	a2, s3, s7
	and	a2, a2, a3
	addw	a3, a3, t4
	seqz	a4, s4
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_133
	fadd.s	fa4, fs1, fa5
	fabs.s	fs1, fa4
.LBB173_133:
	seqz	a0, s8
	ld	a3, -256(s0)
	ld	a1, -272(s0)
	sllw	a1, a3, a1
	addi	s8, s8, 1
	and	a1, a1, s3
	snez	a1, a1
	or	a0, a0, a1
	ld	a2, -312(s0)
	srlw	a1, a6, a2
	srlw	a2, s3, a2
	and	a2, a2, a3
	addw	a3, a3, t4
	seqz	a4, s8
	srli	a3, a3, 26
	addi	a4, a4, -1
	and	a1, a1, a4
	xor	a1, a1, a2
	seqz	a1, a1
	sltiu	a2, a3, 3
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_163
	fle.s	a0, fa6, fa7
	fmv.s	fa5, fa6
	beqz	a0, .LBB173_164
.LBB173_135:
	fle.s	a0, fa6, ft8
	fmv.s	fa4, fa6
	beqz	a0, .LBB173_165
.LBB173_136:
	fle.s	a0, fa6, ft9
	fmv.s	fa3, fa6
	beqz	a0, .LBB173_166
.LBB173_137:
	fle.s	a0, fa6, ft10
	fmv.s	fa2, fa6
	beqz	a0, .LBB173_167
.LBB173_138:
	fle.s	a0, fa6, ft11
	fmv.s	fa0, fa6
	beqz	a0, .LBB173_168
.LBB173_139:
	fle.s	a0, fa6, fs0
	fmv.s	ft0, fa6
	beqz	a0, .LBB173_169
.LBB173_140:
	fle.s	a0, fa6, fs1
	fmv.s	fa7, fa6
	beqz	a0, .LBB173_170
.LBB173_141:
	fle.s	a0, fa6, fs2
	bnez	a0, .LBB173_3
	j	.LBB173_171
.LBB173_142:
	.loc	1 0 13
	fmv.s	fa4, ft0
	.loc	1 1034 13 is_stmt 1
	fsub.s	fa2, fs3, fa2
	fsgnj.s	fa2, fa2, fs2
	fadd.s	ft0, fa2, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fa2, fs8
	bnez	a0, .LBB173_82
.LBB173_143:
	.loc	1 0 13 is_stmt 0
	fmv.s	fa2, ft0
	.loc	1 1034 13
	fsub.s	fa3, fs1, fa3
	fsgnj.s	fa3, fa3, fs0
	fadd.s	ft0, fa3, fs10
	fle.s	a0, ft0, fs8
	fmv.s	fa3, fs8
	bnez	a0, .LBB173_83
.LBB173_144:
	.loc	1 0 13
	fmv.s	fa3, ft0
	.loc	1 1034 13
	fsub.s	fa0, ft11, fa0
	fsgnj.s	fa0, fa0, ft10
	fadd.s	fa0, fa0, fs10
	fle.s	a0, fa0, fs8
	fmv.s	ft10, fs8
	bnez	a0, .LBB173_84
.LBB173_145:
	.loc	1 0 13
	fmv.s	ft10, fa0
	.loc	1 1034 13
	fsub.s	fa5, ft9, fa5
	fsgnj.s	fa5, fa5, ft8
	fadd.s	fa0, fa5, fs10
	fle.s	a0, fa0, fs8
	fmv.s	fa5, fs8
	bnez	a0, .LBB173_85
.LBB173_146:
	.loc	1 0 13
	fmv.s	fa5, fa0
	.loc	1 1034 13
	fsub.s	fa0, fa7, fs11
	fsgnj.s	fa0, fa0, fa6
	fadd.s	fa0, fa0, fs10
	fle.s	a0, fa0, fs8
	bnez	a0, .LBB173_86
.LBB173_147:
	.loc	1 0 13
	fmv.s	fs8, fa0
	lui	a0, 274400
	fmv.w.x	fa6, a0
	.loc	1 1034 13
	fle.s	a0, fa6, ft1
	fmv.s	ft0, fa6
	fmv.s	fs10, ft2
	bnez	a0, .LBB173_87
.LBB173_148:
	.loc	1 0 13
	fmv.s	ft0, ft1
	.loc	1 1034 13
	fle.s	a0, fa6, fs6
	fmv.s	ft8, fa6
	bnez	a0, .LBB173_88
.LBB173_149:
	.loc	1 0 13
	fmv.s	ft8, fs6
	.loc	1 1034 13
	fle.s	a0, fa6, fa4
	fmv.s	ft9, fa6
	bnez	a0, .LBB173_89
.LBB173_150:
	.loc	1 0 13
	fmv.s	ft9, fa4
	.loc	1 1034 13
	fle.s	a0, fa6, fa2
	fmv.s	fa0, fa6
	bnez	a0, .LBB173_90
.LBB173_151:
	.loc	1 0 13
	fmv.s	fa0, fa2
	.loc	1 1034 13
	fle.s	a0, fa6, fa3
	fmv.s	fa4, fa6
	bnez	a0, .LBB173_91
.LBB173_152:
	.loc	1 0 13
	fmv.s	fa4, fa3
	.loc	1 1034 13
	fle.s	a0, fa6, ft10
	fmv.s	fa2, fa6
	bnez	a0, .LBB173_92
.LBB173_153:
	.loc	1 0 13
	fmv.s	fa2, ft10
	.loc	1 1034 13
	fle.s	a0, fa6, fa5
	fmv.s	fa3, fa6
	bnez	a0, .LBB173_93
.LBB173_154:
	.loc	1 0 13
	fmv.s	fa3, fa5
	.loc	1 1034 13
	fle.s	a0, fa6, fs8
	fmv.s	fa5, fa6
	beqz	a0, .LBB173_94
	j	.LBB173_95
.LBB173_155:
	.loc	1 0 13
	li	a3, 31
	sd	a3, -272(s0)
	.loc	1 1037 13 is_stmt 1
	addi	t0, a7, -127
	sgtz	a3, t0
	neg	a3, a3
	and	s3, a3, t0
	blt	s3, t4, .LBB173_111
.LBB173_156:
	.loc	1 0 13 is_stmt 0
	li	s3, 31
	.loc	1 1037 13
	addi	t3, t1, -127
	sgtz	a3, t3
	neg	a3, a3
	and	a5, a3, t3
	blt	a5, t4, .LBB173_112
.LBB173_157:
	.loc	1 0 13
	li	a5, 31
	.loc	1 1037 13
	addi	t2, t2, -127
	sgtz	a3, t2
	neg	a3, a3
	and	t1, a3, t2
	blt	t1, t4, .LBB173_113
.LBB173_158:
	.loc	1 0 13
	li	t1, 31
	.loc	1 1037 13
	addi	a7, s1, -127
	sgtz	a3, a7
	neg	a3, a3
	and	s6, a3, a7
	blt	s6, t4, .LBB173_114
.LBB173_159:
	.loc	1 0 13
	li	s6, 31
	.loc	1 1037 13
	addi	s1, a4, -127
	sgtz	a3, s1
	neg	a3, a3
	and	t5, a3, s1
	blt	t5, t4, .LBB173_115
.LBB173_160:
	.loc	1 0 13
	li	t5, 31
	.loc	1 1037 13
	addi	t6, a0, -127
	sgtz	a4, t6
	neg	a4, a4
	and	s11, a4, t6
	blt	s11, t4, .LBB173_116
.LBB173_161:
	.loc	1 0 13
	li	s11, 31
	.loc	1 1037 13
	addi	s4, a1, -127
	sgtz	a1, s4
	neg	a1, a1
	and	s7, a1, s4
	blt	s7, t4, .LBB173_117
.LBB173_162:
	.loc	1 0 13
	li	s7, 31
	.loc	1 1037 13
	addi	s8, a2, -127
	sgtz	a1, s8
	neg	a1, a1
	and	a0, a1, s8
	bge	a0, t4, .LBB173_118
	j	.LBB173_119
.LBB173_163:
	fadd.s	fa5, fs2, fa5
	fabs.s	fs2, fa5
	fle.s	a0, fa6, fa7
	fmv.s	fa5, fa6
	bnez	a0, .LBB173_135
.LBB173_164:
	.loc	1 0 13
	fmv.s	fa5, fa7
	.loc	1 1037 13
	fle.s	a0, fa6, ft8
	fmv.s	fa4, fa6
	bnez	a0, .LBB173_136
.LBB173_165:
	.loc	1 0 13
	fmv.s	fa4, ft8
	.loc	1 1037 13
	fle.s	a0, fa6, ft9
	fmv.s	fa3, fa6
	bnez	a0, .LBB173_137
.LBB173_166:
	.loc	1 0 13
	fmv.s	fa3, ft9
	.loc	1 1037 13
	fle.s	a0, fa6, ft10
	fmv.s	fa2, fa6
	bnez	a0, .LBB173_138
.LBB173_167:
	.loc	1 0 13
	fmv.s	fa2, ft10
	.loc	1 1037 13
	fle.s	a0, fa6, ft11
	fmv.s	fa0, fa6
	bnez	a0, .LBB173_139
.LBB173_168:
	.loc	1 0 13
	fmv.s	fa0, ft11
	.loc	1 1037 13
	fle.s	a0, fa6, fs0
	fmv.s	ft0, fa6
	bnez	a0, .LBB173_140
.LBB173_169:
	.loc	1 0 13
	fmv.s	ft0, fs0
	.loc	1 1037 13
	fle.s	a0, fa6, fs1
	fmv.s	fa7, fa6
	bnez	a0, .LBB173_141
.LBB173_170:
	.loc	1 0 13
	fmv.s	fa7, fs1
	.loc	1 1037 13
	fle.s	a0, fa6, fs2
	beqz	a0, .LBB173_171
	j	.LBB173_3
.LBB173_171:
	.loc	1 0 13
	fmv.s	fa6, fs2
	j	.LBB173_3
.LBB173_172:
	lui	a0, 271424
	fmv.w.x	fa5, a0
	.loc	1 1039 13 is_stmt 1
	fdiv.s	fa3, ft7, fa5
	ld	a0, -536(s0)
	fmv.w.x	fa4, a0
	.loc	1 1040 13
	fdiv.s	ft7, fa3, fa4
	fabs.s	fa3, ft7
	flt.s	a0, fa3, fs9
	fmv.s	fa6, ft7
	beqz	a0, .LBB173_174
	fcvt.w.s	a0, ft7, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	fa6, fa3, ft7
.LBB173_174:
	.loc	1 0 0 is_stmt 0
	fdiv.s	fa3, ft6, fa5
	.loc	1 1040 13
	fdiv.s	ft6, fa3, fa4
	fabs.s	fa3, ft6
	flt.s	a0, fa3, fs9
	fmv.s	fa7, ft6
	flw	fa2, -492(s0)
	bnez	a0, .LBB173_230
	.loc	1 0 0
	fdiv.s	fa3, ft5, fa5
	.loc	1 1040 13
	fdiv.s	ft5, fa3, fa4
	fabs.s	fa3, ft5
	flt.s	a0, fa3, fs9
	fmv.s	ft8, ft5
	bnez	a0, .LBB173_231
.LBB173_176:
	.loc	1 0 0
	fdiv.s	fa3, ft4, fa5
	.loc	1 1040 13
	fdiv.s	ft4, fa3, fa4
	fabs.s	fa3, ft4
	flt.s	a0, fa3, fs9
	fmv.s	ft9, ft4
	bnez	a0, .LBB173_232
.LBB173_177:
	.loc	1 0 0
	fdiv.s	fa3, ft3, fa5
	.loc	1 1040 13
	fdiv.s	ft3, fa3, fa4
	fabs.s	fa3, ft3
	flt.s	a0, fa3, fs9
	fmv.s	ft10, ft3
	bnez	a0, .LBB173_233
.LBB173_178:
	.loc	1 0 0
	fdiv.s	fa3, ft1, fa5
	.loc	1 1040 13
	fdiv.s	ft2, fa3, fa4
	fabs.s	fa3, ft2
	flt.s	a0, fa3, fs9
	fmv.s	fs0, ft2
	bnez	a0, .LBB173_234
.LBB173_179:
	.loc	1 0 0
	fdiv.s	fa3, ft0, fa5
	.loc	1 1040 13
	fdiv.s	ft11, fa3, fa4
	fabs.s	fa3, ft11
	flt.s	a0, fa3, fs9
	fmv.s	fs2, ft11
	bnez	a0, .LBB173_235
.LBB173_180:
	.loc	1 0 0
	fdiv.s	fa5, fa0, fa5
	.loc	1 1040 13
	fdiv.s	fs1, fa5, fa4
	fabs.s	fa5, fs1
	flt.s	a0, fa5, fs9
	fmv.s	fs3, fs1
	beqz	a0, .LBB173_182
.LBB173_181:
	fcvt.w.s	a0, fs1, rmm
	fcvt.s.w	fa5, a0, rmm
	fsgnj.s	fs3, fa5, fs1
.LBB173_182:
	fmv.x.w	a0, fa6
	sd	a0, -448(s0)
	slli	a0, a0, 33
	srli	t1, a0, 56
	addi	a0, t1, -128
	sltu	a1, t1, a0
	addi	a1, a1, -1
	and	s2, a1, a0
	li	t4, 31
	bltu	s2, t4, .LBB173_184
	.loc	1 0 13
	li	s2, 31
.LBB173_184:
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, fa7
	sd	a1, -416(s0)
	slli	a1, a1, 33
	srli	s11, a1, 56
	addi	a1, s11, -128
	sltu	a2, s11, a1
	addi	a2, a2, -1
	and	a7, a2, a1
	bltu	a7, t4, .LBB173_186
	.loc	1 0 13 is_stmt 0
	li	a7, 31
.LBB173_186:
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a4, ft8
	sd	a4, -376(s0)
	slli	a4, a4, 33
	srli	t6, a4, 56
	addi	a1, t6, -128
	sltu	a2, t6, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_188
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_188:
	sd	a1, -392(s0)
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, ft9
	sd	a1, -328(s0)
	slli	a1, a1, 33
	srli	a0, a1, 56
	addi	a1, a0, -128
	sd	a0, -344(s0)
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_190
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_190:
	sd	a1, -352(s0)
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, ft10
	sd	a1, -288(s0)
	slli	a1, a1, 33
	srli	a0, a1, 56
	addi	a1, a0, -128
	sd	a0, -296(s0)
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_192
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_192:
	sd	a1, -304(s0)
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, fs0
	sd	a1, -264(s0)
	slli	a1, a1, 33
	srli	a0, a1, 56
	addi	a1, a0, -128
	sd	a0, -272(s0)
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_194
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_194:
	sd	a1, -280(s0)
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, fs2
	sd	a1, -240(s0)
	slli	a1, a1, 33
	srli	a0, a1, 56
	addi	a1, a0, -128
	sd	a0, -248(s0)
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_196
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_196:
	sd	a1, -256(s0)
	.loc	1 1040 13 is_stmt 1
	fmv.x.w	a1, fs3
	sd	a1, -216(s0)
	slli	a1, a1, 33
	srli	a0, a1, 56
	addi	a1, a0, -128
	sd	a0, -224(s0)
	sltu	a2, a0, a1
	addi	a2, a2, -1
	and	a1, a1, a2
	bltu	a1, t4, .LBB173_198
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_198:
	sd	a1, -232(s0)
	fmv.x.w	s10, ft7
	slli	a3, s10, 33
	srli	a3, a3, 56
	addi	t2, a3, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a1, t2
	neg	a1, a1
	and	s5, a1, t2
	blt	s5, t4, .LBB173_200
	.loc	1 0 13 is_stmt 0
	li	s5, 31
.LBB173_200:
	fmv.x.w	s8, ft6
	slli	a1, s8, 33
	srli	a6, a1, 56
	addi	a5, a6, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a5
	neg	a2, a2
	and	a5, a5, a2
	blt	a5, t4, .LBB173_202
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB173_202:
	fmv.x.w	s3, ft5
	slli	a2, s3, 33
	srli	s7, a2, 56
	addi	a0, s7, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a0
	neg	a2, a2
	and	s6, a2, a0
	blt	s6, t4, .LBB173_204
	.loc	1 0 13 is_stmt 0
	li	s6, 31
.LBB173_204:
	fmv.x.w	a2, ft4
	sd	a2, -464(s0)
	slli	a2, a2, 33
	srli	t5, a2, 56
	addi	a0, t5, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a0
	neg	a2, a2
	and	t0, a2, a0
	blt	t0, t4, .LBB173_206
	.loc	1 0 13 is_stmt 0
	li	t0, 31
.LBB173_206:
	fmv.x.w	a2, ft3
	sd	a2, -432(s0)
	slli	a2, a2, 33
	srli	a2, a2, 56
	sd	a2, -440(s0)
	addi	a0, a2, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a0
	neg	a2, a2
	sd	a0, -456(s0)
	and	ra, a2, a0
	blt	ra, t4, .LBB173_208
	.loc	1 0 13 is_stmt 0
	li	ra, 31
.LBB173_208:
	fmv.x.w	a2, ft2
	sd	a2, -400(s0)
	slli	a2, a2, 33
	srli	a2, a2, 56
	sd	a2, -408(s0)
	addi	a0, a2, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a0
	neg	a2, a2
	sd	a0, -424(s0)
	and	s9, a2, a0
	blt	s9, t4, .LBB173_210
	.loc	1 0 13 is_stmt 0
	li	s9, 31
.LBB173_210:
	fmv.x.w	a2, ft11
	sd	a2, -360(s0)
	slli	a2, a2, 33
	srli	a2, a2, 56
	sd	a2, -368(s0)
	addi	a0, a2, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	a2, a0
	neg	a2, a2
	sd	a0, -384(s0)
	and	s4, a2, a0
	blt	s4, t4, .LBB173_212
	.loc	1 0 13 is_stmt 0
	li	s4, 31
.LBB173_212:
	fmv.x.w	s1, fs1
	sd	s1, -312(s0)
	slli	s1, s1, 33
	srli	s1, s1, 56
	sd	s1, -320(s0)
	addi	a0, s1, -127
	.loc	1 1040 13 is_stmt 1
	sgtz	s1, a0
	neg	s1, s1
	sd	a0, -336(s0)
	and	t3, s1, a0
	blt	t3, t4, .LBB173_214
	.loc	1 0 13 is_stmt 0
	li	t3, 31
.LBB173_214:
	addi	a4, t1, -127
	ld	a0, -448(s0)
	.loc	1 1040 13 is_stmt 1
	sllw	s1, a0, s2
	addi	t2, t2, 1
	lui	a0, 1024
	srlw	a2, a0, s5
	ld	a0, -208(s0)
	srlw	a1, a0, s5
	addi	a3, a3, -126
	seqz	a4, a4
	and	s1, s1, a0
	seqz	a0, t2
	and	a1, a1, s10
	snez	s1, s1
	addi	a0, a0, -1
	or	a4, a4, s1
	and	a0, a0, a2
	xor	a0, a0, a1
	seqz	a0, a0
	sltiu	a1, a3, 24
	and	a0, a0, a1
	and	a0, a0, a4
	beqz	a0, .LBB173_216
	fsgnj.s	fa5, fa2, ft7
	fsub.s	fa6, fa6, fa5
.LBB173_216:
	.loc	1 0 13 is_stmt 0
	addi	a0, s11, -127
	ld	a1, -416(s0)
	.loc	1 1040 13
	sllw	s1, a1, a7
	addi	a2, a6, -127
	addi	a2, a2, 1
	lui	a3, 1024
	srlw	a3, a3, a5
	ld	a1, -208(s0)
	srlw	a4, a1, a5
	addi	a5, a6, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	and	a4, a4, s8
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a3
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_218
	fsgnj.s	fa5, fa2, ft6
	fsub.s	fa7, fa7, fa5
.LBB173_218:
	.loc	1 0 13
	addi	a0, t6, -127
	ld	a1, -376(s0)
	ld	a2, -392(s0)
	.loc	1 1040 13
	sllw	s1, a1, a2
	addi	a2, s7, -127
	addi	a2, a2, 1
	lui	a6, 1024
	srlw	a3, a6, s6
	ld	a1, -208(s0)
	srlw	a4, a1, s6
	addi	a5, s7, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	and	a4, a4, s3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a3
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_220
	fsgnj.s	fa5, fa2, ft5
	fsub.s	ft8, ft8, fa5
.LBB173_220:
	.loc	1 0 13
	ld	a0, -344(s0)
	addi	a0, a0, -127
	ld	a1, -328(s0)
	ld	a2, -352(s0)
	.loc	1 1040 13
	sllw	a1, a1, a2
	addi	a2, t5, -127
	addi	a2, a2, 1
	srlw	a7, a6, t0
	ld	s1, -208(s0)
	srlw	a3, s1, t0
	addi	a5, t5, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -464(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_222
	fsgnj.s	fa5, fa2, ft4
	fsub.s	ft9, ft9, fa5
.LBB173_222:
	.loc	1 0 13
	ld	a0, -296(s0)
	addi	a0, a0, -127
	ld	a1, -288(s0)
	ld	a2, -304(s0)
	.loc	1 1040 13
	sllw	a1, a1, a2
	ld	a2, -456(s0)
	addi	a2, a2, 1
	srlw	a7, a6, ra
	srlw	a3, s1, ra
	ld	a4, -440(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -432(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_224
	fsgnj.s	fa5, fa2, ft3
	fsub.s	ft10, ft10, fa5
.LBB173_224:
	.loc	1 0 13
	ld	a0, -272(s0)
	addi	a0, a0, -127
	ld	a1, -264(s0)
	ld	a2, -280(s0)
	.loc	1 1040 13
	sllw	a1, a1, a2
	ld	a2, -424(s0)
	addi	a2, a2, 1
	srlw	a7, a6, s9
	srlw	a3, s1, s9
	ld	a4, -408(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -400(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_226
	fsgnj.s	fa5, fa2, ft2
	fsub.s	fs0, fs0, fa5
.LBB173_226:
	.loc	1 0 13
	ld	a0, -248(s0)
	addi	a0, a0, -127
	ld	a1, -240(s0)
	ld	a2, -256(s0)
	.loc	1 1040 13
	sllw	a1, a1, a2
	ld	a2, -384(s0)
	addi	a2, a2, 1
	srlw	a7, a6, s4
	srlw	a3, s1, s4
	ld	a4, -368(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -360(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a7
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB173_228
	fsgnj.s	fa5, fa2, ft11
	fsub.s	fs2, fs2, fa5
.LBB173_228:
	.loc	1 0 13
	ld	a0, -224(s0)
	addi	a0, a0, -127
	ld	a1, -216(s0)
	ld	a2, -232(s0)
	.loc	1 1040 13
	sllw	a1, a1, a2
	ld	a2, -336(s0)
	addi	a2, a2, 1
	srlw	a6, a6, t3
	srlw	a3, s1, t3
	ld	a4, -320(s0)
	addi	a5, a4, -126
	seqz	a0, a0
	and	a1, a1, s1
	seqz	a2, a2
	ld	a4, -312(s0)
	and	a4, a4, a3
	snez	a1, a1
	addi	a2, a2, -1
	or	a0, a0, a1
	and	a2, a2, a6
	xor	a2, a2, a4
	seqz	a1, a2
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_236
	.loc	1 0 13
	fmv.s	fs4, fa2
	j	.LBB173_237
.LBB173_230:
	.loc	1 1040 13
	fcvt.w.s	a0, ft6, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	fa7, fa3, ft6
	.loc	1 0 0
	fdiv.s	fa3, ft5, fa5
	.loc	1 1040 13
	fdiv.s	ft5, fa3, fa4
	fabs.s	fa3, ft5
	flt.s	a0, fa3, fs9
	fmv.s	ft8, ft5
	beqz	a0, .LBB173_176
.LBB173_231:
	fcvt.w.s	a0, ft5, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	ft8, fa3, ft5
	.loc	1 0 0
	fdiv.s	fa3, ft4, fa5
	.loc	1 1040 13
	fdiv.s	ft4, fa3, fa4
	fabs.s	fa3, ft4
	flt.s	a0, fa3, fs9
	fmv.s	ft9, ft4
	beqz	a0, .LBB173_177
.LBB173_232:
	fcvt.w.s	a0, ft4, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	ft9, fa3, ft4
	.loc	1 0 0
	fdiv.s	fa3, ft3, fa5
	.loc	1 1040 13
	fdiv.s	ft3, fa3, fa4
	fabs.s	fa3, ft3
	flt.s	a0, fa3, fs9
	fmv.s	ft10, ft3
	beqz	a0, .LBB173_178
.LBB173_233:
	fcvt.w.s	a0, ft3, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	ft10, fa3, ft3
	.loc	1 0 0
	fdiv.s	fa3, ft1, fa5
	.loc	1 1040 13
	fdiv.s	ft2, fa3, fa4
	fabs.s	fa3, ft2
	flt.s	a0, fa3, fs9
	fmv.s	fs0, ft2
	beqz	a0, .LBB173_179
.LBB173_234:
	fcvt.w.s	a0, ft2, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	fs0, fa3, ft2
	.loc	1 0 0
	fdiv.s	fa3, ft0, fa5
	.loc	1 1040 13
	fdiv.s	ft11, fa3, fa4
	fabs.s	fa3, ft11
	flt.s	a0, fa3, fs9
	fmv.s	fs2, ft11
	beqz	a0, .LBB173_180
.LBB173_235:
	fcvt.w.s	a0, ft11, rmm
	fcvt.s.w	fa3, a0, rmm
	fsgnj.s	fs2, fa3, ft11
	.loc	1 0 0
	fdiv.s	fa5, fa0, fa5
	.loc	1 1040 13
	fdiv.s	fs1, fa5, fa4
	fabs.s	fa5, fs1
	flt.s	a0, fa5, fs9
	fmv.s	fs3, fs1
	bnez	a0, .LBB173_181
	j	.LBB173_182
.LBB173_236:
	.loc	1 0 13
	fmv.s	fs4, fa2
	.loc	1 1040 13
	fsgnj.s	fa5, fa2, fs1
	fsub.s	fs3, fs3, fa5
.LBB173_237:
	.loc	1 1040 13 is_stmt 1
	fsgnj.s	fa5, fa6, ft7
	fmv.w.x	ft1, zero
	fadd.s	fa5, fa5, ft1
	lui	a0, 798720
	fmv.w.x	ft0, a0
	fle.s	a0, fa5, ft0
	fmv.s	fa4, ft0
	beqz	a0, .LBB173_281
	fsgnj.s	fa5, fa7, ft6
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	fa2, ft0
	beqz	a0, .LBB173_282
.LBB173_239:
	fsgnj.s	fa5, ft8, ft5
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	fa0, ft0
	beqz	a0, .LBB173_283
.LBB173_240:
	fsgnj.s	fa5, ft9, ft4
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft4, ft0
	beqz	a0, .LBB173_284
.LBB173_241:
	fsgnj.s	fa5, ft10, ft3
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft3, ft0
	beqz	a0, .LBB173_285
.LBB173_242:
	fsgnj.s	fa5, fs0, ft2
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft5, ft0
	beqz	a0, .LBB173_286
.LBB173_243:
	fsgnj.s	fa5, fs2, ft11
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft6, ft0
	beqz	a0, .LBB173_287
.LBB173_244:
	fsgnj.s	fa5, fs3, fs1
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft7, ft0
	beqz	a0, .LBB173_288
.LBB173_245:
	.loc	1 0 13 is_stmt 0
	lui	a0, 274400
	fmv.w.x	ft2, a0
	.loc	1 1040 13
	fle.s	a0, ft2, fa4
	fmv.s	fa5, ft2
	beqz	a0, .LBB173_289
.LBB173_246:
	fle.s	a0, ft2, fa2
	fmv.s	fa3, ft2
	beqz	a0, .LBB173_290
.LBB173_247:
	fle.s	a0, ft2, fa0
	fmv.s	fa2, ft2
	beqz	a0, .LBB173_291
.LBB173_248:
	fle.s	a0, ft2, ft4
	fmv.s	fa4, ft2
	beqz	a0, .LBB173_292
.LBB173_249:
	fle.s	a0, ft2, ft3
	fmv.s	fa0, ft2
	beqz	a0, .LBB173_293
.LBB173_250:
	fle.s	a0, ft2, ft5
	fmv.s	fa6, ft2
	beqz	a0, .LBB173_294
.LBB173_251:
	fle.s	a0, ft2, ft6
	fmv.s	ft4, ft2
	beqz	a0, .LBB173_295
.LBB173_252:
	fle.s	a0, ft2, ft7
	fmv.s	ft3, ft2
	bnez	a0, .LBB173_254
.LBB173_253:
	.loc	1 0 13
	fmv.s	ft3, ft7
.LBB173_254:
	.loc	1 1040 13 is_stmt 1
	fcvt.l.s	a0, ft3, rtz
	.loc	1 1041 13
	fcvt.s.w	ft3, a0
	.loc	1 1043 13
	fmv.x.w	s11, ft3
	slli	a0, s11, 33
	srli	a7, a0, 56
	addi	a0, a7, -128
	sltu	a1, a7, a0
	addi	a1, a1, -1
	and	t1, a1, a0
	bltu	t1, t4, .LBB173_256
	.loc	1 0 13 is_stmt 0
	li	t1, 31
.LBB173_256:
	fcvt.l.s	a0, ft4, rtz
	fcvt.s.w	ft4, a0
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	s2, ft4
	slli	a4, s2, 33
	srli	a4, a4, 56
	addi	a0, a4, -128
	sltu	a1, a4, a0
	addi	a1, a1, -1
	and	t0, a1, a0
	bltu	t0, t4, .LBB173_258
	.loc	1 0 13 is_stmt 0
	li	t0, 31
.LBB173_258:
	fcvt.l.s	a1, fa6, rtz
	fcvt.s.w	ft5, a1
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a2, ft5
	sd	a2, -336(s0)
	slli	a2, a2, 33
	srli	s10, a2, 56
	addi	a1, s10, -128
	sltu	a5, s10, a1
	addi	a5, a5, -1
	and	a1, a1, a5
	bltu	a1, t4, .LBB173_260
	.loc	1 0 13 is_stmt 0
	li	a1, 31
.LBB173_260:
	sd	a1, -344(s0)
	fcvt.l.s	a1, fa0, rtz
	fcvt.s.w	ft6, a1
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a1, ft6
	sd	a1, -312(s0)
	slli	a1, a1, 33
	srli	s7, a1, 56
	addi	a5, s7, -128
	sltu	s1, s7, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	bltu	a5, t4, .LBB173_262
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB173_262:
	sd	a5, -328(s0)
	fcvt.l.s	a5, fa4, rtz
	fcvt.s.w	ft7, a5
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a5, ft7
	sd	a5, -288(s0)
	slli	a5, a5, 33
	srli	s4, a5, 56
	addi	a5, s4, -128
	sltu	s1, s4, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	bltu	a5, t4, .LBB173_264
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB173_264:
	sd	a5, -304(s0)
	fcvt.l.s	a5, fa2, rtz
	fcvt.s.w	fa6, a5
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a5, fa6
	sd	a5, -272(s0)
	slli	a5, a5, 33
	srli	a2, a5, 56
	addi	a5, a2, -128
	sltu	s1, a2, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	bltu	a5, t4, .LBB173_266
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB173_266:
	sd	a5, -280(s0)
	fcvt.l.s	a5, fa3, rtz
	fcvt.s.w	fa7, a5
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a5, fa7
	sd	a5, -248(s0)
	slli	a5, a5, 33
	srli	a1, a5, 56
	addi	a5, a1, -128
	sltu	s1, a1, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	bltu	a5, t4, .LBB173_268
	.loc	1 0 13 is_stmt 0
	li	a5, 31
.LBB173_268:
	sd	a5, -256(s0)
	fcvt.l.s	a5, fa5, rtz
	fcvt.s.w	ft8, a5
	.loc	1 1043 13 is_stmt 1
	fmv.x.w	a5, ft8
	sd	a5, -224(s0)
	slli	a5, a5, 33
	srli	a0, a5, 56
	addi	a5, a0, -128
	sltu	s1, a0, a5
	addi	s1, s1, -1
	and	a5, a5, s1
	bgeu	a5, t4, .LBB173_296
	.loc	1 0 13 is_stmt 0
	sd	a5, -232(s0)
	.loc	1 1043 13
	addi	t6, a7, -127
	sgtz	a5, t6
	neg	a5, a5
	and	t2, a5, t6
	bge	t2, t4, .LBB173_297
.LBB173_270:
	addi	s6, a4, -127
	sgtz	a5, s6
	neg	a5, a5
	and	t5, a5, s6
	bge	t5, t4, .LBB173_298
.LBB173_271:
	addi	a6, s10, -127
	sgtz	a5, a6
	neg	a5, a5
	and	s9, a5, a6
	bge	s9, t4, .LBB173_299
.LBB173_272:
	addi	a3, s7, -127
	sgtz	a5, a3
	neg	a5, a5
	and	s8, a5, a3
	bge	s8, t4, .LBB173_300
.LBB173_273:
	addi	a3, s4, -127
	sgtz	a5, a3
	neg	a5, a5
	and	s5, a5, a3
	bge	s5, t4, .LBB173_301
.LBB173_274:
	addi	a3, a2, -127
	sgtz	a5, a3
	neg	a5, a5
	sd	a3, -352(s0)
	and	t3, a5, a3
	bge	t3, t4, .LBB173_302
.LBB173_275:
	addi	a3, a1, -127
	sgtz	a5, a3
	neg	a5, a5
	sd	a3, -320(s0)
	and	s3, a5, a3
	blt	s3, t4, .LBB173_277
.LBB173_276:
	.loc	1 0 13
	li	s3, 31
.LBB173_277:
	sd	a2, -264(s0)
	sd	a1, -240(s0)
	sd	a0, -216(s0)
	.loc	1 1043 13 is_stmt 1
	addi	a1, a0, -127
	sgtz	a0, a1
	neg	a0, a0
	sd	a1, -296(s0)
	and	ra, a0, a1
	blt	ra, t4, .LBB173_279
	.loc	1 0 13 is_stmt 0
	li	ra, 31
.LBB173_279:
	.loc	1 1043 13 is_stmt 1
	sllw	a0, s11, t1
	ld	a2, -208(s0)
	srlw	a3, a2, t2
	and	a3, a3, s11
	seqz	a5, t6
	addi	t6, t6, 1
	lui	a1, 1024
	srlw	a1, a1, t2
	addi	s1, a7, -126
	and	a0, a0, a2
	seqz	a2, t6
	snez	a0, a0
	addi	a2, a2, -1
	or	a0, a0, a5
	and	a1, a1, a2
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, s1, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_303
	.loc	1 0 13 is_stmt 0
	fmv.s	ft9, ft1
	j	.LBB173_304
.LBB173_281:
	fmv.s	fa4, fa5
	.loc	1 1040 13 is_stmt 1
	fsgnj.s	fa5, fa7, ft6
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	fa2, ft0
	bnez	a0, .LBB173_239
.LBB173_282:
	.loc	1 0 13 is_stmt 0
	fmv.s	fa2, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, ft8, ft5
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	fa0, ft0
	bnez	a0, .LBB173_240
.LBB173_283:
	.loc	1 0 13
	fmv.s	fa0, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, ft9, ft4
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft4, ft0
	bnez	a0, .LBB173_241
.LBB173_284:
	.loc	1 0 13
	fmv.s	ft4, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, ft10, ft3
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft3, ft0
	bnez	a0, .LBB173_242
.LBB173_285:
	.loc	1 0 13
	fmv.s	ft3, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, fs0, ft2
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft5, ft0
	bnez	a0, .LBB173_243
.LBB173_286:
	.loc	1 0 13
	fmv.s	ft5, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, fs2, ft11
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft6, ft0
	bnez	a0, .LBB173_244
.LBB173_287:
	.loc	1 0 13
	fmv.s	ft6, fa5
	.loc	1 1040 13
	fsgnj.s	fa5, fs3, fs1
	fadd.s	fa5, fa5, ft1
	fle.s	a0, fa5, ft0
	fmv.s	ft7, ft0
	bnez	a0, .LBB173_245
.LBB173_288:
	.loc	1 0 13
	fmv.s	ft7, fa5
	lui	a0, 274400
	fmv.w.x	ft2, a0
	.loc	1 1040 13
	fle.s	a0, ft2, fa4
	fmv.s	fa5, ft2
	bnez	a0, .LBB173_246
.LBB173_289:
	.loc	1 0 13
	fmv.s	fa5, fa4
	.loc	1 1040 13
	fle.s	a0, ft2, fa2
	fmv.s	fa3, ft2
	bnez	a0, .LBB173_247
.LBB173_290:
	.loc	1 0 13
	fmv.s	fa3, fa2
	.loc	1 1040 13
	fle.s	a0, ft2, fa0
	fmv.s	fa2, ft2
	bnez	a0, .LBB173_248
.LBB173_291:
	.loc	1 0 13
	fmv.s	fa2, fa0
	.loc	1 1040 13
	fle.s	a0, ft2, ft4
	fmv.s	fa4, ft2
	bnez	a0, .LBB173_249
.LBB173_292:
	.loc	1 0 13
	fmv.s	fa4, ft4
	.loc	1 1040 13
	fle.s	a0, ft2, ft3
	fmv.s	fa0, ft2
	bnez	a0, .LBB173_250
.LBB173_293:
	.loc	1 0 13
	fmv.s	fa0, ft3
	.loc	1 1040 13
	fle.s	a0, ft2, ft5
	fmv.s	fa6, ft2
	bnez	a0, .LBB173_251
.LBB173_294:
	.loc	1 0 13
	fmv.s	fa6, ft5
	.loc	1 1040 13
	fle.s	a0, ft2, ft6
	fmv.s	ft4, ft2
	bnez	a0, .LBB173_252
.LBB173_295:
	.loc	1 0 13
	fmv.s	ft4, ft6
	.loc	1 1040 13
	fle.s	a0, ft2, ft7
	fmv.s	ft3, ft2
	beqz	a0, .LBB173_253
	j	.LBB173_254
.LBB173_296:
	.loc	1 0 13
	li	a5, 31
	sd	a5, -232(s0)
	.loc	1 1043 13 is_stmt 1
	addi	t6, a7, -127
	sgtz	a5, t6
	neg	a5, a5
	and	t2, a5, t6
	blt	t2, t4, .LBB173_270
.LBB173_297:
	.loc	1 0 13 is_stmt 0
	li	t2, 31
	.loc	1 1043 13
	addi	s6, a4, -127
	sgtz	a5, s6
	neg	a5, a5
	and	t5, a5, s6
	blt	t5, t4, .LBB173_271
.LBB173_298:
	.loc	1 0 13
	li	t5, 31
	.loc	1 1043 13
	addi	a6, s10, -127
	sgtz	a5, a6
	neg	a5, a5
	and	s9, a5, a6
	blt	s9, t4, .LBB173_272
.LBB173_299:
	.loc	1 0 13
	li	s9, 31
	.loc	1 1043 13
	addi	a3, s7, -127
	sgtz	a5, a3
	neg	a5, a5
	and	s8, a5, a3
	blt	s8, t4, .LBB173_273
.LBB173_300:
	.loc	1 0 13
	li	s8, 31
	.loc	1 1043 13
	addi	a3, s4, -127
	sgtz	a5, a3
	neg	a5, a5
	and	s5, a5, a3
	blt	s5, t4, .LBB173_274
.LBB173_301:
	.loc	1 0 13
	li	s5, 31
	.loc	1 1043 13
	addi	a3, a2, -127
	sgtz	a5, a3
	neg	a5, a5
	sd	a3, -352(s0)
	and	t3, a5, a3
	blt	t3, t4, .LBB173_275
.LBB173_302:
	.loc	1 0 13
	li	t3, 31
	.loc	1 1043 13
	addi	a3, a1, -127
	sgtz	a5, a3
	neg	a5, a5
	sd	a3, -320(s0)
	and	s3, a5, a3
	bge	s3, t4, .LBB173_276
	j	.LBB173_277
.LBB173_303:
	fsgnj.s	ft9, fs4, ft3
.LBB173_304:
	.loc	1 1043 13 is_stmt 1
	sllw	a0, s2, t0
	ld	a5, -208(s0)
	srlw	a1, a5, t5
	and	a1, a1, s2
	seqz	a2, s6
	addi	s6, s6, 1
	lui	a3, 1024
	srlw	a3, a3, t5
	addi	a4, a4, -126
	and	a0, a0, a5
	seqz	a5, s6
	snez	a0, a0
	addi	a5, a5, -1
	or	a0, a0, a2
	and	a3, a3, a5
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a4, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_306
	.loc	1 0 13 is_stmt 0
	fmv.s	fa5, ft1
	j	.LBB173_307
.LBB173_306:
	.loc	1 1043 13
	fsgnj.s	fa5, fs4, ft4
.LBB173_307:
	.loc	1 0 13
	ld	a0, -344(s0)
	ld	a2, -336(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	a0, a2, a0
	ld	a5, -208(s0)
	srlw	a1, a5, s9
	and	a1, a1, a2
	seqz	a2, a6
	addi	a6, a6, 1
	lui	a3, 1024
	srlw	a3, a3, s9
	addi	a4, s10, -126
	and	a0, a0, a5
	seqz	a5, a6
	snez	a0, a0
	addi	a5, a5, -1
	or	a0, a0, a2
	and	a3, a3, a5
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a4, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_309
	.loc	1 0 13 is_stmt 0
	fmv.s	fa0, ft1
	j	.LBB173_310
.LBB173_309:
	.loc	1 1043 13
	fsgnj.s	fa0, fs4, ft5
.LBB173_310:
	.loc	1 0 13
	ld	a0, -328(s0)
	ld	a2, -312(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	s1, a2, a0
	ld	a0, -208(s0)
	srlw	a1, a0, s8
	and	a1, a1, a2
	addi	a3, s7, -127
	seqz	a2, a3
	addi	a3, a3, 1
	lui	a6, 1024
	srlw	a4, a6, s8
	addi	a5, s7, -126
	and	a0, a0, s1
	seqz	a3, a3
	snez	a0, a0
	addi	a3, a3, -1
	or	a0, a0, a2
	and	a3, a3, a4
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_312
	.loc	1 0 13 is_stmt 0
	fmv.s	fa3, ft1
	j	.LBB173_313
.LBB173_312:
	.loc	1 1043 13
	fsgnj.s	fa3, fs4, ft6
.LBB173_313:
	.loc	1 0 13
	ld	a0, -304(s0)
	ld	a2, -288(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	s1, a2, a0
	ld	a0, -208(s0)
	srlw	a1, a0, s5
	and	a1, a1, a2
	addi	a3, s4, -127
	seqz	a2, a3
	addi	a3, a3, 1
	srlw	a4, a6, s5
	addi	a5, s4, -126
	and	a0, a0, s1
	seqz	a3, a3
	snez	a0, a0
	addi	a3, a3, -1
	or	a0, a0, a2
	and	a3, a3, a4
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_315
	.loc	1 0 13 is_stmt 0
	fmv.s	fa2, ft1
	j	.LBB173_316
.LBB173_315:
	.loc	1 1043 13
	fsgnj.s	fa2, fs4, ft7
.LBB173_316:
	.loc	1 0 13
	ld	a0, -280(s0)
	ld	a2, -272(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	s1, a2, a0
	ld	a0, -208(s0)
	srlw	a1, a0, t3
	and	a1, a1, a2
	ld	a3, -352(s0)
	seqz	a2, a3
	addi	a3, a3, 1
	srlw	a4, a6, t3
	ld	a5, -264(s0)
	addi	a5, a5, -126
	and	a0, a0, s1
	seqz	a3, a3
	snez	a0, a0
	addi	a3, a3, -1
	or	a0, a0, a2
	and	a3, a3, a4
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_318
	.loc	1 0 13 is_stmt 0
	fmv.s	fa4, ft1
	j	.LBB173_319
.LBB173_318:
	.loc	1 1043 13
	fsgnj.s	fa4, fs4, fa6
.LBB173_319:
	.loc	1 0 13
	ld	a0, -256(s0)
	ld	a2, -248(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	a0, a2, a0
	ld	a5, -208(s0)
	srlw	a1, a5, s3
	and	a1, a1, a2
	ld	a3, -320(s0)
	seqz	a2, a3
	addi	a3, a3, 1
	srlw	a4, a6, s3
	mv	s3, a5
	ld	a5, -240(s0)
	addi	a5, a5, -126
	and	a0, a0, s3
	seqz	a3, a3
	snez	a0, a0
	addi	a3, a3, -1
	or	a0, a0, a2
	and	a3, a3, a4
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_321
	.loc	1 0 13 is_stmt 0
	fmv.s	ft10, ft1
	j	.LBB173_322
.LBB173_321:
	.loc	1 1043 13
	fsgnj.s	ft10, fs4, fa7
.LBB173_322:
	.loc	1 0 13
	ld	a0, -232(s0)
	ld	a2, -224(s0)
	.loc	1 1043 13 is_stmt 1
	sllw	a0, a2, a0
	srlw	a1, s3, ra
	and	a1, a1, a2
	ld	a3, -296(s0)
	seqz	a2, a3
	addi	a3, a3, 1
	srlw	a4, a6, ra
	ld	a5, -216(s0)
	addi	a5, a5, -126
	and	a0, a0, s3
	seqz	a3, a3
	snez	a0, a0
	addi	a3, a3, -1
	or	a0, a0, a2
	and	a3, a3, a4
	xor	a1, a1, a3
	seqz	a1, a1
	sltiu	a2, a5, 24
	and	a1, a1, a2
	and	a0, a0, a1
	bnez	a0, .LBB173_324
	fsub.s	ft11, ft8, ft1
	fsgnj.s	ft8, ft11, ft8
	fadd.s	ft11, ft8, ft1
	fle.s	a0, ft11, ft0
	fmv.s	ft8, ft0
	beqz	a0, .LBB173_325
	j	.LBB173_326
.LBB173_324:
	fsgnj.s	ft11, fs4, ft8
	fsub.s	ft11, ft8, ft11
	fsgnj.s	ft8, ft11, ft8
	fadd.s	ft11, ft8, ft1
	fle.s	a0, ft11, ft0
	fmv.s	ft8, ft0
	bnez	a0, .LBB173_326
.LBB173_325:
	.loc	1 0 13 is_stmt 0
	fmv.s	ft8, ft11
.LBB173_326:
	.loc	1 1043 13 is_stmt 1
	fsub.s	ft10, fa7, ft10
	fsgnj.s	fa7, ft10, fa7
	fadd.s	ft10, fa7, ft1
	fle.s	a0, ft10, ft0
	fmv.s	fa7, ft0
	beqz	a0, .LBB173_341
	fsub.s	fa4, fa6, fa4
	fsgnj.s	fa4, fa4, fa6
	fadd.s	fa6, fa4, ft1
	fle.s	a0, fa6, ft0
	fmv.s	fa4, ft0
	beqz	a0, .LBB173_342
.LBB173_328:
	fsub.s	fa2, ft7, fa2
	fsgnj.s	fa2, fa2, ft7
	fadd.s	ft7, fa2, ft1
	fle.s	a0, ft7, ft0
	fmv.s	fa2, ft0
	beqz	a0, .LBB173_343
.LBB173_329:
	fsub.s	fa3, ft6, fa3
	fsgnj.s	fa3, fa3, ft6
	fadd.s	ft6, fa3, ft1
	fle.s	a0, ft6, ft0
	fmv.s	fa3, ft0
	beqz	a0, .LBB173_344
.LBB173_330:
	fsub.s	fa0, ft5, fa0
	fsgnj.s	fa0, fa0, ft5
	fadd.s	ft5, fa0, ft1
	fle.s	a0, ft5, ft0
	fmv.s	fa0, ft0
	beqz	a0, .LBB173_345
.LBB173_331:
	fsub.s	fa5, ft4, fa5
	fsgnj.s	fa5, fa5, ft4
	fadd.s	ft4, fa5, ft1
	fle.s	a0, ft4, ft0
	fmv.s	fa5, ft0
	beqz	a0, .LBB173_346
.LBB173_332:
	fsub.s	ft4, ft3, ft9
	fsgnj.s	ft3, ft4, ft3
	fadd.s	ft1, ft3, ft1
	fle.s	a0, ft1, ft0
	beqz	a0, .LBB173_347
.LBB173_333:
	fle.s	a0, ft2, ft8
	fmv.s	ft1, ft2
	beqz	a0, .LBB173_348
.LBB173_334:
	fle.s	a0, ft2, fa7
	fmv.s	ft3, ft2
	beqz	a0, .LBB173_349
.LBB173_335:
	fle.s	a0, ft2, fa4
	fmv.s	ft4, ft2
	beqz	a0, .LBB173_350
.LBB173_336:
	fle.s	a0, ft2, fa2
	fmv.s	fa4, ft2
	beqz	a0, .LBB173_351
.LBB173_337:
	fle.s	a0, ft2, fa3
	fmv.s	fa2, ft2
	beqz	a0, .LBB173_352
.LBB173_338:
	fle.s	a0, ft2, fa0
	fmv.s	fa3, ft2
	beqz	a0, .LBB173_353
.LBB173_339:
	fle.s	a0, ft2, fa5
	fmv.s	fa0, ft2
	beqz	a0, .LBB173_354
.LBB173_340:
	fle.s	a0, ft2, ft0
	beqz	a0, .LBB173_355
	j	.LBB173_1
.LBB173_341:
	.loc	1 0 13 is_stmt 0
	fmv.s	fa7, ft10
	.loc	1 1043 13
	fsub.s	fa4, fa6, fa4
	fsgnj.s	fa4, fa4, fa6
	fadd.s	fa6, fa4, ft1
	fle.s	a0, fa6, ft0
	fmv.s	fa4, ft0
	bnez	a0, .LBB173_328
.LBB173_342:
	.loc	1 0 13
	fmv.s	fa4, fa6
	.loc	1 1043 13
	fsub.s	fa2, ft7, fa2
	fsgnj.s	fa2, fa2, ft7
	fadd.s	ft7, fa2, ft1
	fle.s	a0, ft7, ft0
	fmv.s	fa2, ft0
	bnez	a0, .LBB173_329
.LBB173_343:
	.loc	1 0 13
	fmv.s	fa2, ft7
	.loc	1 1043 13
	fsub.s	fa3, ft6, fa3
	fsgnj.s	fa3, fa3, ft6
	fadd.s	ft6, fa3, ft1
	fle.s	a0, ft6, ft0
	fmv.s	fa3, ft0
	bnez	a0, .LBB173_330
.LBB173_344:
	.loc	1 0 13
	fmv.s	fa3, ft6
	.loc	1 1043 13
	fsub.s	fa0, ft5, fa0
	fsgnj.s	fa0, fa0, ft5
	fadd.s	ft5, fa0, ft1
	fle.s	a0, ft5, ft0
	fmv.s	fa0, ft0
	bnez	a0, .LBB173_331
.LBB173_345:
	.loc	1 0 13
	fmv.s	fa0, ft5
	.loc	1 1043 13
	fsub.s	fa5, ft4, fa5
	fsgnj.s	fa5, fa5, ft4
	fadd.s	ft4, fa5, ft1
	fle.s	a0, ft4, ft0
	fmv.s	fa5, ft0
	bnez	a0, .LBB173_332
.LBB173_346:
	.loc	1 0 13
	fmv.s	fa5, ft4
	.loc	1 1043 13
	fsub.s	ft4, ft3, ft9
	fsgnj.s	ft3, ft4, ft3
	fadd.s	ft1, ft3, ft1
	fle.s	a0, ft1, ft0
	bnez	a0, .LBB173_333
.LBB173_347:
	.loc	1 0 13
	fmv.s	ft0, ft1
	.loc	1 1043 13
	fle.s	a0, ft2, ft8
	fmv.s	ft1, ft2
	bnez	a0, .LBB173_334
.LBB173_348:
	.loc	1 0 13
	fmv.s	ft1, ft8
	.loc	1 1043 13
	fle.s	a0, ft2, fa7
	fmv.s	ft3, ft2
	bnez	a0, .LBB173_335
.LBB173_349:
	.loc	1 0 13
	fmv.s	ft3, fa7
	.loc	1 1043 13
	fle.s	a0, ft2, fa4
	fmv.s	ft4, ft2
	bnez	a0, .LBB173_336
.LBB173_350:
	.loc	1 0 13
	fmv.s	ft4, fa4
	.loc	1 1043 13
	fle.s	a0, ft2, fa2
	fmv.s	fa4, ft2
	bnez	a0, .LBB173_337
.LBB173_351:
	.loc	1 0 13
	fmv.s	fa4, fa2
	.loc	1 1043 13
	fle.s	a0, ft2, fa3
	fmv.s	fa2, ft2
	bnez	a0, .LBB173_338
.LBB173_352:
	.loc	1 0 13
	fmv.s	fa2, fa3
	.loc	1 1043 13
	fle.s	a0, ft2, fa0
	fmv.s	fa3, ft2
	bnez	a0, .LBB173_339
.LBB173_353:
	.loc	1 0 13
	fmv.s	fa3, fa0
	.loc	1 1043 13
	fle.s	a0, ft2, fa5
	fmv.s	fa0, ft2
	bnez	a0, .LBB173_340
.LBB173_354:
	.loc	1 0 13
	fmv.s	fa0, fa5
	.loc	1 1043 13
	fle.s	a0, ft2, ft0
	beqz	a0, .LBB173_355
	j	.LBB173_1
.LBB173_355:
	.loc	1 0 13
	fmv.s	ft2, ft0
	j	.LBB173_1
.LBB173_356:
	.loc	1 1039 13 is_stmt 1
	li	a0, 0
	.cfi_def_cfa sp, 560
	.loc	1 1039 13 epilogue_begin is_stmt 0
	ld	ra, 552(sp)
	ld	s0, 544(sp)
	ld	s1, 536(sp)
	ld	s2, 528(sp)
	ld	s3, 520(sp)
	ld	s4, 512(sp)
	ld	s5, 504(sp)
	ld	s6, 496(sp)
	ld	s7, 488(sp)
	ld	s8, 480(sp)
	ld	s9, 472(sp)
	ld	s10, 464(sp)
	ld	s11, 456(sp)
	fld	fs0, 448(sp)
	fld	fs1, 440(sp)
	fld	fs2, 432(sp)
	fld	fs3, 424(sp)
	fld	fs4, 416(sp)
	fld	fs5, 408(sp)
	fld	fs6, 400(sp)
	fld	fs7, 392(sp)
	fld	fs8, 384(sp)
	fld	fs9, 376(sp)
	fld	fs10, 368(sp)
	fld	fs11, 360(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	.cfi_restore s10
	.cfi_restore s11
	.cfi_restore fs0
	.cfi_restore fs1
	.cfi_restore fs2
	.cfi_restore fs3
	.cfi_restore fs4
	.cfi_restore fs5
	.cfi_restore fs6
	.cfi_restore fs7
	.cfi_restore fs8
	.cfi_restore fs9
	.cfi_restore fs10
	.cfi_restore fs11
	addi	sp, sp, 560
	.cfi_def_cfa_offset 0
	ret
.Ltmp333:
.Lfunc_end173:
	.size	main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32, .Lfunc_end173-main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32,@function
main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32:
.Lfunc_begin174:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	lui	t3, 2048
.Ltmp334:
	.loc	1 1045 13 prologue_end
	ld	a0, 32(a1)
	lwu	t1, 0(a2)
	addi	t4, s0, -64
	li	t5, 32
	lui	a1, 238461
	lui	a2, 307200
	lui	t2, 1024
	addi	a1, a1, -1740
	fmv.w.x	fa5, a2
	fmv.w.x	fa4, a1
	ld	a6, 0(a0)
	.loc	1 1046 13
	ld	a4, 16(a0)
	.loc	1 1045 13
	ld	t0, 8(a0)
	ld	a7, 24(a0)
	slli	a0, t1, 5
	add	a4, a4, a0
	lui	a0, 260096
	addi	t3, t3, -1
	slli	t1, t1, 3
	fmv.w.x	fa3, a0
	j	.LBB174_2
.LBB174_1:
	fsgnj.s	fa2, fa1, fa2
	addi	t5, t5, -4
	fcvt.w.s	a0, fa2, rtz
	sw	a0, 0(t4)
	addi	t4, t4, 4
	addi	a4, a4, 4
	beqz	t5, .LBB174_10
.LBB174_2:
	flw	fa2, 0(a4)
	fdiv.s	fa2, fa2, fa4
	fabs.s	fa1, fa2
	flt.s	a0, fa1, fa5
	fmv.s	fa1, fa2
	beqz	a0, .LBB174_4
	fcvt.w.s	a0, fa2, rmm
	fcvt.s.w	fa1, a0, rmm
	fsgnj.s	fa1, fa1, fa2
.LBB174_4:
	fmv.x.w	t6, fa1
	slli	a1, t6, 33
	srli	a1, a1, 56
	addi	a0, a1, -128
	sltu	a2, a1, a0
	addi	a2, a2, -1
	and	a2, a2, a0
	li	s2, 31
	bltu	a2, s2, .LBB174_6
	.loc	1 0 13 is_stmt 0
	li	a2, 31
.LBB174_6:
	.loc	1 1045 13 is_stmt 1
	fmv.x.w	a3, fa2
	slli	a5, a3, 33
	srli	a5, a5, 56
	addi	s1, a5, -127
	sgtz	a0, s1
	neg	a0, a0
	and	a0, a0, s1
	blt	a0, s2, .LBB174_8
	.loc	1 0 13 is_stmt 0
	li	a0, 31
.LBB174_8:
	.loc	1 1045 13 is_stmt 1
	addi	s2, a1, -127
	srlw	a2, t3, a2
	addi	s1, s1, 1
	and	a2, a2, t6
	srlw	t6, t2, a0
	srlw	a0, t3, a0
	addi	a5, a5, -126
	seqz	a1, s2
	seqz	s1, s1
	and	a0, a0, a3
	snez	a2, a2
	addi	s1, s1, -1
	or	a1, a1, a2
	and	a2, s1, t6
	xor	a0, a0, a2
	seqz	a0, a0
	sltiu	a2, a5, 24
	and	a0, a0, a2
	and	a0, a0, a1
	beqz	a0, .LBB174_1
	fsgnj.s	fa0, fa3, fa2
	fsub.s	fa1, fa1, fa0
	j	.LBB174_1
.LBB174_10:
	add	t0, t0, t1
	lui	a1, 2961
	add	a0, a7, t1
	li	a2, 1
	#APP
	fence
	#NO_APP
	li	a3, 127
	slli	a4, a2, 48
	slli	a5, a3, 39
	addi	a5, a5, 1
	slli	a5, a5, 16
	addi	a5, a5, 4
	gemmini.config	a5, a4
	lui	a4, 123978
	li	a5, 2
	addi	a4, a4, 597
	slli	a4, a4, 33
	addi	a4, a4, 1000
	gemmini.config	a5, a4
	li	a4, 1000
	slli	a2, a2, 11
	slli	a3, a3, 35
	addi	a3, a3, 1
	slli	a3, a3, 20
	addi	a5, a3, 257
	gemmini.config	a5, a2
	addi	a5, a3, 265
	gemmini.config	a5, a4
	li	a5, 32
	addi	a3, a3, 273
	gemmini.config	a3, a5
	lui	a3, 128
	lui	a5, 2048
	addi	a3, a3, 15
	addi	a5, a5, 1
	slli	a5, a5, 16
	addi	a5, a5, 1
	gemmini.loop_ws.config.bounds	a3, a5
	li	a3, -1
	addi	a5, s0, -64
	add	a1, a1, t0
	li	a7, 8
	srli	a3, a3, 1
	add	a0, a0, a2
	and	s1, a6, a3
	and	a1, a1, a3
	and	a0, a0, a3
	addi	a3, a3, -3
	and	a3, a3, a5
	lui	a5, 80
	addi	a5, a5, 1
	gemmini.loop_ws.config.addrs.ab	s1, a1
	gemmini.loop_ws.config.addrs.dc	a3, a0
	gemmini.loop_ws.config.strides.ab	a2, a4
	gemmini.loop_ws.config.strides.dc	a7, a4
	gemmini.loop_ws	a5, zero
	gemmini.flush	zero, zero
	#APP
	fence
	#NO_APP
	gemmini.flush	zero, zero
	li	a0, 0
	.cfi_def_cfa sp, 64
	.loc	1 1045 13 epilogue_begin is_stmt 0
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp335:
.Lfunc_end174:
	.size	main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32, .Lfunc_end174-main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_105_elementwise_1000_i8xf32","ax",@progbits
	.p2align	1
	.type	main_graph$async_dispatch_105_elementwise_1000_i8xf32,@function
main_graph$async_dispatch_105_elementwise_1000_i8xf32:
.Lfunc_begin175:
	.loc	1 1 0 is_stmt 1
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	li	a2, 0
.Ltmp336:
	.loc	1 1047 13 prologue_end
	ld	a0, 32(a1)
	lui	a1, 250550
	ld	a3, 0(a0)
	addi	a1, a1, 125
	ld	a0, 8(a0)
	fmv.w.x	fa5, a1
	addi	a1, a3, 2047
	li	a6, 998
.LBB175_1:
	.loc	1 0 13 is_stmt 0
	mv	a4, a2
	.loc	1 1047 13
	add	a2, a2, a1
	lb	a5, 2(a2)
	lb	a3, 1(a2)
	fcvt.s.w	fa4, a5
	addi	a2, a4, 2
	fcvt.s.w	fa3, a3
	fmul.s	fa3, fa3, fa5
	fmul.s	fa4, fa4, fa5
	fsw	fa3, 0(a0)
	fsw	fa4, 4(a0)
	addi	a0, a0, 8
	bltu	a4, a6, .LBB175_1
	li	a0, 0
	.cfi_def_cfa sp, 16
	.loc	1 1047 13 epilogue_begin
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp337:
.Lfunc_end175:
	.size	main_graph$async_dispatch_105_elementwise_1000_i8xf32, .Lfunc_end175-main_graph$async_dispatch_105_elementwise_1000_i8xf32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	1
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin176:
	.cfi_startproc
	addiw	a0, a0, -6
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(iree_hal_executable_library_query_v0)
	snez	a0, a0
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	addi	a0, a0, -1
	and	a0, a0, a1
	ret
.Lfunc_end176:
	.size	iree_hal_executable_library_query, .Lfunc_end176-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end176-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	1
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin177:
	.cfi_startproc
	li	a3, 31
	andi	a1, a0, 1023
	lui	a4, 8
	slli	a3, a3, 10
	and	a2, a0, a3
	and	a0, a0, a4
	slli	a0, a0, 16
	beqz	a2, .LBB177_4
	bne	a2, a3, .LBB177_5
	beqz	a1, .LBB177_6
	lui	a1, 523264
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB177_4:
	lui	a2, 210944
	or	a0, a0, a2
	fcvt.s.wu	fa5, a1
	fmv.w.x	fa4, a0
	fmul.s	fa0, fa5, fa4
	ret
.LBB177_5:
	add	a1, a1, a2
	lui	a2, 28
	add	a1, a1, a2
	slli	a1, a1, 13
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB177_6:
	lui	a1, 522240
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.Lfunc_end177:
	.size	iree_h2f_ieee, .Lfunc_end177-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	1
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin178:
	.cfi_startproc
	fmv.x.w	a2, fa0
	lui	a4, 522240
	and	a1, a2, a4
	srliw	a0, a2, 16
	beqz	a1, .LBB178_6
	slli	a3, a2, 41
	srli	a3, a3, 41
	bne	a1, a4, .LBB178_4
	beqz	a3, .LBB178_5
	lui	a1, 8
	addi	a1, a1, -1
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB178_4:
	lui	a4, 290816
	bgeu	a4, a1, .LBB178_7
.LBB178_5:
	li	a1, 31
	slli	a1, a1, 10
.LBB178_6:
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB178_7:
	srli	a1, a1, 23
	li	a4, 113
	bgeu	a1, a4, .LBB178_9
	lui	a2, 8
	and	a0, a0, a2
	mv	a0, a0
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB178_9:
	lui	a4, 2
	and	a2, a2, a4
	lui	a4, 1
	seqz	a2, a2
	sub	a3, a3, a2
	li	a2, 15
	add	a3, a3, a4
	srliw	a4, a3, 23
	srliw	a3, a3, 13
	add	a1, a1, a4
	snez	a4, a4
	addi	a1, a1, -127
	addi	a4, a4, -1
	slli	a1, a1, 10
	and	a3, a3, a4
	add	a1, a1, a3
	slli	a2, a2, 10
	add	a1, a1, a2
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.Lfunc_end178:
	.size	iree_f2h_ieee, .Lfunc_end178-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	1
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin179:
	.cfi_startproc
	li	a3, 31
	andi	a1, a0, 1023
	lui	a4, 8
	slli	a3, a3, 10
	and	a2, a0, a3
	and	a0, a0, a4
	slli	a0, a0, 16
	beqz	a2, .LBB179_4
	bne	a2, a3, .LBB179_5
	beqz	a1, .LBB179_6
	lui	a1, 523264
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB179_4:
	lui	a2, 210944
	or	a0, a0, a2
	fcvt.s.wu	fa5, a1
	fmv.w.x	fa4, a0
	fmul.s	fa0, fa5, fa4
	ret
.LBB179_5:
	add	a1, a1, a2
	lui	a2, 28
	add	a1, a1, a2
	slli	a1, a1, 13
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB179_6:
	lui	a1, 522240
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.Lfunc_end179:
	.size	__gnu_h2f_ieee, .Lfunc_end179-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	1
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin180:
	.cfi_startproc
	fmv.x.w	a1, fa0
	li	a3, 31
	slli	a3, a3, 10
	andi	a2, a1, 1023
	slli	a0, a1, 16
	and	a4, a1, a3
	lui	a5, 524288
	and	a0, a0, a5
	beqz	a4, .LBB180_4
	bne	a4, a3, .LBB180_5
	beqz	a2, .LBB180_6
	lui	a1, 523264
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB180_4:
	lui	a1, 210944
	or	a0, a0, a1
	fcvt.s.wu	fa5, a2
	fmv.w.x	fa4, a0
	fmul.s	fa0, fa5, fa4
	ret
.LBB180_5:
	slli	a1, a1, 49
	srli	a1, a1, 49
	lui	a2, 28
	add	a1, a1, a2
	slli	a1, a1, 13
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB180_6:
	lui	a1, 522240
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.Lfunc_end180:
	.size	__extendhfsf2, .Lfunc_end180-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	1
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin181:
	.cfi_startproc
	fmv.x.w	a2, fa0
	lui	a4, 522240
	and	a1, a2, a4
	srliw	a0, a2, 16
	beqz	a1, .LBB181_6
	slli	a3, a2, 41
	srli	a3, a3, 41
	bne	a1, a4, .LBB181_4
	beqz	a3, .LBB181_5
	lui	a1, 8
	addi	a1, a1, -1
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB181_4:
	lui	a4, 290816
	bgeu	a4, a1, .LBB181_7
.LBB181_5:
	li	a1, 31
	slli	a1, a1, 10
.LBB181_6:
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB181_7:
	srli	a1, a1, 23
	li	a4, 113
	bgeu	a1, a4, .LBB181_9
	lui	a2, 8
	and	a0, a0, a2
	mv	a0, a0
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.LBB181_9:
	lui	a4, 2
	and	a2, a2, a4
	lui	a4, 1
	seqz	a2, a2
	sub	a3, a3, a2
	li	a2, 15
	add	a3, a3, a4
	srliw	a4, a3, 23
	srliw	a3, a3, 13
	add	a1, a1, a4
	snez	a4, a4
	addi	a1, a1, -127
	addi	a4, a4, -1
	slli	a1, a1, 10
	and	a3, a3, a4
	add	a1, a1, a3
	slli	a2, a2, 10
	add	a1, a1, a2
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ret
.Lfunc_end181:
	.size	__gnu_f2h_ieee, .Lfunc_end181-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	1
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin182:
	.cfi_startproc
	fmv.x.w	a2, fa0
	lui	a4, 522240
	and	a1, a2, a4
	srliw	a0, a2, 16
	beqz	a1, .LBB182_9
	slli	a3, a2, 41
	srli	a3, a3, 41
	bne	a1, a4, .LBB182_4
	beqz	a3, .LBB182_5
	lui	a1, 8
	addi	a1, a1, -1
	or	a0, a0, a1
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sh	a0, 12(sp)
	flw	fa0, 12(sp)
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB182_4:
	lui	a4, 290816
	bgeu	a4, a1, .LBB182_6
.LBB182_5:
	li	a1, 31
	slli	a1, a1, 10
	j	.LBB182_9
.LBB182_6:
	srli	a1, a1, 23
	li	a4, 113
	bgeu	a1, a4, .LBB182_8
	li	a1, 0
	j	.LBB182_9
.LBB182_8:
	lui	a4, 2
	and	a2, a2, a4
	lui	a4, 1
	seqz	a2, a2
	sub	a3, a3, a2
	li	a2, 15
	add	a3, a3, a4
	srliw	a4, a3, 23
	srliw	a3, a3, 13
	add	a1, a1, a4
	snez	a4, a4
	addi	a1, a1, -127
	addi	a4, a4, -1
	slli	a1, a1, 10
	and	a3, a3, a4
	add	a1, a1, a3
	slli	a2, a2, 10
	add	a1, a1, a2
.LBB182_9:
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sh	a0, 12(sp)
	flw	fa0, 12(sp)
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end182:
	.size	__truncsfhf2, .Lfunc_end182-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.p2align	1
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin183:
	.cfi_startproc
	fmv.x.w	a1, fa0
	li	a3, 31
	slli	a3, a3, 10
	andi	a2, a1, 1023
	slli	a0, a1, 16
	and	a4, a1, a3
	lui	a5, 524288
	and	a0, a0, a5
	beqz	a4, .LBB183_4
	bne	a4, a3, .LBB183_5
	beqz	a2, .LBB183_6
	lui	a1, 523264
	or	a0, a0, a1
	fmv.w.x	fa5, a0
	fcvt.d.s	fa0, fa5
	ret
.LBB183_4:
	lui	a1, 210944
	or	a0, a0, a1
	fcvt.s.wu	fa5, a2
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	fcvt.d.s	fa0, fa5
	ret
.LBB183_5:
	slli	a1, a1, 49
	srli	a1, a1, 49
	lui	a2, 28
	add	a1, a1, a2
	slli	a1, a1, 13
	or	a0, a0, a1
	fmv.w.x	fa5, a0
	fcvt.d.s	fa0, fa5
	ret
.LBB183_6:
	lui	a1, 522240
	or	a0, a0, a1
	fmv.w.x	fa5, a0
	fcvt.d.s	fa0, fa5
	ret
.Lfunc_end183:
	.size	__extendhfdf2, .Lfunc_end183-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.p2align	1
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin184:
	.cfi_startproc
	fcvt.s.d	fa5, fa0
	fmv.x.w	a2, fa5
	lui	a4, 522240
	and	a1, a2, a4
	srliw	a0, a2, 16
	beqz	a1, .LBB184_9
	slli	a3, a2, 41
	srli	a3, a3, 41
	bne	a1, a4, .LBB184_4
	beqz	a3, .LBB184_5
	lui	a1, 8
	addi	a1, a1, -1
	or	a0, a0, a1
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sh	a0, 12(sp)
	flw	fa0, 12(sp)
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB184_4:
	lui	a4, 290816
	bgeu	a4, a1, .LBB184_6
.LBB184_5:
	li	a1, 31
	slli	a1, a1, 10
	j	.LBB184_9
.LBB184_6:
	srli	a1, a1, 23
	li	a4, 113
	bgeu	a1, a4, .LBB184_8
	li	a1, 0
	j	.LBB184_9
.LBB184_8:
	lui	a4, 2
	and	a2, a2, a4
	lui	a4, 1
	seqz	a2, a2
	sub	a3, a3, a2
	li	a2, 15
	add	a3, a3, a4
	srliw	a4, a3, 23
	srliw	a3, a3, 13
	add	a1, a1, a4
	snez	a4, a4
	addi	a1, a1, -127
	addi	a4, a4, -1
	slli	a1, a1, 10
	and	a3, a3, a4
	add	a1, a1, a3
	slli	a2, a2, 10
	add	a1, a1, a2
.LBB184_9:
	lui	a2, 8
	and	a0, a0, a2
	or	a0, a0, a1
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sh	a0, 12(sp)
	flw	fa0, 12(sp)
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end184:
	.size	__truncdfhf2, .Lfunc_end184-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.p2align	1
	.type	fma,@function
fma:
.Lfunc_begin185:
	.cfi_startproc
	fmadd.d	fa0, fa0, fa1, fa2
	ret
.Lfunc_end185:
	.size	fma, .Lfunc_end185-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.p2align	1
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin186:
	.cfi_startproc
	fsub.s	fa5, fa0, fa0
	fdiv.s	fa0, fa5, fa5
	ret
.Lfunc_end186:
	.size	__math_invalidf, .Lfunc_end186-__math_invalidf
	.cfi_endproc

	.section	.text.__math_oflowf,"ax",@progbits
	.p2align	1
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin187:
	.cfi_startproc
	sext.w	a0, a0
	lui	a1, 458752
	fmv.w.x	fa5, a1
	fmv.s	fa4, fa5
	beqz	a0, .LBB187_2
	lui	a0, 983040
	fmv.w.x	fa4, a0
.LBB187_2:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	fsw	fa4, 12(sp)
	flw	fa4, 12(sp)
	fmul.s	fa0, fa4, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end187:
	.size	__math_oflowf, .Lfunc_end187-__math_oflowf
	.cfi_endproc

	.section	.text.__math_xflowf,"ax",@progbits
	.p2align	1
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin188:
	.cfi_startproc
	sext.w	a0, a0
	fmv.s	fa5, fa0
	beqz	a0, .LBB188_2
	fneg.s	fa5, fa0
.LBB188_2:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	fsw	fa5, 12(sp)
	flw	fa5, 12(sp)
	fmul.s	fa0, fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end188:
	.size	__math_xflowf, .Lfunc_end188-__math_xflowf
	.cfi_endproc

	.section	.text.__math_uflowf,"ax",@progbits
	.p2align	1
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin189:
	.cfi_startproc
	sext.w	a0, a0
	lui	a1, 65536
	fmv.w.x	fa5, a1
	fmv.s	fa4, fa5
	beqz	a0, .LBB189_2
	lui	a0, 589824
	fmv.w.x	fa4, a0
.LBB189_2:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	fsw	fa4, 12(sp)
	flw	fa4, 12(sp)
	fmul.s	fa0, fa4, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end189:
	.size	__math_uflowf, .Lfunc_end189-__math_uflowf
	.cfi_endproc

	.section	.text.ceilf,"ax",@progbits
	.p2align	1
	.type	ceilf,@function
ceilf:
.Lfunc_begin190:
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	fmv.x.w	a0, fa0
	slli	a1, a0, 33
	srli	a1, a1, 56
	li	a2, 149
	bltu	a2, a1, .LBB190_9
	li	a2, 127
	bltu	a1, a2, .LBB190_4
	addi	a1, a1, -127
	lui	a2, 2048
	addi	a2, a2, -1
	srlw	a2, a2, a1
	and	a3, a2, a0
	beqz	a3, .LBB190_9
	lui	a3, 505856
	srli	a4, a0, 63
	fmv.w.x	fa5, a3
	lui	a3, 1046528
	sraw	a1, a3, a1
	addi	a4, a4, -1
	fadd.s	fa5, fa0, fa5
	and	a2, a2, a4
	fsw	fa5, 8(sp)
	add	a0, a0, a2
	and	a0, a0, a1
	j	.LBB190_8
.LBB190_4:
	lui	a1, 505856
	fmv.w.x	fa5, a1
	fadd.s	fa5, fa0, fa5
	fsw	fa5, 12(sp)
	bltz	a0, .LBB190_7
	beqz	a0, .LBB190_9
	lui	a0, 260096
	j	.LBB190_8
.LBB190_7:
	lui	a0, 524288
.LBB190_8:
	fmv.w.x	fa0, a0
.LBB190_9:
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end190:
	.size	ceilf, .Lfunc_end190-ceilf
	.cfi_endproc

	.section	.text.expf,"ax",@progbits
	.p2align	1
	.type	expf,@function
expf:
.Lfunc_begin191:
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	.cfi_remember_state
	fmv.x.w	a0, fa0
	slli	a0, a0, 33
	srli	a0, a0, 53
	li	a1, 1067
	bgeu	a0, a1, .LBB191_2
.LBB191_1:
	fcvt.d.s	fa5, fa0
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.promoted_doubles.expf)
	lui	a1, 2151
	li	a2, -1945
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	fld	fa4, 0(a0)
	fld	fa3, 8(a0)
	fld	fa2, 16(a0)
	fld	fa1, 24(a0)
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(__exp2f_data)
	slli	a1, a1, 39
	fmv.d.x	fa0, a1
	li	a1, 1023
	slli	a2, a2, 51
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	slli	a1, a1, 52
	fmul.d	fa5, fa5, fa4
	fmv.d.x	fa4, a2
	fadd.d	fa0, fa5, fa0
	fmv.x.d	a2, fa0
	fadd.d	fa4, fa0, fa4
	fmv.d.x	fa0, a1
	fsub.d	fa5, fa5, fa4
	andi	a1, a2, 31
	slli	a2, a2, 47
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	fmadd.d	fa4, fa5, fa3, fa2
	fmul.d	fa3, fa5, fa5
	fmadd.d	fa5, fa5, fa1, fa0
	add	a0, a0, a2
	fmv.d.x	fa2, a0
	fmadd.d	fa5, fa4, fa3, fa5
	fmul.d	fa5, fa5, fa2
	fcvt.s.d	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB191_2:
	.cfi_restore_state
	.cfi_remember_state
	lui	a1, 1046528
	fmv.w.x	fa5, a1
	feq.s	a1, fa0, fa5
	beqz	a1, .LBB191_4
	fmv.w.x	fa0, zero
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB191_4:
	.cfi_restore_state
	.cfi_remember_state
	li	a1, 2040
	bgeu	a0, a1, .LBB191_7
	lui	a0, 273175
	addi	a0, a0, 535
	fmv.w.x	fa5, a0
	flt.s	a0, fa5, fa0
	beqz	a0, .LBB191_8
	lui	a0, 458752
	fmv.w.x	fa5, a0
	fsw	fa5, 8(sp)
	flw	fa4, 8(sp)
	fmul.s	fa0, fa4, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB191_7:
	.cfi_restore_state
	.cfi_remember_state
	fadd.s	fa0, fa0, fa0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB191_8:
	.cfi_restore_state
	lui	a0, 797951
	addi	a0, a0, 436
	fmv.w.x	fa5, a0
	flt.s	a0, fa0, fa5
	beqz	a0, .LBB191_1
	lui	a0, 65536
	fmv.w.x	fa5, a0
	fsw	fa5, 12(sp)
	flw	fa4, 12(sp)
	fmul.s	fa0, fa4, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end191:
	.size	expf, .Lfunc_end191-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.p2align	1
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin192:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end192:
	.size	feclearexcept, .Lfunc_end192-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.p2align	1
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin193:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end193:
	.size	feraiseexcept, .Lfunc_end193-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.p2align	1
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin194:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end194:
	.size	fetestexcept, .Lfunc_end194-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.p2align	1
	.type	fegetround,@function
fegetround:
.Lfunc_begin195:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end195:
	.size	fegetround, .Lfunc_end195-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.p2align	1
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin196:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end196:
	.size	__fesetround, .Lfunc_end196-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.p2align	1
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin197:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end197:
	.size	fegetenv, .Lfunc_end197-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.p2align	1
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin198:
	.cfi_startproc
	li	a0, 0
	ret
.Lfunc_end198:
	.size	fesetenv, .Lfunc_end198-fesetenv
	.cfi_endproc

	.section	.text.floorf,"ax",@progbits
	.p2align	1
	.type	floorf,@function
floorf:
.Lfunc_begin199:
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	.cfi_remember_state
	fmv.x.w	a0, fa0
	slli	a1, a0, 33
	srli	a1, a1, 56
	li	a2, 149
	bltu	a2, a1, .LBB199_8
	li	a2, 127
	bltu	a1, a2, .LBB199_5
	addi	a1, a1, -127
	lui	a2, 2048
	addi	a2, a2, -1
	srlw	a2, a2, a1
	and	a3, a2, a0
	beqz	a3, .LBB199_8
	lui	a3, 505856
	fmv.w.x	fa5, a3
	lui	a3, 1046528
	sraw	a1, a3, a1
	srli	a3, a0, 31
	and	a2, a2, a3
	fadd.s	fa5, fa0, fa5
	add	a0, a0, a2
	fsw	fa5, 8(sp)
	and	a0, a0, a1
.LBB199_4:
	fmv.w.x	fa0, a0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB199_5:
	.cfi_restore_state
	.cfi_remember_state
	lui	a1, 505856
	fmv.w.x	fa5, a1
	fadd.s	fa5, fa0, fa5
	fsw	fa5, 12(sp)
	bltz	a0, .LBB199_7
	fmv.w.x	fa0, zero
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB199_7:
	.cfi_restore_state
	.cfi_remember_state
	fmv.w.x	fa5, zero
	feq.s	a0, fa0, fa5
	beqz	a0, .LBB199_9
.LBB199_8:
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB199_9:
	.cfi_restore_state
	lui	a0, 784384
	j	.LBB199_4
.Lfunc_end199:
	.size	floorf, .Lfunc_end199-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.p2align	1
	.type	fmaf,@function
fmaf:
.Lfunc_begin200:
	.cfi_startproc
	fcvt.d.s	fa5, fa0
	fcvt.d.s	fa3, fa1
	fcvt.d.s	fa4, fa2
	fmul.d	fa3, fa5, fa3
	fadd.d	fa5, fa3, fa4
	fmv.x.d	a0, fa5
	slli	a1, a0, 35
	srli	a1, a1, 35
	lui	a2, 65536
	bne	a1, a2, .LBB200_4
	li	a1, 2047
	slli	a1, a1, 52
	and	a2, a0, a1
	beq	a2, a1, .LBB200_4
	fsub.d	fa2, fa5, fa3
	feq.d	a1, fa2, fa4
	beqz	a1, .LBB200_5
	fsub.d	fa2, fa5, fa4
	feq.d	a1, fa2, fa3
	beqz	a1, .LBB200_5
.LBB200_4:
	fcvt.s.d	fa0, fa5
	ret
.LBB200_5:
	srli	a1, a0, 63
	flt.d	a2, fa3, fa4
	xori	a2, a2, 1
	bne	a2, a1, .LBB200_8
	fsub.d	fa5, fa4, fa5
	fadd.d	fa5, fa3, fa5
	fmv.d.x	fa4, zero
	flt.d	a2, fa5, fa4
	xori	a2, a2, 1
	beq	a1, a2, .LBB200_9
.LBB200_7:
	addi	a0, a0, 1
	fmv.d.x	fa5, a0
	fcvt.s.d	fa0, fa5
	ret
.LBB200_8:
	fsub.d	fa5, fa3, fa5
	fadd.d	fa5, fa5, fa4
	fmv.d.x	fa4, zero
	flt.d	a2, fa5, fa4
	xori	a2, a2, 1
	bne	a1, a2, .LBB200_7
.LBB200_9:
	addi	a0, a0, -1
	fmv.d.x	fa5, a0
	fcvt.s.d	fa0, fa5
	ret
.Lfunc_end200:
	.size	fmaf, .Lfunc_end200-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.p2align	1
	.type	fmodf,@function
fmodf:
.Lfunc_begin201:
	.cfi_startproc
	fmv.x.w	a4, fa1
	slliw	a2, a4, 1
	beqz	a2, .LBB201_8
	slli	a3, a4, 33
	srli	a0, a3, 33
	lui	a1, 522240
	bltu	a1, a0, .LBB201_8
	fmv.x.w	a6, fa0
	slli	a1, a6, 33
	srli	a1, a1, 56
	li	a5, 255
	beq	a1, a5, .LBB201_8
	slliw	a5, a6, 1
	bgeu	a2, a5, .LBB201_9
	srli	a3, a3, 56
	lui	a2, 2048
	addi	a5, a2, -1
	beqz	a1, .LBB201_11
	and	a0, a6, a5
	or	a2, a2, a0
	beqz	a3, .LBB201_14
.LBB201_6:
	and	a4, a4, a5
	lui	a0, 2048
	or	a4, a4, a0
	blt	a3, a1, .LBB201_18
.LBB201_7:
	subw	a3, a2, a4
	bgez	a3, .LBB201_21
	j	.LBB201_22
.LBB201_8:
	fmul.s	fa5, fa0, fa1
	fdiv.s	fa0, fa5, fa5
	ret
.LBB201_9:
	beq	a5, a2, .LBB201_26
	ret
.LBB201_11:
	li	a1, 0
	slliw	a2, a6, 9
	bltz	a2, .LBB201_13
.LBB201_12:
	slliw	a2, a2, 1
	addiw	a1, a1, -1
	bgez	a2, .LBB201_12
.LBB201_13:
	li	a2, 1
	sub	a2, a2, a1
	sllw	a2, a6, a2
	bnez	a3, .LBB201_6
.LBB201_14:
	li	a3, 0
	slliw	a5, a4, 9
	bltz	a5, .LBB201_16
.LBB201_15:
	slliw	a5, a5, 1
	addiw	a3, a3, -1
	bgez	a5, .LBB201_15
.LBB201_16:
	li	a0, 1
	sub	a0, a0, a3
	sllw	a4, a4, a0
	blt	a3, a1, .LBB201_18
	j	.LBB201_7
.LBB201_17:
	addiw	a1, a1, -1
	slli	a2, a2, 1
	bge	a3, a1, .LBB201_20
.LBB201_18:
	subw	a5, a2, a4
	bltz	a5, .LBB201_17
	mv	a2, a5
	bnez	a5, .LBB201_17
	j	.LBB201_26
.LBB201_20:
	mv	a1, a3
	subw	a3, a2, a4
	bltz	a3, .LBB201_22
.LBB201_21:
	mv	a2, a3
	beqz	a3, .LBB201_26
.LBB201_22:
	srliw	a0, a2, 23
	lui	a3, 524288
	bnez	a0, .LBB201_24
.LBB201_23:
	srliw	a0, a2, 22
	slli	a2, a2, 1
	addiw	a1, a1, -1
	beqz	a0, .LBB201_23
.LBB201_24:
	and	a0, a6, a3
	blez	a1, .LBB201_27
	lui	a3, 1046528
	add	a2, a2, a3
	slli	a1, a1, 23
	or	a1, a1, a2
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.LBB201_26:
	fmv.w.x	fa5, zero
	fmul.s	fa0, fa0, fa5
	ret
.LBB201_27:
	li	a3, 1
	sub	a3, a3, a1
	srlw	a1, a2, a3
	or	a0, a0, a1
	fmv.w.x	fa0, a0
	ret
.Lfunc_end201:
	.size	fmodf, .Lfunc_end201-fmodf
	.cfi_endproc

	.section	.text.frexpf,"ax",@progbits
	.p2align	1
	.type	frexpf,@function
frexpf:
.Lfunc_begin202:
	.cfi_startproc
	fmv.x.w	a1, fa0
	srliw	a2, a1, 23
	zext.b	a2, a2
	li	a3, 255
	beq	a2, a3, .LBB202_5
	bnez	a2, .LBB202_4
	fmv.w.x	fa5, zero
	feq.s	a1, fa0, fa5
	bnez	a1, .LBB202_6
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	lui	a1, 391168
	fmv.w.x	fa5, a1
	fmul.s	fa0, fa0, fa5
	mv	s0, a0
	call	frexpf
	mv	a0, s0
	lw	a1, 0(s0)
	addi	a1, a1, -64
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	sw	a1, 0(a0)
	ret
.LBB202_4:
	addi	a2, a2, -126
	sw	a2, 0(a0)
	lui	a0, 526336
	addi	a0, a0, -1
	and	a0, a0, a1
	lui	a1, 258048
	or	a0, a0, a1
	fmv.w.x	fa0, a0
.LBB202_5:
	ret
.LBB202_6:
	sw	zero, 0(a0)
	ret
.Lfunc_end202:
	.size	frexpf, .Lfunc_end202-frexpf
	.cfi_endproc

	.section	.text.ldexpf,"ax",@progbits
	.p2align	1
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin203:
	.cfi_startproc
	sext.w	a1, a0
	li	a2, 128
	blt	a1, a2, .LBB203_6
	lui	a2, 520192
	sext.w	a1, a0
	fmv.w.x	fa5, a2
	li	a2, 255
	fmul.s	fa0, fa0, fa5
	bltu	a1, a2, .LBB203_11
	li	a0, 381
	bltu	a1, a0, .LBB203_4
	li	a1, 381
.LBB203_4:
	fmul.s	fa0, fa0, fa5
	addi	a0, a1, -254
.LBB203_5:
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB203_6:
	li	a2, -127
	blt	a2, a1, .LBB203_5
	lui	a2, 51200
	fmv.w.x	fa5, a2
	li	a2, -229
	fmul.s	fa0, fa0, fa5
	bltu	a2, a1, .LBB203_12
	li	a0, -330
	bltu	a0, a1, .LBB203_10
	li	a1, -330
.LBB203_10:
	fmul.s	fa0, fa0, fa5
	addi	a0, a1, 204
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB203_11:
	addi	a0, a0, -127
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB203_12:
	addi	a0, a0, 102
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.Lfunc_end203:
	.size	ldexpf, .Lfunc_end203-ldexpf
	.cfi_endproc

	.section	.text.scalbnf,"ax",@progbits
	.p2align	1
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin204:
	.cfi_startproc
	sext.w	a1, a0
	li	a2, 128
	blt	a1, a2, .LBB204_6
	lui	a2, 520192
	sext.w	a1, a0
	fmv.w.x	fa5, a2
	li	a2, 255
	fmul.s	fa0, fa0, fa5
	bltu	a1, a2, .LBB204_11
	li	a0, 381
	bltu	a1, a0, .LBB204_4
	li	a1, 381
.LBB204_4:
	fmul.s	fa0, fa0, fa5
	addi	a0, a1, -254
.LBB204_5:
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB204_6:
	li	a2, -127
	blt	a2, a1, .LBB204_5
	lui	a2, 51200
	fmv.w.x	fa5, a2
	li	a2, -229
	fmul.s	fa0, fa0, fa5
	bltu	a2, a1, .LBB204_12
	li	a0, -330
	bltu	a0, a1, .LBB204_10
	li	a1, -330
.LBB204_10:
	fmul.s	fa0, fa0, fa5
	addi	a0, a1, 204
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB204_11:
	addi	a0, a0, -127
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.LBB204_12:
	addi	a0, a0, 102
	slli	a0, a0, 23
	lui	a1, 260096
	add	a0, a0, a1
	fmv.w.x	fa5, a0
	fmul.s	fa0, fa0, fa5
	ret
.Lfunc_end204:
	.size	scalbnf, .Lfunc_end204-scalbnf
	.cfi_endproc

	.section	.text.powf,"ax",@progbits
	.p2align	1
	.type	powf,@function
powf:
.Lfunc_begin205:
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	.cfi_remember_state
	fmv.x.w	a1, fa0
	fmv.x.w	a0, fa1
	lui	a2, 526336
	add	a2, a2, a1
	srliw	a3, a2, 24
	li	a4, 129
	slliw	a2, a0, 1
	bltu	a3, a4, .LBB205_6
	lui	a3, 4096
	addw	a4, a2, a3
	bgeu	a3, a4, .LBB205_6
	li	a6, 0
.LBB205_3:
.Lpcrel_hi3:
	auipc	a2, %pcrel_hi(.promoted_doubles.powf)
	lui	a3, 789712
	lui	a4, 1046528
	li	a5, -1025
	slli	a5, a5, 52
	fmv.d.x	fa5, a5
.Lpcrel_hi4:
	auipc	a5, %pcrel_hi(__powf_log2_data)
	fcvt.d.s	fa4, fa1
	add	a3, a3, a1
	addi	a5, a5, %pcrel_lo(.Lpcrel_hi4)
	and	a4, a4, a3
	sub	a1, a1, a4
	srli	a4, a3, 15
	andi	a4, a4, 240
	add	a4, a4, a5
	lui	a5, 65535
	fmv.w.x	fa3, a1
	lui	a0, 16479
	addi	a1, a2, %pcrel_lo(.Lpcrel_hi3)
	slli	a5, a5, 35
	slli	a0, a0, 36
	fld	fa2, 32(a1)
	fld	fa1, 0(a1)
	fld	fa0, 8(a1)
	fld	ft0, 16(a1)
	fld	ft1, 24(a1)
	fld	ft2, 0(a4)
	sraiw	a2, a3, 23
	fld	ft3, 8(a4)
	fcvt.d.s	fa3, fa3
	fmadd.d	fa5, fa3, ft2, fa5
	fcvt.d.w	fa3, a2
	fadd.d	fa3, ft3, fa3
	fmul.d	ft2, fa5, fa5
	fmadd.d	fa1, fa5, fa1, fa0
	fmadd.d	fa0, fa5, ft0, ft1
	fmadd.d	fa5, fa5, fa2, fa3
	fmul.d	fa3, ft2, ft2
	fmadd.d	fa5, fa0, ft2, fa5
	fmadd.d	fa5, fa1, fa3, fa5
	fmul.d	fa5, fa5, fa4
	fmv.x.d	a2, fa5
	and	a2, a2, a5
	addi	a0, a0, 1
	bgeu	a2, a0, .LBB205_11
.LBB205_4:
	fld	fa4, 48(a1)
	fld	fa3, 56(a1)
	fld	fa2, 64(a1)
	lui	a0, 2141
	li	a1, -1955
.Lpcrel_hi5:
	auipc	a2, %pcrel_hi(__exp2f_data)
	slli	a0, a0, 39
	fmv.d.x	fa1, a0
	li	a0, 1023
	slli	a1, a1, 51
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi5)
	slli	a0, a0, 52
	fmv.d.x	fa0, a1
	fadd.d	fa1, fa5, fa1
	fmv.x.d	a1, fa1
	fadd.d	fa1, fa1, fa0
	fmv.d.x	fa0, a0
	fsub.d	fa5, fa5, fa1
	andi	a0, a1, 31
	add	a1, a1, a6
	slli	a0, a0, 3
	slli	a1, a1, 47
	add	a0, a0, a2
	ld	a0, 0(a0)
	fmadd.d	fa4, fa5, fa4, fa3
	fmul.d	fa3, fa5, fa5
	fmadd.d	fa5, fa5, fa2, fa0
	add	a0, a0, a1
	fmv.d.x	fa2, a0
	fmadd.d	fa5, fa4, fa3, fa5
	fmul.d	fa5, fa5, fa2
	fcvt.s.d	fa5, fa5
.LBB205_5:
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_6:
	.cfi_restore_state
	.cfi_remember_state
	addiw	a4, a2, -1
	lui	a3, 1044480
	addi	a3, a3, -1
	bgeu	a4, a3, .LBB205_26
	slli	a2, a1, 1
	addiw	a2, a2, -1
	bgeu	a2, a3, .LBB205_32
	bltz	a1, .LBB205_15
	li	a6, 0
	srliw	a2, a1, 23
	bnez	a2, .LBB205_3
.LBB205_10:
	lui	a1, 307200
	fmv.w.x	fa5, a1
	fmul.s	fa5, fa0, fa5
	fmv.x.w	a1, fa5
	slli	a1, a1, 33
	srli	a1, a1, 33
	lui	a2, 1001472
	add	a1, a1, a2
	j	.LBB205_3
.LBB205_11:
	fld	fa4, 40(a1)
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB205_19
	lui	a0, 458752
	fmv.w.x	fa5, a0
	fmv.s	fa4, fa5
	beqz	a6, .LBB205_14
	lui	a0, 983040
	fmv.w.x	fa4, a0
.LBB205_14:
	fsw	fa4, 8(sp)
	flw	fa4, 8(sp)
	fmul.s	fa5, fa4, fa5
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_15:
	.cfi_restore_state
	.cfi_remember_state
	slli	a2, a0, 33
	srli	a2, a2, 56
	li	a3, 127
	bltu	a2, a3, .LBB205_24
	li	a3, 150
	bgeu	a3, a2, .LBB205_23
.LBB205_17:
	li	a6, 0
.LBB205_18:
	slli	a1, a1, 33
	srli	a1, a1, 33
	srliw	a2, a1, 23
	bnez	a2, .LBB205_3
	j	.LBB205_10
.LBB205_19:
	lui	a0, 983435
	slli	a0, a0, 34
	fmv.d.x	fa4, a0
	fle.d	a0, fa5, fa4
	beqz	a0, .LBB205_4
	lui	a0, 65536
	fmv.w.x	fa5, a0
	fmv.s	fa4, fa5
	beqz	a6, .LBB205_22
	lui	a0, 589824
	fmv.w.x	fa4, a0
.LBB205_22:
	fsw	fa4, 12(sp)
	flw	fa4, 12(sp)
	fmul.s	fa5, fa4, fa5
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_23:
	.cfi_restore_state
	.cfi_remember_state
	sub	a3, a3, a2
	li	a2, 1
	sllw	a2, a2, a3
	addiw	a3, a2, -1
	and	a3, a3, a0
	beqz	a3, .LBB205_25
.LBB205_24:
	fsub.s	fa5, fa0, fa0
	fdiv.s	fa5, fa5, fa5
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_25:
	.cfi_restore_state
	.cfi_remember_state
	and	a2, a2, a0
	lui	a6, 16
	bnez	a2, .LBB205_18
	j	.LBB205_17
.LBB205_26:
	lui	a3, 260096
	fmv.w.x	fa5, a3
	beq	a1, a3, .LBB205_5
	beqz	a2, .LBB205_5
	slliw	a1, a1, 1
	lui	a3, 1044480
	bltu	a3, a1, .LBB205_38
	addi	a3, a3, 1
	bgeu	a2, a3, .LBB205_38
	lui	a2, 520192
	bne	a1, a2, .LBB205_39
	lui	a0, 260096
	fmv.w.x	fa5, a0
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_32:
	.cfi_restore_state
	.cfi_remember_state
	fmul.s	fa5, fa0, fa0
	bgez	a1, .LBB205_36
	slli	a1, a0, 33
	srli	a1, a1, 56
	addi	a2, a1, -151
	li	a3, -24
	bltu	a2, a3, .LBB205_36
	li	a2, 150
	sub	a2, a2, a1
	li	a1, 1
	sllw	a1, a1, a2
	addiw	a2, a1, -1
	and	a1, a1, a0
	and	a2, a2, a0
	snez	a2, a2
	seqz	a1, a1
	or	a1, a1, a2
	bnez	a1, .LBB205_36
	fneg.s	fa5, fa5
.LBB205_36:
	bgez	a0, .LBB205_5
	lui	a0, 260096
	fmv.w.x	fa4, a0
	fdiv.s	fa5, fa4, fa5
	fsw	fa5, 4(sp)
	flw	fa5, 4(sp)
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_38:
	.cfi_restore_state
	.cfi_remember_state
	fadd.s	fa5, fa0, fa1
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_39:
	.cfi_restore_state
	.cfi_remember_state
	srliw	a1, a1, 24
	sltiu	a1, a1, 127
	srli	a0, a0, 63
	bne	a1, a0, .LBB205_41
	fmul.s	fa5, fa1, fa1
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB205_41:
	.cfi_restore_state
	fmv.w.x	fa5, zero
	fmv.s	fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end205:
	.size	powf, .Lfunc_end205-powf
	.cfi_endproc

	.section	.text.rintf,"ax",@progbits
	.p2align	1
	.type	rintf,@function
rintf:
.Lfunc_begin206:
	.cfi_startproc
	fmv.x.w	a0, fa0
	lui	a1, 520192
	and	a1, a1, a0
	lui	a2, 305152
	bltu	a2, a1, .LBB206_3
	lui	a1, 831488
	fmv.w.x	fa5, a1
	lui	a1, 307200
	fmv.w.x	fa4, a1
	bgez	a0, .LBB206_4
	fadd.s	fa5, fa0, fa5
	fadd.s	fa0, fa5, fa4
	fmv.w.x	fa5, zero
	feq.s	a1, fa0, fa5
	bnez	a1, .LBB206_5
.LBB206_3:
	ret
.LBB206_4:
	fadd.s	fa4, fa0, fa4
	fadd.s	fa0, fa4, fa5
	fmv.w.x	fa5, zero
	feq.s	a1, fa0, fa5
	beqz	a1, .LBB206_3
.LBB206_5:
	bgez	a0, .LBB206_7
	lui	a0, 524288
	fmv.w.x	fa5, a0
.LBB206_7:
	fmv.s	fa0, fa5
	ret
.Lfunc_end206:
	.size	rintf, .Lfunc_end206-rintf
	.cfi_endproc

	.section	.text.roundf,"ax",@progbits
	.p2align	1
	.type	roundf,@function
roundf:
.Lfunc_begin207:
	.cfi_startproc
	fmv.x.w	a0, fa0
	slli	a1, a0, 33
	srli	a1, a1, 56
	li	a2, 149
	bgeu	a2, a1, .LBB207_2
.LBB207_1:
	ret
.LBB207_2:
	fabs.s	fa5, fa0
	lui	a2, 307200
	fmv.w.x	fa4, a2
	li	a2, 125
	fadd.s	fa4, fa5, fa4
	bltu	a2, a1, .LBB207_4
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	fsw	fa4, 12(sp)
	fmv.w.x	fa5, zero
	fmul.s	fa0, fa0, fa5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.LBB207_4:
	lui	a1, 831488
	fmv.w.x	fa3, a1
	lui	a1, 258048
	fadd.s	fa4, fa4, fa3
	fsub.s	fa4, fa4, fa5
	fmv.w.x	fa3, a1
	flt.s	a1, fa3, fa4
	beqz	a1, .LBB207_6
	fadd.s	fa5, fa5, fa4
	lui	a1, 784384
	fmv.w.x	fa4, a1
	fadd.s	fa0, fa5, fa4
	j	.LBB207_8
.LBB207_6:
	lui	a1, 782336
	fmv.w.x	fa3, a1
	fle.s	a1, fa4, fa3
	fadd.s	fa0, fa5, fa4
	beqz	a1, .LBB207_8
	lui	a1, 260096
	fmv.w.x	fa5, a1
	fadd.s	fa0, fa0, fa5
.LBB207_8:
	bgez	a0, .LBB207_1
	fneg.s	fa0, fa0
	ret
.Lfunc_end207:
	.size	roundf, .Lfunc_end207-roundf
	.cfi_endproc

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"resnet50_q_int8_linked"
	.size	__unnamed_1, 23

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.word	6
	.zero	4
	.quad	__unnamed_1
	.word	0
	.word	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	_initializer_0_dispatch_0_transpose_64x64_i8
	.quad	_initializer_1_dispatch_0_transpose_64x256_i8
	.quad	_initializer_2_dispatch_0_transpose_64x256_i8
	.quad	_initializer_3_dispatch_0_transpose_256x64_i8
	.quad	_initializer_4_dispatch_0_transpose_64x256_i8
	.quad	_initializer_5_dispatch_0_transpose_256x64_i8
	.quad	_initializer_6_dispatch_0_transpose_64x256_i8
	.quad	_initializer_7_dispatch_0_transpose_256x128_i8
	.quad	_initializer_8_dispatch_0_transpose_256x512_i8
	.quad	_initializer_9_dispatch_0_transpose_128x512_i8
	.quad	_initializer_10_dispatch_0_transpose_512x128_i8
	.quad	_initializer_11_dispatch_0_transpose_128x512_i8
	.quad	_initializer_12_dispatch_0_transpose_512x128_i8
	.quad	_initializer_13_dispatch_0_transpose_128x512_i8
	.quad	_initializer_14_dispatch_0_transpose_512x128_i8
	.quad	_initializer_15_dispatch_0_transpose_128x512_i8
	.quad	_initializer_16_dispatch_0_transpose_512x256_i8
	.quad	_initializer_17_dispatch_0_transpose_512x1024_i8
	.quad	_initializer_18_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_19_dispatch_0_transpose_1024x256_i8
	.quad	_initializer_20_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_21_dispatch_0_transpose_1024x256_i8
	.quad	_initializer_22_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_23_dispatch_0_transpose_1024x256_i8
	.quad	_initializer_24_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_25_dispatch_0_transpose_1024x256_i8
	.quad	_initializer_26_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_27_dispatch_0_transpose_1024x256_i8
	.quad	_initializer_28_dispatch_0_transpose_256x1024_i8
	.quad	_initializer_29_dispatch_0_transpose_1024x512_i8
	.quad	_initializer_30_dispatch_0_transpose_1024x2048_i8
	.quad	_initializer_31_dispatch_0_transpose_512x2048_i8
	.quad	_initializer_32_dispatch_0_transpose_2048x512_i8
	.quad	_initializer_33_dispatch_0_transpose_512x2048_i8
	.quad	_initializer_34_dispatch_0_transpose_2048x512_i8
	.quad	_initializer_35_dispatch_0_transpose_512x2048_i8
	.quad	_initializer_36_dispatch_0_transpose_2048x1000_i8
	.quad	_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32
	.quad	_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32
	.quad	_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32
	.quad	_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32
	.quad	_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32
	.quad	_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32
	.quad	_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32
	.quad	_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32
	.quad	_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32
	.quad	_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32
	.quad	_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32
	.quad	_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32
	.quad	_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32
	.quad	_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32
	.quad	_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32
	.quad	main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8
	.quad	main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32
	.quad	main_graph$async_dispatch_2_generic_112x112x7x7x3_i8
	.quad	main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32
	.quad	main_graph$async_dispatch_4_slow_memcpy
	.quad	main_graph$async_dispatch_5_conv_64x56x56x3x3_f32
	.quad	main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32
	.quad	main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32
	.quad	main_graph$async_dispatch_8_slow_memcpy
	.quad	main_graph$async_dispatch_9_generic_56x56x3x3x64_i8
	.quad	main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32
	.quad	main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32
	.quad	main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32
	.quad	main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32
	.quad	main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32
	.quad	main_graph$async_dispatch_16_generic_56x56x3x3x64_i8
	.quad	main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32
	.quad	main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32
	.quad	main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32
	.quad	main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32
	.quad	main_graph$async_dispatch_22_generic_56x56x3x3x64_i8
	.quad	main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32
	.quad	main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32
	.quad	main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32
	.quad	main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32
	.quad	main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32
	.quad	main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32
	.quad	main_graph$async_dispatch_29_generic_28x28x256_i8
	.quad	main_graph$async_dispatch_30_slow_memcpy
	.quad	main_graph$async_dispatch_31_generic_28x28x3x3x128_i8
	.quad	main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32
	.quad	main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32
	.quad	main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32
	.quad	main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32
	.quad	main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32
	.quad	main_graph$async_dispatch_37_slow_memcpy
	.quad	main_graph$async_dispatch_38_generic_28x28x3x3x128_i8
	.quad	main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32
	.quad	main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32
	.quad	main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32
	.quad	main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32
	.quad	main_graph$async_dispatch_44_generic_28x28x3x3x128_i8
	.quad	main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32
	.quad	main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32
	.quad	main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32
	.quad	main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32
	.quad	main_graph$async_dispatch_50_generic_28x28x3x3x128_i8
	.quad	main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32
	.quad	main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32
	.quad	main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32
	.quad	main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32
	.quad	main_graph$async_dispatch_55_generic_14x14x512_i8
	.quad	main_graph$async_dispatch_56_slow_memcpy
	.quad	main_graph$async_dispatch_57_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32
	.quad	main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_62_slow_memcpy
	.quad	main_graph$async_dispatch_63_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_68_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_73_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_78_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_83_generic_14x14x3x3x256_i8
	.quad	main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32
	.quad	main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32
	.quad	main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_87_generic_7x7x1024_i8
	.quad	main_graph$async_dispatch_88_slow_memcpy
	.quad	main_graph$async_dispatch_89_generic_7x7x3x3x512_i8
	.quad	main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32
	.quad	main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32
	.quad	main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32
	.quad	main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32
	.quad	main_graph$async_dispatch_94_slow_memcpy
	.quad	main_graph$async_dispatch_95_generic_7x7x3x3x512_i8
	.quad	main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32
	.quad	main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32
	.quad	main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32
	.quad	main_graph$async_dispatch_100_generic_7x7x3x3x512_i8
	.quad	main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32
	.quad	main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32
	.quad	main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32
	.quad	main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32
	.quad	main_graph$async_dispatch_105_elementwise_1000_i8xf32
	.size	iree_hal_executable_library_query_v0_funcs, 1408

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	2
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	1
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	1
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	1
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	4
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.half	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.half	1
	.half	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 11264

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"_initializer_0_dispatch_0_transpose_64x64_i8"
	.size	__unnamed_2, 45

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"_initializer_1_dispatch_0_transpose_64x256_i8"
	.size	__unnamed_3, 46

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"_initializer_2_dispatch_0_transpose_64x256_i8"
	.size	__unnamed_4, 46

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"_initializer_3_dispatch_0_transpose_256x64_i8"
	.size	__unnamed_5, 46

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"_initializer_4_dispatch_0_transpose_64x256_i8"
	.size	__unnamed_6, 46

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"_initializer_5_dispatch_0_transpose_256x64_i8"
	.size	__unnamed_7, 46

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"_initializer_6_dispatch_0_transpose_64x256_i8"
	.size	__unnamed_8, 46

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"_initializer_7_dispatch_0_transpose_256x128_i8"
	.size	__unnamed_9, 47

	.type	__unnamed_10,@object
	.section	.rodata.__unnamed_10,"a",@progbits
__unnamed_10:
	.asciz	"_initializer_8_dispatch_0_transpose_256x512_i8"
	.size	__unnamed_10, 47

	.type	__unnamed_11,@object
	.section	.rodata.__unnamed_11,"a",@progbits
__unnamed_11:
	.asciz	"_initializer_9_dispatch_0_transpose_128x512_i8"
	.size	__unnamed_11, 47

	.type	__unnamed_12,@object
	.section	.rodata.__unnamed_12,"a",@progbits
__unnamed_12:
	.asciz	"_initializer_10_dispatch_0_transpose_512x128_i8"
	.size	__unnamed_12, 48

	.type	__unnamed_13,@object
	.section	.rodata.__unnamed_13,"a",@progbits
__unnamed_13:
	.asciz	"_initializer_11_dispatch_0_transpose_128x512_i8"
	.size	__unnamed_13, 48

	.type	__unnamed_14,@object
	.section	.rodata.__unnamed_14,"a",@progbits
__unnamed_14:
	.asciz	"_initializer_12_dispatch_0_transpose_512x128_i8"
	.size	__unnamed_14, 48

	.type	__unnamed_15,@object
	.section	.rodata.__unnamed_15,"a",@progbits
__unnamed_15:
	.asciz	"_initializer_13_dispatch_0_transpose_128x512_i8"
	.size	__unnamed_15, 48

	.type	__unnamed_16,@object
	.section	.rodata.__unnamed_16,"a",@progbits
__unnamed_16:
	.asciz	"_initializer_14_dispatch_0_transpose_512x128_i8"
	.size	__unnamed_16, 48

	.type	__unnamed_17,@object
	.section	.rodata.__unnamed_17,"a",@progbits
__unnamed_17:
	.asciz	"_initializer_15_dispatch_0_transpose_128x512_i8"
	.size	__unnamed_17, 48

	.type	__unnamed_18,@object
	.section	.rodata.__unnamed_18,"a",@progbits
__unnamed_18:
	.asciz	"_initializer_16_dispatch_0_transpose_512x256_i8"
	.size	__unnamed_18, 48

	.type	__unnamed_19,@object
	.section	.rodata.__unnamed_19,"a",@progbits
__unnamed_19:
	.asciz	"_initializer_17_dispatch_0_transpose_512x1024_i8"
	.size	__unnamed_19, 49

	.type	__unnamed_20,@object
	.section	.rodata.__unnamed_20,"a",@progbits
__unnamed_20:
	.asciz	"_initializer_18_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_20, 49

	.type	__unnamed_21,@object
	.section	.rodata.__unnamed_21,"a",@progbits
__unnamed_21:
	.asciz	"_initializer_19_dispatch_0_transpose_1024x256_i8"
	.size	__unnamed_21, 49

	.type	__unnamed_22,@object
	.section	.rodata.__unnamed_22,"a",@progbits
__unnamed_22:
	.asciz	"_initializer_20_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_22, 49

	.type	__unnamed_23,@object
	.section	.rodata.__unnamed_23,"a",@progbits
__unnamed_23:
	.asciz	"_initializer_21_dispatch_0_transpose_1024x256_i8"
	.size	__unnamed_23, 49

	.type	__unnamed_24,@object
	.section	.rodata.__unnamed_24,"a",@progbits
__unnamed_24:
	.asciz	"_initializer_22_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_24, 49

	.type	__unnamed_25,@object
	.section	.rodata.__unnamed_25,"a",@progbits
__unnamed_25:
	.asciz	"_initializer_23_dispatch_0_transpose_1024x256_i8"
	.size	__unnamed_25, 49

	.type	__unnamed_26,@object
	.section	.rodata.__unnamed_26,"a",@progbits
__unnamed_26:
	.asciz	"_initializer_24_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_26, 49

	.type	__unnamed_27,@object
	.section	.rodata.__unnamed_27,"a",@progbits
__unnamed_27:
	.asciz	"_initializer_25_dispatch_0_transpose_1024x256_i8"
	.size	__unnamed_27, 49

	.type	__unnamed_28,@object
	.section	.rodata.__unnamed_28,"a",@progbits
__unnamed_28:
	.asciz	"_initializer_26_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_28, 49

	.type	__unnamed_29,@object
	.section	.rodata.__unnamed_29,"a",@progbits
__unnamed_29:
	.asciz	"_initializer_27_dispatch_0_transpose_1024x256_i8"
	.size	__unnamed_29, 49

	.type	__unnamed_30,@object
	.section	.rodata.__unnamed_30,"a",@progbits
__unnamed_30:
	.asciz	"_initializer_28_dispatch_0_transpose_256x1024_i8"
	.size	__unnamed_30, 49

	.type	__unnamed_31,@object
	.section	.rodata.__unnamed_31,"a",@progbits
__unnamed_31:
	.asciz	"_initializer_29_dispatch_0_transpose_1024x512_i8"
	.size	__unnamed_31, 49

	.type	__unnamed_32,@object
	.section	.rodata.__unnamed_32,"a",@progbits
__unnamed_32:
	.asciz	"_initializer_30_dispatch_0_transpose_1024x2048_i8"
	.size	__unnamed_32, 50

	.type	__unnamed_33,@object
	.section	.rodata.__unnamed_33,"a",@progbits
__unnamed_33:
	.asciz	"_initializer_31_dispatch_0_transpose_512x2048_i8"
	.size	__unnamed_33, 49

	.type	__unnamed_34,@object
	.section	.rodata.__unnamed_34,"a",@progbits
__unnamed_34:
	.asciz	"_initializer_32_dispatch_0_transpose_2048x512_i8"
	.size	__unnamed_34, 49

	.type	__unnamed_35,@object
	.section	.rodata.__unnamed_35,"a",@progbits
__unnamed_35:
	.asciz	"_initializer_33_dispatch_0_transpose_512x2048_i8"
	.size	__unnamed_35, 49

	.type	__unnamed_36,@object
	.section	.rodata.__unnamed_36,"a",@progbits
__unnamed_36:
	.asciz	"_initializer_34_dispatch_0_transpose_2048x512_i8"
	.size	__unnamed_36, 49

	.type	__unnamed_37,@object
	.section	.rodata.__unnamed_37,"a",@progbits
__unnamed_37:
	.asciz	"_initializer_35_dispatch_0_transpose_512x2048_i8"
	.size	__unnamed_37, 49

	.type	__unnamed_38,@object
	.section	.rodata.__unnamed_38,"a",@progbits
__unnamed_38:
	.asciz	"_initializer_36_dispatch_0_transpose_2048x1000_i8"
	.size	__unnamed_38, 50

	.type	__unnamed_39,@object
	.section	.rodata.__unnamed_39,"a",@progbits
__unnamed_39:
	.asciz	"_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_39, 61

	.type	__unnamed_40,@object
	.section	.rodata.__unnamed_40,"a",@progbits
__unnamed_40:
	.asciz	"_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_40, 61

	.type	__unnamed_41,@object
	.section	.rodata.__unnamed_41,"a",@progbits
__unnamed_41:
	.asciz	"_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_41, 61

	.type	__unnamed_42,@object
	.section	.rodata.__unnamed_42,"a",@progbits
__unnamed_42:
	.asciz	"_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_42, 61

	.type	__unnamed_43,@object
	.section	.rodata.__unnamed_43,"a",@progbits
__unnamed_43:
	.asciz	"_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_43, 61

	.type	__unnamed_44,@object
	.section	.rodata.__unnamed_44,"a",@progbits
__unnamed_44:
	.asciz	"_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32"
	.size	__unnamed_44, 61

	.type	__unnamed_45,@object
	.section	.rodata.__unnamed_45,"a",@progbits
__unnamed_45:
	.asciz	"_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_45, 61

	.type	__unnamed_46,@object
	.section	.rodata.__unnamed_46,"a",@progbits
__unnamed_46:
	.asciz	"_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_46, 61

	.type	__unnamed_47,@object
	.section	.rodata.__unnamed_47,"a",@progbits
__unnamed_47:
	.asciz	"_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_47, 61

	.type	__unnamed_48,@object
	.section	.rodata.__unnamed_48,"a",@progbits
__unnamed_48:
	.asciz	"_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_48, 61

	.type	__unnamed_49,@object
	.section	.rodata.__unnamed_49,"a",@progbits
__unnamed_49:
	.asciz	"_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_49, 61

	.type	__unnamed_50,@object
	.section	.rodata.__unnamed_50,"a",@progbits
__unnamed_50:
	.asciz	"_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_50, 61

	.type	__unnamed_51,@object
	.section	.rodata.__unnamed_51,"a",@progbits
__unnamed_51:
	.asciz	"_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32"
	.size	__unnamed_51, 61

	.type	__unnamed_52,@object
	.section	.rodata.__unnamed_52,"a",@progbits
__unnamed_52:
	.asciz	"_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32"
	.size	__unnamed_52, 61

	.type	__unnamed_53,@object
	.section	.rodata.__unnamed_53,"a",@progbits
__unnamed_53:
	.asciz	"_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_53, 62

	.type	__unnamed_54,@object
	.section	.rodata.__unnamed_54,"a",@progbits
__unnamed_54:
	.asciz	"_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_54, 61

	.type	__unnamed_55,@object
	.section	.rodata.__unnamed_55,"a",@progbits
__unnamed_55:
	.asciz	"_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_55, 62

	.type	__unnamed_56,@object
	.section	.rodata.__unnamed_56,"a",@progbits
__unnamed_56:
	.asciz	"_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_56, 61

	.type	__unnamed_57,@object
	.section	.rodata.__unnamed_57,"a",@progbits
__unnamed_57:
	.asciz	"_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_57, 61

	.type	__unnamed_58,@object
	.section	.rodata.__unnamed_58,"a",@progbits
__unnamed_58:
	.asciz	"_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_58, 62

	.type	__unnamed_59,@object
	.section	.rodata.__unnamed_59,"a",@progbits
__unnamed_59:
	.asciz	"_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_59, 61

	.type	__unnamed_60,@object
	.section	.rodata.__unnamed_60,"a",@progbits
__unnamed_60:
	.asciz	"_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_60, 61

	.type	__unnamed_61,@object
	.section	.rodata.__unnamed_61,"a",@progbits
__unnamed_61:
	.asciz	"_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_61, 62

	.type	__unnamed_62,@object
	.section	.rodata.__unnamed_62,"a",@progbits
__unnamed_62:
	.asciz	"_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_62, 61

	.type	__unnamed_63,@object
	.section	.rodata.__unnamed_63,"a",@progbits
__unnamed_63:
	.asciz	"_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_63, 61

	.type	__unnamed_64,@object
	.section	.rodata.__unnamed_64,"a",@progbits
__unnamed_64:
	.asciz	"_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_64, 62

	.type	__unnamed_65,@object
	.section	.rodata.__unnamed_65,"a",@progbits
__unnamed_65:
	.asciz	"_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_65, 61

	.type	__unnamed_66,@object
	.section	.rodata.__unnamed_66,"a",@progbits
__unnamed_66:
	.asciz	"_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_66, 61

	.type	__unnamed_67,@object
	.section	.rodata.__unnamed_67,"a",@progbits
__unnamed_67:
	.asciz	"_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_67, 62

	.type	__unnamed_68,@object
	.section	.rodata.__unnamed_68,"a",@progbits
__unnamed_68:
	.asciz	"_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_68, 61

	.type	__unnamed_69,@object
	.section	.rodata.__unnamed_69,"a",@progbits
__unnamed_69:
	.asciz	"_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32"
	.size	__unnamed_69, 61

	.type	__unnamed_70,@object
	.section	.rodata.__unnamed_70,"a",@progbits
__unnamed_70:
	.asciz	"_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32"
	.size	__unnamed_70, 62

	.type	__unnamed_71,@object
	.section	.rodata.__unnamed_71,"a",@progbits
__unnamed_71:
	.asciz	"_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32"
	.size	__unnamed_71, 61

	.type	__unnamed_72,@object
	.section	.rodata.__unnamed_72,"a",@progbits
__unnamed_72:
	.asciz	"_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32"
	.size	__unnamed_72, 61

	.type	__unnamed_73,@object
	.section	.rodata.__unnamed_73,"a",@progbits
__unnamed_73:
	.asciz	"_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32"
	.size	__unnamed_73, 60

	.type	__unnamed_74,@object
	.section	.rodata.__unnamed_74,"a",@progbits
__unnamed_74:
	.asciz	"_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32"
	.size	__unnamed_74, 61

	.type	__unnamed_75,@object
	.section	.rodata.__unnamed_75,"a",@progbits
__unnamed_75:
	.asciz	"_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32"
	.size	__unnamed_75, 60

	.type	__unnamed_76,@object
	.section	.rodata.__unnamed_76,"a",@progbits
__unnamed_76:
	.asciz	"_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32"
	.size	__unnamed_76, 60

	.type	__unnamed_77,@object
	.section	.rodata.__unnamed_77,"a",@progbits
__unnamed_77:
	.asciz	"_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32"
	.size	__unnamed_77, 61

	.type	__unnamed_78,@object
	.section	.rodata.__unnamed_78,"a",@progbits
__unnamed_78:
	.asciz	"_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32"
	.size	__unnamed_78, 60

	.type	__unnamed_79,@object
	.section	.rodata.__unnamed_79,"a",@progbits
__unnamed_79:
	.asciz	"_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32"
	.size	__unnamed_79, 60

	.type	__unnamed_80,@object
	.section	.rodata.__unnamed_80,"a",@progbits
__unnamed_80:
	.asciz	"_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32"
	.size	__unnamed_80, 61

	.type	__unnamed_81,@object
	.section	.rodata.__unnamed_81,"a",@progbits
__unnamed_81:
	.asciz	"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8"
	.size	__unnamed_81, 67

	.type	__unnamed_82,@object
	.section	.rodata.__unnamed_82,"a",@progbits
__unnamed_82:
	.asciz	"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32"
	.size	__unnamed_82, 63

	.type	__unnamed_83,@object
	.section	.rodata.__unnamed_83,"a",@progbits
__unnamed_83:
	.asciz	"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8"
	.size	__unnamed_83, 53

	.type	__unnamed_84,@object
	.section	.rodata.__unnamed_84,"a",@progbits
__unnamed_84:
	.asciz	"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32"
	.size	__unnamed_84, 58

	.type	__unnamed_85,@object
	.section	.rodata.__unnamed_85,"a",@progbits
__unnamed_85:
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
	.size	__unnamed_85, 40

	.type	__unnamed_86,@object
	.section	.rodata.__unnamed_86,"a",@progbits
__unnamed_86:
	.asciz	"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32"
	.size	__unnamed_86, 50

	.type	__unnamed_87,@object
	.section	.rodata.__unnamed_87,"a",@progbits
__unnamed_87:
	.asciz	"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"
	.size	__unnamed_87, 56

	.type	__unnamed_88,@object
	.section	.rodata.__unnamed_88,"a",@progbits
__unnamed_88:
	.asciz	"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32"
	.size	__unnamed_88, 63

	.type	__unnamed_89,@object
	.section	.rodata.__unnamed_89,"a",@progbits
__unnamed_89:
	.asciz	"main_graph$async_dispatch_8_slow_memcpy"
	.size	__unnamed_89, 40

	.type	__unnamed_90,@object
	.section	.rodata.__unnamed_90,"a",@progbits
__unnamed_90:
	.asciz	"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8"
	.size	__unnamed_90, 52

	.type	__unnamed_91,@object
	.section	.rodata.__unnamed_91,"a",@progbits
__unnamed_91:
	.asciz	"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"
	.size	__unnamed_91, 58

	.type	__unnamed_92,@object
	.section	.rodata.__unnamed_92,"a",@progbits
__unnamed_92:
	.asciz	"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32"
	.size	__unnamed_92, 64

	.type	__unnamed_93,@object
	.section	.rodata.__unnamed_93,"a",@progbits
__unnamed_93:
	.asciz	"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"
	.size	__unnamed_93, 58

	.type	__unnamed_94,@object
	.section	.rodata.__unnamed_94,"a",@progbits
__unnamed_94:
	.asciz	"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"
	.size	__unnamed_94, 58

	.type	__unnamed_95,@object
	.section	.rodata.__unnamed_95,"a",@progbits
__unnamed_95:
	.asciz	"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"
	.size	__unnamed_95, 58

	.type	__unnamed_96,@object
	.section	.rodata.__unnamed_96,"a",@progbits
__unnamed_96:
	.asciz	"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"
	.size	__unnamed_96, 53

	.type	__unnamed_97,@object
	.section	.rodata.__unnamed_97,"a",@progbits
__unnamed_97:
	.asciz	"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"
	.size	__unnamed_97, 58

	.type	__unnamed_98,@object
	.section	.rodata.__unnamed_98,"a",@progbits
__unnamed_98:
	.asciz	"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"
	.size	__unnamed_98, 64

	.type	__unnamed_99,@object
	.section	.rodata.__unnamed_99,"a",@progbits
__unnamed_99:
	.asciz	"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"
	.size	__unnamed_99, 58

	.type	__unnamed_100,@object
	.section	.rodata.__unnamed_100,"a",@progbits
__unnamed_100:
	.asciz	"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"
	.size	__unnamed_100, 58

	.type	__unnamed_101,@object
	.section	.rodata.__unnamed_101,"a",@progbits
__unnamed_101:
	.asciz	"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"
	.size	__unnamed_101, 53

	.type	__unnamed_102,@object
	.section	.rodata.__unnamed_102,"a",@progbits
__unnamed_102:
	.asciz	"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"
	.size	__unnamed_102, 58

	.type	__unnamed_103,@object
	.section	.rodata.__unnamed_103,"a",@progbits
__unnamed_103:
	.asciz	"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"
	.size	__unnamed_103, 64

	.type	__unnamed_104,@object
	.section	.rodata.__unnamed_104,"a",@progbits
__unnamed_104:
	.asciz	"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"
	.size	__unnamed_104, 58

	.type	__unnamed_105,@object
	.section	.rodata.__unnamed_105,"a",@progbits
__unnamed_105:
	.asciz	"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"
	.size	__unnamed_105, 64

	.type	__unnamed_106,@object
	.section	.rodata.__unnamed_106,"a",@progbits
__unnamed_106:
	.asciz	"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"
	.size	__unnamed_106, 59

	.type	__unnamed_107,@object
	.section	.rodata.__unnamed_107,"a",@progbits
__unnamed_107:
	.asciz	"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"
	.size	__unnamed_107, 63

	.type	__unnamed_108,@object
	.section	.rodata.__unnamed_108,"a",@progbits
__unnamed_108:
	.asciz	"main_graph$async_dispatch_29_generic_28x28x256_i8"
	.size	__unnamed_108, 50

	.type	__unnamed_109,@object
	.section	.rodata.__unnamed_109,"a",@progbits
__unnamed_109:
	.asciz	"main_graph$async_dispatch_30_slow_memcpy"
	.size	__unnamed_109, 41

	.type	__unnamed_110,@object
	.section	.rodata.__unnamed_110,"a",@progbits
__unnamed_110:
	.asciz	"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"
	.size	__unnamed_110, 54

	.type	__unnamed_111,@object
	.section	.rodata.__unnamed_111,"a",@progbits
__unnamed_111:
	.asciz	"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"
	.size	__unnamed_111, 59

	.type	__unnamed_112,@object
	.section	.rodata.__unnamed_112,"a",@progbits
__unnamed_112:
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"
	.size	__unnamed_112, 63

	.type	__unnamed_113,@object
	.section	.rodata.__unnamed_113,"a",@progbits
__unnamed_113:
	.asciz	"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"
	.size	__unnamed_113, 58

	.type	__unnamed_114,@object
	.section	.rodata.__unnamed_114,"a",@progbits
__unnamed_114:
	.asciz	"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"
	.size	__unnamed_114, 58

	.type	__unnamed_115,@object
	.section	.rodata.__unnamed_115,"a",@progbits
__unnamed_115:
	.asciz	"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"
	.size	__unnamed_115, 58

	.type	__unnamed_116,@object
	.section	.rodata.__unnamed_116,"a",@progbits
__unnamed_116:
	.asciz	"main_graph$async_dispatch_37_slow_memcpy"
	.size	__unnamed_116, 41

	.type	__unnamed_117,@object
	.section	.rodata.__unnamed_117,"a",@progbits
__unnamed_117:
	.asciz	"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"
	.size	__unnamed_117, 54

	.type	__unnamed_118,@object
	.section	.rodata.__unnamed_118,"a",@progbits
__unnamed_118:
	.asciz	"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"
	.size	__unnamed_118, 59

	.type	__unnamed_119,@object
	.section	.rodata.__unnamed_119,"a",@progbits
__unnamed_119:
	.asciz	"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"
	.size	__unnamed_119, 63

	.type	__unnamed_120,@object
	.section	.rodata.__unnamed_120,"a",@progbits
__unnamed_120:
	.asciz	"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"
	.size	__unnamed_120, 58

	.type	__unnamed_121,@object
	.section	.rodata.__unnamed_121,"a",@progbits
__unnamed_121:
	.asciz	"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"
	.size	__unnamed_121, 58

	.type	__unnamed_122,@object
	.section	.rodata.__unnamed_122,"a",@progbits
__unnamed_122:
	.asciz	"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"
	.size	__unnamed_122, 54

	.type	__unnamed_123,@object
	.section	.rodata.__unnamed_123,"a",@progbits
__unnamed_123:
	.asciz	"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"
	.size	__unnamed_123, 59

	.type	__unnamed_124,@object
	.section	.rodata.__unnamed_124,"a",@progbits
__unnamed_124:
	.asciz	"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"
	.size	__unnamed_124, 63

	.type	__unnamed_125,@object
	.section	.rodata.__unnamed_125,"a",@progbits
__unnamed_125:
	.asciz	"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"
	.size	__unnamed_125, 58

	.type	__unnamed_126,@object
	.section	.rodata.__unnamed_126,"a",@progbits
__unnamed_126:
	.asciz	"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"
	.size	__unnamed_126, 58

	.type	__unnamed_127,@object
	.section	.rodata.__unnamed_127,"a",@progbits
__unnamed_127:
	.asciz	"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"
	.size	__unnamed_127, 54

	.type	__unnamed_128,@object
	.section	.rodata.__unnamed_128,"a",@progbits
__unnamed_128:
	.asciz	"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"
	.size	__unnamed_128, 59

	.type	__unnamed_129,@object
	.section	.rodata.__unnamed_129,"a",@progbits
__unnamed_129:
	.asciz	"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"
	.size	__unnamed_129, 63

	.type	__unnamed_130,@object
	.section	.rodata.__unnamed_130,"a",@progbits
__unnamed_130:
	.asciz	"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"
	.size	__unnamed_130, 58

	.type	__unnamed_131,@object
	.section	.rodata.__unnamed_131,"a",@progbits
__unnamed_131:
	.asciz	"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"
	.size	__unnamed_131, 58

	.type	__unnamed_132,@object
	.section	.rodata.__unnamed_132,"a",@progbits
__unnamed_132:
	.asciz	"main_graph$async_dispatch_55_generic_14x14x512_i8"
	.size	__unnamed_132, 50

	.type	__unnamed_133,@object
	.section	.rodata.__unnamed_133,"a",@progbits
__unnamed_133:
	.asciz	"main_graph$async_dispatch_56_slow_memcpy"
	.size	__unnamed_133, 41

	.type	__unnamed_134,@object
	.section	.rodata.__unnamed_134,"a",@progbits
__unnamed_134:
	.asciz	"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"
	.size	__unnamed_134, 54

	.type	__unnamed_135,@object
	.section	.rodata.__unnamed_135,"a",@progbits
__unnamed_135:
	.asciz	"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_135, 59

	.type	__unnamed_136,@object
	.section	.rodata.__unnamed_136,"a",@progbits
__unnamed_136:
	.asciz	"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_136, 59

	.type	__unnamed_137,@object
	.section	.rodata.__unnamed_137,"a",@progbits
__unnamed_137:
	.asciz	"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"
	.size	__unnamed_137, 59

	.type	__unnamed_138,@object
	.section	.rodata.__unnamed_138,"a",@progbits
__unnamed_138:
	.asciz	"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"
	.size	__unnamed_138, 59

	.type	__unnamed_139,@object
	.section	.rodata.__unnamed_139,"a",@progbits
__unnamed_139:
	.asciz	"main_graph$async_dispatch_62_slow_memcpy"
	.size	__unnamed_139, 41

	.type	__unnamed_140,@object
	.section	.rodata.__unnamed_140,"a",@progbits
__unnamed_140:
	.asciz	"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"
	.size	__unnamed_140, 54

	.type	__unnamed_141,@object
	.section	.rodata.__unnamed_141,"a",@progbits
__unnamed_141:
	.asciz	"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_141, 59

	.type	__unnamed_142,@object
	.section	.rodata.__unnamed_142,"a",@progbits
__unnamed_142:
	.asciz	"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_142, 59

	.type	__unnamed_143,@object
	.section	.rodata.__unnamed_143,"a",@progbits
__unnamed_143:
	.asciz	"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"
	.size	__unnamed_143, 59

	.type	__unnamed_144,@object
	.section	.rodata.__unnamed_144,"a",@progbits
__unnamed_144:
	.asciz	"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"
	.size	__unnamed_144, 54

	.type	__unnamed_145,@object
	.section	.rodata.__unnamed_145,"a",@progbits
__unnamed_145:
	.asciz	"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_145, 59

	.type	__unnamed_146,@object
	.section	.rodata.__unnamed_146,"a",@progbits
__unnamed_146:
	.asciz	"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_146, 59

	.type	__unnamed_147,@object
	.section	.rodata.__unnamed_147,"a",@progbits
__unnamed_147:
	.asciz	"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"
	.size	__unnamed_147, 59

	.type	__unnamed_148,@object
	.section	.rodata.__unnamed_148,"a",@progbits
__unnamed_148:
	.asciz	"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"
	.size	__unnamed_148, 54

	.type	__unnamed_149,@object
	.section	.rodata.__unnamed_149,"a",@progbits
__unnamed_149:
	.asciz	"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_149, 59

	.type	__unnamed_150,@object
	.section	.rodata.__unnamed_150,"a",@progbits
__unnamed_150:
	.asciz	"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_150, 59

	.type	__unnamed_151,@object
	.section	.rodata.__unnamed_151,"a",@progbits
__unnamed_151:
	.asciz	"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"
	.size	__unnamed_151, 59

	.type	__unnamed_152,@object
	.section	.rodata.__unnamed_152,"a",@progbits
__unnamed_152:
	.asciz	"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"
	.size	__unnamed_152, 54

	.type	__unnamed_153,@object
	.section	.rodata.__unnamed_153,"a",@progbits
__unnamed_153:
	.asciz	"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_153, 59

	.type	__unnamed_154,@object
	.section	.rodata.__unnamed_154,"a",@progbits
__unnamed_154:
	.asciz	"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_154, 59

	.type	__unnamed_155,@object
	.section	.rodata.__unnamed_155,"a",@progbits
__unnamed_155:
	.asciz	"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"
	.size	__unnamed_155, 59

	.type	__unnamed_156,@object
	.section	.rodata.__unnamed_156,"a",@progbits
__unnamed_156:
	.asciz	"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"
	.size	__unnamed_156, 54

	.type	__unnamed_157,@object
	.section	.rodata.__unnamed_157,"a",@progbits
__unnamed_157:
	.asciz	"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"
	.size	__unnamed_157, 59

	.type	__unnamed_158,@object
	.section	.rodata.__unnamed_158,"a",@progbits
__unnamed_158:
	.asciz	"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"
	.size	__unnamed_158, 59

	.type	__unnamed_159,@object
	.section	.rodata.__unnamed_159,"a",@progbits
__unnamed_159:
	.asciz	"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"
	.size	__unnamed_159, 59

	.type	__unnamed_160,@object
	.section	.rodata.__unnamed_160,"a",@progbits
__unnamed_160:
	.asciz	"main_graph$async_dispatch_87_generic_7x7x1024_i8"
	.size	__unnamed_160, 49

	.type	__unnamed_161,@object
	.section	.rodata.__unnamed_161,"a",@progbits
__unnamed_161:
	.asciz	"main_graph$async_dispatch_88_slow_memcpy"
	.size	__unnamed_161, 41

	.type	__unnamed_162,@object
	.section	.rodata.__unnamed_162,"a",@progbits
__unnamed_162:
	.asciz	"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"
	.size	__unnamed_162, 52

	.type	__unnamed_163,@object
	.section	.rodata.__unnamed_163,"a",@progbits
__unnamed_163:
	.asciz	"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"
	.size	__unnamed_163, 58

	.type	__unnamed_164,@object
	.section	.rodata.__unnamed_164,"a",@progbits
__unnamed_164:
	.asciz	"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"
	.size	__unnamed_164, 58

	.type	__unnamed_165,@object
	.section	.rodata.__unnamed_165,"a",@progbits
__unnamed_165:
	.asciz	"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"
	.size	__unnamed_165, 59

	.type	__unnamed_166,@object
	.section	.rodata.__unnamed_166,"a",@progbits
__unnamed_166:
	.asciz	"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"
	.size	__unnamed_166, 58

	.type	__unnamed_167,@object
	.section	.rodata.__unnamed_167,"a",@progbits
__unnamed_167:
	.asciz	"main_graph$async_dispatch_94_slow_memcpy"
	.size	__unnamed_167, 41

	.type	__unnamed_168,@object
	.section	.rodata.__unnamed_168,"a",@progbits
__unnamed_168:
	.asciz	"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"
	.size	__unnamed_168, 52

	.type	__unnamed_169,@object
	.section	.rodata.__unnamed_169,"a",@progbits
__unnamed_169:
	.asciz	"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"
	.size	__unnamed_169, 58

	.type	__unnamed_170,@object
	.section	.rodata.__unnamed_170,"a",@progbits
__unnamed_170:
	.asciz	"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"
	.size	__unnamed_170, 58

	.type	__unnamed_171,@object
	.section	.rodata.__unnamed_171,"a",@progbits
__unnamed_171:
	.asciz	"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"
	.size	__unnamed_171, 58

	.type	__unnamed_172,@object
	.section	.rodata.__unnamed_172,"a",@progbits
__unnamed_172:
	.asciz	"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"
	.size	__unnamed_172, 53

	.type	__unnamed_173,@object
	.section	.rodata.__unnamed_173,"a",@progbits
__unnamed_173:
	.asciz	"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"
	.size	__unnamed_173, 59

	.type	__unnamed_174,@object
	.section	.rodata.__unnamed_174,"a",@progbits
__unnamed_174:
	.asciz	"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"
	.size	__unnamed_174, 59

	.type	__unnamed_175,@object
	.section	.rodata.__unnamed_175,"a",@progbits
__unnamed_175:
	.asciz	"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"
	.size	__unnamed_175, 58

	.type	__unnamed_176,@object
	.section	.rodata.__unnamed_176,"a",@progbits
__unnamed_176:
	.asciz	"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"
	.size	__unnamed_176, 59

	.type	__unnamed_177,@object
	.section	.rodata.__unnamed_177,"a",@progbits
__unnamed_177:
	.asciz	"main_graph$async_dispatch_105_elementwise_1000_i8xf32"
	.size	__unnamed_177, 54

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.quad	__unnamed_3
	.quad	__unnamed_4
	.quad	__unnamed_5
	.quad	__unnamed_6
	.quad	__unnamed_7
	.quad	__unnamed_8
	.quad	__unnamed_9
	.quad	__unnamed_10
	.quad	__unnamed_11
	.quad	__unnamed_12
	.quad	__unnamed_13
	.quad	__unnamed_14
	.quad	__unnamed_15
	.quad	__unnamed_16
	.quad	__unnamed_17
	.quad	__unnamed_18
	.quad	__unnamed_19
	.quad	__unnamed_20
	.quad	__unnamed_21
	.quad	__unnamed_22
	.quad	__unnamed_23
	.quad	__unnamed_24
	.quad	__unnamed_25
	.quad	__unnamed_26
	.quad	__unnamed_27
	.quad	__unnamed_28
	.quad	__unnamed_29
	.quad	__unnamed_30
	.quad	__unnamed_31
	.quad	__unnamed_32
	.quad	__unnamed_33
	.quad	__unnamed_34
	.quad	__unnamed_35
	.quad	__unnamed_36
	.quad	__unnamed_37
	.quad	__unnamed_38
	.quad	__unnamed_39
	.quad	__unnamed_40
	.quad	__unnamed_41
	.quad	__unnamed_42
	.quad	__unnamed_43
	.quad	__unnamed_44
	.quad	__unnamed_45
	.quad	__unnamed_46
	.quad	__unnamed_47
	.quad	__unnamed_48
	.quad	__unnamed_49
	.quad	__unnamed_50
	.quad	__unnamed_51
	.quad	__unnamed_52
	.quad	__unnamed_53
	.quad	__unnamed_54
	.quad	__unnamed_55
	.quad	__unnamed_56
	.quad	__unnamed_57
	.quad	__unnamed_58
	.quad	__unnamed_59
	.quad	__unnamed_60
	.quad	__unnamed_61
	.quad	__unnamed_62
	.quad	__unnamed_63
	.quad	__unnamed_64
	.quad	__unnamed_65
	.quad	__unnamed_66
	.quad	__unnamed_67
	.quad	__unnamed_68
	.quad	__unnamed_69
	.quad	__unnamed_70
	.quad	__unnamed_71
	.quad	__unnamed_72
	.quad	__unnamed_73
	.quad	__unnamed_74
	.quad	__unnamed_75
	.quad	__unnamed_76
	.quad	__unnamed_77
	.quad	__unnamed_78
	.quad	__unnamed_79
	.quad	__unnamed_80
	.quad	__unnamed_81
	.quad	__unnamed_82
	.quad	__unnamed_83
	.quad	__unnamed_84
	.quad	__unnamed_85
	.quad	__unnamed_86
	.quad	__unnamed_87
	.quad	__unnamed_88
	.quad	__unnamed_89
	.quad	__unnamed_90
	.quad	__unnamed_91
	.quad	__unnamed_92
	.quad	__unnamed_93
	.quad	__unnamed_94
	.quad	__unnamed_95
	.quad	__unnamed_96
	.quad	__unnamed_97
	.quad	__unnamed_98
	.quad	__unnamed_99
	.quad	__unnamed_100
	.quad	__unnamed_101
	.quad	__unnamed_102
	.quad	__unnamed_103
	.quad	__unnamed_104
	.quad	__unnamed_105
	.quad	__unnamed_106
	.quad	__unnamed_107
	.quad	__unnamed_108
	.quad	__unnamed_109
	.quad	__unnamed_110
	.quad	__unnamed_111
	.quad	__unnamed_112
	.quad	__unnamed_113
	.quad	__unnamed_114
	.quad	__unnamed_115
	.quad	__unnamed_116
	.quad	__unnamed_117
	.quad	__unnamed_118
	.quad	__unnamed_119
	.quad	__unnamed_120
	.quad	__unnamed_121
	.quad	__unnamed_122
	.quad	__unnamed_123
	.quad	__unnamed_124
	.quad	__unnamed_125
	.quad	__unnamed_126
	.quad	__unnamed_127
	.quad	__unnamed_128
	.quad	__unnamed_129
	.quad	__unnamed_130
	.quad	__unnamed_131
	.quad	__unnamed_132
	.quad	__unnamed_133
	.quad	__unnamed_134
	.quad	__unnamed_135
	.quad	__unnamed_136
	.quad	__unnamed_137
	.quad	__unnamed_138
	.quad	__unnamed_139
	.quad	__unnamed_140
	.quad	__unnamed_141
	.quad	__unnamed_142
	.quad	__unnamed_143
	.quad	__unnamed_144
	.quad	__unnamed_145
	.quad	__unnamed_146
	.quad	__unnamed_147
	.quad	__unnamed_148
	.quad	__unnamed_149
	.quad	__unnamed_150
	.quad	__unnamed_151
	.quad	__unnamed_152
	.quad	__unnamed_153
	.quad	__unnamed_154
	.quad	__unnamed_155
	.quad	__unnamed_156
	.quad	__unnamed_157
	.quad	__unnamed_158
	.quad	__unnamed_159
	.quad	__unnamed_160
	.quad	__unnamed_161
	.quad	__unnamed_162
	.quad	__unnamed_163
	.quad	__unnamed_164
	.quad	__unnamed_165
	.quad	__unnamed_166
	.quad	__unnamed_167
	.quad	__unnamed_168
	.quad	__unnamed_169
	.quad	__unnamed_170
	.quad	__unnamed_171
	.quad	__unnamed_172
	.quad	__unnamed_173
	.quad	__unnamed_174
	.quad	__unnamed_175
	.quad	__unnamed_176
	.quad	__unnamed_177
	.size	iree_hal_executable_library_query_v0_names, 1408

	.type	__unnamed_178,@object
	.section	.rodata.__unnamed_178,"a",@progbits
__unnamed_178:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_178, 62

	.type	__unnamed_179,@object
	.section	.rodata.__unnamed_179,"a",@progbits
__unnamed_179:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_179, 62

	.type	__unnamed_180,@object
	.section	.rodata.__unnamed_180,"a",@progbits
__unnamed_180:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_180, 62

	.type	__unnamed_181,@object
	.section	.rodata.__unnamed_181,"a",@progbits
__unnamed_181:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_181, 62

	.type	__unnamed_182,@object
	.section	.rodata.__unnamed_182,"a",@progbits
__unnamed_182:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_182, 62

	.type	__unnamed_183,@object
	.section	.rodata.__unnamed_183,"a",@progbits
__unnamed_183:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_183, 62

	.type	__unnamed_184,@object
	.section	.rodata.__unnamed_184,"a",@progbits
__unnamed_184:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_184, 62

	.type	__unnamed_185,@object
	.section	.rodata.__unnamed_185,"a",@progbits
__unnamed_185:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_185, 62

	.type	__unnamed_186,@object
	.section	.rodata.__unnamed_186,"a",@progbits
__unnamed_186:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_186, 62

	.type	__unnamed_187,@object
	.section	.rodata.__unnamed_187,"a",@progbits
__unnamed_187:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_187, 62

	.type	__unnamed_188,@object
	.section	.rodata.__unnamed_188,"a",@progbits
__unnamed_188:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_188, 62

	.type	__unnamed_189,@object
	.section	.rodata.__unnamed_189,"a",@progbits
__unnamed_189:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_189, 62

	.type	__unnamed_190,@object
	.section	.rodata.__unnamed_190,"a",@progbits
__unnamed_190:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_190, 62

	.type	__unnamed_191,@object
	.section	.rodata.__unnamed_191,"a",@progbits
__unnamed_191:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_191, 62

	.type	__unnamed_192,@object
	.section	.rodata.__unnamed_192,"a",@progbits
__unnamed_192:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_192, 62

	.type	__unnamed_193,@object
	.section	.rodata.__unnamed_193,"a",@progbits
__unnamed_193:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_193, 62

	.type	__unnamed_194,@object
	.section	.rodata.__unnamed_194,"a",@progbits
__unnamed_194:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_194, 62

	.type	__unnamed_195,@object
	.section	.rodata.__unnamed_195,"a",@progbits
__unnamed_195:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_195, 62

	.type	__unnamed_196,@object
	.section	.rodata.__unnamed_196,"a",@progbits
__unnamed_196:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_196, 62

	.type	__unnamed_197,@object
	.section	.rodata.__unnamed_197,"a",@progbits
__unnamed_197:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_197, 62

	.type	__unnamed_198,@object
	.section	.rodata.__unnamed_198,"a",@progbits
__unnamed_198:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_198, 62

	.type	__unnamed_199,@object
	.section	.rodata.__unnamed_199,"a",@progbits
__unnamed_199:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_199, 62

	.type	__unnamed_200,@object
	.section	.rodata.__unnamed_200,"a",@progbits
__unnamed_200:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_200, 62

	.type	__unnamed_201,@object
	.section	.rodata.__unnamed_201,"a",@progbits
__unnamed_201:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_201, 62

	.type	__unnamed_202,@object
	.section	.rodata.__unnamed_202,"a",@progbits
__unnamed_202:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_202, 62

	.type	__unnamed_203,@object
	.section	.rodata.__unnamed_203,"a",@progbits
__unnamed_203:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_203, 62

	.type	__unnamed_204,@object
	.section	.rodata.__unnamed_204,"a",@progbits
__unnamed_204:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_204, 62

	.type	__unnamed_205,@object
	.section	.rodata.__unnamed_205,"a",@progbits
__unnamed_205:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_205, 62

	.type	__unnamed_206,@object
	.section	.rodata.__unnamed_206,"a",@progbits
__unnamed_206:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_206, 62

	.type	__unnamed_207,@object
	.section	.rodata.__unnamed_207,"a",@progbits
__unnamed_207:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_207, 62

	.type	__unnamed_208,@object
	.section	.rodata.__unnamed_208,"a",@progbits
__unnamed_208:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_208, 62

	.type	__unnamed_209,@object
	.section	.rodata.__unnamed_209,"a",@progbits
__unnamed_209:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_209, 62

	.type	__unnamed_210,@object
	.section	.rodata.__unnamed_210,"a",@progbits
__unnamed_210:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_210, 62

	.type	__unnamed_211,@object
	.section	.rodata.__unnamed_211,"a",@progbits
__unnamed_211:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_211, 62

	.type	__unnamed_212,@object
	.section	.rodata.__unnamed_212,"a",@progbits
__unnamed_212:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_212, 62

	.type	__unnamed_213,@object
	.section	.rodata.__unnamed_213,"a",@progbits
__unnamed_213:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_213, 62

	.type	__unnamed_214,@object
	.section	.rodata.__unnamed_214,"a",@progbits
__unnamed_214:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_214, 62

	.type	__unnamed_215,@object
	.section	.rodata.__unnamed_215,"a",@progbits
__unnamed_215:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_215, 62

	.type	__unnamed_216,@object
	.section	.rodata.__unnamed_216,"a",@progbits
__unnamed_216:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_216, 62

	.type	__unnamed_217,@object
	.section	.rodata.__unnamed_217,"a",@progbits
__unnamed_217:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_217, 62

	.type	__unnamed_218,@object
	.section	.rodata.__unnamed_218,"a",@progbits
__unnamed_218:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_218, 62

	.type	__unnamed_219,@object
	.section	.rodata.__unnamed_219,"a",@progbits
__unnamed_219:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_219, 62

	.type	__unnamed_220,@object
	.section	.rodata.__unnamed_220,"a",@progbits
__unnamed_220:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_220, 62

	.type	__unnamed_221,@object
	.section	.rodata.__unnamed_221,"a",@progbits
__unnamed_221:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_221, 62

	.type	__unnamed_222,@object
	.section	.rodata.__unnamed_222,"a",@progbits
__unnamed_222:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_222, 62

	.type	__unnamed_223,@object
	.section	.rodata.__unnamed_223,"a",@progbits
__unnamed_223:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_223, 62

	.type	__unnamed_224,@object
	.section	.rodata.__unnamed_224,"a",@progbits
__unnamed_224:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_224, 62

	.type	__unnamed_225,@object
	.section	.rodata.__unnamed_225,"a",@progbits
__unnamed_225:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_225, 62

	.type	__unnamed_226,@object
	.section	.rodata.__unnamed_226,"a",@progbits
__unnamed_226:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_226, 62

	.type	__unnamed_227,@object
	.section	.rodata.__unnamed_227,"a",@progbits
__unnamed_227:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_227, 62

	.type	__unnamed_228,@object
	.section	.rodata.__unnamed_228,"a",@progbits
__unnamed_228:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_228, 62

	.type	__unnamed_229,@object
	.section	.rodata.__unnamed_229,"a",@progbits
__unnamed_229:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_229, 62

	.type	__unnamed_230,@object
	.section	.rodata.__unnamed_230,"a",@progbits
__unnamed_230:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_230, 62

	.type	__unnamed_231,@object
	.section	.rodata.__unnamed_231,"a",@progbits
__unnamed_231:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_231, 62

	.type	__unnamed_232,@object
	.section	.rodata.__unnamed_232,"a",@progbits
__unnamed_232:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_232, 62

	.type	__unnamed_233,@object
	.section	.rodata.__unnamed_233,"a",@progbits
__unnamed_233:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_233, 62

	.type	__unnamed_234,@object
	.section	.rodata.__unnamed_234,"a",@progbits
__unnamed_234:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_234, 62

	.type	__unnamed_235,@object
	.section	.rodata.__unnamed_235,"a",@progbits
__unnamed_235:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_235, 62

	.type	__unnamed_236,@object
	.section	.rodata.__unnamed_236,"a",@progbits
__unnamed_236:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_236, 62

	.type	__unnamed_237,@object
	.section	.rodata.__unnamed_237,"a",@progbits
__unnamed_237:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_237, 62

	.type	__unnamed_238,@object
	.section	.rodata.__unnamed_238,"a",@progbits
__unnamed_238:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_238, 62

	.type	__unnamed_239,@object
	.section	.rodata.__unnamed_239,"a",@progbits
__unnamed_239:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_239, 62

	.type	__unnamed_240,@object
	.section	.rodata.__unnamed_240,"a",@progbits
__unnamed_240:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_240, 62

	.type	__unnamed_241,@object
	.section	.rodata.__unnamed_241,"a",@progbits
__unnamed_241:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_241, 62

	.type	__unnamed_242,@object
	.section	.rodata.__unnamed_242,"a",@progbits
__unnamed_242:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_242, 62

	.type	__unnamed_243,@object
	.section	.rodata.__unnamed_243,"a",@progbits
__unnamed_243:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_243, 62

	.type	__unnamed_244,@object
	.section	.rodata.__unnamed_244,"a",@progbits
__unnamed_244:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_244, 62

	.type	__unnamed_245,@object
	.section	.rodata.__unnamed_245,"a",@progbits
__unnamed_245:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_245, 62

	.type	__unnamed_246,@object
	.section	.rodata.__unnamed_246,"a",@progbits
__unnamed_246:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_246, 62

	.type	__unnamed_247,@object
	.section	.rodata.__unnamed_247,"a",@progbits
__unnamed_247:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_247, 62

	.type	__unnamed_248,@object
	.section	.rodata.__unnamed_248,"a",@progbits
__unnamed_248:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_248, 62

	.type	__unnamed_249,@object
	.section	.rodata.__unnamed_249,"a",@progbits
__unnamed_249:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_249, 62

	.type	__unnamed_250,@object
	.section	.rodata.__unnamed_250,"a",@progbits
__unnamed_250:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_250, 62

	.type	__unnamed_251,@object
	.section	.rodata.__unnamed_251,"a",@progbits
__unnamed_251:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_251, 62

	.type	__unnamed_252,@object
	.section	.rodata.__unnamed_252,"a",@progbits
__unnamed_252:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_252, 62

	.type	__unnamed_253,@object
	.section	.rodata.__unnamed_253,"a",@progbits
__unnamed_253:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_253, 62

	.type	__unnamed_254,@object
	.section	.rodata.__unnamed_254,"a",@progbits
__unnamed_254:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_254, 62

	.type	__unnamed_255,@object
	.section	.rodata.__unnamed_255,"a",@progbits
__unnamed_255:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_255, 62

	.type	__unnamed_256,@object
	.section	.rodata.__unnamed_256,"a",@progbits
__unnamed_256:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_256, 62

	.type	__unnamed_257,@object
	.section	.rodata.__unnamed_257,"a",@progbits
__unnamed_257:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_257, 62

	.type	__unnamed_258,@object
	.section	.rodata.__unnamed_258,"a",@progbits
__unnamed_258:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_258, 62

	.type	__unnamed_259,@object
	.section	.rodata.__unnamed_259,"a",@progbits
__unnamed_259:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_259, 62

	.type	__unnamed_260,@object
	.section	.rodata.__unnamed_260,"a",@progbits
__unnamed_260:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_260, 62

	.type	__unnamed_261,@object
	.section	.rodata.__unnamed_261,"a",@progbits
__unnamed_261:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_261, 62

	.type	__unnamed_262,@object
	.section	.rodata.__unnamed_262,"a",@progbits
__unnamed_262:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_262, 62

	.type	__unnamed_263,@object
	.section	.rodata.__unnamed_263,"a",@progbits
__unnamed_263:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_263, 62

	.type	__unnamed_264,@object
	.section	.rodata.__unnamed_264,"a",@progbits
__unnamed_264:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_264, 62

	.type	__unnamed_265,@object
	.section	.rodata.__unnamed_265,"a",@progbits
__unnamed_265:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_265, 62

	.type	__unnamed_266,@object
	.section	.rodata.__unnamed_266,"a",@progbits
__unnamed_266:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_266, 62

	.type	__unnamed_267,@object
	.section	.rodata.__unnamed_267,"a",@progbits
__unnamed_267:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_267, 62

	.type	__unnamed_268,@object
	.section	.rodata.__unnamed_268,"a",@progbits
__unnamed_268:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_268, 62

	.type	__unnamed_269,@object
	.section	.rodata.__unnamed_269,"a",@progbits
__unnamed_269:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_269, 62

	.type	__unnamed_270,@object
	.section	.rodata.__unnamed_270,"a",@progbits
__unnamed_270:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_270, 62

	.type	__unnamed_271,@object
	.section	.rodata.__unnamed_271,"a",@progbits
__unnamed_271:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_271, 62

	.type	__unnamed_272,@object
	.section	.rodata.__unnamed_272,"a",@progbits
__unnamed_272:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_272, 62

	.type	__unnamed_273,@object
	.section	.rodata.__unnamed_273,"a",@progbits
__unnamed_273:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_273, 62

	.type	__unnamed_274,@object
	.section	.rodata.__unnamed_274,"a",@progbits
__unnamed_274:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_274, 62

	.type	__unnamed_275,@object
	.section	.rodata.__unnamed_275,"a",@progbits
__unnamed_275:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_275, 62

	.type	__unnamed_276,@object
	.section	.rodata.__unnamed_276,"a",@progbits
__unnamed_276:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_276, 62

	.type	__unnamed_277,@object
	.section	.rodata.__unnamed_277,"a",@progbits
__unnamed_277:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_277, 62

	.type	__unnamed_278,@object
	.section	.rodata.__unnamed_278,"a",@progbits
__unnamed_278:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_278, 62

	.type	__unnamed_279,@object
	.section	.rodata.__unnamed_279,"a",@progbits
__unnamed_279:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_279, 62

	.type	__unnamed_280,@object
	.section	.rodata.__unnamed_280,"a",@progbits
__unnamed_280:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_280, 62

	.type	__unnamed_281,@object
	.section	.rodata.__unnamed_281,"a",@progbits
__unnamed_281:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_281, 62

	.type	__unnamed_282,@object
	.section	.rodata.__unnamed_282,"a",@progbits
__unnamed_282:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_282, 62

	.type	__unnamed_283,@object
	.section	.rodata.__unnamed_283,"a",@progbits
__unnamed_283:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_283, 62

	.type	__unnamed_284,@object
	.section	.rodata.__unnamed_284,"a",@progbits
__unnamed_284:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_284, 62

	.type	__unnamed_285,@object
	.section	.rodata.__unnamed_285,"a",@progbits
__unnamed_285:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_285, 62

	.type	__unnamed_286,@object
	.section	.rodata.__unnamed_286,"a",@progbits
__unnamed_286:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_286, 62

	.type	__unnamed_287,@object
	.section	.rodata.__unnamed_287,"a",@progbits
__unnamed_287:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_287, 62

	.type	__unnamed_288,@object
	.section	.rodata.__unnamed_288,"a",@progbits
__unnamed_288:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_288, 62

	.type	__unnamed_289,@object
	.section	.rodata.__unnamed_289,"a",@progbits
__unnamed_289:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_289, 62

	.type	__unnamed_290,@object
	.section	.rodata.__unnamed_290,"a",@progbits
__unnamed_290:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_290, 62

	.type	__unnamed_291,@object
	.section	.rodata.__unnamed_291,"a",@progbits
__unnamed_291:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_291, 62

	.type	__unnamed_292,@object
	.section	.rodata.__unnamed_292,"a",@progbits
__unnamed_292:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_292, 62

	.type	__unnamed_293,@object
	.section	.rodata.__unnamed_293,"a",@progbits
__unnamed_293:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_293, 62

	.type	__unnamed_294,@object
	.section	.rodata.__unnamed_294,"a",@progbits
__unnamed_294:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_294, 62

	.type	__unnamed_295,@object
	.section	.rodata.__unnamed_295,"a",@progbits
__unnamed_295:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_295, 62

	.type	__unnamed_296,@object
	.section	.rodata.__unnamed_296,"a",@progbits
__unnamed_296:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_296, 62

	.type	__unnamed_297,@object
	.section	.rodata.__unnamed_297,"a",@progbits
__unnamed_297:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_297, 62

	.type	__unnamed_298,@object
	.section	.rodata.__unnamed_298,"a",@progbits
__unnamed_298:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_298, 62

	.type	__unnamed_299,@object
	.section	.rodata.__unnamed_299,"a",@progbits
__unnamed_299:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_299, 62

	.type	__unnamed_300,@object
	.section	.rodata.__unnamed_300,"a",@progbits
__unnamed_300:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_300, 62

	.type	__unnamed_301,@object
	.section	.rodata.__unnamed_301,"a",@progbits
__unnamed_301:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_301, 62

	.type	__unnamed_302,@object
	.section	.rodata.__unnamed_302,"a",@progbits
__unnamed_302:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_302, 62

	.type	__unnamed_303,@object
	.section	.rodata.__unnamed_303,"a",@progbits
__unnamed_303:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_303, 62

	.type	__unnamed_304,@object
	.section	.rodata.__unnamed_304,"a",@progbits
__unnamed_304:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_304, 62

	.type	__unnamed_305,@object
	.section	.rodata.__unnamed_305,"a",@progbits
__unnamed_305:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_305, 62

	.type	__unnamed_306,@object
	.section	.rodata.__unnamed_306,"a",@progbits
__unnamed_306:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_306, 62

	.type	__unnamed_307,@object
	.section	.rodata.__unnamed_307,"a",@progbits
__unnamed_307:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_307, 62

	.type	__unnamed_308,@object
	.section	.rodata.__unnamed_308,"a",@progbits
__unnamed_308:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_308, 62

	.type	__unnamed_309,@object
	.section	.rodata.__unnamed_309,"a",@progbits
__unnamed_309:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_309, 62

	.type	__unnamed_310,@object
	.section	.rodata.__unnamed_310,"a",@progbits
__unnamed_310:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_310, 62

	.type	__unnamed_311,@object
	.section	.rodata.__unnamed_311,"a",@progbits
__unnamed_311:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_311, 62

	.type	__unnamed_312,@object
	.section	.rodata.__unnamed_312,"a",@progbits
__unnamed_312:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_312, 62

	.type	__unnamed_313,@object
	.section	.rodata.__unnamed_313,"a",@progbits
__unnamed_313:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_313, 62

	.type	__unnamed_314,@object
	.section	.rodata.__unnamed_314,"a",@progbits
__unnamed_314:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_314, 62

	.type	__unnamed_315,@object
	.section	.rodata.__unnamed_315,"a",@progbits
__unnamed_315:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_315, 62

	.type	__unnamed_316,@object
	.section	.rodata.__unnamed_316,"a",@progbits
__unnamed_316:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_316, 62

	.type	__unnamed_317,@object
	.section	.rodata.__unnamed_317,"a",@progbits
__unnamed_317:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_317, 62

	.type	__unnamed_318,@object
	.section	.rodata.__unnamed_318,"a",@progbits
__unnamed_318:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_318, 62

	.type	__unnamed_319,@object
	.section	.rodata.__unnamed_319,"a",@progbits
__unnamed_319:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_319, 62

	.type	__unnamed_320,@object
	.section	.rodata.__unnamed_320,"a",@progbits
__unnamed_320:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_320, 62

	.type	__unnamed_321,@object
	.section	.rodata.__unnamed_321,"a",@progbits
__unnamed_321:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_321, 62

	.type	__unnamed_322,@object
	.section	.rodata.__unnamed_322,"a",@progbits
__unnamed_322:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_322, 62

	.type	__unnamed_323,@object
	.section	.rodata.__unnamed_323,"a",@progbits
__unnamed_323:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_323, 62

	.type	__unnamed_324,@object
	.section	.rodata.__unnamed_324,"a",@progbits
__unnamed_324:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_324, 62

	.type	__unnamed_325,@object
	.section	.rodata.__unnamed_325,"a",@progbits
__unnamed_325:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_325, 62

	.type	__unnamed_326,@object
	.section	.rodata.__unnamed_326,"a",@progbits
__unnamed_326:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_326, 62

	.type	__unnamed_327,@object
	.section	.rodata.__unnamed_327,"a",@progbits
__unnamed_327:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_327, 62

	.type	__unnamed_328,@object
	.section	.rodata.__unnamed_328,"a",@progbits
__unnamed_328:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_328, 62

	.type	__unnamed_329,@object
	.section	.rodata.__unnamed_329,"a",@progbits
__unnamed_329:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_329, 62

	.type	__unnamed_330,@object
	.section	.rodata.__unnamed_330,"a",@progbits
__unnamed_330:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_330, 62

	.type	__unnamed_331,@object
	.section	.rodata.__unnamed_331,"a",@progbits
__unnamed_331:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_331, 62

	.type	__unnamed_332,@object
	.section	.rodata.__unnamed_332,"a",@progbits
__unnamed_332:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_332, 62

	.type	__unnamed_333,@object
	.section	.rodata.__unnamed_333,"a",@progbits
__unnamed_333:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_333, 62

	.type	__unnamed_334,@object
	.section	.rodata.__unnamed_334,"a",@progbits
__unnamed_334:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_334, 62

	.type	__unnamed_335,@object
	.section	.rodata.__unnamed_335,"a",@progbits
__unnamed_335:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_335, 62

	.type	__unnamed_336,@object
	.section	.rodata.__unnamed_336,"a",@progbits
__unnamed_336:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_336, 62

	.type	__unnamed_337,@object
	.section	.rodata.__unnamed_337,"a",@progbits
__unnamed_337:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_337, 62

	.type	__unnamed_338,@object
	.section	.rodata.__unnamed_338,"a",@progbits
__unnamed_338:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_338, 62

	.type	__unnamed_339,@object
	.section	.rodata.__unnamed_339,"a",@progbits
__unnamed_339:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_339, 62

	.type	__unnamed_340,@object
	.section	.rodata.__unnamed_340,"a",@progbits
__unnamed_340:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_340, 62

	.type	__unnamed_341,@object
	.section	.rodata.__unnamed_341,"a",@progbits
__unnamed_341:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_341, 62

	.type	__unnamed_342,@object
	.section	.rodata.__unnamed_342,"a",@progbits
__unnamed_342:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_342, 62

	.type	__unnamed_343,@object
	.section	.rodata.__unnamed_343,"a",@progbits
__unnamed_343:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_343, 62

	.type	__unnamed_344,@object
	.section	.rodata.__unnamed_344,"a",@progbits
__unnamed_344:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_344, 62

	.type	__unnamed_345,@object
	.section	.rodata.__unnamed_345,"a",@progbits
__unnamed_345:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_345, 62

	.type	__unnamed_346,@object
	.section	.rodata.__unnamed_346,"a",@progbits
__unnamed_346:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_346, 62

	.type	__unnamed_347,@object
	.section	.rodata.__unnamed_347,"a",@progbits
__unnamed_347:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_347, 62

	.type	__unnamed_348,@object
	.section	.rodata.__unnamed_348,"a",@progbits
__unnamed_348:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_348, 62

	.type	__unnamed_349,@object
	.section	.rodata.__unnamed_349,"a",@progbits
__unnamed_349:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_349, 62

	.type	__unnamed_350,@object
	.section	.rodata.__unnamed_350,"a",@progbits
__unnamed_350:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_350, 62

	.type	__unnamed_351,@object
	.section	.rodata.__unnamed_351,"a",@progbits
__unnamed_351:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_351, 62

	.type	__unnamed_352,@object
	.section	.rodata.__unnamed_352,"a",@progbits
__unnamed_352:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_352, 62

	.type	__unnamed_353,@object
	.section	.rodata.__unnamed_353,"a",@progbits
__unnamed_353:
	.asciz	"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir"
	.size	__unnamed_353, 62

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.word	691
	.word	61
	.quad	__unnamed_178
	.word	692
	.word	61
	.quad	__unnamed_179
	.word	706
	.word	61
	.quad	__unnamed_180
	.word	715
	.word	61
	.quad	__unnamed_181
	.word	727
	.word	61
	.quad	__unnamed_182
	.word	736
	.word	61
	.quad	__unnamed_183
	.word	748
	.word	61
	.quad	__unnamed_184
	.word	757
	.word	61
	.quad	__unnamed_185
	.word	758
	.word	61
	.quad	__unnamed_186
	.word	772
	.word	61
	.quad	__unnamed_187
	.word	781
	.word	61
	.quad	__unnamed_188
	.word	793
	.word	61
	.quad	__unnamed_189
	.word	802
	.word	61
	.quad	__unnamed_190
	.word	814
	.word	61
	.quad	__unnamed_191
	.word	823
	.word	61
	.quad	__unnamed_192
	.word	835
	.word	61
	.quad	__unnamed_193
	.word	844
	.word	61
	.quad	__unnamed_194
	.word	845
	.word	61
	.quad	__unnamed_195
	.word	859
	.word	61
	.quad	__unnamed_196
	.word	868
	.word	61
	.quad	__unnamed_197
	.word	880
	.word	61
	.quad	__unnamed_198
	.word	889
	.word	61
	.quad	__unnamed_199
	.word	901
	.word	61
	.quad	__unnamed_200
	.word	910
	.word	61
	.quad	__unnamed_201
	.word	922
	.word	61
	.quad	__unnamed_202
	.word	931
	.word	61
	.quad	__unnamed_203
	.word	943
	.word	61
	.quad	__unnamed_204
	.word	952
	.word	61
	.quad	__unnamed_205
	.word	964
	.word	61
	.quad	__unnamed_206
	.word	973
	.word	61
	.quad	__unnamed_207
	.word	974
	.word	61
	.quad	__unnamed_208
	.word	988
	.word	61
	.quad	__unnamed_209
	.word	997
	.word	61
	.quad	__unnamed_210
	.word	1009
	.word	61
	.quad	__unnamed_211
	.word	1018
	.word	61
	.quad	__unnamed_212
	.word	1030
	.word	61
	.quad	__unnamed_213
	.word	1045
	.word	61
	.quad	__unnamed_214
	.word	691
	.word	61
	.quad	__unnamed_215
	.word	700
	.word	61
	.quad	__unnamed_216
	.word	715
	.word	61
	.quad	__unnamed_217
	.word	721
	.word	61
	.quad	__unnamed_218
	.word	736
	.word	61
	.quad	__unnamed_219
	.word	742
	.word	61
	.quad	__unnamed_220
	.word	766
	.word	61
	.quad	__unnamed_221
	.word	781
	.word	61
	.quad	__unnamed_222
	.word	787
	.word	61
	.quad	__unnamed_223
	.word	802
	.word	61
	.quad	__unnamed_224
	.word	808
	.word	61
	.quad	__unnamed_225
	.word	823
	.word	61
	.quad	__unnamed_226
	.word	829
	.word	61
	.quad	__unnamed_227
	.word	844
	.word	61
	.quad	__unnamed_228
	.word	845
	.word	61
	.quad	__unnamed_229
	.word	853
	.word	61
	.quad	__unnamed_230
	.word	859
	.word	61
	.quad	__unnamed_231
	.word	868
	.word	61
	.quad	__unnamed_232
	.word	874
	.word	61
	.quad	__unnamed_233
	.word	880
	.word	61
	.quad	__unnamed_234
	.word	889
	.word	61
	.quad	__unnamed_235
	.word	895
	.word	61
	.quad	__unnamed_236
	.word	901
	.word	61
	.quad	__unnamed_237
	.word	910
	.word	61
	.quad	__unnamed_238
	.word	916
	.word	61
	.quad	__unnamed_239
	.word	922
	.word	61
	.quad	__unnamed_240
	.word	931
	.word	61
	.quad	__unnamed_241
	.word	937
	.word	61
	.quad	__unnamed_242
	.word	943
	.word	61
	.quad	__unnamed_243
	.word	952
	.word	61
	.quad	__unnamed_244
	.word	958
	.word	61
	.quad	__unnamed_245
	.word	964
	.word	61
	.quad	__unnamed_246
	.word	973
	.word	61
	.quad	__unnamed_247
	.word	974
	.word	61
	.quad	__unnamed_248
	.word	982
	.word	61
	.quad	__unnamed_249
	.word	988
	.word	61
	.quad	__unnamed_250
	.word	997
	.word	61
	.quad	__unnamed_251
	.word	1003
	.word	61
	.quad	__unnamed_252
	.word	1009
	.word	61
	.quad	__unnamed_253
	.word	1018
	.word	61
	.quad	__unnamed_254
	.word	1024
	.word	61
	.quad	__unnamed_255
	.word	1030
	.word	61
	.quad	__unnamed_256
	.word	574
	.word	61
	.quad	__unnamed_257
	.word	682
	.word	61
	.quad	__unnamed_258
	.word	682
	.word	61
	.quad	__unnamed_259
	.word	682
	.word	61
	.quad	__unnamed_260
	.word	688
	.word	61
	.quad	__unnamed_261
	.word	688
	.word	61
	.quad	__unnamed_262
	.word	691
	.word	61
	.quad	__unnamed_263
	.word	692
	.word	61
	.quad	__unnamed_264
	.word	700
	.word	61
	.quad	__unnamed_265
	.word	700
	.word	61
	.quad	__unnamed_266
	.word	700
	.word	61
	.quad	__unnamed_267
	.word	706
	.word	61
	.quad	__unnamed_268
	.word	706
	.word	61
	.quad	__unnamed_269
	.word	692
	.word	61
	.quad	__unnamed_270
	.word	715
	.word	61
	.quad	__unnamed_271
	.word	721
	.word	61
	.quad	__unnamed_272
	.word	721
	.word	61
	.quad	__unnamed_273
	.word	727
	.word	61
	.quad	__unnamed_274
	.word	727
	.word	61
	.quad	__unnamed_275
	.word	736
	.word	61
	.quad	__unnamed_276
	.word	742
	.word	61
	.quad	__unnamed_277
	.word	742
	.word	61
	.quad	__unnamed_278
	.word	748
	.word	61
	.quad	__unnamed_279
	.word	748
	.word	61
	.quad	__unnamed_280
	.word	757
	.word	61
	.quad	__unnamed_281
	.word	757
	.word	61
	.quad	__unnamed_282
	.word	758
	.word	61
	.quad	__unnamed_283
	.word	758
	.word	61
	.quad	__unnamed_284
	.word	766
	.word	61
	.quad	__unnamed_285
	.word	766
	.word	61
	.quad	__unnamed_286
	.word	766
	.word	61
	.quad	__unnamed_287
	.word	772
	.word	61
	.quad	__unnamed_288
	.word	772
	.word	61
	.quad	__unnamed_289
	.word	758
	.word	61
	.quad	__unnamed_290
	.word	781
	.word	61
	.quad	__unnamed_291
	.word	787
	.word	61
	.quad	__unnamed_292
	.word	787
	.word	61
	.quad	__unnamed_293
	.word	787
	.word	61
	.quad	__unnamed_294
	.word	793
	.word	61
	.quad	__unnamed_295
	.word	793
	.word	61
	.quad	__unnamed_296
	.word	802
	.word	61
	.quad	__unnamed_297
	.word	808
	.word	61
	.quad	__unnamed_298
	.word	808
	.word	61
	.quad	__unnamed_299
	.word	814
	.word	61
	.quad	__unnamed_300
	.word	814
	.word	61
	.quad	__unnamed_301
	.word	823
	.word	61
	.quad	__unnamed_302
	.word	829
	.word	61
	.quad	__unnamed_303
	.word	829
	.word	61
	.quad	__unnamed_304
	.word	835
	.word	61
	.quad	__unnamed_305
	.word	835
	.word	61
	.quad	__unnamed_306
	.word	844
	.word	61
	.quad	__unnamed_307
	.word	845
	.word	61
	.quad	__unnamed_308
	.word	853
	.word	61
	.quad	__unnamed_309
	.word	853
	.word	61
	.quad	__unnamed_310
	.word	853
	.word	61
	.quad	__unnamed_311
	.word	859
	.word	61
	.quad	__unnamed_312
	.word	845
	.word	61
	.quad	__unnamed_313
	.word	868
	.word	61
	.quad	__unnamed_314
	.word	874
	.word	61
	.quad	__unnamed_315
	.word	874
	.word	61
	.quad	__unnamed_316
	.word	874
	.word	61
	.quad	__unnamed_317
	.word	880
	.word	61
	.quad	__unnamed_318
	.word	889
	.word	61
	.quad	__unnamed_319
	.word	895
	.word	61
	.quad	__unnamed_320
	.word	895
	.word	61
	.quad	__unnamed_321
	.word	901
	.word	61
	.quad	__unnamed_322
	.word	910
	.word	61
	.quad	__unnamed_323
	.word	916
	.word	61
	.quad	__unnamed_324
	.word	916
	.word	61
	.quad	__unnamed_325
	.word	922
	.word	61
	.quad	__unnamed_326
	.word	931
	.word	61
	.quad	__unnamed_327
	.word	937
	.word	61
	.quad	__unnamed_328
	.word	937
	.word	61
	.quad	__unnamed_329
	.word	943
	.word	61
	.quad	__unnamed_330
	.word	952
	.word	61
	.quad	__unnamed_331
	.word	958
	.word	61
	.quad	__unnamed_332
	.word	958
	.word	61
	.quad	__unnamed_333
	.word	964
	.word	61
	.quad	__unnamed_334
	.word	973
	.word	61
	.quad	__unnamed_335
	.word	974
	.word	61
	.quad	__unnamed_336
	.word	982
	.word	61
	.quad	__unnamed_337
	.word	982
	.word	61
	.quad	__unnamed_338
	.word	982
	.word	61
	.quad	__unnamed_339
	.word	988
	.word	61
	.quad	__unnamed_340
	.word	974
	.word	61
	.quad	__unnamed_341
	.word	997
	.word	61
	.quad	__unnamed_342
	.word	1003
	.word	61
	.quad	__unnamed_343
	.word	1003
	.word	61
	.quad	__unnamed_344
	.word	1003
	.word	61
	.quad	__unnamed_345
	.word	1009
	.word	61
	.quad	__unnamed_346
	.word	1018
	.word	61
	.quad	__unnamed_347
	.word	1024
	.word	61
	.quad	__unnamed_348
	.word	1024
	.word	61
	.quad	__unnamed_349
	.word	1030
	.word	61
	.quad	__unnamed_350
	.word	1039
	.word	61
	.quad	__unnamed_351
	.word	1045
	.word	61
	.quad	__unnamed_352
	.word	1047
	.word	61
	.quad	__unnamed_353
	.size	iree_hal_executable_library_query_v0_source_locations, 2816

	.type	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names:
	.size	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names
	.quad	iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations
	.word	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 4224

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.word	176
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.type	__exp2f_data,@object
	.section	.rodata.__exp2f_data,"a",@progbits
	.p2align	3, 0x0
__exp2f_data:
	.quad	4607182418800017408
	.quad	4607140297302181236
	.quad	4607100335213349135
	.quad	4607062579818421073
	.quad	4607027079437701499
	.quad	4606993883449571754
	.quad	4606963042313658936
	.quad	4606934607594512097
	.quad	4606908631985796885
	.quad	4606885169335019979
	.quad	4606864274668794914
	.quad	4606846004218661165
	.quad	4606830415447468583
	.quad	4606817567076339586
	.quad	4606807519112221737
	.quad	4606800332876043653
	.quad	4606796071031487437
	.quad	4606794797614391156
	.quad	4606796578062795143
	.quad	4606801479247646227
	.quad	4606809569504174299
	.quad	4606820918663955941
	.quad	4606835598087680144
	.quad	4606853680698631517
	.quad	4606875241016906669
	.quad	4606900355194379847
	.quad	4606929101050434204
	.quad	4606961558108475497
	.quad	4606997807633245319
	.quad	4607037932668951391
	.quad	4607082018078232794
	.quad	4607130150581978432
	.quad	0x42e8000000000000
	.quad	0x3fac6af84b912394
	.quad	0x3fcebfce50fac4f3
	.quad	0x3fe62e42ff0c52d6
	.quad	0x4338000000000000
	.quad	0x40471547652b82fe
	.quad	0x3ebc6af84b912394
	.quad	0x3f2ebfce50fac4f3
	.quad	0x3f962e42ff0c52d6
	.size	__exp2f_data, 328

	.type	__powf_log2_data,@object
	.section	.rodata.__powf_log2_data,"a",@progbits
	.p2align	3, 0x0
__powf_log2_data:
	.quad	0x3ff661ec79f8f3be
	.quad	0xbfdefec65b963019
	.quad	0x3ff571ed4aaf883d
	.quad	0xbfdb0b6832d4fca4
	.quad	0x3ff49539f0f010b0
	.quad	0xbfd7418b0a1fb77b
	.quad	0x3ff3c995b0b80385
	.quad	0xbfd39de91a6dcf7b
	.quad	0x3ff30d190c8864a5
	.quad	0xbfd01d9bf3f2b631
	.quad	0x3ff25e227b0b8ea0
	.quad	0xbfc97c1d1b3b7af0
	.quad	0x3ff1bb4a4a1a343f
	.quad	0xbfc2f9e393af3c9f
	.quad	0x3ff12358f08ae5ba
	.quad	0xbfb960cbbf788d5c
	.quad	0x3ff0953f419900a7
	.quad	0xbfaa6f9db6475fce
	.quad	0x3ff0000000000000
	.quad	0x0000000000000000
	.quad	0x3fee608cfd9a47ac
	.quad	0x3fb338ca9f24f53d
	.quad	0x3feca4b31f026aa0
	.quad	0x3fc476a9543891ba
	.quad	0x3feb2036576afce6
	.quad	0x3fce840b4ac4e4d2
	.quad	0x3fe9c2d163a1aa2d
	.quad	0x3fd40645f0c6651c
	.quad	0x3fe886e6037841ed
	.quad	0x3fd88e9c2c1b9ff8
	.quad	0x3fe767dcf5534862
	.quad	0x3fdce0a44eb17bcc
	.quad	0x3fd27616c9496e0b
	.quad	0xbfd71969a075c67a
	.quad	0x3fdec70a6ca7badd
	.quad	0xbfe7154748bef6c8
	.quad	0x3ff71547652ab82b
	.size	__powf_log2_data, 296

	.type	.promoted_doubles.expf,@object
	.section	.rodata..promoted_doubles.expf,"a",@progbits
	.p2align	4, 0x0
.promoted_doubles.expf:
	.quad	0x40471547652b82fe
	.quad	0x3ebc6af84b912394
	.quad	0x3f2ebfce50fac4f3
	.quad	0x3f962e42ff0c52d6
	.size	.promoted_doubles.expf, 32

	.type	.promoted_doubles.powf,@object
	.section	.rodata..promoted_doubles.powf,"a",@progbits
	.p2align	4, 0x0
.promoted_doubles.powf:
	.quad	0x3fd27616c9496e0b
	.quad	0xbfd71969a075c67a
	.quad	0x3fdec70a6ca7badd
	.quad	0xbfe7154748bef6c8
	.quad	0x3ff71547652ab82b
	.quad	0x405fffffffd1d571
	.quad	0x3fac6af84b912394
	.quad	0x3fcebfce50fac4f3
	.quad	0x3fe62e42ff0c52d6
	.size	.promoted_doubles.powf, 72

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	16
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	88
	.word	.Linfo_string3
	.word	.Linfo_string3
	.byte	1
	.byte	1
	.word	71

	.byte	3
	.word	.Linfo_string4
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.word	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.quad	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	88
	.word	.Linfo_string5
	.word	.Linfo_string5
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.word	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.quad	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	88
	.word	.Linfo_string6
	.word	.Linfo_string6
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end2:
.Lcu_begin3:
	.word	.Ldebug_info_end3-.Ldebug_info_start3
.Ldebug_info_start3:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	4
	.quad	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	88
	.word	.Linfo_string7
	.word	.Linfo_string7
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end3:
.Lcu_begin4:
	.word	.Ldebug_info_end4-.Ldebug_info_start4
.Ldebug_info_start4:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin4
	.word	.Lfunc_end4-.Lfunc_begin4
	.byte	4
	.quad	.Lfunc_begin4
	.word	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	88
	.word	.Linfo_string8
	.word	.Linfo_string8
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end4:
.Lcu_begin5:
	.word	.Ldebug_info_end5-.Ldebug_info_start5
.Ldebug_info_start5:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin5
	.word	.Lfunc_end5-.Lfunc_begin5
	.byte	4
	.quad	.Lfunc_begin5
	.word	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	88
	.word	.Linfo_string9
	.word	.Linfo_string9
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end5:
.Lcu_begin6:
	.word	.Ldebug_info_end6-.Ldebug_info_start6
.Ldebug_info_start6:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin6
	.word	.Lfunc_end6-.Lfunc_begin6
	.byte	4
	.quad	.Lfunc_begin6
	.word	.Lfunc_end6-.Lfunc_begin6
	.byte	1
	.byte	88
	.word	.Linfo_string10
	.word	.Linfo_string10
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end6:
.Lcu_begin7:
	.word	.Ldebug_info_end7-.Ldebug_info_start7
.Ldebug_info_start7:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin7
	.word	.Lfunc_end7-.Lfunc_begin7
	.byte	4
	.quad	.Lfunc_begin7
	.word	.Lfunc_end7-.Lfunc_begin7
	.byte	1
	.byte	88
	.word	.Linfo_string11
	.word	.Linfo_string11
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end7:
.Lcu_begin8:
	.word	.Ldebug_info_end8-.Ldebug_info_start8
.Ldebug_info_start8:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin8
	.word	.Lfunc_end8-.Lfunc_begin8
	.byte	4
	.quad	.Lfunc_begin8
	.word	.Lfunc_end8-.Lfunc_begin8
	.byte	1
	.byte	88
	.word	.Linfo_string12
	.word	.Linfo_string12
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end8:
.Lcu_begin9:
	.word	.Ldebug_info_end9-.Ldebug_info_start9
.Ldebug_info_start9:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin9
	.word	.Lfunc_end9-.Lfunc_begin9
	.byte	4
	.quad	.Lfunc_begin9
	.word	.Lfunc_end9-.Lfunc_begin9
	.byte	1
	.byte	88
	.word	.Linfo_string13
	.word	.Linfo_string13
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end9:
.Lcu_begin10:
	.word	.Ldebug_info_end10-.Ldebug_info_start10
.Ldebug_info_start10:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin10
	.word	.Lfunc_end10-.Lfunc_begin10
	.byte	4
	.quad	.Lfunc_begin10
	.word	.Lfunc_end10-.Lfunc_begin10
	.byte	1
	.byte	88
	.word	.Linfo_string14
	.word	.Linfo_string14
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end10:
.Lcu_begin11:
	.word	.Ldebug_info_end11-.Ldebug_info_start11
.Ldebug_info_start11:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin11
	.word	.Lfunc_end11-.Lfunc_begin11
	.byte	4
	.quad	.Lfunc_begin11
	.word	.Lfunc_end11-.Lfunc_begin11
	.byte	1
	.byte	88
	.word	.Linfo_string15
	.word	.Linfo_string15
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end11:
.Lcu_begin12:
	.word	.Ldebug_info_end12-.Ldebug_info_start12
.Ldebug_info_start12:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin12
	.word	.Lfunc_end12-.Lfunc_begin12
	.byte	4
	.quad	.Lfunc_begin12
	.word	.Lfunc_end12-.Lfunc_begin12
	.byte	1
	.byte	88
	.word	.Linfo_string16
	.word	.Linfo_string16
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end12:
.Lcu_begin13:
	.word	.Ldebug_info_end13-.Ldebug_info_start13
.Ldebug_info_start13:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin13
	.word	.Lfunc_end13-.Lfunc_begin13
	.byte	4
	.quad	.Lfunc_begin13
	.word	.Lfunc_end13-.Lfunc_begin13
	.byte	1
	.byte	88
	.word	.Linfo_string17
	.word	.Linfo_string17
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end13:
.Lcu_begin14:
	.word	.Ldebug_info_end14-.Ldebug_info_start14
.Ldebug_info_start14:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin14
	.word	.Lfunc_end14-.Lfunc_begin14
	.byte	4
	.quad	.Lfunc_begin14
	.word	.Lfunc_end14-.Lfunc_begin14
	.byte	1
	.byte	88
	.word	.Linfo_string18
	.word	.Linfo_string18
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end14:
.Lcu_begin15:
	.word	.Ldebug_info_end15-.Ldebug_info_start15
.Ldebug_info_start15:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin15
	.word	.Lfunc_end15-.Lfunc_begin15
	.byte	4
	.quad	.Lfunc_begin15
	.word	.Lfunc_end15-.Lfunc_begin15
	.byte	1
	.byte	88
	.word	.Linfo_string19
	.word	.Linfo_string19
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end15:
.Lcu_begin16:
	.word	.Ldebug_info_end16-.Ldebug_info_start16
.Ldebug_info_start16:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin16
	.word	.Lfunc_end16-.Lfunc_begin16
	.byte	4
	.quad	.Lfunc_begin16
	.word	.Lfunc_end16-.Lfunc_begin16
	.byte	1
	.byte	88
	.word	.Linfo_string20
	.word	.Linfo_string20
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end16:
.Lcu_begin17:
	.word	.Ldebug_info_end17-.Ldebug_info_start17
.Ldebug_info_start17:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin17
	.word	.Lfunc_end17-.Lfunc_begin17
	.byte	4
	.quad	.Lfunc_begin17
	.word	.Lfunc_end17-.Lfunc_begin17
	.byte	1
	.byte	88
	.word	.Linfo_string21
	.word	.Linfo_string21
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end17:
.Lcu_begin18:
	.word	.Ldebug_info_end18-.Ldebug_info_start18
.Ldebug_info_start18:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin18
	.word	.Lfunc_end18-.Lfunc_begin18
	.byte	4
	.quad	.Lfunc_begin18
	.word	.Lfunc_end18-.Lfunc_begin18
	.byte	1
	.byte	88
	.word	.Linfo_string22
	.word	.Linfo_string22
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end18:
.Lcu_begin19:
	.word	.Ldebug_info_end19-.Ldebug_info_start19
.Ldebug_info_start19:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin19
	.word	.Lfunc_end19-.Lfunc_begin19
	.byte	4
	.quad	.Lfunc_begin19
	.word	.Lfunc_end19-.Lfunc_begin19
	.byte	1
	.byte	88
	.word	.Linfo_string23
	.word	.Linfo_string23
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end19:
.Lcu_begin20:
	.word	.Ldebug_info_end20-.Ldebug_info_start20
.Ldebug_info_start20:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin20
	.word	.Lfunc_end20-.Lfunc_begin20
	.byte	4
	.quad	.Lfunc_begin20
	.word	.Lfunc_end20-.Lfunc_begin20
	.byte	1
	.byte	88
	.word	.Linfo_string24
	.word	.Linfo_string24
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end20:
.Lcu_begin21:
	.word	.Ldebug_info_end21-.Ldebug_info_start21
.Ldebug_info_start21:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin21
	.word	.Lfunc_end21-.Lfunc_begin21
	.byte	4
	.quad	.Lfunc_begin21
	.word	.Lfunc_end21-.Lfunc_begin21
	.byte	1
	.byte	88
	.word	.Linfo_string25
	.word	.Linfo_string25
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end21:
.Lcu_begin22:
	.word	.Ldebug_info_end22-.Ldebug_info_start22
.Ldebug_info_start22:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin22
	.word	.Lfunc_end22-.Lfunc_begin22
	.byte	4
	.quad	.Lfunc_begin22
	.word	.Lfunc_end22-.Lfunc_begin22
	.byte	1
	.byte	88
	.word	.Linfo_string26
	.word	.Linfo_string26
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end22:
.Lcu_begin23:
	.word	.Ldebug_info_end23-.Ldebug_info_start23
.Ldebug_info_start23:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin23
	.word	.Lfunc_end23-.Lfunc_begin23
	.byte	4
	.quad	.Lfunc_begin23
	.word	.Lfunc_end23-.Lfunc_begin23
	.byte	1
	.byte	88
	.word	.Linfo_string27
	.word	.Linfo_string27
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end23:
.Lcu_begin24:
	.word	.Ldebug_info_end24-.Ldebug_info_start24
.Ldebug_info_start24:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin24
	.word	.Lfunc_end24-.Lfunc_begin24
	.byte	4
	.quad	.Lfunc_begin24
	.word	.Lfunc_end24-.Lfunc_begin24
	.byte	1
	.byte	88
	.word	.Linfo_string28
	.word	.Linfo_string28
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end24:
.Lcu_begin25:
	.word	.Ldebug_info_end25-.Ldebug_info_start25
.Ldebug_info_start25:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin25
	.word	.Lfunc_end25-.Lfunc_begin25
	.byte	4
	.quad	.Lfunc_begin25
	.word	.Lfunc_end25-.Lfunc_begin25
	.byte	1
	.byte	88
	.word	.Linfo_string29
	.word	.Linfo_string29
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end25:
.Lcu_begin26:
	.word	.Ldebug_info_end26-.Ldebug_info_start26
.Ldebug_info_start26:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin26
	.word	.Lfunc_end26-.Lfunc_begin26
	.byte	4
	.quad	.Lfunc_begin26
	.word	.Lfunc_end26-.Lfunc_begin26
	.byte	1
	.byte	88
	.word	.Linfo_string30
	.word	.Linfo_string30
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end26:
.Lcu_begin27:
	.word	.Ldebug_info_end27-.Ldebug_info_start27
.Ldebug_info_start27:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin27
	.word	.Lfunc_end27-.Lfunc_begin27
	.byte	4
	.quad	.Lfunc_begin27
	.word	.Lfunc_end27-.Lfunc_begin27
	.byte	1
	.byte	88
	.word	.Linfo_string31
	.word	.Linfo_string31
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end27:
.Lcu_begin28:
	.word	.Ldebug_info_end28-.Ldebug_info_start28
.Ldebug_info_start28:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin28
	.word	.Lfunc_end28-.Lfunc_begin28
	.byte	4
	.quad	.Lfunc_begin28
	.word	.Lfunc_end28-.Lfunc_begin28
	.byte	1
	.byte	88
	.word	.Linfo_string32
	.word	.Linfo_string32
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end28:
.Lcu_begin29:
	.word	.Ldebug_info_end29-.Ldebug_info_start29
.Ldebug_info_start29:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin29
	.word	.Lfunc_end29-.Lfunc_begin29
	.byte	4
	.quad	.Lfunc_begin29
	.word	.Lfunc_end29-.Lfunc_begin29
	.byte	1
	.byte	88
	.word	.Linfo_string33
	.word	.Linfo_string33
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end29:
.Lcu_begin30:
	.word	.Ldebug_info_end30-.Ldebug_info_start30
.Ldebug_info_start30:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin30
	.word	.Lfunc_end30-.Lfunc_begin30
	.byte	4
	.quad	.Lfunc_begin30
	.word	.Lfunc_end30-.Lfunc_begin30
	.byte	1
	.byte	88
	.word	.Linfo_string34
	.word	.Linfo_string34
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end30:
.Lcu_begin31:
	.word	.Ldebug_info_end31-.Ldebug_info_start31
.Ldebug_info_start31:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin31
	.word	.Lfunc_end31-.Lfunc_begin31
	.byte	4
	.quad	.Lfunc_begin31
	.word	.Lfunc_end31-.Lfunc_begin31
	.byte	1
	.byte	88
	.word	.Linfo_string35
	.word	.Linfo_string35
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end31:
.Lcu_begin32:
	.word	.Ldebug_info_end32-.Ldebug_info_start32
.Ldebug_info_start32:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin32
	.word	.Lfunc_end32-.Lfunc_begin32
	.byte	4
	.quad	.Lfunc_begin32
	.word	.Lfunc_end32-.Lfunc_begin32
	.byte	1
	.byte	88
	.word	.Linfo_string36
	.word	.Linfo_string36
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end32:
.Lcu_begin33:
	.word	.Ldebug_info_end33-.Ldebug_info_start33
.Ldebug_info_start33:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin33
	.word	.Lfunc_end33-.Lfunc_begin33
	.byte	4
	.quad	.Lfunc_begin33
	.word	.Lfunc_end33-.Lfunc_begin33
	.byte	1
	.byte	88
	.word	.Linfo_string37
	.word	.Linfo_string37
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end33:
.Lcu_begin34:
	.word	.Ldebug_info_end34-.Ldebug_info_start34
.Ldebug_info_start34:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin34
	.word	.Lfunc_end34-.Lfunc_begin34
	.byte	4
	.quad	.Lfunc_begin34
	.word	.Lfunc_end34-.Lfunc_begin34
	.byte	1
	.byte	88
	.word	.Linfo_string38
	.word	.Linfo_string38
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end34:
.Lcu_begin35:
	.word	.Ldebug_info_end35-.Ldebug_info_start35
.Ldebug_info_start35:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin35
	.word	.Lfunc_end35-.Lfunc_begin35
	.byte	4
	.quad	.Lfunc_begin35
	.word	.Lfunc_end35-.Lfunc_begin35
	.byte	1
	.byte	88
	.word	.Linfo_string39
	.word	.Linfo_string39
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end35:
.Lcu_begin36:
	.word	.Ldebug_info_end36-.Ldebug_info_start36
.Ldebug_info_start36:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin36
	.word	.Lfunc_end36-.Lfunc_begin36
	.byte	4
	.quad	.Lfunc_begin36
	.word	.Lfunc_end36-.Lfunc_begin36
	.byte	1
	.byte	88
	.word	.Linfo_string40
	.word	.Linfo_string40
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end36:
.Lcu_begin37:
	.word	.Ldebug_info_end37-.Ldebug_info_start37
.Ldebug_info_start37:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin37
	.word	.Lfunc_end37-.Lfunc_begin37
	.byte	4
	.quad	.Lfunc_begin37
	.word	.Lfunc_end37-.Lfunc_begin37
	.byte	1
	.byte	88
	.word	.Linfo_string41
	.word	.Linfo_string41
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end37:
.Lcu_begin38:
	.word	.Ldebug_info_end38-.Ldebug_info_start38
.Ldebug_info_start38:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin38
	.word	.Lfunc_end38-.Lfunc_begin38
	.byte	4
	.quad	.Lfunc_begin38
	.word	.Lfunc_end38-.Lfunc_begin38
	.byte	1
	.byte	88
	.word	.Linfo_string42
	.word	.Linfo_string42
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end38:
.Lcu_begin39:
	.word	.Ldebug_info_end39-.Ldebug_info_start39
.Ldebug_info_start39:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin39
	.word	.Lfunc_end39-.Lfunc_begin39
	.byte	4
	.quad	.Lfunc_begin39
	.word	.Lfunc_end39-.Lfunc_begin39
	.byte	1
	.byte	88
	.word	.Linfo_string43
	.word	.Linfo_string43
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end39:
.Lcu_begin40:
	.word	.Ldebug_info_end40-.Ldebug_info_start40
.Ldebug_info_start40:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin40
	.word	.Lfunc_end40-.Lfunc_begin40
	.byte	4
	.quad	.Lfunc_begin40
	.word	.Lfunc_end40-.Lfunc_begin40
	.byte	1
	.byte	88
	.word	.Linfo_string44
	.word	.Linfo_string44
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end40:
.Lcu_begin41:
	.word	.Ldebug_info_end41-.Ldebug_info_start41
.Ldebug_info_start41:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin41
	.word	.Lfunc_end41-.Lfunc_begin41
	.byte	4
	.quad	.Lfunc_begin41
	.word	.Lfunc_end41-.Lfunc_begin41
	.byte	1
	.byte	88
	.word	.Linfo_string45
	.word	.Linfo_string45
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end41:
.Lcu_begin42:
	.word	.Ldebug_info_end42-.Ldebug_info_start42
.Ldebug_info_start42:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin42
	.word	.Lfunc_end42-.Lfunc_begin42
	.byte	4
	.quad	.Lfunc_begin42
	.word	.Lfunc_end42-.Lfunc_begin42
	.byte	1
	.byte	88
	.word	.Linfo_string46
	.word	.Linfo_string46
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end42:
.Lcu_begin43:
	.word	.Ldebug_info_end43-.Ldebug_info_start43
.Ldebug_info_start43:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin43
	.word	.Lfunc_end43-.Lfunc_begin43
	.byte	4
	.quad	.Lfunc_begin43
	.word	.Lfunc_end43-.Lfunc_begin43
	.byte	1
	.byte	88
	.word	.Linfo_string47
	.word	.Linfo_string47
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end43:
.Lcu_begin44:
	.word	.Ldebug_info_end44-.Ldebug_info_start44
.Ldebug_info_start44:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin44
	.word	.Lfunc_end44-.Lfunc_begin44
	.byte	4
	.quad	.Lfunc_begin44
	.word	.Lfunc_end44-.Lfunc_begin44
	.byte	1
	.byte	88
	.word	.Linfo_string48
	.word	.Linfo_string48
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end44:
.Lcu_begin45:
	.word	.Ldebug_info_end45-.Ldebug_info_start45
.Ldebug_info_start45:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin45
	.word	.Lfunc_end45-.Lfunc_begin45
	.byte	4
	.quad	.Lfunc_begin45
	.word	.Lfunc_end45-.Lfunc_begin45
	.byte	1
	.byte	88
	.word	.Linfo_string49
	.word	.Linfo_string49
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end45:
.Lcu_begin46:
	.word	.Ldebug_info_end46-.Ldebug_info_start46
.Ldebug_info_start46:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin46
	.word	.Lfunc_end46-.Lfunc_begin46
	.byte	4
	.quad	.Lfunc_begin46
	.word	.Lfunc_end46-.Lfunc_begin46
	.byte	1
	.byte	88
	.word	.Linfo_string50
	.word	.Linfo_string50
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end46:
.Lcu_begin47:
	.word	.Ldebug_info_end47-.Ldebug_info_start47
.Ldebug_info_start47:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin47
	.word	.Lfunc_end47-.Lfunc_begin47
	.byte	4
	.quad	.Lfunc_begin47
	.word	.Lfunc_end47-.Lfunc_begin47
	.byte	1
	.byte	88
	.word	.Linfo_string51
	.word	.Linfo_string51
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end47:
.Lcu_begin48:
	.word	.Ldebug_info_end48-.Ldebug_info_start48
.Ldebug_info_start48:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin48
	.word	.Lfunc_end48-.Lfunc_begin48
	.byte	4
	.quad	.Lfunc_begin48
	.word	.Lfunc_end48-.Lfunc_begin48
	.byte	1
	.byte	88
	.word	.Linfo_string52
	.word	.Linfo_string52
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end48:
.Lcu_begin49:
	.word	.Ldebug_info_end49-.Ldebug_info_start49
.Ldebug_info_start49:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin49
	.word	.Lfunc_end49-.Lfunc_begin49
	.byte	4
	.quad	.Lfunc_begin49
	.word	.Lfunc_end49-.Lfunc_begin49
	.byte	1
	.byte	88
	.word	.Linfo_string53
	.word	.Linfo_string53
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end49:
.Lcu_begin50:
	.word	.Ldebug_info_end50-.Ldebug_info_start50
.Ldebug_info_start50:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin50
	.word	.Lfunc_end50-.Lfunc_begin50
	.byte	4
	.quad	.Lfunc_begin50
	.word	.Lfunc_end50-.Lfunc_begin50
	.byte	1
	.byte	88
	.word	.Linfo_string54
	.word	.Linfo_string54
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end50:
.Lcu_begin51:
	.word	.Ldebug_info_end51-.Ldebug_info_start51
.Ldebug_info_start51:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin51
	.word	.Lfunc_end51-.Lfunc_begin51
	.byte	4
	.quad	.Lfunc_begin51
	.word	.Lfunc_end51-.Lfunc_begin51
	.byte	1
	.byte	88
	.word	.Linfo_string55
	.word	.Linfo_string55
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end51:
.Lcu_begin52:
	.word	.Ldebug_info_end52-.Ldebug_info_start52
.Ldebug_info_start52:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin52
	.word	.Lfunc_end52-.Lfunc_begin52
	.byte	4
	.quad	.Lfunc_begin52
	.word	.Lfunc_end52-.Lfunc_begin52
	.byte	1
	.byte	88
	.word	.Linfo_string56
	.word	.Linfo_string56
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end52:
.Lcu_begin53:
	.word	.Ldebug_info_end53-.Ldebug_info_start53
.Ldebug_info_start53:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin53
	.word	.Lfunc_end53-.Lfunc_begin53
	.byte	4
	.quad	.Lfunc_begin53
	.word	.Lfunc_end53-.Lfunc_begin53
	.byte	1
	.byte	88
	.word	.Linfo_string57
	.word	.Linfo_string57
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end53:
.Lcu_begin54:
	.word	.Ldebug_info_end54-.Ldebug_info_start54
.Ldebug_info_start54:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin54
	.word	.Lfunc_end54-.Lfunc_begin54
	.byte	4
	.quad	.Lfunc_begin54
	.word	.Lfunc_end54-.Lfunc_begin54
	.byte	1
	.byte	88
	.word	.Linfo_string58
	.word	.Linfo_string58
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end54:
.Lcu_begin55:
	.word	.Ldebug_info_end55-.Ldebug_info_start55
.Ldebug_info_start55:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin55
	.word	.Lfunc_end55-.Lfunc_begin55
	.byte	4
	.quad	.Lfunc_begin55
	.word	.Lfunc_end55-.Lfunc_begin55
	.byte	1
	.byte	88
	.word	.Linfo_string59
	.word	.Linfo_string59
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end55:
.Lcu_begin56:
	.word	.Ldebug_info_end56-.Ldebug_info_start56
.Ldebug_info_start56:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin56
	.word	.Lfunc_end56-.Lfunc_begin56
	.byte	4
	.quad	.Lfunc_begin56
	.word	.Lfunc_end56-.Lfunc_begin56
	.byte	1
	.byte	88
	.word	.Linfo_string60
	.word	.Linfo_string60
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end56:
.Lcu_begin57:
	.word	.Ldebug_info_end57-.Ldebug_info_start57
.Ldebug_info_start57:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin57
	.word	.Lfunc_end57-.Lfunc_begin57
	.byte	4
	.quad	.Lfunc_begin57
	.word	.Lfunc_end57-.Lfunc_begin57
	.byte	1
	.byte	88
	.word	.Linfo_string61
	.word	.Linfo_string61
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end57:
.Lcu_begin58:
	.word	.Ldebug_info_end58-.Ldebug_info_start58
.Ldebug_info_start58:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin58
	.word	.Lfunc_end58-.Lfunc_begin58
	.byte	4
	.quad	.Lfunc_begin58
	.word	.Lfunc_end58-.Lfunc_begin58
	.byte	1
	.byte	88
	.word	.Linfo_string62
	.word	.Linfo_string62
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end58:
.Lcu_begin59:
	.word	.Ldebug_info_end59-.Ldebug_info_start59
.Ldebug_info_start59:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin59
	.word	.Lfunc_end59-.Lfunc_begin59
	.byte	4
	.quad	.Lfunc_begin59
	.word	.Lfunc_end59-.Lfunc_begin59
	.byte	1
	.byte	88
	.word	.Linfo_string63
	.word	.Linfo_string63
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end59:
.Lcu_begin60:
	.word	.Ldebug_info_end60-.Ldebug_info_start60
.Ldebug_info_start60:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin60
	.word	.Lfunc_end60-.Lfunc_begin60
	.byte	4
	.quad	.Lfunc_begin60
	.word	.Lfunc_end60-.Lfunc_begin60
	.byte	1
	.byte	88
	.word	.Linfo_string64
	.word	.Linfo_string64
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end60:
.Lcu_begin61:
	.word	.Ldebug_info_end61-.Ldebug_info_start61
.Ldebug_info_start61:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin61
	.word	.Lfunc_end61-.Lfunc_begin61
	.byte	4
	.quad	.Lfunc_begin61
	.word	.Lfunc_end61-.Lfunc_begin61
	.byte	1
	.byte	88
	.word	.Linfo_string65
	.word	.Linfo_string65
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end61:
.Lcu_begin62:
	.word	.Ldebug_info_end62-.Ldebug_info_start62
.Ldebug_info_start62:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin62
	.word	.Lfunc_end62-.Lfunc_begin62
	.byte	4
	.quad	.Lfunc_begin62
	.word	.Lfunc_end62-.Lfunc_begin62
	.byte	1
	.byte	88
	.word	.Linfo_string66
	.word	.Linfo_string66
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end62:
.Lcu_begin63:
	.word	.Ldebug_info_end63-.Ldebug_info_start63
.Ldebug_info_start63:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin63
	.word	.Lfunc_end63-.Lfunc_begin63
	.byte	4
	.quad	.Lfunc_begin63
	.word	.Lfunc_end63-.Lfunc_begin63
	.byte	1
	.byte	88
	.word	.Linfo_string67
	.word	.Linfo_string67
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end63:
.Lcu_begin64:
	.word	.Ldebug_info_end64-.Ldebug_info_start64
.Ldebug_info_start64:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin64
	.word	.Lfunc_end64-.Lfunc_begin64
	.byte	4
	.quad	.Lfunc_begin64
	.word	.Lfunc_end64-.Lfunc_begin64
	.byte	1
	.byte	88
	.word	.Linfo_string68
	.word	.Linfo_string68
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end64:
.Lcu_begin65:
	.word	.Ldebug_info_end65-.Ldebug_info_start65
.Ldebug_info_start65:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin65
	.word	.Lfunc_end65-.Lfunc_begin65
	.byte	4
	.quad	.Lfunc_begin65
	.word	.Lfunc_end65-.Lfunc_begin65
	.byte	1
	.byte	88
	.word	.Linfo_string69
	.word	.Linfo_string69
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end65:
.Lcu_begin66:
	.word	.Ldebug_info_end66-.Ldebug_info_start66
.Ldebug_info_start66:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin66
	.word	.Lfunc_end66-.Lfunc_begin66
	.byte	4
	.quad	.Lfunc_begin66
	.word	.Lfunc_end66-.Lfunc_begin66
	.byte	1
	.byte	88
	.word	.Linfo_string70
	.word	.Linfo_string70
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end66:
.Lcu_begin67:
	.word	.Ldebug_info_end67-.Ldebug_info_start67
.Ldebug_info_start67:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin67
	.word	.Lfunc_end67-.Lfunc_begin67
	.byte	4
	.quad	.Lfunc_begin67
	.word	.Lfunc_end67-.Lfunc_begin67
	.byte	1
	.byte	88
	.word	.Linfo_string71
	.word	.Linfo_string71
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end67:
.Lcu_begin68:
	.word	.Ldebug_info_end68-.Ldebug_info_start68
.Ldebug_info_start68:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin68
	.word	.Lfunc_end68-.Lfunc_begin68
	.byte	4
	.quad	.Lfunc_begin68
	.word	.Lfunc_end68-.Lfunc_begin68
	.byte	1
	.byte	88
	.word	.Linfo_string72
	.word	.Linfo_string72
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end68:
.Lcu_begin69:
	.word	.Ldebug_info_end69-.Ldebug_info_start69
.Ldebug_info_start69:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin69
	.word	.Lfunc_end69-.Lfunc_begin69
	.byte	4
	.quad	.Lfunc_begin69
	.word	.Lfunc_end69-.Lfunc_begin69
	.byte	1
	.byte	88
	.word	.Linfo_string73
	.word	.Linfo_string73
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end69:
.Lcu_begin70:
	.word	.Ldebug_info_end70-.Ldebug_info_start70
.Ldebug_info_start70:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin70
	.word	.Lfunc_end70-.Lfunc_begin70
	.byte	4
	.quad	.Lfunc_begin70
	.word	.Lfunc_end70-.Lfunc_begin70
	.byte	1
	.byte	88
	.word	.Linfo_string74
	.word	.Linfo_string74
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end70:
.Lcu_begin71:
	.word	.Ldebug_info_end71-.Ldebug_info_start71
.Ldebug_info_start71:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin71
	.word	.Lfunc_end71-.Lfunc_begin71
	.byte	4
	.quad	.Lfunc_begin71
	.word	.Lfunc_end71-.Lfunc_begin71
	.byte	1
	.byte	88
	.word	.Linfo_string75
	.word	.Linfo_string75
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end71:
.Lcu_begin72:
	.word	.Ldebug_info_end72-.Ldebug_info_start72
.Ldebug_info_start72:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin72
	.word	.Lfunc_end72-.Lfunc_begin72
	.byte	4
	.quad	.Lfunc_begin72
	.word	.Lfunc_end72-.Lfunc_begin72
	.byte	1
	.byte	88
	.word	.Linfo_string76
	.word	.Linfo_string76
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end72:
.Lcu_begin73:
	.word	.Ldebug_info_end73-.Ldebug_info_start73
.Ldebug_info_start73:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin73
	.word	.Lfunc_end73-.Lfunc_begin73
	.byte	4
	.quad	.Lfunc_begin73
	.word	.Lfunc_end73-.Lfunc_begin73
	.byte	1
	.byte	88
	.word	.Linfo_string77
	.word	.Linfo_string77
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end73:
.Lcu_begin74:
	.word	.Ldebug_info_end74-.Ldebug_info_start74
.Ldebug_info_start74:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin74
	.word	.Lfunc_end74-.Lfunc_begin74
	.byte	4
	.quad	.Lfunc_begin74
	.word	.Lfunc_end74-.Lfunc_begin74
	.byte	1
	.byte	88
	.word	.Linfo_string78
	.word	.Linfo_string78
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end74:
.Lcu_begin75:
	.word	.Ldebug_info_end75-.Ldebug_info_start75
.Ldebug_info_start75:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin75
	.word	.Lfunc_end75-.Lfunc_begin75
	.byte	4
	.quad	.Lfunc_begin75
	.word	.Lfunc_end75-.Lfunc_begin75
	.byte	1
	.byte	88
	.word	.Linfo_string79
	.word	.Linfo_string79
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end75:
.Lcu_begin76:
	.word	.Ldebug_info_end76-.Ldebug_info_start76
.Ldebug_info_start76:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin76
	.word	.Lfunc_end76-.Lfunc_begin76
	.byte	4
	.quad	.Lfunc_begin76
	.word	.Lfunc_end76-.Lfunc_begin76
	.byte	1
	.byte	88
	.word	.Linfo_string80
	.word	.Linfo_string80
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end76:
.Lcu_begin77:
	.word	.Ldebug_info_end77-.Ldebug_info_start77
.Ldebug_info_start77:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin77
	.word	.Lfunc_end77-.Lfunc_begin77
	.byte	4
	.quad	.Lfunc_begin77
	.word	.Lfunc_end77-.Lfunc_begin77
	.byte	1
	.byte	88
	.word	.Linfo_string81
	.word	.Linfo_string81
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end77:
.Lcu_begin78:
	.word	.Ldebug_info_end78-.Ldebug_info_start78
.Ldebug_info_start78:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin78
	.word	.Lfunc_end78-.Lfunc_begin78
	.byte	4
	.quad	.Lfunc_begin78
	.word	.Lfunc_end78-.Lfunc_begin78
	.byte	1
	.byte	88
	.word	.Linfo_string82
	.word	.Linfo_string82
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end78:
.Lcu_begin79:
	.word	.Ldebug_info_end79-.Ldebug_info_start79
.Ldebug_info_start79:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin79
	.word	.Lfunc_end79-.Lfunc_begin79
	.byte	4
	.quad	.Lfunc_begin79
	.word	.Lfunc_end79-.Lfunc_begin79
	.byte	1
	.byte	88
	.word	.Linfo_string83
	.word	.Linfo_string83
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end79:
.Lcu_begin80:
	.word	.Ldebug_info_end80-.Ldebug_info_start80
.Ldebug_info_start80:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin80
	.word	.Lfunc_end80-.Lfunc_begin80
	.byte	4
	.quad	.Lfunc_begin80
	.word	.Lfunc_end80-.Lfunc_begin80
	.byte	1
	.byte	88
	.word	.Linfo_string84
	.word	.Linfo_string84
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end80:
.Lcu_begin81:
	.word	.Ldebug_info_end81-.Ldebug_info_start81
.Ldebug_info_start81:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin81
	.word	.Lfunc_end81-.Lfunc_begin81
	.byte	4
	.quad	.Lfunc_begin81
	.word	.Lfunc_end81-.Lfunc_begin81
	.byte	1
	.byte	88
	.word	.Linfo_string85
	.word	.Linfo_string85
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end81:
.Lcu_begin82:
	.word	.Ldebug_info_end82-.Ldebug_info_start82
.Ldebug_info_start82:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin82
	.word	.Lfunc_end82-.Lfunc_begin82
	.byte	4
	.quad	.Lfunc_begin82
	.word	.Lfunc_end82-.Lfunc_begin82
	.byte	1
	.byte	88
	.word	.Linfo_string86
	.word	.Linfo_string86
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end82:
.Lcu_begin83:
	.word	.Ldebug_info_end83-.Ldebug_info_start83
.Ldebug_info_start83:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin83
	.word	.Lfunc_end83-.Lfunc_begin83
	.byte	4
	.quad	.Lfunc_begin83
	.word	.Lfunc_end83-.Lfunc_begin83
	.byte	1
	.byte	88
	.word	.Linfo_string87
	.word	.Linfo_string87
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end83:
.Lcu_begin84:
	.word	.Ldebug_info_end84-.Ldebug_info_start84
.Ldebug_info_start84:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin84
	.word	.Lfunc_end84-.Lfunc_begin84
	.byte	4
	.quad	.Lfunc_begin84
	.word	.Lfunc_end84-.Lfunc_begin84
	.byte	1
	.byte	88
	.word	.Linfo_string88
	.word	.Linfo_string88
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end84:
.Lcu_begin85:
	.word	.Ldebug_info_end85-.Ldebug_info_start85
.Ldebug_info_start85:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin85
	.word	.Lfunc_end85-.Lfunc_begin85
	.byte	4
	.quad	.Lfunc_begin85
	.word	.Lfunc_end85-.Lfunc_begin85
	.byte	1
	.byte	88
	.word	.Linfo_string89
	.word	.Linfo_string89
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end85:
.Lcu_begin86:
	.word	.Ldebug_info_end86-.Ldebug_info_start86
.Ldebug_info_start86:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin86
	.word	.Lfunc_end86-.Lfunc_begin86
	.byte	4
	.quad	.Lfunc_begin86
	.word	.Lfunc_end86-.Lfunc_begin86
	.byte	1
	.byte	88
	.word	.Linfo_string90
	.word	.Linfo_string90
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end86:
.Lcu_begin87:
	.word	.Ldebug_info_end87-.Ldebug_info_start87
.Ldebug_info_start87:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin87
	.word	.Lfunc_end87-.Lfunc_begin87
	.byte	4
	.quad	.Lfunc_begin87
	.word	.Lfunc_end87-.Lfunc_begin87
	.byte	1
	.byte	88
	.word	.Linfo_string91
	.word	.Linfo_string91
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end87:
.Lcu_begin88:
	.word	.Ldebug_info_end88-.Ldebug_info_start88
.Ldebug_info_start88:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin88
	.word	.Lfunc_end88-.Lfunc_begin88
	.byte	4
	.quad	.Lfunc_begin88
	.word	.Lfunc_end88-.Lfunc_begin88
	.byte	1
	.byte	88
	.word	.Linfo_string92
	.word	.Linfo_string92
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end88:
.Lcu_begin89:
	.word	.Ldebug_info_end89-.Ldebug_info_start89
.Ldebug_info_start89:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin89
	.word	.Lfunc_end89-.Lfunc_begin89
	.byte	4
	.quad	.Lfunc_begin89
	.word	.Lfunc_end89-.Lfunc_begin89
	.byte	1
	.byte	88
	.word	.Linfo_string93
	.word	.Linfo_string93
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end89:
.Lcu_begin90:
	.word	.Ldebug_info_end90-.Ldebug_info_start90
.Ldebug_info_start90:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin90
	.word	.Lfunc_end90-.Lfunc_begin90
	.byte	4
	.quad	.Lfunc_begin90
	.word	.Lfunc_end90-.Lfunc_begin90
	.byte	1
	.byte	88
	.word	.Linfo_string94
	.word	.Linfo_string94
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end90:
.Lcu_begin91:
	.word	.Ldebug_info_end91-.Ldebug_info_start91
.Ldebug_info_start91:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin91
	.word	.Lfunc_end91-.Lfunc_begin91
	.byte	4
	.quad	.Lfunc_begin91
	.word	.Lfunc_end91-.Lfunc_begin91
	.byte	1
	.byte	88
	.word	.Linfo_string95
	.word	.Linfo_string95
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end91:
.Lcu_begin92:
	.word	.Ldebug_info_end92-.Ldebug_info_start92
.Ldebug_info_start92:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin92
	.word	.Lfunc_end92-.Lfunc_begin92
	.byte	4
	.quad	.Lfunc_begin92
	.word	.Lfunc_end92-.Lfunc_begin92
	.byte	1
	.byte	88
	.word	.Linfo_string96
	.word	.Linfo_string96
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end92:
.Lcu_begin93:
	.word	.Ldebug_info_end93-.Ldebug_info_start93
.Ldebug_info_start93:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin93
	.word	.Lfunc_end93-.Lfunc_begin93
	.byte	4
	.quad	.Lfunc_begin93
	.word	.Lfunc_end93-.Lfunc_begin93
	.byte	1
	.byte	88
	.word	.Linfo_string97
	.word	.Linfo_string97
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end93:
.Lcu_begin94:
	.word	.Ldebug_info_end94-.Ldebug_info_start94
.Ldebug_info_start94:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin94
	.word	.Lfunc_end94-.Lfunc_begin94
	.byte	4
	.quad	.Lfunc_begin94
	.word	.Lfunc_end94-.Lfunc_begin94
	.byte	1
	.byte	88
	.word	.Linfo_string98
	.word	.Linfo_string98
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end94:
.Lcu_begin95:
	.word	.Ldebug_info_end95-.Ldebug_info_start95
.Ldebug_info_start95:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin95
	.word	.Lfunc_end95-.Lfunc_begin95
	.byte	4
	.quad	.Lfunc_begin95
	.word	.Lfunc_end95-.Lfunc_begin95
	.byte	1
	.byte	88
	.word	.Linfo_string99
	.word	.Linfo_string99
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end95:
.Lcu_begin96:
	.word	.Ldebug_info_end96-.Ldebug_info_start96
.Ldebug_info_start96:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin96
	.word	.Lfunc_end96-.Lfunc_begin96
	.byte	4
	.quad	.Lfunc_begin96
	.word	.Lfunc_end96-.Lfunc_begin96
	.byte	1
	.byte	88
	.word	.Linfo_string100
	.word	.Linfo_string100
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end96:
.Lcu_begin97:
	.word	.Ldebug_info_end97-.Ldebug_info_start97
.Ldebug_info_start97:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin97
	.word	.Lfunc_end97-.Lfunc_begin97
	.byte	4
	.quad	.Lfunc_begin97
	.word	.Lfunc_end97-.Lfunc_begin97
	.byte	1
	.byte	88
	.word	.Linfo_string101
	.word	.Linfo_string101
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end97:
.Lcu_begin98:
	.word	.Ldebug_info_end98-.Ldebug_info_start98
.Ldebug_info_start98:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin98
	.word	.Lfunc_end98-.Lfunc_begin98
	.byte	4
	.quad	.Lfunc_begin98
	.word	.Lfunc_end98-.Lfunc_begin98
	.byte	1
	.byte	88
	.word	.Linfo_string102
	.word	.Linfo_string102
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end98:
.Lcu_begin99:
	.word	.Ldebug_info_end99-.Ldebug_info_start99
.Ldebug_info_start99:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin99
	.word	.Lfunc_end99-.Lfunc_begin99
	.byte	4
	.quad	.Lfunc_begin99
	.word	.Lfunc_end99-.Lfunc_begin99
	.byte	1
	.byte	88
	.word	.Linfo_string103
	.word	.Linfo_string103
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end99:
.Lcu_begin100:
	.word	.Ldebug_info_end100-.Ldebug_info_start100
.Ldebug_info_start100:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin100
	.word	.Lfunc_end100-.Lfunc_begin100
	.byte	4
	.quad	.Lfunc_begin100
	.word	.Lfunc_end100-.Lfunc_begin100
	.byte	1
	.byte	88
	.word	.Linfo_string104
	.word	.Linfo_string104
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end100:
.Lcu_begin101:
	.word	.Ldebug_info_end101-.Ldebug_info_start101
.Ldebug_info_start101:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin101
	.word	.Lfunc_end101-.Lfunc_begin101
	.byte	4
	.quad	.Lfunc_begin101
	.word	.Lfunc_end101-.Lfunc_begin101
	.byte	1
	.byte	88
	.word	.Linfo_string105
	.word	.Linfo_string105
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end101:
.Lcu_begin102:
	.word	.Ldebug_info_end102-.Ldebug_info_start102
.Ldebug_info_start102:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin102
	.word	.Lfunc_end102-.Lfunc_begin102
	.byte	4
	.quad	.Lfunc_begin102
	.word	.Lfunc_end102-.Lfunc_begin102
	.byte	1
	.byte	88
	.word	.Linfo_string106
	.word	.Linfo_string106
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end102:
.Lcu_begin103:
	.word	.Ldebug_info_end103-.Ldebug_info_start103
.Ldebug_info_start103:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin103
	.word	.Lfunc_end103-.Lfunc_begin103
	.byte	4
	.quad	.Lfunc_begin103
	.word	.Lfunc_end103-.Lfunc_begin103
	.byte	1
	.byte	88
	.word	.Linfo_string107
	.word	.Linfo_string107
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end103:
.Lcu_begin104:
	.word	.Ldebug_info_end104-.Ldebug_info_start104
.Ldebug_info_start104:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin104
	.word	.Lfunc_end104-.Lfunc_begin104
	.byte	4
	.quad	.Lfunc_begin104
	.word	.Lfunc_end104-.Lfunc_begin104
	.byte	1
	.byte	88
	.word	.Linfo_string108
	.word	.Linfo_string108
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end104:
.Lcu_begin105:
	.word	.Ldebug_info_end105-.Ldebug_info_start105
.Ldebug_info_start105:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin105
	.word	.Lfunc_end105-.Lfunc_begin105
	.byte	4
	.quad	.Lfunc_begin105
	.word	.Lfunc_end105-.Lfunc_begin105
	.byte	1
	.byte	88
	.word	.Linfo_string109
	.word	.Linfo_string109
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end105:
.Lcu_begin106:
	.word	.Ldebug_info_end106-.Ldebug_info_start106
.Ldebug_info_start106:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin106
	.word	.Lfunc_end106-.Lfunc_begin106
	.byte	4
	.quad	.Lfunc_begin106
	.word	.Lfunc_end106-.Lfunc_begin106
	.byte	1
	.byte	88
	.word	.Linfo_string110
	.word	.Linfo_string110
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end106:
.Lcu_begin107:
	.word	.Ldebug_info_end107-.Ldebug_info_start107
.Ldebug_info_start107:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin107
	.word	.Lfunc_end107-.Lfunc_begin107
	.byte	4
	.quad	.Lfunc_begin107
	.word	.Lfunc_end107-.Lfunc_begin107
	.byte	1
	.byte	88
	.word	.Linfo_string111
	.word	.Linfo_string111
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end107:
.Lcu_begin108:
	.word	.Ldebug_info_end108-.Ldebug_info_start108
.Ldebug_info_start108:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin108
	.word	.Lfunc_end108-.Lfunc_begin108
	.byte	4
	.quad	.Lfunc_begin108
	.word	.Lfunc_end108-.Lfunc_begin108
	.byte	1
	.byte	88
	.word	.Linfo_string112
	.word	.Linfo_string112
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end108:
.Lcu_begin109:
	.word	.Ldebug_info_end109-.Ldebug_info_start109
.Ldebug_info_start109:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin109
	.word	.Lfunc_end109-.Lfunc_begin109
	.byte	4
	.quad	.Lfunc_begin109
	.word	.Lfunc_end109-.Lfunc_begin109
	.byte	1
	.byte	88
	.word	.Linfo_string113
	.word	.Linfo_string113
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end109:
.Lcu_begin110:
	.word	.Ldebug_info_end110-.Ldebug_info_start110
.Ldebug_info_start110:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin110
	.word	.Lfunc_end110-.Lfunc_begin110
	.byte	4
	.quad	.Lfunc_begin110
	.word	.Lfunc_end110-.Lfunc_begin110
	.byte	1
	.byte	88
	.word	.Linfo_string114
	.word	.Linfo_string114
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end110:
.Lcu_begin111:
	.word	.Ldebug_info_end111-.Ldebug_info_start111
.Ldebug_info_start111:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin111
	.word	.Lfunc_end111-.Lfunc_begin111
	.byte	4
	.quad	.Lfunc_begin111
	.word	.Lfunc_end111-.Lfunc_begin111
	.byte	1
	.byte	88
	.word	.Linfo_string115
	.word	.Linfo_string115
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end111:
.Lcu_begin112:
	.word	.Ldebug_info_end112-.Ldebug_info_start112
.Ldebug_info_start112:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin112
	.word	.Lfunc_end112-.Lfunc_begin112
	.byte	4
	.quad	.Lfunc_begin112
	.word	.Lfunc_end112-.Lfunc_begin112
	.byte	1
	.byte	88
	.word	.Linfo_string116
	.word	.Linfo_string116
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end112:
.Lcu_begin113:
	.word	.Ldebug_info_end113-.Ldebug_info_start113
.Ldebug_info_start113:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin113
	.word	.Lfunc_end113-.Lfunc_begin113
	.byte	4
	.quad	.Lfunc_begin113
	.word	.Lfunc_end113-.Lfunc_begin113
	.byte	1
	.byte	88
	.word	.Linfo_string117
	.word	.Linfo_string117
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end113:
.Lcu_begin114:
	.word	.Ldebug_info_end114-.Ldebug_info_start114
.Ldebug_info_start114:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin114
	.word	.Lfunc_end114-.Lfunc_begin114
	.byte	4
	.quad	.Lfunc_begin114
	.word	.Lfunc_end114-.Lfunc_begin114
	.byte	1
	.byte	88
	.word	.Linfo_string118
	.word	.Linfo_string118
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end114:
.Lcu_begin115:
	.word	.Ldebug_info_end115-.Ldebug_info_start115
.Ldebug_info_start115:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin115
	.word	.Lfunc_end115-.Lfunc_begin115
	.byte	4
	.quad	.Lfunc_begin115
	.word	.Lfunc_end115-.Lfunc_begin115
	.byte	1
	.byte	88
	.word	.Linfo_string119
	.word	.Linfo_string119
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end115:
.Lcu_begin116:
	.word	.Ldebug_info_end116-.Ldebug_info_start116
.Ldebug_info_start116:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin116
	.word	.Lfunc_end116-.Lfunc_begin116
	.byte	4
	.quad	.Lfunc_begin116
	.word	.Lfunc_end116-.Lfunc_begin116
	.byte	1
	.byte	88
	.word	.Linfo_string120
	.word	.Linfo_string120
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end116:
.Lcu_begin117:
	.word	.Ldebug_info_end117-.Ldebug_info_start117
.Ldebug_info_start117:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin117
	.word	.Lfunc_end117-.Lfunc_begin117
	.byte	4
	.quad	.Lfunc_begin117
	.word	.Lfunc_end117-.Lfunc_begin117
	.byte	1
	.byte	88
	.word	.Linfo_string121
	.word	.Linfo_string121
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end117:
.Lcu_begin118:
	.word	.Ldebug_info_end118-.Ldebug_info_start118
.Ldebug_info_start118:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin118
	.word	.Lfunc_end118-.Lfunc_begin118
	.byte	4
	.quad	.Lfunc_begin118
	.word	.Lfunc_end118-.Lfunc_begin118
	.byte	1
	.byte	88
	.word	.Linfo_string122
	.word	.Linfo_string122
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end118:
.Lcu_begin119:
	.word	.Ldebug_info_end119-.Ldebug_info_start119
.Ldebug_info_start119:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin119
	.word	.Lfunc_end119-.Lfunc_begin119
	.byte	4
	.quad	.Lfunc_begin119
	.word	.Lfunc_end119-.Lfunc_begin119
	.byte	1
	.byte	88
	.word	.Linfo_string123
	.word	.Linfo_string123
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end119:
.Lcu_begin120:
	.word	.Ldebug_info_end120-.Ldebug_info_start120
.Ldebug_info_start120:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin120
	.word	.Lfunc_end120-.Lfunc_begin120
	.byte	4
	.quad	.Lfunc_begin120
	.word	.Lfunc_end120-.Lfunc_begin120
	.byte	1
	.byte	88
	.word	.Linfo_string124
	.word	.Linfo_string124
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end120:
.Lcu_begin121:
	.word	.Ldebug_info_end121-.Ldebug_info_start121
.Ldebug_info_start121:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin121
	.word	.Lfunc_end121-.Lfunc_begin121
	.byte	4
	.quad	.Lfunc_begin121
	.word	.Lfunc_end121-.Lfunc_begin121
	.byte	1
	.byte	88
	.word	.Linfo_string125
	.word	.Linfo_string125
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end121:
.Lcu_begin122:
	.word	.Ldebug_info_end122-.Ldebug_info_start122
.Ldebug_info_start122:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin122
	.word	.Lfunc_end122-.Lfunc_begin122
	.byte	4
	.quad	.Lfunc_begin122
	.word	.Lfunc_end122-.Lfunc_begin122
	.byte	1
	.byte	88
	.word	.Linfo_string126
	.word	.Linfo_string126
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end122:
.Lcu_begin123:
	.word	.Ldebug_info_end123-.Ldebug_info_start123
.Ldebug_info_start123:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin123
	.word	.Lfunc_end123-.Lfunc_begin123
	.byte	4
	.quad	.Lfunc_begin123
	.word	.Lfunc_end123-.Lfunc_begin123
	.byte	1
	.byte	88
	.word	.Linfo_string127
	.word	.Linfo_string127
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end123:
.Lcu_begin124:
	.word	.Ldebug_info_end124-.Ldebug_info_start124
.Ldebug_info_start124:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin124
	.word	.Lfunc_end124-.Lfunc_begin124
	.byte	4
	.quad	.Lfunc_begin124
	.word	.Lfunc_end124-.Lfunc_begin124
	.byte	1
	.byte	88
	.word	.Linfo_string128
	.word	.Linfo_string128
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end124:
.Lcu_begin125:
	.word	.Ldebug_info_end125-.Ldebug_info_start125
.Ldebug_info_start125:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin125
	.word	.Lfunc_end125-.Lfunc_begin125
	.byte	4
	.quad	.Lfunc_begin125
	.word	.Lfunc_end125-.Lfunc_begin125
	.byte	1
	.byte	88
	.word	.Linfo_string129
	.word	.Linfo_string129
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end125:
.Lcu_begin126:
	.word	.Ldebug_info_end126-.Ldebug_info_start126
.Ldebug_info_start126:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin126
	.word	.Lfunc_end126-.Lfunc_begin126
	.byte	4
	.quad	.Lfunc_begin126
	.word	.Lfunc_end126-.Lfunc_begin126
	.byte	1
	.byte	88
	.word	.Linfo_string130
	.word	.Linfo_string130
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end126:
.Lcu_begin127:
	.word	.Ldebug_info_end127-.Ldebug_info_start127
.Ldebug_info_start127:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin127
	.word	.Lfunc_end127-.Lfunc_begin127
	.byte	4
	.quad	.Lfunc_begin127
	.word	.Lfunc_end127-.Lfunc_begin127
	.byte	1
	.byte	88
	.word	.Linfo_string131
	.word	.Linfo_string131
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end127:
.Lcu_begin128:
	.word	.Ldebug_info_end128-.Ldebug_info_start128
.Ldebug_info_start128:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin128
	.word	.Lfunc_end128-.Lfunc_begin128
	.byte	4
	.quad	.Lfunc_begin128
	.word	.Lfunc_end128-.Lfunc_begin128
	.byte	1
	.byte	88
	.word	.Linfo_string132
	.word	.Linfo_string132
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end128:
.Lcu_begin129:
	.word	.Ldebug_info_end129-.Ldebug_info_start129
.Ldebug_info_start129:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin129
	.word	.Lfunc_end129-.Lfunc_begin129
	.byte	4
	.quad	.Lfunc_begin129
	.word	.Lfunc_end129-.Lfunc_begin129
	.byte	1
	.byte	88
	.word	.Linfo_string133
	.word	.Linfo_string133
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end129:
.Lcu_begin130:
	.word	.Ldebug_info_end130-.Ldebug_info_start130
.Ldebug_info_start130:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin130
	.word	.Lfunc_end130-.Lfunc_begin130
	.byte	4
	.quad	.Lfunc_begin130
	.word	.Lfunc_end130-.Lfunc_begin130
	.byte	1
	.byte	88
	.word	.Linfo_string134
	.word	.Linfo_string134
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end130:
.Lcu_begin131:
	.word	.Ldebug_info_end131-.Ldebug_info_start131
.Ldebug_info_start131:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin131
	.word	.Lfunc_end131-.Lfunc_begin131
	.byte	4
	.quad	.Lfunc_begin131
	.word	.Lfunc_end131-.Lfunc_begin131
	.byte	1
	.byte	88
	.word	.Linfo_string135
	.word	.Linfo_string135
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end131:
.Lcu_begin132:
	.word	.Ldebug_info_end132-.Ldebug_info_start132
.Ldebug_info_start132:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin132
	.word	.Lfunc_end132-.Lfunc_begin132
	.byte	4
	.quad	.Lfunc_begin132
	.word	.Lfunc_end132-.Lfunc_begin132
	.byte	1
	.byte	88
	.word	.Linfo_string136
	.word	.Linfo_string136
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end132:
.Lcu_begin133:
	.word	.Ldebug_info_end133-.Ldebug_info_start133
.Ldebug_info_start133:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin133
	.word	.Lfunc_end133-.Lfunc_begin133
	.byte	4
	.quad	.Lfunc_begin133
	.word	.Lfunc_end133-.Lfunc_begin133
	.byte	1
	.byte	88
	.word	.Linfo_string137
	.word	.Linfo_string137
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end133:
.Lcu_begin134:
	.word	.Ldebug_info_end134-.Ldebug_info_start134
.Ldebug_info_start134:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin134
	.word	.Lfunc_end134-.Lfunc_begin134
	.byte	4
	.quad	.Lfunc_begin134
	.word	.Lfunc_end134-.Lfunc_begin134
	.byte	1
	.byte	88
	.word	.Linfo_string138
	.word	.Linfo_string138
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end134:
.Lcu_begin135:
	.word	.Ldebug_info_end135-.Ldebug_info_start135
.Ldebug_info_start135:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin135
	.word	.Lfunc_end135-.Lfunc_begin135
	.byte	4
	.quad	.Lfunc_begin135
	.word	.Lfunc_end135-.Lfunc_begin135
	.byte	1
	.byte	88
	.word	.Linfo_string139
	.word	.Linfo_string139
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end135:
.Lcu_begin136:
	.word	.Ldebug_info_end136-.Ldebug_info_start136
.Ldebug_info_start136:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin136
	.word	.Lfunc_end136-.Lfunc_begin136
	.byte	4
	.quad	.Lfunc_begin136
	.word	.Lfunc_end136-.Lfunc_begin136
	.byte	1
	.byte	88
	.word	.Linfo_string140
	.word	.Linfo_string140
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end136:
.Lcu_begin137:
	.word	.Ldebug_info_end137-.Ldebug_info_start137
.Ldebug_info_start137:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin137
	.word	.Lfunc_end137-.Lfunc_begin137
	.byte	4
	.quad	.Lfunc_begin137
	.word	.Lfunc_end137-.Lfunc_begin137
	.byte	1
	.byte	88
	.word	.Linfo_string141
	.word	.Linfo_string141
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end137:
.Lcu_begin138:
	.word	.Ldebug_info_end138-.Ldebug_info_start138
.Ldebug_info_start138:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin138
	.word	.Lfunc_end138-.Lfunc_begin138
	.byte	4
	.quad	.Lfunc_begin138
	.word	.Lfunc_end138-.Lfunc_begin138
	.byte	1
	.byte	88
	.word	.Linfo_string142
	.word	.Linfo_string142
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end138:
.Lcu_begin139:
	.word	.Ldebug_info_end139-.Ldebug_info_start139
.Ldebug_info_start139:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin139
	.word	.Lfunc_end139-.Lfunc_begin139
	.byte	4
	.quad	.Lfunc_begin139
	.word	.Lfunc_end139-.Lfunc_begin139
	.byte	1
	.byte	88
	.word	.Linfo_string143
	.word	.Linfo_string143
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end139:
.Lcu_begin140:
	.word	.Ldebug_info_end140-.Ldebug_info_start140
.Ldebug_info_start140:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin140
	.word	.Lfunc_end140-.Lfunc_begin140
	.byte	4
	.quad	.Lfunc_begin140
	.word	.Lfunc_end140-.Lfunc_begin140
	.byte	1
	.byte	88
	.word	.Linfo_string144
	.word	.Linfo_string144
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end140:
.Lcu_begin141:
	.word	.Ldebug_info_end141-.Ldebug_info_start141
.Ldebug_info_start141:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin141
	.word	.Lfunc_end141-.Lfunc_begin141
	.byte	4
	.quad	.Lfunc_begin141
	.word	.Lfunc_end141-.Lfunc_begin141
	.byte	1
	.byte	88
	.word	.Linfo_string145
	.word	.Linfo_string145
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end141:
.Lcu_begin142:
	.word	.Ldebug_info_end142-.Ldebug_info_start142
.Ldebug_info_start142:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin142
	.word	.Lfunc_end142-.Lfunc_begin142
	.byte	4
	.quad	.Lfunc_begin142
	.word	.Lfunc_end142-.Lfunc_begin142
	.byte	1
	.byte	88
	.word	.Linfo_string146
	.word	.Linfo_string146
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end142:
.Lcu_begin143:
	.word	.Ldebug_info_end143-.Ldebug_info_start143
.Ldebug_info_start143:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin143
	.word	.Lfunc_end143-.Lfunc_begin143
	.byte	4
	.quad	.Lfunc_begin143
	.word	.Lfunc_end143-.Lfunc_begin143
	.byte	1
	.byte	88
	.word	.Linfo_string147
	.word	.Linfo_string147
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end143:
.Lcu_begin144:
	.word	.Ldebug_info_end144-.Ldebug_info_start144
.Ldebug_info_start144:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin144
	.word	.Lfunc_end144-.Lfunc_begin144
	.byte	4
	.quad	.Lfunc_begin144
	.word	.Lfunc_end144-.Lfunc_begin144
	.byte	1
	.byte	88
	.word	.Linfo_string148
	.word	.Linfo_string148
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end144:
.Lcu_begin145:
	.word	.Ldebug_info_end145-.Ldebug_info_start145
.Ldebug_info_start145:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin145
	.word	.Lfunc_end145-.Lfunc_begin145
	.byte	4
	.quad	.Lfunc_begin145
	.word	.Lfunc_end145-.Lfunc_begin145
	.byte	1
	.byte	88
	.word	.Linfo_string149
	.word	.Linfo_string149
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end145:
.Lcu_begin146:
	.word	.Ldebug_info_end146-.Ldebug_info_start146
.Ldebug_info_start146:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin146
	.word	.Lfunc_end146-.Lfunc_begin146
	.byte	4
	.quad	.Lfunc_begin146
	.word	.Lfunc_end146-.Lfunc_begin146
	.byte	1
	.byte	88
	.word	.Linfo_string150
	.word	.Linfo_string150
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end146:
.Lcu_begin147:
	.word	.Ldebug_info_end147-.Ldebug_info_start147
.Ldebug_info_start147:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin147
	.word	.Lfunc_end147-.Lfunc_begin147
	.byte	4
	.quad	.Lfunc_begin147
	.word	.Lfunc_end147-.Lfunc_begin147
	.byte	1
	.byte	88
	.word	.Linfo_string151
	.word	.Linfo_string151
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end147:
.Lcu_begin148:
	.word	.Ldebug_info_end148-.Ldebug_info_start148
.Ldebug_info_start148:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin148
	.word	.Lfunc_end148-.Lfunc_begin148
	.byte	4
	.quad	.Lfunc_begin148
	.word	.Lfunc_end148-.Lfunc_begin148
	.byte	1
	.byte	88
	.word	.Linfo_string152
	.word	.Linfo_string152
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end148:
.Lcu_begin149:
	.word	.Ldebug_info_end149-.Ldebug_info_start149
.Ldebug_info_start149:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin149
	.word	.Lfunc_end149-.Lfunc_begin149
	.byte	4
	.quad	.Lfunc_begin149
	.word	.Lfunc_end149-.Lfunc_begin149
	.byte	1
	.byte	88
	.word	.Linfo_string153
	.word	.Linfo_string153
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end149:
.Lcu_begin150:
	.word	.Ldebug_info_end150-.Ldebug_info_start150
.Ldebug_info_start150:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin150
	.word	.Lfunc_end150-.Lfunc_begin150
	.byte	4
	.quad	.Lfunc_begin150
	.word	.Lfunc_end150-.Lfunc_begin150
	.byte	1
	.byte	88
	.word	.Linfo_string154
	.word	.Linfo_string154
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end150:
.Lcu_begin151:
	.word	.Ldebug_info_end151-.Ldebug_info_start151
.Ldebug_info_start151:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin151
	.word	.Lfunc_end151-.Lfunc_begin151
	.byte	4
	.quad	.Lfunc_begin151
	.word	.Lfunc_end151-.Lfunc_begin151
	.byte	1
	.byte	88
	.word	.Linfo_string155
	.word	.Linfo_string155
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end151:
.Lcu_begin152:
	.word	.Ldebug_info_end152-.Ldebug_info_start152
.Ldebug_info_start152:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin152
	.word	.Lfunc_end152-.Lfunc_begin152
	.byte	4
	.quad	.Lfunc_begin152
	.word	.Lfunc_end152-.Lfunc_begin152
	.byte	1
	.byte	88
	.word	.Linfo_string156
	.word	.Linfo_string156
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end152:
.Lcu_begin153:
	.word	.Ldebug_info_end153-.Ldebug_info_start153
.Ldebug_info_start153:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin153
	.word	.Lfunc_end153-.Lfunc_begin153
	.byte	4
	.quad	.Lfunc_begin153
	.word	.Lfunc_end153-.Lfunc_begin153
	.byte	1
	.byte	88
	.word	.Linfo_string157
	.word	.Linfo_string157
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end153:
.Lcu_begin154:
	.word	.Ldebug_info_end154-.Ldebug_info_start154
.Ldebug_info_start154:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin154
	.word	.Lfunc_end154-.Lfunc_begin154
	.byte	4
	.quad	.Lfunc_begin154
	.word	.Lfunc_end154-.Lfunc_begin154
	.byte	1
	.byte	88
	.word	.Linfo_string158
	.word	.Linfo_string158
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end154:
.Lcu_begin155:
	.word	.Ldebug_info_end155-.Ldebug_info_start155
.Ldebug_info_start155:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin155
	.word	.Lfunc_end155-.Lfunc_begin155
	.byte	4
	.quad	.Lfunc_begin155
	.word	.Lfunc_end155-.Lfunc_begin155
	.byte	1
	.byte	88
	.word	.Linfo_string159
	.word	.Linfo_string159
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end155:
.Lcu_begin156:
	.word	.Ldebug_info_end156-.Ldebug_info_start156
.Ldebug_info_start156:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin156
	.word	.Lfunc_end156-.Lfunc_begin156
	.byte	4
	.quad	.Lfunc_begin156
	.word	.Lfunc_end156-.Lfunc_begin156
	.byte	1
	.byte	88
	.word	.Linfo_string160
	.word	.Linfo_string160
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end156:
.Lcu_begin157:
	.word	.Ldebug_info_end157-.Ldebug_info_start157
.Ldebug_info_start157:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin157
	.word	.Lfunc_end157-.Lfunc_begin157
	.byte	4
	.quad	.Lfunc_begin157
	.word	.Lfunc_end157-.Lfunc_begin157
	.byte	1
	.byte	88
	.word	.Linfo_string161
	.word	.Linfo_string161
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end157:
.Lcu_begin158:
	.word	.Ldebug_info_end158-.Ldebug_info_start158
.Ldebug_info_start158:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin158
	.word	.Lfunc_end158-.Lfunc_begin158
	.byte	4
	.quad	.Lfunc_begin158
	.word	.Lfunc_end158-.Lfunc_begin158
	.byte	1
	.byte	88
	.word	.Linfo_string162
	.word	.Linfo_string162
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end158:
.Lcu_begin159:
	.word	.Ldebug_info_end159-.Ldebug_info_start159
.Ldebug_info_start159:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin159
	.word	.Lfunc_end159-.Lfunc_begin159
	.byte	4
	.quad	.Lfunc_begin159
	.word	.Lfunc_end159-.Lfunc_begin159
	.byte	1
	.byte	88
	.word	.Linfo_string163
	.word	.Linfo_string163
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end159:
.Lcu_begin160:
	.word	.Ldebug_info_end160-.Ldebug_info_start160
.Ldebug_info_start160:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin160
	.word	.Lfunc_end160-.Lfunc_begin160
	.byte	4
	.quad	.Lfunc_begin160
	.word	.Lfunc_end160-.Lfunc_begin160
	.byte	1
	.byte	88
	.word	.Linfo_string164
	.word	.Linfo_string164
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end160:
.Lcu_begin161:
	.word	.Ldebug_info_end161-.Ldebug_info_start161
.Ldebug_info_start161:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin161
	.word	.Lfunc_end161-.Lfunc_begin161
	.byte	4
	.quad	.Lfunc_begin161
	.word	.Lfunc_end161-.Lfunc_begin161
	.byte	1
	.byte	88
	.word	.Linfo_string165
	.word	.Linfo_string165
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end161:
.Lcu_begin162:
	.word	.Ldebug_info_end162-.Ldebug_info_start162
.Ldebug_info_start162:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin162
	.word	.Lfunc_end162-.Lfunc_begin162
	.byte	4
	.quad	.Lfunc_begin162
	.word	.Lfunc_end162-.Lfunc_begin162
	.byte	1
	.byte	88
	.word	.Linfo_string166
	.word	.Linfo_string166
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end162:
.Lcu_begin163:
	.word	.Ldebug_info_end163-.Ldebug_info_start163
.Ldebug_info_start163:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin163
	.word	.Lfunc_end163-.Lfunc_begin163
	.byte	4
	.quad	.Lfunc_begin163
	.word	.Lfunc_end163-.Lfunc_begin163
	.byte	1
	.byte	88
	.word	.Linfo_string167
	.word	.Linfo_string167
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end163:
.Lcu_begin164:
	.word	.Ldebug_info_end164-.Ldebug_info_start164
.Ldebug_info_start164:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin164
	.word	.Lfunc_end164-.Lfunc_begin164
	.byte	4
	.quad	.Lfunc_begin164
	.word	.Lfunc_end164-.Lfunc_begin164
	.byte	1
	.byte	88
	.word	.Linfo_string168
	.word	.Linfo_string168
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end164:
.Lcu_begin165:
	.word	.Ldebug_info_end165-.Ldebug_info_start165
.Ldebug_info_start165:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin165
	.word	.Lfunc_end165-.Lfunc_begin165
	.byte	4
	.quad	.Lfunc_begin165
	.word	.Lfunc_end165-.Lfunc_begin165
	.byte	1
	.byte	88
	.word	.Linfo_string169
	.word	.Linfo_string169
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end165:
.Lcu_begin166:
	.word	.Ldebug_info_end166-.Ldebug_info_start166
.Ldebug_info_start166:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin166
	.word	.Lfunc_end166-.Lfunc_begin166
	.byte	4
	.quad	.Lfunc_begin166
	.word	.Lfunc_end166-.Lfunc_begin166
	.byte	1
	.byte	88
	.word	.Linfo_string170
	.word	.Linfo_string170
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end166:
.Lcu_begin167:
	.word	.Ldebug_info_end167-.Ldebug_info_start167
.Ldebug_info_start167:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin167
	.word	.Lfunc_end167-.Lfunc_begin167
	.byte	4
	.quad	.Lfunc_begin167
	.word	.Lfunc_end167-.Lfunc_begin167
	.byte	1
	.byte	88
	.word	.Linfo_string171
	.word	.Linfo_string171
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end167:
.Lcu_begin168:
	.word	.Ldebug_info_end168-.Ldebug_info_start168
.Ldebug_info_start168:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin168
	.word	.Lfunc_end168-.Lfunc_begin168
	.byte	4
	.quad	.Lfunc_begin168
	.word	.Lfunc_end168-.Lfunc_begin168
	.byte	1
	.byte	88
	.word	.Linfo_string172
	.word	.Linfo_string172
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end168:
.Lcu_begin169:
	.word	.Ldebug_info_end169-.Ldebug_info_start169
.Ldebug_info_start169:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin169
	.word	.Lfunc_end169-.Lfunc_begin169
	.byte	4
	.quad	.Lfunc_begin169
	.word	.Lfunc_end169-.Lfunc_begin169
	.byte	1
	.byte	88
	.word	.Linfo_string173
	.word	.Linfo_string173
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end169:
.Lcu_begin170:
	.word	.Ldebug_info_end170-.Ldebug_info_start170
.Ldebug_info_start170:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin170
	.word	.Lfunc_end170-.Lfunc_begin170
	.byte	4
	.quad	.Lfunc_begin170
	.word	.Lfunc_end170-.Lfunc_begin170
	.byte	1
	.byte	88
	.word	.Linfo_string174
	.word	.Linfo_string174
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end170:
.Lcu_begin171:
	.word	.Ldebug_info_end171-.Ldebug_info_start171
.Ldebug_info_start171:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin171
	.word	.Lfunc_end171-.Lfunc_begin171
	.byte	4
	.quad	.Lfunc_begin171
	.word	.Lfunc_end171-.Lfunc_begin171
	.byte	1
	.byte	88
	.word	.Linfo_string175
	.word	.Linfo_string175
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end171:
.Lcu_begin172:
	.word	.Ldebug_info_end172-.Ldebug_info_start172
.Ldebug_info_start172:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin172
	.word	.Lfunc_end172-.Lfunc_begin172
	.byte	4
	.quad	.Lfunc_begin172
	.word	.Lfunc_end172-.Lfunc_begin172
	.byte	1
	.byte	88
	.word	.Linfo_string176
	.word	.Linfo_string176
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end172:
.Lcu_begin173:
	.word	.Ldebug_info_end173-.Ldebug_info_start173
.Ldebug_info_start173:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin173
	.word	.Lfunc_end173-.Lfunc_begin173
	.byte	4
	.quad	.Lfunc_begin173
	.word	.Lfunc_end173-.Lfunc_begin173
	.byte	1
	.byte	88
	.word	.Linfo_string177
	.word	.Linfo_string177
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end173:
.Lcu_begin174:
	.word	.Ldebug_info_end174-.Ldebug_info_start174
.Ldebug_info_start174:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin174
	.word	.Lfunc_end174-.Lfunc_begin174
	.byte	4
	.quad	.Lfunc_begin174
	.word	.Lfunc_end174-.Lfunc_begin174
	.byte	1
	.byte	88
	.word	.Linfo_string178
	.word	.Linfo_string178
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end174:
.Lcu_begin175:
	.word	.Ldebug_info_end175-.Ldebug_info_start175
.Ldebug_info_start175:
	.half	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.half	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.quad	.Lfunc_begin175
	.word	.Lfunc_end175-.Lfunc_begin175
	.byte	4
	.quad	.Lfunc_begin175
	.word	.Lfunc_end175-.Lfunc_begin175
	.byte	1
	.byte	88
	.word	.Linfo_string179
	.word	.Linfo_string179
	.byte	1
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end175:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"resnet50.q.int8.mlir"
.Linfo_string2:
	.asciz	"/home/loren/work/runs/resnet50/artifacts"
.Linfo_string3:
	.asciz	"_initializer_0_dispatch_0_transpose_64x64_i8"
.Linfo_string4:
	.asciz	"int"
.Linfo_string5:
	.asciz	"_initializer_1_dispatch_0_transpose_64x256_i8"
.Linfo_string6:
	.asciz	"_initializer_2_dispatch_0_transpose_64x256_i8"
.Linfo_string7:
	.asciz	"_initializer_3_dispatch_0_transpose_256x64_i8"
.Linfo_string8:
	.asciz	"_initializer_4_dispatch_0_transpose_64x256_i8"
.Linfo_string9:
	.asciz	"_initializer_5_dispatch_0_transpose_256x64_i8"
.Linfo_string10:
	.asciz	"_initializer_6_dispatch_0_transpose_64x256_i8"
.Linfo_string11:
	.asciz	"_initializer_7_dispatch_0_transpose_256x128_i8"
.Linfo_string12:
	.asciz	"_initializer_8_dispatch_0_transpose_256x512_i8"
.Linfo_string13:
	.asciz	"_initializer_9_dispatch_0_transpose_128x512_i8"
.Linfo_string14:
	.asciz	"_initializer_10_dispatch_0_transpose_512x128_i8"
.Linfo_string15:
	.asciz	"_initializer_11_dispatch_0_transpose_128x512_i8"
.Linfo_string16:
	.asciz	"_initializer_12_dispatch_0_transpose_512x128_i8"
.Linfo_string17:
	.asciz	"_initializer_13_dispatch_0_transpose_128x512_i8"
.Linfo_string18:
	.asciz	"_initializer_14_dispatch_0_transpose_512x128_i8"
.Linfo_string19:
	.asciz	"_initializer_15_dispatch_0_transpose_128x512_i8"
.Linfo_string20:
	.asciz	"_initializer_16_dispatch_0_transpose_512x256_i8"
.Linfo_string21:
	.asciz	"_initializer_17_dispatch_0_transpose_512x1024_i8"
.Linfo_string22:
	.asciz	"_initializer_18_dispatch_0_transpose_256x1024_i8"
.Linfo_string23:
	.asciz	"_initializer_19_dispatch_0_transpose_1024x256_i8"
.Linfo_string24:
	.asciz	"_initializer_20_dispatch_0_transpose_256x1024_i8"
.Linfo_string25:
	.asciz	"_initializer_21_dispatch_0_transpose_1024x256_i8"
.Linfo_string26:
	.asciz	"_initializer_22_dispatch_0_transpose_256x1024_i8"
.Linfo_string27:
	.asciz	"_initializer_23_dispatch_0_transpose_1024x256_i8"
.Linfo_string28:
	.asciz	"_initializer_24_dispatch_0_transpose_256x1024_i8"
.Linfo_string29:
	.asciz	"_initializer_25_dispatch_0_transpose_1024x256_i8"
.Linfo_string30:
	.asciz	"_initializer_26_dispatch_0_transpose_256x1024_i8"
.Linfo_string31:
	.asciz	"_initializer_27_dispatch_0_transpose_1024x256_i8"
.Linfo_string32:
	.asciz	"_initializer_28_dispatch_0_transpose_256x1024_i8"
.Linfo_string33:
	.asciz	"_initializer_29_dispatch_0_transpose_1024x512_i8"
.Linfo_string34:
	.asciz	"_initializer_30_dispatch_0_transpose_1024x2048_i8"
.Linfo_string35:
	.asciz	"_initializer_31_dispatch_0_transpose_512x2048_i8"
.Linfo_string36:
	.asciz	"_initializer_32_dispatch_0_transpose_2048x512_i8"
.Linfo_string37:
	.asciz	"_initializer_33_dispatch_0_transpose_512x2048_i8"
.Linfo_string38:
	.asciz	"_initializer_34_dispatch_0_transpose_2048x512_i8"
.Linfo_string39:
	.asciz	"_initializer_35_dispatch_0_transpose_512x2048_i8"
.Linfo_string40:
	.asciz	"_initializer_36_dispatch_0_transpose_2048x1000_i8"
.Linfo_string41:
	.asciz	"_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string42:
	.asciz	"_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string43:
	.asciz	"_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string44:
	.asciz	"_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string45:
	.asciz	"_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string46:
	.asciz	"_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32"
.Linfo_string47:
	.asciz	"_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string48:
	.asciz	"_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string49:
	.asciz	"_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string50:
	.asciz	"_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string51:
	.asciz	"_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string52:
	.asciz	"_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string53:
	.asciz	"_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32"
.Linfo_string54:
	.asciz	"_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32"
.Linfo_string55:
	.asciz	"_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string56:
	.asciz	"_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string57:
	.asciz	"_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string58:
	.asciz	"_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string59:
	.asciz	"_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string60:
	.asciz	"_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string61:
	.asciz	"_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string62:
	.asciz	"_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string63:
	.asciz	"_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string64:
	.asciz	"_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string65:
	.asciz	"_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string66:
	.asciz	"_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string67:
	.asciz	"_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string68:
	.asciz	"_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string69:
	.asciz	"_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string70:
	.asciz	"_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string71:
	.asciz	"_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32"
.Linfo_string72:
	.asciz	"_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32"
.Linfo_string73:
	.asciz	"_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32"
.Linfo_string74:
	.asciz	"_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32"
.Linfo_string75:
	.asciz	"_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32"
.Linfo_string76:
	.asciz	"_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32"
.Linfo_string77:
	.asciz	"_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32"
.Linfo_string78:
	.asciz	"_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32"
.Linfo_string79:
	.asciz	"_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32"
.Linfo_string80:
	.asciz	"_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32"
.Linfo_string81:
	.asciz	"_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32"
.Linfo_string82:
	.asciz	"_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32"
.Linfo_string83:
	.asciz	"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8"
.Linfo_string84:
	.asciz	"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32"
.Linfo_string85:
	.asciz	"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8"
.Linfo_string86:
	.asciz	"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32"
.Linfo_string87:
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
.Linfo_string88:
	.asciz	"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32"
.Linfo_string89:
	.asciz	"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"
.Linfo_string90:
	.asciz	"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32"
.Linfo_string91:
	.asciz	"main_graph$async_dispatch_8_slow_memcpy"
.Linfo_string92:
	.asciz	"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8"
.Linfo_string93:
	.asciz	"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"
.Linfo_string94:
	.asciz	"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32"
.Linfo_string95:
	.asciz	"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"
.Linfo_string96:
	.asciz	"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"
.Linfo_string97:
	.asciz	"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"
.Linfo_string98:
	.asciz	"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"
.Linfo_string99:
	.asciz	"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"
.Linfo_string100:
	.asciz	"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"
.Linfo_string101:
	.asciz	"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"
.Linfo_string102:
	.asciz	"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"
.Linfo_string103:
	.asciz	"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"
.Linfo_string104:
	.asciz	"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"
.Linfo_string105:
	.asciz	"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"
.Linfo_string106:
	.asciz	"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"
.Linfo_string107:
	.asciz	"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"
.Linfo_string108:
	.asciz	"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"
.Linfo_string109:
	.asciz	"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"
.Linfo_string110:
	.asciz	"main_graph$async_dispatch_29_generic_28x28x256_i8"
.Linfo_string111:
	.asciz	"main_graph$async_dispatch_30_slow_memcpy"
.Linfo_string112:
	.asciz	"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"
.Linfo_string113:
	.asciz	"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"
.Linfo_string114:
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"
.Linfo_string115:
	.asciz	"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"
.Linfo_string116:
	.asciz	"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"
.Linfo_string117:
	.asciz	"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"
.Linfo_string118:
	.asciz	"main_graph$async_dispatch_37_slow_memcpy"
.Linfo_string119:
	.asciz	"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"
.Linfo_string120:
	.asciz	"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"
.Linfo_string121:
	.asciz	"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"
.Linfo_string122:
	.asciz	"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"
.Linfo_string123:
	.asciz	"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"
.Linfo_string124:
	.asciz	"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"
.Linfo_string125:
	.asciz	"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"
.Linfo_string126:
	.asciz	"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"
.Linfo_string127:
	.asciz	"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"
.Linfo_string128:
	.asciz	"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"
.Linfo_string129:
	.asciz	"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"
.Linfo_string130:
	.asciz	"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"
.Linfo_string131:
	.asciz	"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"
.Linfo_string132:
	.asciz	"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"
.Linfo_string133:
	.asciz	"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"
.Linfo_string134:
	.asciz	"main_graph$async_dispatch_55_generic_14x14x512_i8"
.Linfo_string135:
	.asciz	"main_graph$async_dispatch_56_slow_memcpy"
.Linfo_string136:
	.asciz	"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"
.Linfo_string137:
	.asciz	"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"
.Linfo_string138:
	.asciz	"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"
.Linfo_string139:
	.asciz	"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"
.Linfo_string140:
	.asciz	"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"
.Linfo_string141:
	.asciz	"main_graph$async_dispatch_62_slow_memcpy"
.Linfo_string142:
	.asciz	"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"
.Linfo_string143:
	.asciz	"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"
.Linfo_string144:
	.asciz	"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"
.Linfo_string145:
	.asciz	"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"
.Linfo_string146:
	.asciz	"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"
.Linfo_string147:
	.asciz	"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"
.Linfo_string148:
	.asciz	"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"
.Linfo_string149:
	.asciz	"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"
.Linfo_string150:
	.asciz	"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"
.Linfo_string151:
	.asciz	"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"
.Linfo_string152:
	.asciz	"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"
.Linfo_string153:
	.asciz	"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"
.Linfo_string154:
	.asciz	"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"
.Linfo_string155:
	.asciz	"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"
.Linfo_string156:
	.asciz	"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"
.Linfo_string157:
	.asciz	"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"
.Linfo_string158:
	.asciz	"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"
.Linfo_string159:
	.asciz	"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"
.Linfo_string160:
	.asciz	"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"
.Linfo_string161:
	.asciz	"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"
.Linfo_string162:
	.asciz	"main_graph$async_dispatch_87_generic_7x7x1024_i8"
.Linfo_string163:
	.asciz	"main_graph$async_dispatch_88_slow_memcpy"
.Linfo_string164:
	.asciz	"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"
.Linfo_string165:
	.asciz	"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"
.Linfo_string166:
	.asciz	"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"
.Linfo_string167:
	.asciz	"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"
.Linfo_string168:
	.asciz	"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"
.Linfo_string169:
	.asciz	"main_graph$async_dispatch_94_slow_memcpy"
.Linfo_string170:
	.asciz	"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"
.Linfo_string171:
	.asciz	"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"
.Linfo_string172:
	.asciz	"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"
.Linfo_string173:
	.asciz	"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"
.Linfo_string174:
	.asciz	"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"
.Linfo_string175:
	.asciz	"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"
.Linfo_string176:
	.asciz	"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"
.Linfo_string177:
	.asciz	"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"
.Linfo_string178:
	.asciz	"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"
.Linfo_string179:
	.asciz	"main_graph$async_dispatch_105_elementwise_1000_i8xf32"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.half	2
	.word	.Lcu_begin0
	.word	79
	.word	42
	.asciz	"_initializer_0_dispatch_0_transpose_64x64_i8"
	.word	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.half	2
	.word	.Lcu_begin0
	.word	79
	.word	71
	.asciz	"int"
	.word	0
.LpubTypes_end0:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.half	2
	.word	.Lcu_begin1
	.word	72
	.word	42
	.asciz	"_initializer_1_dispatch_0_transpose_64x256_i8"
	.word	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.half	2
	.word	.Lcu_begin1
	.word	72
	.word	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.half	2
	.word	.Lcu_begin2
	.word	72
	.word	42
	.asciz	"_initializer_2_dispatch_0_transpose_64x256_i8"
	.word	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.half	2
	.word	.Lcu_begin2
	.word	72
	.word	0
.LpubTypes_end2:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end3-.LpubNames_start3
.LpubNames_start3:
	.half	2
	.word	.Lcu_begin3
	.word	72
	.word	42
	.asciz	"_initializer_3_dispatch_0_transpose_256x64_i8"
	.word	0
.LpubNames_end3:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end3-.LpubTypes_start3
.LpubTypes_start3:
	.half	2
	.word	.Lcu_begin3
	.word	72
	.word	0
.LpubTypes_end3:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end4-.LpubNames_start4
.LpubNames_start4:
	.half	2
	.word	.Lcu_begin4
	.word	72
	.word	42
	.asciz	"_initializer_4_dispatch_0_transpose_64x256_i8"
	.word	0
.LpubNames_end4:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end4-.LpubTypes_start4
.LpubTypes_start4:
	.half	2
	.word	.Lcu_begin4
	.word	72
	.word	0
.LpubTypes_end4:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end5-.LpubNames_start5
.LpubNames_start5:
	.half	2
	.word	.Lcu_begin5
	.word	72
	.word	42
	.asciz	"_initializer_5_dispatch_0_transpose_256x64_i8"
	.word	0
.LpubNames_end5:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end5-.LpubTypes_start5
.LpubTypes_start5:
	.half	2
	.word	.Lcu_begin5
	.word	72
	.word	0
.LpubTypes_end5:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end6-.LpubNames_start6
.LpubNames_start6:
	.half	2
	.word	.Lcu_begin6
	.word	72
	.word	42
	.asciz	"_initializer_6_dispatch_0_transpose_64x256_i8"
	.word	0
.LpubNames_end6:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end6-.LpubTypes_start6
.LpubTypes_start6:
	.half	2
	.word	.Lcu_begin6
	.word	72
	.word	0
.LpubTypes_end6:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end7-.LpubNames_start7
.LpubNames_start7:
	.half	2
	.word	.Lcu_begin7
	.word	72
	.word	42
	.asciz	"_initializer_7_dispatch_0_transpose_256x128_i8"
	.word	0
.LpubNames_end7:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end7-.LpubTypes_start7
.LpubTypes_start7:
	.half	2
	.word	.Lcu_begin7
	.word	72
	.word	0
.LpubTypes_end7:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end8-.LpubNames_start8
.LpubNames_start8:
	.half	2
	.word	.Lcu_begin8
	.word	72
	.word	42
	.asciz	"_initializer_8_dispatch_0_transpose_256x512_i8"
	.word	0
.LpubNames_end8:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end8-.LpubTypes_start8
.LpubTypes_start8:
	.half	2
	.word	.Lcu_begin8
	.word	72
	.word	0
.LpubTypes_end8:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end9-.LpubNames_start9
.LpubNames_start9:
	.half	2
	.word	.Lcu_begin9
	.word	72
	.word	42
	.asciz	"_initializer_9_dispatch_0_transpose_128x512_i8"
	.word	0
.LpubNames_end9:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end9-.LpubTypes_start9
.LpubTypes_start9:
	.half	2
	.word	.Lcu_begin9
	.word	72
	.word	0
.LpubTypes_end9:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end10-.LpubNames_start10
.LpubNames_start10:
	.half	2
	.word	.Lcu_begin10
	.word	72
	.word	42
	.asciz	"_initializer_10_dispatch_0_transpose_512x128_i8"
	.word	0
.LpubNames_end10:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end10-.LpubTypes_start10
.LpubTypes_start10:
	.half	2
	.word	.Lcu_begin10
	.word	72
	.word	0
.LpubTypes_end10:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end11-.LpubNames_start11
.LpubNames_start11:
	.half	2
	.word	.Lcu_begin11
	.word	72
	.word	42
	.asciz	"_initializer_11_dispatch_0_transpose_128x512_i8"
	.word	0
.LpubNames_end11:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end11-.LpubTypes_start11
.LpubTypes_start11:
	.half	2
	.word	.Lcu_begin11
	.word	72
	.word	0
.LpubTypes_end11:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end12-.LpubNames_start12
.LpubNames_start12:
	.half	2
	.word	.Lcu_begin12
	.word	72
	.word	42
	.asciz	"_initializer_12_dispatch_0_transpose_512x128_i8"
	.word	0
.LpubNames_end12:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end12-.LpubTypes_start12
.LpubTypes_start12:
	.half	2
	.word	.Lcu_begin12
	.word	72
	.word	0
.LpubTypes_end12:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end13-.LpubNames_start13
.LpubNames_start13:
	.half	2
	.word	.Lcu_begin13
	.word	72
	.word	42
	.asciz	"_initializer_13_dispatch_0_transpose_128x512_i8"
	.word	0
.LpubNames_end13:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end13-.LpubTypes_start13
.LpubTypes_start13:
	.half	2
	.word	.Lcu_begin13
	.word	72
	.word	0
.LpubTypes_end13:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end14-.LpubNames_start14
.LpubNames_start14:
	.half	2
	.word	.Lcu_begin14
	.word	72
	.word	42
	.asciz	"_initializer_14_dispatch_0_transpose_512x128_i8"
	.word	0
.LpubNames_end14:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end14-.LpubTypes_start14
.LpubTypes_start14:
	.half	2
	.word	.Lcu_begin14
	.word	72
	.word	0
.LpubTypes_end14:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end15-.LpubNames_start15
.LpubNames_start15:
	.half	2
	.word	.Lcu_begin15
	.word	72
	.word	42
	.asciz	"_initializer_15_dispatch_0_transpose_128x512_i8"
	.word	0
.LpubNames_end15:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end15-.LpubTypes_start15
.LpubTypes_start15:
	.half	2
	.word	.Lcu_begin15
	.word	72
	.word	0
.LpubTypes_end15:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end16-.LpubNames_start16
.LpubNames_start16:
	.half	2
	.word	.Lcu_begin16
	.word	72
	.word	42
	.asciz	"_initializer_16_dispatch_0_transpose_512x256_i8"
	.word	0
.LpubNames_end16:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end16-.LpubTypes_start16
.LpubTypes_start16:
	.half	2
	.word	.Lcu_begin16
	.word	72
	.word	0
.LpubTypes_end16:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end17-.LpubNames_start17
.LpubNames_start17:
	.half	2
	.word	.Lcu_begin17
	.word	72
	.word	42
	.asciz	"_initializer_17_dispatch_0_transpose_512x1024_i8"
	.word	0
.LpubNames_end17:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end17-.LpubTypes_start17
.LpubTypes_start17:
	.half	2
	.word	.Lcu_begin17
	.word	72
	.word	0
.LpubTypes_end17:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end18-.LpubNames_start18
.LpubNames_start18:
	.half	2
	.word	.Lcu_begin18
	.word	72
	.word	42
	.asciz	"_initializer_18_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end18:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end18-.LpubTypes_start18
.LpubTypes_start18:
	.half	2
	.word	.Lcu_begin18
	.word	72
	.word	0
.LpubTypes_end18:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end19-.LpubNames_start19
.LpubNames_start19:
	.half	2
	.word	.Lcu_begin19
	.word	72
	.word	42
	.asciz	"_initializer_19_dispatch_0_transpose_1024x256_i8"
	.word	0
.LpubNames_end19:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end19-.LpubTypes_start19
.LpubTypes_start19:
	.half	2
	.word	.Lcu_begin19
	.word	72
	.word	0
.LpubTypes_end19:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end20-.LpubNames_start20
.LpubNames_start20:
	.half	2
	.word	.Lcu_begin20
	.word	72
	.word	42
	.asciz	"_initializer_20_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end20:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end20-.LpubTypes_start20
.LpubTypes_start20:
	.half	2
	.word	.Lcu_begin20
	.word	72
	.word	0
.LpubTypes_end20:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end21-.LpubNames_start21
.LpubNames_start21:
	.half	2
	.word	.Lcu_begin21
	.word	72
	.word	42
	.asciz	"_initializer_21_dispatch_0_transpose_1024x256_i8"
	.word	0
.LpubNames_end21:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end21-.LpubTypes_start21
.LpubTypes_start21:
	.half	2
	.word	.Lcu_begin21
	.word	72
	.word	0
.LpubTypes_end21:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end22-.LpubNames_start22
.LpubNames_start22:
	.half	2
	.word	.Lcu_begin22
	.word	72
	.word	42
	.asciz	"_initializer_22_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end22:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end22-.LpubTypes_start22
.LpubTypes_start22:
	.half	2
	.word	.Lcu_begin22
	.word	72
	.word	0
.LpubTypes_end22:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end23-.LpubNames_start23
.LpubNames_start23:
	.half	2
	.word	.Lcu_begin23
	.word	72
	.word	42
	.asciz	"_initializer_23_dispatch_0_transpose_1024x256_i8"
	.word	0
.LpubNames_end23:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end23-.LpubTypes_start23
.LpubTypes_start23:
	.half	2
	.word	.Lcu_begin23
	.word	72
	.word	0
.LpubTypes_end23:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end24-.LpubNames_start24
.LpubNames_start24:
	.half	2
	.word	.Lcu_begin24
	.word	72
	.word	42
	.asciz	"_initializer_24_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end24:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end24-.LpubTypes_start24
.LpubTypes_start24:
	.half	2
	.word	.Lcu_begin24
	.word	72
	.word	0
.LpubTypes_end24:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end25-.LpubNames_start25
.LpubNames_start25:
	.half	2
	.word	.Lcu_begin25
	.word	72
	.word	42
	.asciz	"_initializer_25_dispatch_0_transpose_1024x256_i8"
	.word	0
.LpubNames_end25:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end25-.LpubTypes_start25
.LpubTypes_start25:
	.half	2
	.word	.Lcu_begin25
	.word	72
	.word	0
.LpubTypes_end25:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end26-.LpubNames_start26
.LpubNames_start26:
	.half	2
	.word	.Lcu_begin26
	.word	72
	.word	42
	.asciz	"_initializer_26_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end26:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end26-.LpubTypes_start26
.LpubTypes_start26:
	.half	2
	.word	.Lcu_begin26
	.word	72
	.word	0
.LpubTypes_end26:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end27-.LpubNames_start27
.LpubNames_start27:
	.half	2
	.word	.Lcu_begin27
	.word	72
	.word	42
	.asciz	"_initializer_27_dispatch_0_transpose_1024x256_i8"
	.word	0
.LpubNames_end27:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end27-.LpubTypes_start27
.LpubTypes_start27:
	.half	2
	.word	.Lcu_begin27
	.word	72
	.word	0
.LpubTypes_end27:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end28-.LpubNames_start28
.LpubNames_start28:
	.half	2
	.word	.Lcu_begin28
	.word	72
	.word	42
	.asciz	"_initializer_28_dispatch_0_transpose_256x1024_i8"
	.word	0
.LpubNames_end28:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end28-.LpubTypes_start28
.LpubTypes_start28:
	.half	2
	.word	.Lcu_begin28
	.word	72
	.word	0
.LpubTypes_end28:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end29-.LpubNames_start29
.LpubNames_start29:
	.half	2
	.word	.Lcu_begin29
	.word	72
	.word	42
	.asciz	"_initializer_29_dispatch_0_transpose_1024x512_i8"
	.word	0
.LpubNames_end29:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end29-.LpubTypes_start29
.LpubTypes_start29:
	.half	2
	.word	.Lcu_begin29
	.word	72
	.word	0
.LpubTypes_end29:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end30-.LpubNames_start30
.LpubNames_start30:
	.half	2
	.word	.Lcu_begin30
	.word	72
	.word	42
	.asciz	"_initializer_30_dispatch_0_transpose_1024x2048_i8"
	.word	0
.LpubNames_end30:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end30-.LpubTypes_start30
.LpubTypes_start30:
	.half	2
	.word	.Lcu_begin30
	.word	72
	.word	0
.LpubTypes_end30:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end31-.LpubNames_start31
.LpubNames_start31:
	.half	2
	.word	.Lcu_begin31
	.word	72
	.word	42
	.asciz	"_initializer_31_dispatch_0_transpose_512x2048_i8"
	.word	0
.LpubNames_end31:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end31-.LpubTypes_start31
.LpubTypes_start31:
	.half	2
	.word	.Lcu_begin31
	.word	72
	.word	0
.LpubTypes_end31:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end32-.LpubNames_start32
.LpubNames_start32:
	.half	2
	.word	.Lcu_begin32
	.word	72
	.word	42
	.asciz	"_initializer_32_dispatch_0_transpose_2048x512_i8"
	.word	0
.LpubNames_end32:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end32-.LpubTypes_start32
.LpubTypes_start32:
	.half	2
	.word	.Lcu_begin32
	.word	72
	.word	0
.LpubTypes_end32:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end33-.LpubNames_start33
.LpubNames_start33:
	.half	2
	.word	.Lcu_begin33
	.word	72
	.word	42
	.asciz	"_initializer_33_dispatch_0_transpose_512x2048_i8"
	.word	0
.LpubNames_end33:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end33-.LpubTypes_start33
.LpubTypes_start33:
	.half	2
	.word	.Lcu_begin33
	.word	72
	.word	0
.LpubTypes_end33:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end34-.LpubNames_start34
.LpubNames_start34:
	.half	2
	.word	.Lcu_begin34
	.word	72
	.word	42
	.asciz	"_initializer_34_dispatch_0_transpose_2048x512_i8"
	.word	0
.LpubNames_end34:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end34-.LpubTypes_start34
.LpubTypes_start34:
	.half	2
	.word	.Lcu_begin34
	.word	72
	.word	0
.LpubTypes_end34:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end35-.LpubNames_start35
.LpubNames_start35:
	.half	2
	.word	.Lcu_begin35
	.word	72
	.word	42
	.asciz	"_initializer_35_dispatch_0_transpose_512x2048_i8"
	.word	0
.LpubNames_end35:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end35-.LpubTypes_start35
.LpubTypes_start35:
	.half	2
	.word	.Lcu_begin35
	.word	72
	.word	0
.LpubTypes_end35:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end36-.LpubNames_start36
.LpubNames_start36:
	.half	2
	.word	.Lcu_begin36
	.word	72
	.word	42
	.asciz	"_initializer_36_dispatch_0_transpose_2048x1000_i8"
	.word	0
.LpubNames_end36:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end36-.LpubTypes_start36
.LpubTypes_start36:
	.half	2
	.word	.Lcu_begin36
	.word	72
	.word	0
.LpubTypes_end36:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end37-.LpubNames_start37
.LpubNames_start37:
	.half	2
	.word	.Lcu_begin37
	.word	72
	.word	42
	.asciz	"_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end37:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end37-.LpubTypes_start37
.LpubTypes_start37:
	.half	2
	.word	.Lcu_begin37
	.word	72
	.word	0
.LpubTypes_end37:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end38-.LpubNames_start38
.LpubNames_start38:
	.half	2
	.word	.Lcu_begin38
	.word	72
	.word	42
	.asciz	"_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end38:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end38-.LpubTypes_start38
.LpubTypes_start38:
	.half	2
	.word	.Lcu_begin38
	.word	72
	.word	0
.LpubTypes_end38:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end39-.LpubNames_start39
.LpubNames_start39:
	.half	2
	.word	.Lcu_begin39
	.word	72
	.word	42
	.asciz	"_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end39:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end39-.LpubTypes_start39
.LpubTypes_start39:
	.half	2
	.word	.Lcu_begin39
	.word	72
	.word	0
.LpubTypes_end39:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end40-.LpubNames_start40
.LpubNames_start40:
	.half	2
	.word	.Lcu_begin40
	.word	72
	.word	42
	.asciz	"_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end40:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end40-.LpubTypes_start40
.LpubTypes_start40:
	.half	2
	.word	.Lcu_begin40
	.word	72
	.word	0
.LpubTypes_end40:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end41-.LpubNames_start41
.LpubNames_start41:
	.half	2
	.word	.Lcu_begin41
	.word	72
	.word	42
	.asciz	"_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end41:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end41-.LpubTypes_start41
.LpubTypes_start41:
	.half	2
	.word	.Lcu_begin41
	.word	72
	.word	0
.LpubTypes_end41:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end42-.LpubNames_start42
.LpubNames_start42:
	.half	2
	.word	.Lcu_begin42
	.word	72
	.word	42
	.asciz	"_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32"
	.word	0
.LpubNames_end42:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end42-.LpubTypes_start42
.LpubTypes_start42:
	.half	2
	.word	.Lcu_begin42
	.word	72
	.word	0
.LpubTypes_end42:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end43-.LpubNames_start43
.LpubNames_start43:
	.half	2
	.word	.Lcu_begin43
	.word	72
	.word	42
	.asciz	"_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end43:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end43-.LpubTypes_start43
.LpubTypes_start43:
	.half	2
	.word	.Lcu_begin43
	.word	72
	.word	0
.LpubTypes_end43:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end44-.LpubNames_start44
.LpubNames_start44:
	.half	2
	.word	.Lcu_begin44
	.word	72
	.word	42
	.asciz	"_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end44:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end44-.LpubTypes_start44
.LpubTypes_start44:
	.half	2
	.word	.Lcu_begin44
	.word	72
	.word	0
.LpubTypes_end44:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end45-.LpubNames_start45
.LpubNames_start45:
	.half	2
	.word	.Lcu_begin45
	.word	72
	.word	42
	.asciz	"_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end45:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end45-.LpubTypes_start45
.LpubTypes_start45:
	.half	2
	.word	.Lcu_begin45
	.word	72
	.word	0
.LpubTypes_end45:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end46-.LpubNames_start46
.LpubNames_start46:
	.half	2
	.word	.Lcu_begin46
	.word	72
	.word	42
	.asciz	"_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end46:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end46-.LpubTypes_start46
.LpubTypes_start46:
	.half	2
	.word	.Lcu_begin46
	.word	72
	.word	0
.LpubTypes_end46:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end47-.LpubNames_start47
.LpubNames_start47:
	.half	2
	.word	.Lcu_begin47
	.word	72
	.word	42
	.asciz	"_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end47:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end47-.LpubTypes_start47
.LpubTypes_start47:
	.half	2
	.word	.Lcu_begin47
	.word	72
	.word	0
.LpubTypes_end47:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end48-.LpubNames_start48
.LpubNames_start48:
	.half	2
	.word	.Lcu_begin48
	.word	72
	.word	42
	.asciz	"_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end48:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end48-.LpubTypes_start48
.LpubTypes_start48:
	.half	2
	.word	.Lcu_begin48
	.word	72
	.word	0
.LpubTypes_end48:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end49-.LpubNames_start49
.LpubNames_start49:
	.half	2
	.word	.Lcu_begin49
	.word	72
	.word	42
	.asciz	"_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32"
	.word	0
.LpubNames_end49:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end49-.LpubTypes_start49
.LpubTypes_start49:
	.half	2
	.word	.Lcu_begin49
	.word	72
	.word	0
.LpubTypes_end49:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end50-.LpubNames_start50
.LpubNames_start50:
	.half	2
	.word	.Lcu_begin50
	.word	72
	.word	42
	.asciz	"_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32"
	.word	0
.LpubNames_end50:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end50-.LpubTypes_start50
.LpubTypes_start50:
	.half	2
	.word	.Lcu_begin50
	.word	72
	.word	0
.LpubTypes_end50:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end51-.LpubNames_start51
.LpubNames_start51:
	.half	2
	.word	.Lcu_begin51
	.word	72
	.word	42
	.asciz	"_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end51:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end51-.LpubTypes_start51
.LpubTypes_start51:
	.half	2
	.word	.Lcu_begin51
	.word	72
	.word	0
.LpubTypes_end51:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end52-.LpubNames_start52
.LpubNames_start52:
	.half	2
	.word	.Lcu_begin52
	.word	72
	.word	42
	.asciz	"_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end52:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end52-.LpubTypes_start52
.LpubTypes_start52:
	.half	2
	.word	.Lcu_begin52
	.word	72
	.word	0
.LpubTypes_end52:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end53-.LpubNames_start53
.LpubNames_start53:
	.half	2
	.word	.Lcu_begin53
	.word	72
	.word	42
	.asciz	"_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end53:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end53-.LpubTypes_start53
.LpubTypes_start53:
	.half	2
	.word	.Lcu_begin53
	.word	72
	.word	0
.LpubTypes_end53:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end54-.LpubNames_start54
.LpubNames_start54:
	.half	2
	.word	.Lcu_begin54
	.word	72
	.word	42
	.asciz	"_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end54:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end54-.LpubTypes_start54
.LpubTypes_start54:
	.half	2
	.word	.Lcu_begin54
	.word	72
	.word	0
.LpubTypes_end54:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end55-.LpubNames_start55
.LpubNames_start55:
	.half	2
	.word	.Lcu_begin55
	.word	72
	.word	42
	.asciz	"_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end55:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end55-.LpubTypes_start55
.LpubTypes_start55:
	.half	2
	.word	.Lcu_begin55
	.word	72
	.word	0
.LpubTypes_end55:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end56-.LpubNames_start56
.LpubNames_start56:
	.half	2
	.word	.Lcu_begin56
	.word	72
	.word	42
	.asciz	"_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end56:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end56-.LpubTypes_start56
.LpubTypes_start56:
	.half	2
	.word	.Lcu_begin56
	.word	72
	.word	0
.LpubTypes_end56:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end57-.LpubNames_start57
.LpubNames_start57:
	.half	2
	.word	.Lcu_begin57
	.word	72
	.word	42
	.asciz	"_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end57:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end57-.LpubTypes_start57
.LpubTypes_start57:
	.half	2
	.word	.Lcu_begin57
	.word	72
	.word	0
.LpubTypes_end57:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end58-.LpubNames_start58
.LpubNames_start58:
	.half	2
	.word	.Lcu_begin58
	.word	72
	.word	42
	.asciz	"_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end58:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end58-.LpubTypes_start58
.LpubTypes_start58:
	.half	2
	.word	.Lcu_begin58
	.word	72
	.word	0
.LpubTypes_end58:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end59-.LpubNames_start59
.LpubNames_start59:
	.half	2
	.word	.Lcu_begin59
	.word	72
	.word	42
	.asciz	"_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end59:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end59-.LpubTypes_start59
.LpubTypes_start59:
	.half	2
	.word	.Lcu_begin59
	.word	72
	.word	0
.LpubTypes_end59:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end60-.LpubNames_start60
.LpubNames_start60:
	.half	2
	.word	.Lcu_begin60
	.word	72
	.word	42
	.asciz	"_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end60:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end60-.LpubTypes_start60
.LpubTypes_start60:
	.half	2
	.word	.Lcu_begin60
	.word	72
	.word	0
.LpubTypes_end60:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end61-.LpubNames_start61
.LpubNames_start61:
	.half	2
	.word	.Lcu_begin61
	.word	72
	.word	42
	.asciz	"_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end61:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end61-.LpubTypes_start61
.LpubTypes_start61:
	.half	2
	.word	.Lcu_begin61
	.word	72
	.word	0
.LpubTypes_end61:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end62-.LpubNames_start62
.LpubNames_start62:
	.half	2
	.word	.Lcu_begin62
	.word	72
	.word	42
	.asciz	"_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end62:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end62-.LpubTypes_start62
.LpubTypes_start62:
	.half	2
	.word	.Lcu_begin62
	.word	72
	.word	0
.LpubTypes_end62:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end63-.LpubNames_start63
.LpubNames_start63:
	.half	2
	.word	.Lcu_begin63
	.word	72
	.word	42
	.asciz	"_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end63:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end63-.LpubTypes_start63
.LpubTypes_start63:
	.half	2
	.word	.Lcu_begin63
	.word	72
	.word	0
.LpubTypes_end63:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end64-.LpubNames_start64
.LpubNames_start64:
	.half	2
	.word	.Lcu_begin64
	.word	72
	.word	42
	.asciz	"_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end64:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end64-.LpubTypes_start64
.LpubTypes_start64:
	.half	2
	.word	.Lcu_begin64
	.word	72
	.word	0
.LpubTypes_end64:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end65-.LpubNames_start65
.LpubNames_start65:
	.half	2
	.word	.Lcu_begin65
	.word	72
	.word	42
	.asciz	"_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end65:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end65-.LpubTypes_start65
.LpubTypes_start65:
	.half	2
	.word	.Lcu_begin65
	.word	72
	.word	0
.LpubTypes_end65:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end66-.LpubNames_start66
.LpubNames_start66:
	.half	2
	.word	.Lcu_begin66
	.word	72
	.word	42
	.asciz	"_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end66:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end66-.LpubTypes_start66
.LpubTypes_start66:
	.half	2
	.word	.Lcu_begin66
	.word	72
	.word	0
.LpubTypes_end66:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end67-.LpubNames_start67
.LpubNames_start67:
	.half	2
	.word	.Lcu_begin67
	.word	72
	.word	42
	.asciz	"_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32"
	.word	0
.LpubNames_end67:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end67-.LpubTypes_start67
.LpubTypes_start67:
	.half	2
	.word	.Lcu_begin67
	.word	72
	.word	0
.LpubTypes_end67:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end68-.LpubNames_start68
.LpubNames_start68:
	.half	2
	.word	.Lcu_begin68
	.word	72
	.word	42
	.asciz	"_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32"
	.word	0
.LpubNames_end68:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end68-.LpubTypes_start68
.LpubTypes_start68:
	.half	2
	.word	.Lcu_begin68
	.word	72
	.word	0
.LpubTypes_end68:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end69-.LpubNames_start69
.LpubNames_start69:
	.half	2
	.word	.Lcu_begin69
	.word	72
	.word	42
	.asciz	"_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32"
	.word	0
.LpubNames_end69:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end69-.LpubTypes_start69
.LpubTypes_start69:
	.half	2
	.word	.Lcu_begin69
	.word	72
	.word	0
.LpubTypes_end69:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end70-.LpubNames_start70
.LpubNames_start70:
	.half	2
	.word	.Lcu_begin70
	.word	72
	.word	42
	.asciz	"_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32"
	.word	0
.LpubNames_end70:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end70-.LpubTypes_start70
.LpubTypes_start70:
	.half	2
	.word	.Lcu_begin70
	.word	72
	.word	0
.LpubTypes_end70:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end71-.LpubNames_start71
.LpubNames_start71:
	.half	2
	.word	.Lcu_begin71
	.word	72
	.word	42
	.asciz	"_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32"
	.word	0
.LpubNames_end71:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end71-.LpubTypes_start71
.LpubTypes_start71:
	.half	2
	.word	.Lcu_begin71
	.word	72
	.word	0
.LpubTypes_end71:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end72-.LpubNames_start72
.LpubNames_start72:
	.half	2
	.word	.Lcu_begin72
	.word	72
	.word	42
	.asciz	"_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32"
	.word	0
.LpubNames_end72:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end72-.LpubTypes_start72
.LpubTypes_start72:
	.half	2
	.word	.Lcu_begin72
	.word	72
	.word	0
.LpubTypes_end72:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end73-.LpubNames_start73
.LpubNames_start73:
	.half	2
	.word	.Lcu_begin73
	.word	72
	.word	42
	.asciz	"_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32"
	.word	0
.LpubNames_end73:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end73-.LpubTypes_start73
.LpubTypes_start73:
	.half	2
	.word	.Lcu_begin73
	.word	72
	.word	0
.LpubTypes_end73:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end74-.LpubNames_start74
.LpubNames_start74:
	.half	2
	.word	.Lcu_begin74
	.word	72
	.word	42
	.asciz	"_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32"
	.word	0
.LpubNames_end74:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end74-.LpubTypes_start74
.LpubTypes_start74:
	.half	2
	.word	.Lcu_begin74
	.word	72
	.word	0
.LpubTypes_end74:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end75-.LpubNames_start75
.LpubNames_start75:
	.half	2
	.word	.Lcu_begin75
	.word	72
	.word	42
	.asciz	"_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32"
	.word	0
.LpubNames_end75:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end75-.LpubTypes_start75
.LpubTypes_start75:
	.half	2
	.word	.Lcu_begin75
	.word	72
	.word	0
.LpubTypes_end75:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end76-.LpubNames_start76
.LpubNames_start76:
	.half	2
	.word	.Lcu_begin76
	.word	72
	.word	42
	.asciz	"_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32"
	.word	0
.LpubNames_end76:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end76-.LpubTypes_start76
.LpubTypes_start76:
	.half	2
	.word	.Lcu_begin76
	.word	72
	.word	0
.LpubTypes_end76:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end77-.LpubNames_start77
.LpubNames_start77:
	.half	2
	.word	.Lcu_begin77
	.word	72
	.word	42
	.asciz	"_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32"
	.word	0
.LpubNames_end77:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end77-.LpubTypes_start77
.LpubTypes_start77:
	.half	2
	.word	.Lcu_begin77
	.word	72
	.word	0
.LpubTypes_end77:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end78-.LpubNames_start78
.LpubNames_start78:
	.half	2
	.word	.Lcu_begin78
	.word	72
	.word	42
	.asciz	"_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32"
	.word	0
.LpubNames_end78:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end78-.LpubTypes_start78
.LpubTypes_start78:
	.half	2
	.word	.Lcu_begin78
	.word	72
	.word	0
.LpubTypes_end78:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end79-.LpubNames_start79
.LpubNames_start79:
	.half	2
	.word	.Lcu_begin79
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8"
	.word	0
.LpubNames_end79:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end79-.LpubTypes_start79
.LpubTypes_start79:
	.half	2
	.word	.Lcu_begin79
	.word	72
	.word	0
.LpubTypes_end79:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end80-.LpubNames_start80
.LpubNames_start80:
	.half	2
	.word	.Lcu_begin80
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32"
	.word	0
.LpubNames_end80:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end80-.LpubTypes_start80
.LpubTypes_start80:
	.half	2
	.word	.Lcu_begin80
	.word	72
	.word	0
.LpubTypes_end80:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end81-.LpubNames_start81
.LpubNames_start81:
	.half	2
	.word	.Lcu_begin81
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8"
	.word	0
.LpubNames_end81:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end81-.LpubTypes_start81
.LpubTypes_start81:
	.half	2
	.word	.Lcu_begin81
	.word	72
	.word	0
.LpubTypes_end81:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end82-.LpubNames_start82
.LpubNames_start82:
	.half	2
	.word	.Lcu_begin82
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32"
	.word	0
.LpubNames_end82:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end82-.LpubTypes_start82
.LpubTypes_start82:
	.half	2
	.word	.Lcu_begin82
	.word	72
	.word	0
.LpubTypes_end82:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end83-.LpubNames_start83
.LpubNames_start83:
	.half	2
	.word	.Lcu_begin83
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
	.word	0
.LpubNames_end83:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end83-.LpubTypes_start83
.LpubTypes_start83:
	.half	2
	.word	.Lcu_begin83
	.word	72
	.word	0
.LpubTypes_end83:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end84-.LpubNames_start84
.LpubNames_start84:
	.half	2
	.word	.Lcu_begin84
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32"
	.word	0
.LpubNames_end84:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end84-.LpubTypes_start84
.LpubTypes_start84:
	.half	2
	.word	.Lcu_begin84
	.word	72
	.word	0
.LpubTypes_end84:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end85-.LpubNames_start85
.LpubNames_start85:
	.half	2
	.word	.Lcu_begin85
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"
	.word	0
.LpubNames_end85:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end85-.LpubTypes_start85
.LpubTypes_start85:
	.half	2
	.word	.Lcu_begin85
	.word	72
	.word	0
.LpubTypes_end85:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end86-.LpubNames_start86
.LpubNames_start86:
	.half	2
	.word	.Lcu_begin86
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32"
	.word	0
.LpubNames_end86:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end86-.LpubTypes_start86
.LpubTypes_start86:
	.half	2
	.word	.Lcu_begin86
	.word	72
	.word	0
.LpubTypes_end86:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end87-.LpubNames_start87
.LpubNames_start87:
	.half	2
	.word	.Lcu_begin87
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_8_slow_memcpy"
	.word	0
.LpubNames_end87:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end87-.LpubTypes_start87
.LpubTypes_start87:
	.half	2
	.word	.Lcu_begin87
	.word	72
	.word	0
.LpubTypes_end87:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end88-.LpubNames_start88
.LpubNames_start88:
	.half	2
	.word	.Lcu_begin88
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8"
	.word	0
.LpubNames_end88:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end88-.LpubTypes_start88
.LpubTypes_start88:
	.half	2
	.word	.Lcu_begin88
	.word	72
	.word	0
.LpubTypes_end88:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end89-.LpubNames_start89
.LpubNames_start89:
	.half	2
	.word	.Lcu_begin89
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"
	.word	0
.LpubNames_end89:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end89-.LpubTypes_start89
.LpubTypes_start89:
	.half	2
	.word	.Lcu_begin89
	.word	72
	.word	0
.LpubTypes_end89:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end90-.LpubNames_start90
.LpubNames_start90:
	.half	2
	.word	.Lcu_begin90
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32"
	.word	0
.LpubNames_end90:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end90-.LpubTypes_start90
.LpubTypes_start90:
	.half	2
	.word	.Lcu_begin90
	.word	72
	.word	0
.LpubTypes_end90:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end91-.LpubNames_start91
.LpubNames_start91:
	.half	2
	.word	.Lcu_begin91
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"
	.word	0
.LpubNames_end91:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end91-.LpubTypes_start91
.LpubTypes_start91:
	.half	2
	.word	.Lcu_begin91
	.word	72
	.word	0
.LpubTypes_end91:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end92-.LpubNames_start92
.LpubNames_start92:
	.half	2
	.word	.Lcu_begin92
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"
	.word	0
.LpubNames_end92:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end92-.LpubTypes_start92
.LpubTypes_start92:
	.half	2
	.word	.Lcu_begin92
	.word	72
	.word	0
.LpubTypes_end92:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end93-.LpubNames_start93
.LpubNames_start93:
	.half	2
	.word	.Lcu_begin93
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"
	.word	0
.LpubNames_end93:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end93-.LpubTypes_start93
.LpubTypes_start93:
	.half	2
	.word	.Lcu_begin93
	.word	72
	.word	0
.LpubTypes_end93:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end94-.LpubNames_start94
.LpubNames_start94:
	.half	2
	.word	.Lcu_begin94
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"
	.word	0
.LpubNames_end94:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end94-.LpubTypes_start94
.LpubTypes_start94:
	.half	2
	.word	.Lcu_begin94
	.word	72
	.word	0
.LpubTypes_end94:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end95-.LpubNames_start95
.LpubNames_start95:
	.half	2
	.word	.Lcu_begin95
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"
	.word	0
.LpubNames_end95:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end95-.LpubTypes_start95
.LpubTypes_start95:
	.half	2
	.word	.Lcu_begin95
	.word	72
	.word	0
.LpubTypes_end95:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end96-.LpubNames_start96
.LpubNames_start96:
	.half	2
	.word	.Lcu_begin96
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"
	.word	0
.LpubNames_end96:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end96-.LpubTypes_start96
.LpubTypes_start96:
	.half	2
	.word	.Lcu_begin96
	.word	72
	.word	0
.LpubTypes_end96:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end97-.LpubNames_start97
.LpubNames_start97:
	.half	2
	.word	.Lcu_begin97
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"
	.word	0
.LpubNames_end97:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end97-.LpubTypes_start97
.LpubTypes_start97:
	.half	2
	.word	.Lcu_begin97
	.word	72
	.word	0
.LpubTypes_end97:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end98-.LpubNames_start98
.LpubNames_start98:
	.half	2
	.word	.Lcu_begin98
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"
	.word	0
.LpubNames_end98:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end98-.LpubTypes_start98
.LpubTypes_start98:
	.half	2
	.word	.Lcu_begin98
	.word	72
	.word	0
.LpubTypes_end98:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end99-.LpubNames_start99
.LpubNames_start99:
	.half	2
	.word	.Lcu_begin99
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"
	.word	0
.LpubNames_end99:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end99-.LpubTypes_start99
.LpubTypes_start99:
	.half	2
	.word	.Lcu_begin99
	.word	72
	.word	0
.LpubTypes_end99:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end100-.LpubNames_start100
.LpubNames_start100:
	.half	2
	.word	.Lcu_begin100
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"
	.word	0
.LpubNames_end100:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end100-.LpubTypes_start100
.LpubTypes_start100:
	.half	2
	.word	.Lcu_begin100
	.word	72
	.word	0
.LpubTypes_end100:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end101-.LpubNames_start101
.LpubNames_start101:
	.half	2
	.word	.Lcu_begin101
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"
	.word	0
.LpubNames_end101:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end101-.LpubTypes_start101
.LpubTypes_start101:
	.half	2
	.word	.Lcu_begin101
	.word	72
	.word	0
.LpubTypes_end101:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end102-.LpubNames_start102
.LpubNames_start102:
	.half	2
	.word	.Lcu_begin102
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"
	.word	0
.LpubNames_end102:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end102-.LpubTypes_start102
.LpubTypes_start102:
	.half	2
	.word	.Lcu_begin102
	.word	72
	.word	0
.LpubTypes_end102:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end103-.LpubNames_start103
.LpubNames_start103:
	.half	2
	.word	.Lcu_begin103
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"
	.word	0
.LpubNames_end103:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end103-.LpubTypes_start103
.LpubTypes_start103:
	.half	2
	.word	.Lcu_begin103
	.word	72
	.word	0
.LpubTypes_end103:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end104-.LpubNames_start104
.LpubNames_start104:
	.half	2
	.word	.Lcu_begin104
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"
	.word	0
.LpubNames_end104:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end104-.LpubTypes_start104
.LpubTypes_start104:
	.half	2
	.word	.Lcu_begin104
	.word	72
	.word	0
.LpubTypes_end104:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end105-.LpubNames_start105
.LpubNames_start105:
	.half	2
	.word	.Lcu_begin105
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"
	.word	0
.LpubNames_end105:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end105-.LpubTypes_start105
.LpubTypes_start105:
	.half	2
	.word	.Lcu_begin105
	.word	72
	.word	0
.LpubTypes_end105:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end106-.LpubNames_start106
.LpubNames_start106:
	.half	2
	.word	.Lcu_begin106
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_29_generic_28x28x256_i8"
	.word	0
.LpubNames_end106:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end106-.LpubTypes_start106
.LpubTypes_start106:
	.half	2
	.word	.Lcu_begin106
	.word	72
	.word	0
.LpubTypes_end106:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end107-.LpubNames_start107
.LpubNames_start107:
	.half	2
	.word	.Lcu_begin107
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_30_slow_memcpy"
	.word	0
.LpubNames_end107:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end107-.LpubTypes_start107
.LpubTypes_start107:
	.half	2
	.word	.Lcu_begin107
	.word	72
	.word	0
.LpubTypes_end107:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end108-.LpubNames_start108
.LpubNames_start108:
	.half	2
	.word	.Lcu_begin108
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"
	.word	0
.LpubNames_end108:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end108-.LpubTypes_start108
.LpubTypes_start108:
	.half	2
	.word	.Lcu_begin108
	.word	72
	.word	0
.LpubTypes_end108:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end109-.LpubNames_start109
.LpubNames_start109:
	.half	2
	.word	.Lcu_begin109
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"
	.word	0
.LpubNames_end109:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end109-.LpubTypes_start109
.LpubTypes_start109:
	.half	2
	.word	.Lcu_begin109
	.word	72
	.word	0
.LpubTypes_end109:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end110-.LpubNames_start110
.LpubNames_start110:
	.half	2
	.word	.Lcu_begin110
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"
	.word	0
.LpubNames_end110:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end110-.LpubTypes_start110
.LpubTypes_start110:
	.half	2
	.word	.Lcu_begin110
	.word	72
	.word	0
.LpubTypes_end110:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end111-.LpubNames_start111
.LpubNames_start111:
	.half	2
	.word	.Lcu_begin111
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"
	.word	0
.LpubNames_end111:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end111-.LpubTypes_start111
.LpubTypes_start111:
	.half	2
	.word	.Lcu_begin111
	.word	72
	.word	0
.LpubTypes_end111:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end112-.LpubNames_start112
.LpubNames_start112:
	.half	2
	.word	.Lcu_begin112
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"
	.word	0
.LpubNames_end112:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end112-.LpubTypes_start112
.LpubTypes_start112:
	.half	2
	.word	.Lcu_begin112
	.word	72
	.word	0
.LpubTypes_end112:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end113-.LpubNames_start113
.LpubNames_start113:
	.half	2
	.word	.Lcu_begin113
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"
	.word	0
.LpubNames_end113:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end113-.LpubTypes_start113
.LpubTypes_start113:
	.half	2
	.word	.Lcu_begin113
	.word	72
	.word	0
.LpubTypes_end113:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end114-.LpubNames_start114
.LpubNames_start114:
	.half	2
	.word	.Lcu_begin114
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_37_slow_memcpy"
	.word	0
.LpubNames_end114:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end114-.LpubTypes_start114
.LpubTypes_start114:
	.half	2
	.word	.Lcu_begin114
	.word	72
	.word	0
.LpubTypes_end114:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end115-.LpubNames_start115
.LpubNames_start115:
	.half	2
	.word	.Lcu_begin115
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"
	.word	0
.LpubNames_end115:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end115-.LpubTypes_start115
.LpubTypes_start115:
	.half	2
	.word	.Lcu_begin115
	.word	72
	.word	0
.LpubTypes_end115:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end116-.LpubNames_start116
.LpubNames_start116:
	.half	2
	.word	.Lcu_begin116
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"
	.word	0
.LpubNames_end116:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end116-.LpubTypes_start116
.LpubTypes_start116:
	.half	2
	.word	.Lcu_begin116
	.word	72
	.word	0
.LpubTypes_end116:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end117-.LpubNames_start117
.LpubNames_start117:
	.half	2
	.word	.Lcu_begin117
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"
	.word	0
.LpubNames_end117:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end117-.LpubTypes_start117
.LpubTypes_start117:
	.half	2
	.word	.Lcu_begin117
	.word	72
	.word	0
.LpubTypes_end117:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end118-.LpubNames_start118
.LpubNames_start118:
	.half	2
	.word	.Lcu_begin118
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"
	.word	0
.LpubNames_end118:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end118-.LpubTypes_start118
.LpubTypes_start118:
	.half	2
	.word	.Lcu_begin118
	.word	72
	.word	0
.LpubTypes_end118:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end119-.LpubNames_start119
.LpubNames_start119:
	.half	2
	.word	.Lcu_begin119
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"
	.word	0
.LpubNames_end119:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end119-.LpubTypes_start119
.LpubTypes_start119:
	.half	2
	.word	.Lcu_begin119
	.word	72
	.word	0
.LpubTypes_end119:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end120-.LpubNames_start120
.LpubNames_start120:
	.half	2
	.word	.Lcu_begin120
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"
	.word	0
.LpubNames_end120:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end120-.LpubTypes_start120
.LpubTypes_start120:
	.half	2
	.word	.Lcu_begin120
	.word	72
	.word	0
.LpubTypes_end120:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end121-.LpubNames_start121
.LpubNames_start121:
	.half	2
	.word	.Lcu_begin121
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"
	.word	0
.LpubNames_end121:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end121-.LpubTypes_start121
.LpubTypes_start121:
	.half	2
	.word	.Lcu_begin121
	.word	72
	.word	0
.LpubTypes_end121:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end122-.LpubNames_start122
.LpubNames_start122:
	.half	2
	.word	.Lcu_begin122
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"
	.word	0
.LpubNames_end122:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end122-.LpubTypes_start122
.LpubTypes_start122:
	.half	2
	.word	.Lcu_begin122
	.word	72
	.word	0
.LpubTypes_end122:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end123-.LpubNames_start123
.LpubNames_start123:
	.half	2
	.word	.Lcu_begin123
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"
	.word	0
.LpubNames_end123:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end123-.LpubTypes_start123
.LpubTypes_start123:
	.half	2
	.word	.Lcu_begin123
	.word	72
	.word	0
.LpubTypes_end123:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end124-.LpubNames_start124
.LpubNames_start124:
	.half	2
	.word	.Lcu_begin124
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"
	.word	0
.LpubNames_end124:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end124-.LpubTypes_start124
.LpubTypes_start124:
	.half	2
	.word	.Lcu_begin124
	.word	72
	.word	0
.LpubTypes_end124:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end125-.LpubNames_start125
.LpubNames_start125:
	.half	2
	.word	.Lcu_begin125
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"
	.word	0
.LpubNames_end125:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end125-.LpubTypes_start125
.LpubTypes_start125:
	.half	2
	.word	.Lcu_begin125
	.word	72
	.word	0
.LpubTypes_end125:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end126-.LpubNames_start126
.LpubNames_start126:
	.half	2
	.word	.Lcu_begin126
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"
	.word	0
.LpubNames_end126:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end126-.LpubTypes_start126
.LpubTypes_start126:
	.half	2
	.word	.Lcu_begin126
	.word	72
	.word	0
.LpubTypes_end126:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end127-.LpubNames_start127
.LpubNames_start127:
	.half	2
	.word	.Lcu_begin127
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"
	.word	0
.LpubNames_end127:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end127-.LpubTypes_start127
.LpubTypes_start127:
	.half	2
	.word	.Lcu_begin127
	.word	72
	.word	0
.LpubTypes_end127:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end128-.LpubNames_start128
.LpubNames_start128:
	.half	2
	.word	.Lcu_begin128
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"
	.word	0
.LpubNames_end128:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end128-.LpubTypes_start128
.LpubTypes_start128:
	.half	2
	.word	.Lcu_begin128
	.word	72
	.word	0
.LpubTypes_end128:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end129-.LpubNames_start129
.LpubNames_start129:
	.half	2
	.word	.Lcu_begin129
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"
	.word	0
.LpubNames_end129:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end129-.LpubTypes_start129
.LpubTypes_start129:
	.half	2
	.word	.Lcu_begin129
	.word	72
	.word	0
.LpubTypes_end129:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end130-.LpubNames_start130
.LpubNames_start130:
	.half	2
	.word	.Lcu_begin130
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_55_generic_14x14x512_i8"
	.word	0
.LpubNames_end130:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end130-.LpubTypes_start130
.LpubTypes_start130:
	.half	2
	.word	.Lcu_begin130
	.word	72
	.word	0
.LpubTypes_end130:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end131-.LpubNames_start131
.LpubNames_start131:
	.half	2
	.word	.Lcu_begin131
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_56_slow_memcpy"
	.word	0
.LpubNames_end131:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end131-.LpubTypes_start131
.LpubTypes_start131:
	.half	2
	.word	.Lcu_begin131
	.word	72
	.word	0
.LpubTypes_end131:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end132-.LpubNames_start132
.LpubNames_start132:
	.half	2
	.word	.Lcu_begin132
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end132:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end132-.LpubTypes_start132
.LpubTypes_start132:
	.half	2
	.word	.Lcu_begin132
	.word	72
	.word	0
.LpubTypes_end132:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end133-.LpubNames_start133
.LpubNames_start133:
	.half	2
	.word	.Lcu_begin133
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end133:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end133-.LpubTypes_start133
.LpubTypes_start133:
	.half	2
	.word	.Lcu_begin133
	.word	72
	.word	0
.LpubTypes_end133:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end134-.LpubNames_start134
.LpubNames_start134:
	.half	2
	.word	.Lcu_begin134
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end134:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end134-.LpubTypes_start134
.LpubTypes_start134:
	.half	2
	.word	.Lcu_begin134
	.word	72
	.word	0
.LpubTypes_end134:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end135-.LpubNames_start135
.LpubNames_start135:
	.half	2
	.word	.Lcu_begin135
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"
	.word	0
.LpubNames_end135:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end135-.LpubTypes_start135
.LpubTypes_start135:
	.half	2
	.word	.Lcu_begin135
	.word	72
	.word	0
.LpubTypes_end135:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end136-.LpubNames_start136
.LpubNames_start136:
	.half	2
	.word	.Lcu_begin136
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"
	.word	0
.LpubNames_end136:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end136-.LpubTypes_start136
.LpubTypes_start136:
	.half	2
	.word	.Lcu_begin136
	.word	72
	.word	0
.LpubTypes_end136:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end137-.LpubNames_start137
.LpubNames_start137:
	.half	2
	.word	.Lcu_begin137
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_62_slow_memcpy"
	.word	0
.LpubNames_end137:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end137-.LpubTypes_start137
.LpubTypes_start137:
	.half	2
	.word	.Lcu_begin137
	.word	72
	.word	0
.LpubTypes_end137:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end138-.LpubNames_start138
.LpubNames_start138:
	.half	2
	.word	.Lcu_begin138
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end138:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end138-.LpubTypes_start138
.LpubTypes_start138:
	.half	2
	.word	.Lcu_begin138
	.word	72
	.word	0
.LpubTypes_end138:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end139-.LpubNames_start139
.LpubNames_start139:
	.half	2
	.word	.Lcu_begin139
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end139:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end139-.LpubTypes_start139
.LpubTypes_start139:
	.half	2
	.word	.Lcu_begin139
	.word	72
	.word	0
.LpubTypes_end139:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end140-.LpubNames_start140
.LpubNames_start140:
	.half	2
	.word	.Lcu_begin140
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end140:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end140-.LpubTypes_start140
.LpubTypes_start140:
	.half	2
	.word	.Lcu_begin140
	.word	72
	.word	0
.LpubTypes_end140:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end141-.LpubNames_start141
.LpubNames_start141:
	.half	2
	.word	.Lcu_begin141
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"
	.word	0
.LpubNames_end141:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end141-.LpubTypes_start141
.LpubTypes_start141:
	.half	2
	.word	.Lcu_begin141
	.word	72
	.word	0
.LpubTypes_end141:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end142-.LpubNames_start142
.LpubNames_start142:
	.half	2
	.word	.Lcu_begin142
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end142:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end142-.LpubTypes_start142
.LpubTypes_start142:
	.half	2
	.word	.Lcu_begin142
	.word	72
	.word	0
.LpubTypes_end142:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end143-.LpubNames_start143
.LpubNames_start143:
	.half	2
	.word	.Lcu_begin143
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end143:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end143-.LpubTypes_start143
.LpubTypes_start143:
	.half	2
	.word	.Lcu_begin143
	.word	72
	.word	0
.LpubTypes_end143:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end144-.LpubNames_start144
.LpubNames_start144:
	.half	2
	.word	.Lcu_begin144
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end144:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end144-.LpubTypes_start144
.LpubTypes_start144:
	.half	2
	.word	.Lcu_begin144
	.word	72
	.word	0
.LpubTypes_end144:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end145-.LpubNames_start145
.LpubNames_start145:
	.half	2
	.word	.Lcu_begin145
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"
	.word	0
.LpubNames_end145:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end145-.LpubTypes_start145
.LpubTypes_start145:
	.half	2
	.word	.Lcu_begin145
	.word	72
	.word	0
.LpubTypes_end145:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end146-.LpubNames_start146
.LpubNames_start146:
	.half	2
	.word	.Lcu_begin146
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end146:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end146-.LpubTypes_start146
.LpubTypes_start146:
	.half	2
	.word	.Lcu_begin146
	.word	72
	.word	0
.LpubTypes_end146:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end147-.LpubNames_start147
.LpubNames_start147:
	.half	2
	.word	.Lcu_begin147
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end147:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end147-.LpubTypes_start147
.LpubTypes_start147:
	.half	2
	.word	.Lcu_begin147
	.word	72
	.word	0
.LpubTypes_end147:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end148-.LpubNames_start148
.LpubNames_start148:
	.half	2
	.word	.Lcu_begin148
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end148:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end148-.LpubTypes_start148
.LpubTypes_start148:
	.half	2
	.word	.Lcu_begin148
	.word	72
	.word	0
.LpubTypes_end148:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end149-.LpubNames_start149
.LpubNames_start149:
	.half	2
	.word	.Lcu_begin149
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"
	.word	0
.LpubNames_end149:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end149-.LpubTypes_start149
.LpubTypes_start149:
	.half	2
	.word	.Lcu_begin149
	.word	72
	.word	0
.LpubTypes_end149:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end150-.LpubNames_start150
.LpubNames_start150:
	.half	2
	.word	.Lcu_begin150
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end150:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end150-.LpubTypes_start150
.LpubTypes_start150:
	.half	2
	.word	.Lcu_begin150
	.word	72
	.word	0
.LpubTypes_end150:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end151-.LpubNames_start151
.LpubNames_start151:
	.half	2
	.word	.Lcu_begin151
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end151:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end151-.LpubTypes_start151
.LpubTypes_start151:
	.half	2
	.word	.Lcu_begin151
	.word	72
	.word	0
.LpubTypes_end151:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end152-.LpubNames_start152
.LpubNames_start152:
	.half	2
	.word	.Lcu_begin152
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end152:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end152-.LpubTypes_start152
.LpubTypes_start152:
	.half	2
	.word	.Lcu_begin152
	.word	72
	.word	0
.LpubTypes_end152:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end153-.LpubNames_start153
.LpubNames_start153:
	.half	2
	.word	.Lcu_begin153
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"
	.word	0
.LpubNames_end153:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end153-.LpubTypes_start153
.LpubTypes_start153:
	.half	2
	.word	.Lcu_begin153
	.word	72
	.word	0
.LpubTypes_end153:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end154-.LpubNames_start154
.LpubNames_start154:
	.half	2
	.word	.Lcu_begin154
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"
	.word	0
.LpubNames_end154:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end154-.LpubTypes_start154
.LpubTypes_start154:
	.half	2
	.word	.Lcu_begin154
	.word	72
	.word	0
.LpubTypes_end154:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end155-.LpubNames_start155
.LpubNames_start155:
	.half	2
	.word	.Lcu_begin155
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"
	.word	0
.LpubNames_end155:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end155-.LpubTypes_start155
.LpubTypes_start155:
	.half	2
	.word	.Lcu_begin155
	.word	72
	.word	0
.LpubTypes_end155:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end156-.LpubNames_start156
.LpubNames_start156:
	.half	2
	.word	.Lcu_begin156
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"
	.word	0
.LpubNames_end156:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end156-.LpubTypes_start156
.LpubTypes_start156:
	.half	2
	.word	.Lcu_begin156
	.word	72
	.word	0
.LpubTypes_end156:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end157-.LpubNames_start157
.LpubNames_start157:
	.half	2
	.word	.Lcu_begin157
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"
	.word	0
.LpubNames_end157:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end157-.LpubTypes_start157
.LpubTypes_start157:
	.half	2
	.word	.Lcu_begin157
	.word	72
	.word	0
.LpubTypes_end157:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end158-.LpubNames_start158
.LpubNames_start158:
	.half	2
	.word	.Lcu_begin158
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_87_generic_7x7x1024_i8"
	.word	0
.LpubNames_end158:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end158-.LpubTypes_start158
.LpubTypes_start158:
	.half	2
	.word	.Lcu_begin158
	.word	72
	.word	0
.LpubTypes_end158:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end159-.LpubNames_start159
.LpubNames_start159:
	.half	2
	.word	.Lcu_begin159
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_88_slow_memcpy"
	.word	0
.LpubNames_end159:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end159-.LpubTypes_start159
.LpubTypes_start159:
	.half	2
	.word	.Lcu_begin159
	.word	72
	.word	0
.LpubTypes_end159:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end160-.LpubNames_start160
.LpubNames_start160:
	.half	2
	.word	.Lcu_begin160
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"
	.word	0
.LpubNames_end160:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end160-.LpubTypes_start160
.LpubTypes_start160:
	.half	2
	.word	.Lcu_begin160
	.word	72
	.word	0
.LpubTypes_end160:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end161-.LpubNames_start161
.LpubNames_start161:
	.half	2
	.word	.Lcu_begin161
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"
	.word	0
.LpubNames_end161:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end161-.LpubTypes_start161
.LpubTypes_start161:
	.half	2
	.word	.Lcu_begin161
	.word	72
	.word	0
.LpubTypes_end161:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end162-.LpubNames_start162
.LpubNames_start162:
	.half	2
	.word	.Lcu_begin162
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"
	.word	0
.LpubNames_end162:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end162-.LpubTypes_start162
.LpubTypes_start162:
	.half	2
	.word	.Lcu_begin162
	.word	72
	.word	0
.LpubTypes_end162:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end163-.LpubNames_start163
.LpubNames_start163:
	.half	2
	.word	.Lcu_begin163
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"
	.word	0
.LpubNames_end163:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end163-.LpubTypes_start163
.LpubTypes_start163:
	.half	2
	.word	.Lcu_begin163
	.word	72
	.word	0
.LpubTypes_end163:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end164-.LpubNames_start164
.LpubNames_start164:
	.half	2
	.word	.Lcu_begin164
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"
	.word	0
.LpubNames_end164:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end164-.LpubTypes_start164
.LpubTypes_start164:
	.half	2
	.word	.Lcu_begin164
	.word	72
	.word	0
.LpubTypes_end164:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end165-.LpubNames_start165
.LpubNames_start165:
	.half	2
	.word	.Lcu_begin165
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_94_slow_memcpy"
	.word	0
.LpubNames_end165:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end165-.LpubTypes_start165
.LpubTypes_start165:
	.half	2
	.word	.Lcu_begin165
	.word	72
	.word	0
.LpubTypes_end165:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end166-.LpubNames_start166
.LpubNames_start166:
	.half	2
	.word	.Lcu_begin166
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"
	.word	0
.LpubNames_end166:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end166-.LpubTypes_start166
.LpubTypes_start166:
	.half	2
	.word	.Lcu_begin166
	.word	72
	.word	0
.LpubTypes_end166:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end167-.LpubNames_start167
.LpubNames_start167:
	.half	2
	.word	.Lcu_begin167
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"
	.word	0
.LpubNames_end167:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end167-.LpubTypes_start167
.LpubTypes_start167:
	.half	2
	.word	.Lcu_begin167
	.word	72
	.word	0
.LpubTypes_end167:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end168-.LpubNames_start168
.LpubNames_start168:
	.half	2
	.word	.Lcu_begin168
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"
	.word	0
.LpubNames_end168:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end168-.LpubTypes_start168
.LpubTypes_start168:
	.half	2
	.word	.Lcu_begin168
	.word	72
	.word	0
.LpubTypes_end168:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end169-.LpubNames_start169
.LpubNames_start169:
	.half	2
	.word	.Lcu_begin169
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"
	.word	0
.LpubNames_end169:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end169-.LpubTypes_start169
.LpubTypes_start169:
	.half	2
	.word	.Lcu_begin169
	.word	72
	.word	0
.LpubTypes_end169:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end170-.LpubNames_start170
.LpubNames_start170:
	.half	2
	.word	.Lcu_begin170
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"
	.word	0
.LpubNames_end170:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end170-.LpubTypes_start170
.LpubTypes_start170:
	.half	2
	.word	.Lcu_begin170
	.word	72
	.word	0
.LpubTypes_end170:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end171-.LpubNames_start171
.LpubNames_start171:
	.half	2
	.word	.Lcu_begin171
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"
	.word	0
.LpubNames_end171:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end171-.LpubTypes_start171
.LpubTypes_start171:
	.half	2
	.word	.Lcu_begin171
	.word	72
	.word	0
.LpubTypes_end171:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end172-.LpubNames_start172
.LpubNames_start172:
	.half	2
	.word	.Lcu_begin172
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"
	.word	0
.LpubNames_end172:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end172-.LpubTypes_start172
.LpubTypes_start172:
	.half	2
	.word	.Lcu_begin172
	.word	72
	.word	0
.LpubTypes_end172:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end173-.LpubNames_start173
.LpubNames_start173:
	.half	2
	.word	.Lcu_begin173
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"
	.word	0
.LpubNames_end173:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end173-.LpubTypes_start173
.LpubTypes_start173:
	.half	2
	.word	.Lcu_begin173
	.word	72
	.word	0
.LpubTypes_end173:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end174-.LpubNames_start174
.LpubNames_start174:
	.half	2
	.word	.Lcu_begin174
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"
	.word	0
.LpubNames_end174:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end174-.LpubTypes_start174
.LpubTypes_start174:
	.half	2
	.word	.Lcu_begin174
	.word	72
	.word	0
.LpubTypes_end174:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end175-.LpubNames_start175
.LpubNames_start175:
	.half	2
	.word	.Lcu_begin175
	.word	72
	.word	42
	.asciz	"main_graph$async_dispatch_105_elementwise_1000_i8xf32"
	.word	0
.LpubNames_end175:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end175-.LpubTypes_start175
.LpubTypes_start175:
	.half	2
	.word	.Lcu_begin175
	.word	72
	.word	0
.LpubTypes_end175:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
