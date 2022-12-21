	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 0
	.globl	__Z5accumNSt3__111__wrap_iterIPiEES2_i ; -- Begin function _Z5accumNSt3__111__wrap_iterIPiEES2_i
	.p2align	2
__Z5accumNSt3__111__wrap_iterIPiEES2_i: ; @_Z5accumNSt3__111__wrap_iterIPiEES2_i
	.cfi_startproc
; %bb.0:
	cmp	x0, x1
	b.eq	LBB0_7
; %bb.1:
	sub	x8, x1, x0
	sub	x8, x8, #4
	cmp	x8, #60
	b.hs	LBB0_3
; %bb.2:
	mov	x8, x0
	b	LBB0_6
LBB0_3:
	lsr	x8, x8, #2
	add	x9, x8, #1
	and	x10, x9, #0x7ffffffffffffff0
	add	x8, x0, x10, lsl #2
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w2
	add	x11, x0, #32
	mov	x12, x10
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x11, #-32]
	ldp	q6, q7, [x11], #64
	add.4s	v1, v4, v1
	add.4s	v0, v5, v0
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	subs	x12, x12, #16
	b.ne	LBB0_4
; %bb.5:
	add.4s	v0, v0, v1
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	addv.4s	s0, v0
	fmov	w2, s0
	cmp	x9, x10
	b.eq	LBB0_7
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x8], #4
	add	w2, w9, w2
	cmp	x8, x1
	b.ne	LBB0_6
LBB0_7:
	mov	x0, x2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #272]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #288]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #304]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #320]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	add	x21, sp, #176
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	mov	w0, #10240
	movk	w0, #61035, lsl #16
	bl	__Znwm
	mov	x19, x0
Lloh3:
	adrp	x1, l_.memset_pattern@PAGE
Lloh4:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	mov	w2, #10240
	movk	w2, #61035, lsl #16
	bl	_memset_pattern16
Lloh5:
	adrp	x28, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGE
Lloh6:
	ldr	x28, [x28, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGEOFF]
	add	x23, x28, #16
Lloh7:
	adrp	x25, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGE
Lloh8:
	add	x25, x25, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGEOFF
	stp	x23, x25, [x21, #40]
	sub	x27, x29, #136
	str	x27, [x21, #64]
Ltmp0:
	mov	w0, #144
	bl	__Znwm
Ltmp1:
; %bb.1:
	mov	x24, x0
	mov	x22, x0
	str	xzr, [x22, #8]!
	mov	w20, #45499
	movk	w20, #15536, lsl #16
	mov	w26, #43943
	movk	w26, #12970, lsl #16
	add	x8, x27, #32
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stp	xzr, x26, [x0, #16]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #32]
	str	q0, [x0, #64]
	stp	xzr, x20, [x0, #80]
	stp	q0, q0, [x0, #96]
Lloh9:
	adrp	x27, __ZTVNSt3__113__assoc_stateIiEE@PAGE+16
Lloh10:
	add	x27, x27, __ZTVNSt3__113__assoc_stateIiEE@PAGEOFF+16
	stur	q0, [x0, #124]
	str	x27, [x0]
	str	x0, [x21, #72]
	stp	x23, x25, [x21]
	str	x21, [x21, #24]
Ltmp3:
	mov	w0, #144
	bl	__Znwm
Ltmp4:
; %bb.2:
	add	x8, sp, #176
	add	x8, x8, #32
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stp	xzr, x26, [x0, #16]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #32]
	str	q0, [x0, #64]
	stp	xzr, x20, [x0, #80]
	stp	q0, q0, [x0, #96]
	stur	q0, [x0, #124]
	stp	x27, xzr, [x0]
	str	x0, [x21, #32]
	add	x23, x28, #16
	stp	x23, x25, [sp, #136]
	add	x28, sp, #136
	str	x28, [sp, #160]
Ltmp6:
	mov	w0, #144
	bl	__Znwm
Ltmp7:
; %bb.3:
	add	x8, x28, #32
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	stp	xzr, x26, [x0, #16]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #32]
	str	q0, [x0, #64]
	stp	xzr, x20, [x0, #80]
	stp	q0, q0, [x0, #96]
	stur	q0, [x0, #124]
	stp	x27, xzr, [x0]
	str	x0, [sp, #168]
	stp	x23, x25, [sp, #96]
	add	x23, sp, #96
	str	x23, [sp, #120]
Ltmp9:
	mov	w0, #144
	bl	__Znwm
Ltmp10:
; %bb.4:
	add	x8, x23, #32
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	stp	xzr, x26, [x0, #16]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #32]
	str	q0, [x0, #64]
	stp	xzr, x20, [x0, #80]
	stp	q0, q0, [x0, #96]
	stur	q0, [x0, #124]
	stp	x27, xzr, [x0]
	add	x20, x24, #24
	str	x0, [sp, #128]
Ltmp12:
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
Ltmp13:
; %bb.5:
	ldr	w8, [x24, #136]
	tbnz	w8, #1, LBB1_79
; %bb.6:
	add	x9, x24, #8
	mov	w10, #1
	ldadd	x10, x9, [x9]
	orr	w8, w8, #0x2
	str	w8, [x24, #136]
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	ldr	x25, [x21, #32]
	cbz	x25, LBB1_80
; %bb.7:
	add	x20, x25, #24
Ltmp18:
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
Ltmp19:
; %bb.8:
	ldr	w8, [x25, #136]
	tbnz	w8, #1, LBB1_81
; %bb.9:
	add	x9, x25, #8
	mov	w10, #1
	ldadd	x10, x9, [x9]
	orr	w8, w8, #0x2
	str	w8, [x25, #136]
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	ldr	x26, [sp, #168]
	cbz	x26, LBB1_82
; %bb.10:
	add	x20, x26, #24
Ltmp23:
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
Ltmp24:
; %bb.11:
	ldr	w8, [x26, #136]
	tbnz	w8, #1, LBB1_83
; %bb.12:
	add	x9, x26, #8
	mov	w10, #1
	ldadd	x10, x9, [x9]
	orr	w8, w8, #0x2
	str	w8, [x26, #136]
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	ldr	x28, [sp, #128]
	cbz	x28, LBB1_84
; %bb.13:
	add	x20, x28, #24
Ltmp28:
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
Ltmp29:
; %bb.14:
	ldr	w8, [x28, #136]
	tbnz	w8, #1, LBB1_85
; %bb.15:
	add	x9, x28, #8
	mov	w10, #1
	ldadd	x10, x9, [x9]
	orr	w8, w8, #0x2
	str	w8, [x28, #136]
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
Ltmp33:
Lloh11:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh12:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh13:
	adrp	x1, l_.str@PAGE
Lloh14:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #7
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp34:
; %bb.16:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp35:
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp36:
; %bb.17:
Ltmp37:
Lloh15:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh16:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #88
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp38:
; %bb.18:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp39:
	mov	w1, #10
	blr	x8
Ltmp40:
; %bb.19:
	mov	x27, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
Ltmp42:
	mov	x0, x20
	mov	x1, x27
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp43:
; %bb.20:
Ltmp44:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp45:
; %bb.21:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	str	x19, [sp, #88]
	mov	w8, #3584
	movk	w8, #1831, lsl #16
	add	x23, x19, x8
	str	x23, [sp, #72]
	str	wzr, [sp, #64]
Ltmp47:
	add	x0, sp, #80
	sub	x1, x29, #136
	add	x2, sp, #88
	add	x3, sp, #72
	add	x4, sp, #64
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp48:
; %bb.22:
	str	x23, [sp, #88]
	mov	w8, #7168
	movk	w8, #3662, lsl #16
	add	x23, x19, x8
	str	x23, [sp, #64]
	str	wzr, [sp, #56]
Ltmp50:
	add	x0, sp, #72
	add	x1, sp, #176
	add	x2, sp, #88
	add	x3, sp, #64
	add	x4, sp, #56
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp51:
; %bb.23:
	str	x23, [sp, #88]
	mov	w8, #10752
	movk	w8, #5493, lsl #16
	add	x23, x19, x8
	str	x23, [sp, #56]
	str	wzr, [sp, #48]
Ltmp53:
	add	x0, sp, #64
	add	x1, sp, #136
	add	x2, sp, #88
	add	x3, sp, #56
	add	x4, sp, #48
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp54:
; %bb.24:
	mov	w8, #10240
	movk	w8, #61035, lsl #16
	add	x8, x19, x8
	str	x23, [sp, #88]
	str	x8, [sp, #48]
	str	wzr, [sp, #44]
Ltmp56:
	add	x0, sp, #56
	add	x1, sp, #96
	add	x2, sp, #88
	add	x3, sp, #48
	add	x4, sp, #44
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp57:
; %bb.25:
Ltmp59:
	add	x0, sp, #80
	bl	__ZNSt3__16thread4joinEv
Ltmp60:
; %bb.26:
Ltmp61:
	add	x0, sp, #72
	bl	__ZNSt3__16thread4joinEv
Ltmp62:
; %bb.27:
Ltmp63:
	add	x0, sp, #64
	bl	__ZNSt3__16thread4joinEv
Ltmp64:
; %bb.28:
Ltmp65:
	add	x0, sp, #56
	bl	__ZNSt3__16thread4joinEv
Ltmp66:
; %bb.29:
Ltmp68:
	mov	x0, x24
	bl	__ZNSt3__113__assoc_stateIiE4moveEv
Ltmp69:
; %bb.30:
	mov	x27, x0
	mov	x8, #-1
	ldaddal	x8, x8, [x22]
	cbnz	x8, LBB1_32
; %bb.31:
	ldr	x8, [x24]
	ldr	x8, [x8, #16]
	mov	x0, x24
	blr	x8
LBB1_32:
Ltmp71:
	mov	x0, x25
	bl	__ZNSt3__113__assoc_stateIiE4moveEv
Ltmp72:
; %bb.33:
	mov	x24, x0
	add	x8, x25, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_35
; %bb.34:
	ldr	x8, [x25]
	ldr	x8, [x8, #16]
	mov	x0, x25
	blr	x8
LBB1_35:
Ltmp74:
	mov	x0, x26
	bl	__ZNSt3__113__assoc_stateIiE4moveEv
Ltmp75:
; %bb.36:
	mov	x25, x0
	add	x8, x26, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_38
; %bb.37:
	ldr	x8, [x26]
	ldr	x8, [x8, #16]
	mov	x0, x26
	blr	x8
LBB1_38:
Ltmp77:
	mov	x0, x28
	bl	__ZNSt3__113__assoc_stateIiE4moveEv
Ltmp78:
; %bb.39:
	mov	x26, x0
	add	x8, x28, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_41
; %bb.40:
	ldr	x8, [x28]
	ldr	x8, [x8, #16]
	mov	x0, x28
	blr	x8
LBB1_41:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x20, x0, x20
	mov	x8, #63439
	movk	x8, #58195, lsl #16
	movk	x8, #39845, lsl #32
	movk	x8, #8388, lsl #48
	smulh	x8, x20, x8
	asr	x9, x8, #7
	add	x1, x9, x8, lsr #63
Ltmp80:
Lloh17:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh18:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp81:
; %bb.42:
Ltmp82:
Lloh19:
	adrp	x1, l_.str.1@PAGE
Lloh20:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #5
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.43:
Ltmp85:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp86:
; %bb.44:
Ltmp87:
Lloh21:
	adrp	x1, l_.str.2@PAGE
Lloh22:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #5
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp88:
; %bb.45:
	mov	x8, #13531
	movk	x8, #55222, lsl #16
	movk	x8, #56962, lsl #32
	movk	x8, #17179, lsl #48
	smulh	x8, x20, x8
	asr	x9, x8, #18
	add	x1, x9, x8, lsr #63
Ltmp90:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp91:
; %bb.46:
Ltmp92:
Lloh23:
	adrp	x1, l_.str.3@PAGE
Lloh24:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #5
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp93:
; %bb.47:
	mov	x8, #38067
	movk	x8, #9942, lsl #16
	movk	x8, #3048, lsl #32
	movk	x8, #4398, lsl #48
	smulh	x8, x20, x8
	asr	x9, x8, #26
	add	x1, x9, x8, lsr #63
Ltmp95:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp96:
; %bb.48:
Ltmp97:
Lloh25:
	adrp	x1, l_.str.4@PAGE
Lloh26:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #3
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp98:
; %bb.49:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp99:
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp100:
; %bb.50:
Ltmp101:
Lloh27:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh28:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #88
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp102:
; %bb.51:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp103:
	mov	w1, #10
	blr	x8
Ltmp104:
; %bb.52:
	mov	x28, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
Ltmp106:
	mov	x0, x20
	mov	x1, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp107:
; %bb.53:
Ltmp108:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp109:
; %bb.54:
Ltmp111:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh31:
	adrp	x1, l_.str.5@PAGE
Lloh32:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #5
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp112:
; %bb.55:
	add	w8, w24, w27
	add	w8, w8, w25
	add	w1, w8, w26
Ltmp113:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp114:
; %bb.56:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp115:
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp116:
; %bb.57:
Ltmp117:
Lloh33:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh34:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #88
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp118:
; %bb.58:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp119:
	mov	w1, #10
	blr	x8
Ltmp120:
; %bb.59:
	mov	x24, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
Ltmp122:
	mov	x0, x20
	mov	x1, x24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp123:
; %bb.60:
Ltmp124:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp125:
; %bb.61:
	add	x0, sp, #56
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #64
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #72
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #80
	bl	__ZNSt3__16threadD1Ev
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp, #120]
	add	x8, sp, #96
	cmp	x0, x8
	b.eq	LBB1_64
; %bb.62:
	cbz	x0, LBB1_65
; %bb.63:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp127:
	blr	x8
Ltmp128:
	b	LBB1_65
LBB1_64:
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp129:
	blr	x8
Ltmp130:
LBB1_65:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp, #160]
	add	x8, sp, #136
	cmp	x0, x8
	b.eq	LBB1_68
; %bb.66:
	cbz	x0, LBB1_69
; %bb.67:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp132:
	blr	x8
Ltmp133:
	b	LBB1_69
LBB1_68:
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp134:
	blr	x8
Ltmp135:
LBB1_69:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x21, #24]
	add	x8, sp, #176
	cmp	x0, x8
	b.eq	LBB1_72
; %bb.70:
	cbz	x0, LBB1_73
; %bb.71:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp137:
	blr	x8
Ltmp138:
	b	LBB1_73
LBB1_72:
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp139:
	blr	x8
Ltmp140:
LBB1_73:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x21, #64]
	sub	x8, x29, #136
	cmp	x0, x8
	b.eq	LBB1_76
; %bb.74:
	cbz	x0, LBB1_77
; %bb.75:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp142:
	blr	x8
Ltmp143:
	b	LBB1_77
LBB1_76:
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp144:
	blr	x8
Ltmp145:
LBB1_77:
	mov	x0, x19
	bl	__ZdlPv
	ldur	x8, [x29, #-96]
Lloh35:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh36:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh37:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_87
; %bb.78:
	mov	w0, #0
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #336]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #320]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #304]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #288]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
LBB1_79:
Ltmp15:
	mov	w0, #1
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp16:
	b	LBB1_86
LBB1_80:
Ltmp153:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp154:
	b	LBB1_86
LBB1_81:
Ltmp20:
	mov	w0, #1
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp21:
	b	LBB1_86
LBB1_82:
Ltmp150:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp151:
	b	LBB1_86
LBB1_83:
Ltmp25:
	mov	w0, #1
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp26:
	b	LBB1_86
LBB1_84:
Ltmp147:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp148:
	b	LBB1_86
LBB1_85:
Ltmp30:
	mov	w0, #1
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp31:
LBB1_86:
	brk	#0x1
LBB1_87:
	bl	___stack_chk_fail
LBB1_88:
Ltmp146:
	bl	___clang_call_terminate
LBB1_89:
Ltmp141:
	bl	___clang_call_terminate
LBB1_90:
Ltmp136:
	bl	___clang_call_terminate
LBB1_91:
Ltmp131:
	bl	___clang_call_terminate
LBB1_92:
Ltmp79:
	mov	x27, x0
	add	x8, x28, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_128
; %bb.93:
	ldr	x8, [x28]
	ldr	x8, [x8, #16]
	mov	x0, x28
	blr	x8
	b	LBB1_128
LBB1_94:
Ltmp76:
	mov	x27, x0
	add	x8, x26, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_129
; %bb.95:
	ldr	x8, [x26]
	ldr	x8, [x8, #16]
	mov	x0, x26
	blr	x8
	b	LBB1_129
LBB1_96:
Ltmp73:
	mov	x27, x0
	add	x8, x25, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_130
; %bb.97:
	ldr	x8, [x25]
	ldr	x8, [x8, #16]
	mov	x0, x25
	blr	x8
	b	LBB1_130
LBB1_98:
Ltmp70:
	mov	x27, x0
	mov	x8, #-1
	ldaddal	x8, x8, [x22]
	cbnz	x8, LBB1_131
; %bb.99:
	ldr	x8, [x24]
	ldr	x8, [x8, #16]
	mov	x0, x24
	blr	x8
	b	LBB1_131
LBB1_100:
Ltmp58:
	mov	x27, x0
	b	LBB1_133
LBB1_101:
Ltmp55:
	mov	x27, x0
	b	LBB1_134
LBB1_102:
Ltmp52:
	mov	x27, x0
	add	x0, sp, #80
	bl	__ZNSt3__16threadD1Ev
	b	LBB1_135
LBB1_103:
Ltmp49:
	mov	x27, x0
	b	LBB1_135
LBB1_104:
Ltmp32:
	mov	x27, x0
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB1_138
LBB1_105:
Ltmp27:
	mov	x27, x0
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB1_141
LBB1_106:
Ltmp22:
	mov	x27, x0
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB1_144
LBB1_107:
Ltmp17:
	mov	x27, x0
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB1_146
LBB1_108:
Ltmp14:
	mov	x27, x0
	b	LBB1_146
LBB1_109:
Ltmp11:
	mov	x27, x0
	b	LBB1_150
LBB1_110:
Ltmp8:
	mov	x27, x0
	b	LBB1_154
LBB1_111:
Ltmp5:
	mov	x27, x0
	b	LBB1_158
LBB1_112:
Ltmp2:
	mov	x27, x0
	b	LBB1_162
LBB1_113:
Ltmp121:
	b	LBB1_115
LBB1_114:
Ltmp105:
LBB1_115:
	mov	x27, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_128
LBB1_116:
Ltmp94:
	b	LBB1_127
LBB1_117:
Ltmp89:
	b	LBB1_127
LBB1_118:
Ltmp84:
	b	LBB1_127
LBB1_119:
Ltmp41:
	mov	x27, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_135
LBB1_120:
Ltmp149:
	mov	x27, x0
	b	LBB1_138
LBB1_121:
Ltmp152:
	mov	x27, x0
	b	LBB1_141
LBB1_122:
Ltmp155:
	mov	x27, x0
	b	LBB1_144
LBB1_123:
Ltmp67:
	mov	x27, x0
	b	LBB1_132
LBB1_124:
Ltmp46:
	mov	x27, x0
	b	LBB1_135
LBB1_125:
Ltmp126:
	b	LBB1_127
LBB1_126:
Ltmp110:
LBB1_127:
	mov	x27, x0
LBB1_128:
	mov	x28, #0
LBB1_129:
	mov	x26, #0
LBB1_130:
	mov	x25, #0
LBB1_131:
	mov	x24, #0
LBB1_132:
	add	x0, sp, #56
	bl	__ZNSt3__16threadD1Ev
LBB1_133:
	add	x0, sp, #64
	bl	__ZNSt3__16threadD1Ev
LBB1_134:
	add	x0, sp, #72
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #80
	bl	__ZNSt3__16threadD1Ev
	cbz	x28, LBB1_137
LBB1_135:
	add	x8, x28, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_137
; %bb.136:
	ldr	x8, [x28]
	ldr	x8, [x8, #16]
	mov	x0, x28
	blr	x8
LBB1_137:
	cbz	x26, LBB1_140
LBB1_138:
	add	x8, x26, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_140
; %bb.139:
	ldr	x8, [x26]
	ldr	x8, [x8, #16]
	mov	x0, x26
	blr	x8
LBB1_140:
	cbz	x25, LBB1_143
LBB1_141:
	add	x8, x25, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_143
; %bb.142:
	ldr	x8, [x25]
	ldr	x8, [x8, #16]
	mov	x0, x25
	blr	x8
LBB1_143:
	cbz	x24, LBB1_146
LBB1_144:
	add	x8, x24, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB1_146
; %bb.145:
	ldr	x8, [x24]
	ldr	x8, [x8, #16]
	mov	x0, x24
	blr	x8
LBB1_146:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp, #120]
	add	x8, sp, #96
	cmp	x0, x8
	b.ne	LBB1_148
; %bb.147:
	ldr	x8, [sp, #96]
	ldr	x8, [x8, #24]
Ltmp158:
	add	x0, sp, #96
	blr	x8
Ltmp159:
	b	LBB1_150
LBB1_148:
	cbz	x0, LBB1_150
; %bb.149:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp156:
	blr	x8
Ltmp157:
LBB1_150:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp, #160]
	add	x8, sp, #136
	cmp	x0, x8
	b.ne	LBB1_152
; %bb.151:
	ldr	x8, [sp, #136]
	ldr	x8, [x8, #24]
Ltmp163:
	add	x0, sp, #136
	blr	x8
Ltmp164:
	b	LBB1_154
LBB1_152:
	cbz	x0, LBB1_154
; %bb.153:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp161:
	blr	x8
Ltmp162:
LBB1_154:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x21, #24]
	add	x8, sp, #176
	cmp	x0, x8
	b.ne	LBB1_156
; %bb.155:
	ldr	x8, [x21]
	ldr	x8, [x8, #24]
Ltmp168:
	add	x0, sp, #176
	blr	x8
Ltmp169:
	b	LBB1_158
LBB1_156:
	cbz	x0, LBB1_158
; %bb.157:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp166:
	blr	x8
Ltmp167:
LBB1_158:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x21, #64]
	sub	x8, x29, #136
	cmp	x0, x8
	b.ne	LBB1_160
; %bb.159:
	ldr	x8, [x21, #40]
	ldr	x8, [x8, #24]
Ltmp173:
	sub	x0, x29, #136
	blr	x8
Ltmp174:
	b	LBB1_162
LBB1_160:
	cbz	x0, LBB1_162
; %bb.161:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp171:
	blr	x8
Ltmp172:
LBB1_162:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x27
	bl	__Unwind_Resume
LBB1_163:
Ltmp175:
	bl	___clang_call_terminate
LBB1_164:
Ltmp170:
	bl	___clang_call_terminate
LBB1_165:
Ltmp165:
	bl	___clang_call_terminate
LBB1_166:
Ltmp160:
	bl	___clang_call_terminate
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdrGot	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpLdrGotLdr	Lloh35, Lloh36, Lloh37
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp152-Lfunc_begin0           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp36-Ltmp33                  ;   Call between Ltmp33 and Ltmp36
	.uleb128 Ltmp46-Lfunc_begin0            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp40-Ltmp37                  ;   Call between Ltmp37 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp45-Ltmp42                  ;   Call between Ltmp42 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin0            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin0            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin0            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin0            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin0            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp66-Ltmp59                  ;   Call between Ltmp59 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin0            ;     jumps to Ltmp67
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp69-Ltmp68                  ;   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin0            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp71-Ltmp69                  ;   Call between Ltmp69 and Ltmp71
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin0            ;     jumps to Ltmp73
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp74-Ltmp72                  ;   Call between Ltmp72 and Ltmp74
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp75-Ltmp74                  ;   Call between Ltmp74 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin0            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp77-Ltmp75                  ;   Call between Ltmp75 and Ltmp77
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin0            ;     jumps to Ltmp79
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp80-Ltmp78                  ;   Call between Ltmp78 and Ltmp80
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp80-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp83-Ltmp80                  ;   Call between Ltmp80 and Ltmp83
	.uleb128 Ltmp84-Lfunc_begin0            ;     jumps to Ltmp84
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp85-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp88-Ltmp85                  ;   Call between Ltmp85 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin0            ;     jumps to Ltmp89
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp93-Ltmp90                  ;   Call between Ltmp90 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin0            ;     jumps to Ltmp94
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin0            ; >> Call Site 29 <<
	.uleb128 Ltmp100-Ltmp95                 ;   Call between Ltmp95 and Ltmp100
	.uleb128 Ltmp110-Lfunc_begin0           ;     jumps to Ltmp110
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp104-Ltmp101                ;   Call between Ltmp101 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin0           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp109-Ltmp106                ;   Call between Ltmp106 and Ltmp109
	.uleb128 Ltmp110-Lfunc_begin0           ;     jumps to Ltmp110
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin0           ; >> Call Site 32 <<
	.uleb128 Ltmp116-Ltmp111                ;   Call between Ltmp111 and Ltmp116
	.uleb128 Ltmp126-Lfunc_begin0           ;     jumps to Ltmp126
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin0           ; >> Call Site 33 <<
	.uleb128 Ltmp120-Ltmp117                ;   Call between Ltmp117 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin0           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin0           ; >> Call Site 34 <<
	.uleb128 Ltmp125-Ltmp122                ;   Call between Ltmp122 and Ltmp125
	.uleb128 Ltmp126-Lfunc_begin0           ;     jumps to Ltmp126
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin0           ; >> Call Site 35 <<
	.uleb128 Ltmp130-Ltmp127                ;   Call between Ltmp127 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin0           ;     jumps to Ltmp131
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp132-Lfunc_begin0           ; >> Call Site 36 <<
	.uleb128 Ltmp135-Ltmp132                ;   Call between Ltmp132 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin0           ;     jumps to Ltmp136
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp137-Lfunc_begin0           ; >> Call Site 37 <<
	.uleb128 Ltmp140-Ltmp137                ;   Call between Ltmp137 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin0           ;     jumps to Ltmp141
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp142-Lfunc_begin0           ; >> Call Site 38 <<
	.uleb128 Ltmp145-Ltmp142                ;   Call between Ltmp142 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin0           ;     jumps to Ltmp146
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 39 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp153-Lfunc_begin0           ; >> Call Site 40 <<
	.uleb128 Ltmp154-Ltmp153                ;   Call between Ltmp153 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 41 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin0            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp150-Lfunc_begin0           ; >> Call Site 42 <<
	.uleb128 Ltmp151-Ltmp150                ;   Call between Ltmp150 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin0           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 43 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin0           ; >> Call Site 44 <<
	.uleb128 Ltmp148-Ltmp147                ;   Call between Ltmp147 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 45 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin0            ; >> Call Site 46 <<
	.uleb128 Ltmp158-Ltmp31                 ;   Call between Ltmp31 and Ltmp158
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp158-Lfunc_begin0           ; >> Call Site 47 <<
	.uleb128 Ltmp157-Ltmp158                ;   Call between Ltmp158 and Ltmp157
	.uleb128 Ltmp160-Lfunc_begin0           ;     jumps to Ltmp160
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp163-Lfunc_begin0           ; >> Call Site 48 <<
	.uleb128 Ltmp162-Ltmp163                ;   Call between Ltmp163 and Ltmp162
	.uleb128 Ltmp165-Lfunc_begin0           ;     jumps to Ltmp165
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp168-Lfunc_begin0           ; >> Call Site 49 <<
	.uleb128 Ltmp167-Ltmp168                ;   Call between Ltmp168 and Ltmp167
	.uleb128 Ltmp170-Lfunc_begin0           ;     jumps to Ltmp170
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp173-Lfunc_begin0           ; >> Call Site 50 <<
	.uleb128 Ltmp172-Ltmp173                ;   Call between Ltmp173 and Ltmp172
	.uleb128 Ltmp175-Lfunc_begin0           ;     jumps to Ltmp175
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp172-Lfunc_begin0           ; >> Call Site 51 <<
	.uleb128 Lfunc_end0-Ltmp172             ;   Call between Ltmp172 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__17promiseIiED2Ev       ; -- Begin function _ZNSt3__17promiseIiED2Ev
	.weak_def_can_be_hidden	__ZNSt3__17promiseIiED2Ev
	.p2align	2
__ZNSt3__17promiseIiED2Ev:              ; @_ZNSt3__17promiseIiED2Ev
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #96
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x8, [x0]
	cbz	x8, LBB2_5
; %bb.1:
	ldrb	w9, [x8, #136]
	tbnz	w9, #0, LBB2_4
; %bb.2:
	stur	xzr, [x29, #-24]
	ldr	x20, [x8, #16]
	sub	x0, x29, #24
	bl	__ZNSt13exception_ptrD1Ev
	cbnz	x20, LBB2_4
; %bb.3:
	ldr	x8, [x19]
	ldr	x9, [x8, #8]
	cmp	x9, #1
	b.ge	LBB2_6
LBB2_4:
	ldr	x0, [x19]
	add	x8, x0, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbz	x8, LBB2_12
LBB2_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB2_6:
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__115future_categoryEv
	mov	x2, x0
Ltmp176:
	add	x0, sp, #16
	mov	w1, #4
	bl	__ZNSt3__112future_errorC1ENS_10error_codeE
Ltmp177:
; %bb.7:
	mov	w0, #32
	bl	___cxa_allocate_exception
	add	x1, sp, #16
	bl	__ZNSt11logic_errorC2ERKS_
Lloh38:
	adrp	x8, __ZTVNSt3__112future_errorE@GOTPAGE
Lloh39:
	ldr	x8, [x8, __ZTVNSt3__112future_errorE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	q0, [sp, #32]
	str	q0, [x0, #16]
Ltmp179:
Lloh40:
	adrp	x1, __ZTINSt3__112future_errorE@GOTPAGE
Lloh41:
	ldr	x1, [x1, __ZTINSt3__112future_errorE@GOTPAGEOFF]
Lloh42:
	adrp	x2, __ZNSt3__112future_errorD1Ev@GOTPAGE
Lloh43:
	ldr	x2, [x2, __ZNSt3__112future_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
Ltmp180:
; %bb.8:
	brk	#0x1
LBB2_9:
Ltmp181:
	bl	___cxa_begin_catch
	sub	x8, x29, #32
	bl	__ZSt17current_exceptionv
Ltmp182:
	bl	___cxa_end_catch
Ltmp183:
; %bb.10:
Ltmp185:
	sub	x1, x29, #32
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr
Ltmp186:
; %bb.11:
	sub	x0, x29, #32
	bl	__ZNSt13exception_ptrD1Ev
	add	x0, sp, #16
	bl	__ZNSt3__112future_errorD1Ev
	ldr	x0, [x19]
	add	x8, x0, #8
	mov	x9, #-1
	ldaddal	x9, x8, [x8]
	cbnz	x8, LBB2_5
LBB2_12:
	ldr	x8, [x0]
	ldr	x8, [x8, #16]
	blr	x8
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB2_13:
Ltmp187:
	mov	x19, x0
	sub	x0, x29, #32
	bl	__ZNSt13exception_ptrD1Ev
	add	x0, sp, #16
	bl	__ZNSt3__112future_errorD1Ev
	mov	x0, x19
	bl	___clang_call_terminate
LBB2_14:
Ltmp184:
	bl	___clang_call_terminate
LBB2_15:
Ltmp178:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh38, Lloh39
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp176-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp177-Ltmp176                ;   Call between Ltmp176 and Ltmp177
	.uleb128 Ltmp178-Lfunc_begin1           ;     jumps to Ltmp178
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp177-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp179-Ltmp177                ;   Call between Ltmp177 and Ltmp179
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp179-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp180-Ltmp179                ;   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin1           ;     jumps to Ltmp181
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp180-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp182-Ltmp180                ;   Call between Ltmp180 and Ltmp182
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin1           ;     jumps to Ltmp184
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp185-Lfunc_begin1           ; >> Call Site 6 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin1           ;     jumps to Ltmp187
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp186-Lfunc_begin1           ; >> Call Site 7 <<
	.uleb128 Lfunc_end1-Ltmp186             ;   Call between Ltmp186 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.cfi_startproc
; %bb.0:
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0, #8]
Lloh44:
	adrp	x9, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGE
Lloh45:
	ldr	x9, [x9, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGEOFF]
	add	x9, x9, #16
	stp	x9, x8, [x1]
	ret
	.loh AdrpLdrGot	Lloh44, Lloh45
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.cfi_startproc
; %bb.0:
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.cfi_startproc
; %bb.0:
	ldr	x4, [x0, #8]
	ldr	x0, [x1]
	ldr	x1, [x2]
	ldr	w2, [x3]
	br	x4
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiED1Ev ; -- Begin function _ZNSt3__113__assoc_stateIiED1Ev
	.globl	__ZNSt3__113__assoc_stateIiED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiED1Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiED1Ev:       ; @_ZNSt3__113__assoc_stateIiED1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh46:
	adrp	x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGE
Lloh47:
	ldr	x8, [x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20], #16
	add	x0, x0, #88
	bl	__ZNSt3__118condition_variableD1Ev
	add	x0, x19, #24
	bl	__ZNSt3__15mutexD1Ev
	mov	x0, x20
	bl	__ZNSt13exception_ptrD1Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZNSt3__114__shared_countD2Ev
	.loh AdrpLdrGot	Lloh46, Lloh47
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiED0Ev ; -- Begin function _ZNSt3__113__assoc_stateIiED0Ev
	.globl	__ZNSt3__113__assoc_stateIiED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiED0Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiED0Ev:       ; @_ZNSt3__113__assoc_stateIiED0Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh48:
	adrp	x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGE
Lloh49:
	ldr	x8, [x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20], #16
	add	x0, x0, #88
	bl	__ZNSt3__118condition_variableD1Ev
	add	x0, x19, #24
	bl	__ZNSt3__15mutexD1Ev
	mov	x0, x20
	bl	__ZNSt13exception_ptrD1Ev
	mov	x0, x19
	bl	__ZNSt3__114__shared_countD2Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
	.loh AdrpLdrGot	Lloh48, Lloh49
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv ; -- Begin function _ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.globl	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.p2align	2
__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv: ; @_ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	ldr	x1, [x8, #8]
	br	x1
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L20__throw_future_errorENS_11future_errcE
__ZNSt3__1L20__throw_future_errorENS_11future_errcE: ; @_ZNSt3__1L20__throw_future_errorENS_11future_errcE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #32
	bl	___cxa_allocate_exception
	mov	x19, x0
	bl	__ZNSt3__115future_categoryEv
	mov	x2, x0
	mov	w1, w20
Ltmp188:
	mov	x0, x19
	bl	__ZNSt3__112future_errorC1ENS_10error_codeE
Ltmp189:
; %bb.1:
Lloh50:
	adrp	x1, __ZTINSt3__112future_errorE@GOTPAGE
Lloh51:
	ldr	x1, [x1, __ZTINSt3__112future_errorE@GOTPAGEOFF]
Lloh52:
	adrp	x2, __ZNSt3__112future_errorD1Ev@GOTPAGE
Lloh53:
	ldr	x2, [x2, __ZNSt3__112future_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB13_2:
Ltmp190:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp188-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp188
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp189             ;   Call between Ltmp189 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp191:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp192:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB14_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB14_7
; %bb.3:
Ltmp194:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp195:
; %bb.4:
Ltmp196:
Lloh54:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh55:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp197:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp198:
	mov	w1, #32
	blr	x8
Ltmp199:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB14_7:
	add	x3, x20, x21
	mov	w8, #176
	and	w8, w25, w8
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp201:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp202:
; %bb.8:
	cbnz	x0, LBB14_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp204:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp205:
LBB14_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB14_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB14_12:
Ltmp206:
	b	LBB14_15
LBB14_13:
Ltmp200:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB14_16
LBB14_14:
Ltmp203:
LBB14_15:
	mov	x20, x0
LBB14_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB14_18
LBB14_17:
Ltmp193:
	mov	x20, x0
LBB14_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp207:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp208:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB14_11
LBB14_20:
Ltmp209:
	mov	x19, x0
Ltmp210:
	bl	___cxa_end_catch
Ltmp211:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB14_22:
Ltmp212:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh54, Lloh55
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp191-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp192-Ltmp191                ;   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin3           ;     jumps to Ltmp193
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp194-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp195-Ltmp194                ;   Call between Ltmp194 and Ltmp195
	.uleb128 Ltmp203-Lfunc_begin3           ;     jumps to Ltmp203
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp196-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp199-Ltmp196                ;   Call between Ltmp196 and Ltmp199
	.uleb128 Ltmp200-Lfunc_begin3           ;     jumps to Ltmp200
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp201-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp202-Ltmp201                ;   Call between Ltmp201 and Ltmp202
	.uleb128 Ltmp203-Lfunc_begin3           ;     jumps to Ltmp203
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp204-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp205-Ltmp204                ;   Call between Ltmp204 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin3           ;     jumps to Ltmp206
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp205-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp207-Ltmp205                ;   Call between Ltmp205 and Ltmp207
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin3           ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin3           ; >> Call Site 8 <<
	.uleb128 Ltmp210-Ltmp208                ;   Call between Ltmp208 and Ltmp210
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin3           ; >> Call Site 9 <<
	.uleb128 Ltmp211-Ltmp210                ;   Call between Ltmp210 and Ltmp211
	.uleb128 Ltmp212-Lfunc_begin3           ;     jumps to Ltmp212
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp211-Lfunc_begin3           ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp211             ;   Call between Ltmp211 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB15_15
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB15_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB15_14
LBB15_3:
	cmp	x23, #1
	b.lt	LBB15_11
; %bb.4:
	cmp	x23, #23
	b.hs	LBB15_6
; %bb.5:
	add	x25, sp, #8
	strb	w23, [sp, #31]
	b	LBB15_7
LBB15_6:
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB15_7:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp213:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp214:
; %bb.8:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB15_10
; %bb.9:
	cmp	x24, x23
	b.ne	LBB15_14
	b	LBB15_11
LBB15_10:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB15_14
LBB15_11:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB15_13
; %bb.12:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB15_14
LBB15_13:
	str	xzr, [x20, #24]
	b	LBB15_15
LBB15_14:
	mov	x19, #0
LBB15_15:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_16:
Ltmp215:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB15_18
; %bb.17:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB15_18:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp213-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp213
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp214-Ltmp213                ;   Call between Ltmp213 and Ltmp214
	.uleb128 Ltmp215-Lfunc_begin4           ;     jumps to Ltmp215
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp214             ;   Call between Ltmp214 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_ ; -- Begin function _ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.globl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.p2align	2
__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_: ; @_ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #128
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x4
	mov	x23, x3
	mov	x24, x2
	mov	x25, x1
	mov	x20, x0
Lloh56:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh57:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh58:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	mov	w0, #8
	bl	__Znwm
	mov	x22, x0
Ltmp216:
	bl	__ZNSt3__115__thread_structC1Ev
Ltmp217:
; %bb.1:
Ltmp219:
	mov	w0, #72
	bl	__Znwm
Ltmp220:
; %bb.2:
	mov	x19, x0
	ldr	x0, [x25, #24]
	cbz	x0, LBB16_5
; %bb.3:
	cmp	x0, x25
	b.eq	LBB16_6
; %bb.4:
	str	x0, [sp, #24]
	str	xzr, [x25, #24]
	b	LBB16_7
LBB16_5:
	str	xzr, [sp, #24]
	b	LBB16_7
LBB16_6:
	mov	x26, sp
	ldr	x8, [x0]
	ldr	x8, [x8, #16]
	mov	x1, sp
	blr	x8
	str	x26, [sp, #24]
	mov	x0, sp
LBB16_7:
	ldr	x8, [x25, #32]
	str	x8, [sp, #32]
	str	xzr, [x25, #32]
	ldr	x24, [x24]
	ldr	x23, [x23]
	ldr	w25, [x21]
	mov	x21, x19
	str	x22, [x21], #8
	cbz	x0, LBB16_10
; %bb.8:
	mov	x9, sp
	cmp	x0, x9
	b.eq	LBB16_11
; %bb.9:
	str	x0, [x19, #32]
	str	xzr, [sp, #24]
	b	LBB16_12
LBB16_10:
	str	xzr, [x19, #32]
	b	LBB16_12
LBB16_11:
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	mov	x0, sp
	mov	x1, x21
	blr	x8
	str	x21, [x19, #32]
	ldr	x8, [sp, #32]
LBB16_12:
	mov	x22, x19
	stp	x8, x24, [x22, #40]!
	mov	x26, sp
	str	xzr, [sp, #32]
	add	x0, x26, #32
	str	x23, [x22, #16]
	str	w25, [x22, #24]
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp, #24]
	cmp	x0, x26
	b.eq	LBB16_15
; %bb.13:
	cbz	x0, LBB16_16
; %bb.14:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp222:
	blr	x8
Ltmp223:
	b	LBB16_16
LBB16_15:
	ldr	x8, [sp]
	ldr	x8, [x8, #24]
Ltmp224:
	mov	x0, sp
	blr	x8
Ltmp225:
LBB16_16:
Ltmp227:
Lloh59:
	adrp	x2, __ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_@PAGE
Lloh60:
	add	x2, x2, __ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_@PAGEOFF
	mov	x0, x20
	mov	x1, #0
	mov	x3, x19
	bl	_pthread_create
Ltmp228:
; %bb.17:
	cbnz	w0, LBB16_20
; %bb.18:
	ldr	x8, [sp, #40]
Lloh61:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh62:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh63:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB16_22
; %bb.19:
	mov	x0, x20
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB16_20:
Ltmp229:
Lloh64:
	adrp	x1, l_.str.7@PAGE
Lloh65:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__120__throw_system_errorEiPKc
Ltmp230:
; %bb.21:
	brk	#0x1
LBB16_22:
	bl	___stack_chk_fail
LBB16_23:
Ltmp226:
	bl	___clang_call_terminate
LBB16_24:
Ltmp221:
	mov	x20, x0
	mov	x0, x22
	bl	__ZNSt3__115__thread_structD1Ev
	b	LBB16_26
LBB16_25:
Ltmp218:
	mov	x20, x0
	mov	x0, x22
LBB16_26:
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
LBB16_27:
Ltmp231:
	mov	x20, x0
	mov	x0, x22
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x19, #32]
	cmp	x0, x21
	b.ne	LBB16_29
; %bb.28:
	ldr	x8, [x21]
	ldr	x8, [x8, #24]
Ltmp234:
	mov	x0, x21
	blr	x8
Ltmp235:
	b	LBB16_31
LBB16_29:
	cbz	x0, LBB16_31
; %bb.30:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp232:
	blr	x8
Ltmp233:
LBB16_31:
	mov	x0, x19
	mov	x1, x19
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_.cold.1
	mov	x0, x20
	bl	__Unwind_Resume
LBB16_32:
Ltmp236:
	bl	___clang_call_terminate
	.loh AdrpLdrGotLdr	Lloh56, Lloh57, Lloh58
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdrGotLdr	Lloh61, Lloh62, Lloh63
	.loh AdrpAdd	Lloh64, Lloh65
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp216-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp216
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp216-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp217-Ltmp216                ;   Call between Ltmp216 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin5           ;     jumps to Ltmp218
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin5           ;     jumps to Ltmp221
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp220-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp222-Ltmp220                ;   Call between Ltmp220 and Ltmp222
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp225-Ltmp222                ;   Call between Ltmp222 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin5           ;     jumps to Ltmp226
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp227-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp230-Ltmp227                ;   Call between Ltmp227 and Ltmp230
	.uleb128 Ltmp231-Lfunc_begin5           ;     jumps to Ltmp231
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp230-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp234-Ltmp230                ;   Call between Ltmp230 and Ltmp234
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp234-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp233-Ltmp234                ;   Call between Ltmp234 and Ltmp233
	.uleb128 Ltmp236-Lfunc_begin5           ;     jumps to Ltmp236
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp233-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Lfunc_end5-Ltmp233             ;   Call between Ltmp233 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_
__ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_: ; @_ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
Ltmp237:
	bl	__ZNSt3__119__thread_local_dataEv
Ltmp238:
; %bb.1:
	ldr	x1, [x19]
	str	xzr, [x19]
	ldr	x0, [x0]
Ltmp240:
	bl	_pthread_setspecific
Ltmp241:
; %bb.2:
	add	x20, x19, #8
	add	x1, x19, #48
	add	x2, x19, #56
	ldr	w3, [x19, #64]
Ltmp242:
	mov	x0, x20
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
Ltmp243:
; %bb.3:
	add	x0, x19, #40
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x19, #32]
	cmp	x0, x20
	b.eq	LBB17_6
; %bb.4:
	cbz	x0, LBB17_7
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp250:
	blr	x8
Ltmp251:
	b	LBB17_7
LBB17_6:
	ldr	x8, [x20]
	ldr	x8, [x8, #24]
Ltmp252:
	mov	x0, x20
	blr	x8
Ltmp253:
LBB17_7:
	ldr	x0, [x19]
	str	xzr, [x19]
	cbz	x0, LBB17_9
; %bb.8:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB17_9:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB17_10:
Ltmp254:
	bl	___clang_call_terminate
LBB17_11:
Ltmp239:
	mov	x20, x0
	cbnz	x19, LBB17_13
	b	LBB17_18
LBB17_12:
Ltmp244:
	mov	x20, x0
LBB17_13:
	add	x21, x19, #8
	add	x0, x19, #40
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [x19, #32]
	cmp	x0, x21
	b.ne	LBB17_15
; %bb.14:
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp247:
	blr	x8
Ltmp248:
	b	LBB17_17
LBB17_15:
	cbz	x0, LBB17_17
; %bb.16:
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp245:
	blr	x8
Ltmp246:
LBB17_17:
	mov	x0, x19
	bl	__ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_.cold.1
LBB17_18:
	mov	x0, x20
	bl	__Unwind_Resume
LBB17_19:
Ltmp249:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp237-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp238-Ltmp237                ;   Call between Ltmp237 and Ltmp238
	.uleb128 Ltmp239-Lfunc_begin6           ;     jumps to Ltmp239
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp240-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp243-Ltmp240                ;   Call between Ltmp240 and Ltmp243
	.uleb128 Ltmp244-Lfunc_begin6           ;     jumps to Ltmp244
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp250-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp253-Ltmp250                ;   Call between Ltmp250 and Ltmp253
	.uleb128 Ltmp254-Lfunc_begin6           ;     jumps to Ltmp254
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp247-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp246-Ltmp247                ;   Call between Ltmp247 and Ltmp246
	.uleb128 Ltmp249-Lfunc_begin6           ;     jumps to Ltmp249
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp246-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Lfunc_end6-Ltmp246             ;   Call between Ltmp246 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	.weak_def_can_be_hidden	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	.p2align	2
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #96
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	ldr	x8, [x0, #32]
	cbz	x8, LBB18_11
; %bb.1:
	ldrb	w9, [x8, #136]
	tbnz	w9, #0, LBB18_9
; %bb.2:
	mov	x22, x3
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	str	xzr, [sp, #24]
	ldr	x23, [x8, #16]
	add	x0, sp, #24
	bl	__ZNSt13exception_ptrD1Ev
	cbnz	x23, LBB18_9
; %bb.3:
	ldr	x0, [x19, #24]
	str	w22, [sp, #20]
	ldr	x8, [x0]
	ldr	x8, [x8, #40]
Ltmp255:
	add	x3, sp, #20
	mov	x1, x21
	mov	x2, x20
	blr	x8
Ltmp256:
; %bb.4:
	ldr	x22, [x19, #32]
	cbz	x22, LBB18_12
; %bb.5:
	mov	x21, x0
	add	x20, x22, #24
Ltmp257:
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
Ltmp258:
; %bb.6:
	ldrb	w8, [x22, #136]
	tbnz	w8, #0, LBB18_10
; %bb.7:
	str	xzr, [sp, #24]
	ldr	x23, [x22, #16]
	add	x0, sp, #24
	bl	__ZNSt13exception_ptrD1Ev
	cbnz	x23, LBB18_10
; %bb.8:
	ldr	w8, [x22, #136]
	mov	w9, #5
	orr	w8, w8, w9
	stp	w8, w21, [x22, #136]
	add	x0, x22, #88
	bl	__ZNSt3__118condition_variable10notify_allEv
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB18_9:
	mov	w0, #2
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB18_10:
Ltmp259:
	mov	w0, #2
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp260:
	b	LBB18_19
LBB18_11:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB18_12:
Ltmp262:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp263:
	b	LBB18_19
LBB18_13:
Ltmp261:
	mov	x21, x0
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB18_15
LBB18_14:
Ltmp264:
	mov	x21, x0
LBB18_15:
	mov	x0, x21
	bl	___cxa_begin_catch
	add	x8, sp, #8
	bl	__ZSt17current_exceptionv
	ldr	x19, [x19, #32]
	cbz	x19, LBB18_18
; %bb.16:
	add	x0, sp, #24
	add	x1, sp, #8
	bl	__ZNSt13exception_ptrC1ERKS_
Ltmp265:
	add	x1, sp, #24
	mov	x0, x19
	bl	__ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr
Ltmp266:
; %bb.17:
	add	x0, sp, #24
	bl	__ZNSt13exception_ptrD1Ev
	add	x0, sp, #8
	bl	__ZNSt13exception_ptrD1Ev
	bl	___cxa_end_catch
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB18_18:
Ltmp268:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp269:
LBB18_19:
	brk	#0x1
LBB18_20:
Ltmp270:
	mov	x19, x0
	b	LBB18_22
LBB18_21:
Ltmp267:
	mov	x19, x0
	add	x0, sp, #24
	bl	__ZNSt13exception_ptrD1Ev
LBB18_22:
	add	x0, sp, #8
	bl	__ZNSt13exception_ptrD1Ev
Ltmp271:
	bl	___cxa_end_catch
Ltmp272:
; %bb.23:
	mov	x0, x19
	bl	__Unwind_Resume
LBB18_24:
Ltmp273:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table18:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp255-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp258-Ltmp255                ;   Call between Ltmp255 and Ltmp258
	.uleb128 Ltmp264-Lfunc_begin7           ;     jumps to Ltmp264
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp258-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp259-Ltmp258                ;   Call between Ltmp258 and Ltmp259
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp259-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp260-Ltmp259                ;   Call between Ltmp259 and Ltmp260
	.uleb128 Ltmp261-Lfunc_begin7           ;     jumps to Ltmp261
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp260-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp262-Ltmp260                ;   Call between Ltmp260 and Ltmp262
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp262-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp263-Ltmp262                ;   Call between Ltmp262 and Ltmp263
	.uleb128 Ltmp264-Lfunc_begin7           ;     jumps to Ltmp264
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp263-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp265-Ltmp263                ;   Call between Ltmp263 and Ltmp265
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp265-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Ltmp266-Ltmp265                ;   Call between Ltmp265 and Ltmp266
	.uleb128 Ltmp267-Lfunc_begin7           ;     jumps to Ltmp267
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp266-Lfunc_begin7           ; >> Call Site 8 <<
	.uleb128 Ltmp268-Ltmp266                ;   Call between Ltmp266 and Ltmp268
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp268-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp269-Ltmp268                ;   Call between Ltmp268 and Ltmp269
	.uleb128 Ltmp270-Lfunc_begin7           ;     jumps to Ltmp270
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp271-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Ltmp272-Ltmp271                ;   Call between Ltmp271 and Ltmp272
	.uleb128 Ltmp273-Lfunc_begin7           ;     jumps to Ltmp273
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp272-Lfunc_begin7           ; >> Call Site 11 <<
	.uleb128 Lfunc_end7-Ltmp272             ;   Call between Ltmp272 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113__assoc_stateIiE4moveEv ; -- Begin function _ZNSt3__113__assoc_stateIiE4moveEv
	.globl	__ZNSt3__113__assoc_stateIiE4moveEv
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiE4moveEv
	.p2align	2
__ZNSt3__113__assoc_stateIiE4moveEv:    ; @_ZNSt3__113__assoc_stateIiE4moveEv
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	add	x0, x0, #24
	str	x0, [sp, #16]
	mov	w8, #1
	strb	w8, [sp, #24]
	bl	__ZNSt3__15mutex4lockEv
Ltmp274:
	add	x1, sp, #16
	mov	x0, x19
	bl	__ZNSt3__117__assoc_sub_state10__sub_waitERNS_11unique_lockINS_5mutexEEE
Ltmp275:
; %bb.1:
	mov	x20, x19
	ldr	x21, [x20, #16]!
	str	xzr, [sp, #8]
	add	x0, sp, #8
	bl	__ZNSt13exception_ptrD1Ev
	cbnz	x21, LBB19_5
; %bb.2:
	ldr	w19, [x19, #140]
	ldrb	w8, [sp, #24]
	cbz	w8, LBB19_4
; %bb.3:
	ldr	x0, [sp, #16]
	bl	__ZNSt3__15mutex6unlockEv
LBB19_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB19_5:
	mov	x0, sp
	mov	x1, x20
	bl	__ZNSt13exception_ptrC1ERKS_
Ltmp277:
	mov	x0, sp
	bl	__ZSt17rethrow_exceptionSt13exception_ptr
Ltmp278:
; %bb.6:
	brk	#0x1
LBB19_7:
Ltmp279:
	mov	x19, x0
	mov	x0, sp
	bl	__ZNSt13exception_ptrD1Ev
	b	LBB19_9
LBB19_8:
Ltmp276:
	mov	x19, x0
LBB19_9:
	ldrb	w8, [sp, #24]
	cbz	w8, LBB19_11
; %bb.10:
	ldr	x0, [sp, #16]
	bl	__ZNSt3__15mutex6unlockEv
LBB19_11:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table19:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp274-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp274
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp274-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp275-Ltmp274                ;   Call between Ltmp274 and Ltmp275
	.uleb128 Ltmp276-Lfunc_begin8           ;     jumps to Ltmp276
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp277-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp278-Ltmp277                ;   Call between Ltmp277 and Ltmp278
	.uleb128 Ltmp279-Lfunc_begin8           ;     jumps to Ltmp279
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Lfunc_end8-Ltmp278             ;   Call between Ltmp278 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_.cold.1
__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_.cold.1: ; @_ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_.cold.1
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x8, x0
	ldr	x0, [x0]
	str	xzr, [x8]
	cbz	x0, LBB20_2
; %bb.1:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB20_2:
	mov	x0, x19
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_.cold.1
__ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_.cold.1: ; @_ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_.cold.1
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x0, [x0]
	str	xzr, [x19]
	cbz	x0, LBB21_2
; %bb.1:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB21_2:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Calcolo"

l_.str.1:                               ; @.str.1
	.asciz	" us, "

l_.str.2:                               ; @.str.2
	.asciz	" ns, "

l_.str.3:                               ; @.str.3
	.asciz	" ms, "

l_.str.4:                               ; @.str.4
	.asciz	" s "

l_.str.5:                               ; @.str.5
	.asciz	"res: "

	.section	__DATA,__const
	.globl	__ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE ; @_ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.weak_def_can_be_hidden	__ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.p2align	3
__ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE:
	.quad	0
	.quad	__ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.quad	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi

	.private_extern	__ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE ; @_ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.section	__TEXT,__const
	.globl	__ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.weak_definition	__ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
__ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE:
	.asciz	"NSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE"

	.private_extern	__ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE ; @_ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.globl	__ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.weak_definition	__ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
__ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE:
	.asciz	"NSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE"

	.private_extern	__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE ; @_ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.section	__DATA,__const
	.globl	__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.weak_definition	__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.p2align	3
__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE-9223372036854775808

	.private_extern	__ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE ; @_ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.globl	__ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.weak_definition	__ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE
	.p2align	3
__ZTINSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE-9223372036854775808
	.quad	__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE

	.private_extern	__ZTVNSt3__113__assoc_stateIiEE ; @_ZTVNSt3__113__assoc_stateIiEE
	.globl	__ZTVNSt3__113__assoc_stateIiEE
	.weak_def_can_be_hidden	__ZTVNSt3__113__assoc_stateIiEE
	.p2align	3
__ZTVNSt3__113__assoc_stateIiEE:
	.quad	0
	.quad	__ZTINSt3__113__assoc_stateIiEE
	.quad	__ZNSt3__113__assoc_stateIiED1Ev
	.quad	__ZNSt3__113__assoc_stateIiED0Ev
	.quad	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.quad	__ZNSt3__117__assoc_sub_state9__executeEv

	.private_extern	__ZTSNSt3__113__assoc_stateIiEE ; @_ZTSNSt3__113__assoc_stateIiEE
	.section	__TEXT,__const
	.globl	__ZTSNSt3__113__assoc_stateIiEE
	.weak_definition	__ZTSNSt3__113__assoc_stateIiEE
__ZTSNSt3__113__assoc_stateIiEE:
	.asciz	"NSt3__113__assoc_stateIiEE"

	.private_extern	__ZTINSt3__113__assoc_stateIiEE ; @_ZTINSt3__113__assoc_stateIiEE
	.section	__DATA,__const
	.globl	__ZTINSt3__113__assoc_stateIiEE
	.weak_definition	__ZTINSt3__113__assoc_stateIiEE
	.p2align	3
__ZTINSt3__113__assoc_stateIiEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113__assoc_stateIiEE
	.quad	__ZTINSt3__117__assoc_sub_stateE

	.section	__TEXT,__cstring,cstring_literals
l_.str.7:                               ; @.str.7
	.asciz	"thread constructor failed"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ; @.memset_pattern
l_.memset_pattern:
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1

.subsections_via_symbols
