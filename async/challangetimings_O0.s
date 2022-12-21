	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 0
	.globl	__Z5accumNSt3__111__wrap_iterIPiEES2_i ; -- Begin function _Z5accumNSt3__111__wrap_iterIPiEES2_i
	.p2align	2
__Z5accumNSt3__111__wrap_iterIPiEES2_i: ; @_Z5accumNSt3__111__wrap_iterIPiEES2_i
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w2, [x29, #-20]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiEET0_T_S5_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiEET0_T_S5_S4_
__ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiEET0_T_S5_S4_: ; @_ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w2, [x29, #-20]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiNS_4plusIvEEEET0_T_S7_S6_T1_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #832
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x8, [sp, #312]                  ; 8-byte Folded Spill
	adrp	x8, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	str	x8, [sp, #320]                  ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	sub	x2, x29, #212
	mov	w8, #1
	stur	w8, [x29, #-212]
	sub	x0, x29, #208
	mov	x1, #51712
	movk	x1, #15258, lsl #16
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp0:
	sub	x0, x29, #64
	adrp	x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGE
	add	x1, x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGEOFF
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
Ltmp1:
	b	LBB2_1
LBB2_1:
Ltmp3:
	sub	x0, x29, #104
	adrp	x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGE
	add	x1, x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGEOFF
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
Ltmp4:
	b	LBB2_2
LBB2_2:
Ltmp6:
	sub	x0, x29, #144
	adrp	x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGE
	add	x1, x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGEOFF
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
Ltmp7:
	b	LBB2_3
LBB2_3:
Ltmp9:
	sub	x0, x29, #184
	adrp	x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGE
	add	x1, x1, __Z5accumNSt3__111__wrap_iterIPiEES2_i@PAGEOFF
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
Ltmp10:
	b	LBB2_4
LBB2_4:
Ltmp12:
	sub	x8, x29, #240
	sub	x0, x29, #64
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
Ltmp13:
	b	LBB2_5
LBB2_5:
Ltmp15:
	sub	x8, x29, #248
	sub	x0, x29, #104
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
Ltmp16:
	b	LBB2_6
LBB2_6:
Ltmp18:
	sub	x8, x29, #256
	sub	x0, x29, #144
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
Ltmp19:
	b	LBB2_7
LBB2_7:
Ltmp21:
	add	x8, sp, #584
	sub	x0, x29, #184
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
Ltmp22:
	b	LBB2_8
LBB2_8:
Ltmp24:
	ldr	x0, [sp, #312]                  ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp25:
	b	LBB2_9
LBB2_9:
Ltmp26:
	ldr	x1, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #304]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp27:
	b	LBB2_10
LBB2_10:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #576]
	sub	x0, x29, #64
	bl	__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
	sub	x0, x29, #208
	str	x0, [sp, #280]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	add	x9, sp, #560
	str	x9, [sp, #296]                  ; 8-byte Folded Spill
	str	x8, [sp, #560]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #544
	str	x8, [sp, #544]
	mov	x1, #50048
	movk	x1, #457, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	ldr	x1, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #296]                  ; 8-byte Folded Reload
	add	x3, sp, #552
	str	x0, [sp, #552]
	add	x4, sp, #540
	str	wzr, [sp, #540]
Ltmp28:
	add	x0, sp, #568
	bl	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp29:
	b	LBB2_11
LBB2_11:
	sub	x0, x29, #104
	bl	__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
	sub	x0, x29, #208
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #512
	str	x8, [sp, #512]
	mov	x1, #50048
	movk	x1, #457, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	mov	x8, x0
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	add	x9, sp, #520
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #520]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #496
	str	x8, [sp, #496]
	mov	x1, #34560
	movk	x1, #915, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	ldr	x1, [sp, #264]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #272]                  ; 8-byte Folded Reload
	add	x3, sp, #504
	str	x0, [sp, #504]
	add	x4, sp, #492
	str	wzr, [sp, #492]
Ltmp31:
	add	x0, sp, #528
	bl	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp32:
	b	LBB2_12
LBB2_12:
	sub	x0, x29, #144
	bl	__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
	sub	x0, x29, #208
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #464
	str	x8, [sp, #464]
	mov	x1, #34560
	movk	x1, #915, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	mov	x8, x0
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, sp, #472
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #472]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #448
	str	x8, [sp, #448]
	mov	x1, #19072
	movk	x1, #1373, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	ldr	x1, [sp, #240]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #248]                  ; 8-byte Folded Reload
	add	x3, sp, #456
	str	x0, [sp, #456]
	add	x4, sp, #444
	str	wzr, [sp, #444]
Ltmp34:
	add	x0, sp, #480
	bl	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp35:
	b	LBB2_13
LBB2_13:
	sub	x0, x29, #184
	bl	__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
	sub	x0, x29, #208
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	mov	x8, x0
	add	x0, sp, #416
	str	x8, [sp, #416]
	mov	x1, #19072
	movk	x1, #1373, lsl #16
	bl	__ZNKSt3__111__wrap_iterIPiEplEl
	mov	x8, x0
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	add	x9, sp, #424
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	str	x8, [sp, #424]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
	ldr	x1, [sp, #216]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #224]                  ; 8-byte Folded Reload
	add	x3, sp, #408
	str	x0, [sp, #408]
	add	x4, sp, #404
	str	wzr, [sp, #404]
Ltmp37:
	add	x0, sp, #432
	bl	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Ltmp38:
	b	LBB2_14
LBB2_14:
Ltmp40:
	add	x0, sp, #568
	bl	__ZNSt3__16thread4joinEv
Ltmp41:
	b	LBB2_15
LBB2_15:
Ltmp42:
	add	x0, sp, #528
	bl	__ZNSt3__16thread4joinEv
Ltmp43:
	b	LBB2_16
LBB2_16:
Ltmp44:
	add	x0, sp, #480
	bl	__ZNSt3__16thread4joinEv
Ltmp45:
	b	LBB2_17
LBB2_17:
Ltmp46:
	add	x0, sp, #432
	bl	__ZNSt3__16thread4joinEv
Ltmp47:
	b	LBB2_18
LBB2_18:
Ltmp48:
	sub	x0, x29, #240
	bl	__ZNSt3__16futureIiE3getEv
	str	w0, [sp, #204]                  ; 4-byte Folded Spill
Ltmp49:
	b	LBB2_19
LBB2_19:
Ltmp50:
	sub	x0, x29, #248
	bl	__ZNSt3__16futureIiE3getEv
	str	w0, [sp, #200]                  ; 4-byte Folded Spill
Ltmp51:
	b	LBB2_20
LBB2_20:
	ldr	w8, [sp, #204]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #200]                  ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #192]                  ; 4-byte Folded Spill
Ltmp52:
	sub	x0, x29, #256
	bl	__ZNSt3__16futureIiE3getEv
	str	w0, [sp, #196]                  ; 4-byte Folded Spill
Ltmp53:
	b	LBB2_21
LBB2_21:
	ldr	w8, [sp, #192]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #196]                  ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #184]                  ; 4-byte Folded Spill
Ltmp54:
	add	x0, sp, #584
	bl	__ZNSt3__16futureIiE3getEv
	str	w0, [sp, #188]                  ; 4-byte Folded Spill
Ltmp55:
	b	LBB2_22
LBB2_22:
	ldr	w8, [sp, #184]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #188]                  ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #400]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	add	x0, sp, #392
	str	x8, [sp, #392]
Ltmp56:
	add	x1, sp, #576
	bl	__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp57:
	b	LBB2_23
LBB2_23:
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x0, sp, #376
	str	x8, [sp, #376]
Ltmp58:
	bl	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp59:
	b	LBB2_24
LBB2_24:
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	add	x0, sp, #384
	str	x8, [sp, #384]
Ltmp60:
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp61:
	b	LBB2_25
LBB2_25:
Ltmp62:
	ldr	x1, [sp, #160]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #312]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp63:
	b	LBB2_26
LBB2_26:
Ltmp64:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp65:
	b	LBB2_27
LBB2_27:
Ltmp66:
	add	x0, sp, #392
	add	x1, sp, #576
	bl	__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp67:
	b	LBB2_28
LBB2_28:
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	add	x0, sp, #360
	str	x8, [sp, #360]
Ltmp68:
	bl	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp69:
	b	LBB2_29
LBB2_29:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x0, sp, #368
	str	x8, [sp, #368]
Ltmp70:
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp71:
	b	LBB2_30
LBB2_30:
Ltmp72:
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp73:
	b	LBB2_31
LBB2_31:
Ltmp74:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp75:
	b	LBB2_32
LBB2_32:
Ltmp76:
	add	x0, sp, #392
	add	x1, sp, #576
	bl	__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp77:
	b	LBB2_33
LBB2_33:
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x0, sp, #344
	str	x8, [sp, #344]
Ltmp78:
	bl	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp79:
	b	LBB2_34
LBB2_34:
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x0, sp, #352
	str	x8, [sp, #352]
Ltmp80:
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp81:
	b	LBB2_35
LBB2_35:
Ltmp82:
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp83:
	b	LBB2_36
LBB2_36:
Ltmp84:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp85:
	b	LBB2_37
LBB2_37:
Ltmp86:
	add	x0, sp, #392
	add	x1, sp, #576
	bl	__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp87:
	b	LBB2_38
LBB2_38:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x0, sp, #328
	str	x8, [sp, #328]
Ltmp88:
	bl	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp89:
	b	LBB2_39
LBB2_39:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, sp, #336
	str	x8, [sp, #336]
Ltmp90:
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEE5countEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp91:
	b	LBB2_40
LBB2_40:
Ltmp92:
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp93:
	b	LBB2_41
LBB2_41:
Ltmp94:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp95:
	b	LBB2_42
LBB2_42:
Ltmp96:
	ldr	x1, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp97:
	b	LBB2_43
LBB2_43:
Ltmp98:
	ldr	x0, [sp, #312]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp99:
	b	LBB2_44
LBB2_44:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #400]
Ltmp100:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp101:
	b	LBB2_45
LBB2_45:
Ltmp102:
	ldr	x1, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp103:
	b	LBB2_46
LBB2_46:
	add	x0, sp, #432
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #480
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #528
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #568
	bl	__ZNSt3__16threadD1Ev
	add	x0, sp, #584
	bl	__ZNSt3__16futureIiED1Ev
	sub	x0, x29, #256
	bl	__ZNSt3__16futureIiED1Ev
	sub	x0, x29, #248
	bl	__ZNSt3__16futureIiED1Ev
	sub	x0, x29, #240
	bl	__ZNSt3__16futureIiED1Ev
	sub	x0, x29, #184
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	sub	x0, x29, #144
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	sub	x0, x29, #104
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	sub	x0, x29, #64
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	sub	x0, x29, #208
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_48
	b	LBB2_47
LBB2_47:
	bl	___stack_chk_fail
LBB2_48:
	mov	w0, #0
	add	sp, sp, #832
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB2_49:
Ltmp2:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_73
LBB2_50:
Ltmp5:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_72
LBB2_51:
Ltmp8:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_71
LBB2_52:
Ltmp11:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_70
LBB2_53:
Ltmp14:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_69
LBB2_54:
Ltmp17:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_68
LBB2_55:
Ltmp20:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_67
LBB2_56:
Ltmp23:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_66
LBB2_57:
Ltmp30:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_65
LBB2_58:
Ltmp33:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_64
LBB2_59:
Ltmp36:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_63
LBB2_60:
Ltmp39:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	b	LBB2_62
LBB2_61:
Ltmp104:
	mov	x8, x1
	stur	x0, [x29, #-224]
	stur	w8, [x29, #-228]
	add	x0, sp, #432
	bl	__ZNSt3__16threadD1Ev
	b	LBB2_62
LBB2_62:
	add	x0, sp, #480
	bl	__ZNSt3__16threadD1Ev
	b	LBB2_63
LBB2_63:
	add	x0, sp, #528
	bl	__ZNSt3__16threadD1Ev
	b	LBB2_64
LBB2_64:
	add	x0, sp, #568
	bl	__ZNSt3__16threadD1Ev
	b	LBB2_65
LBB2_65:
	add	x0, sp, #584
	bl	__ZNSt3__16futureIiED1Ev
	b	LBB2_66
LBB2_66:
	sub	x0, x29, #256
	bl	__ZNSt3__16futureIiED1Ev
	b	LBB2_67
LBB2_67:
	sub	x0, x29, #248
	bl	__ZNSt3__16futureIiED1Ev
	b	LBB2_68
LBB2_68:
	sub	x0, x29, #240
	bl	__ZNSt3__16futureIiED1Ev
	b	LBB2_69
LBB2_69:
	sub	x0, x29, #184
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	b	LBB2_70
LBB2_70:
	sub	x0, x29, #144
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	b	LBB2_71
LBB2_71:
	sub	x0, x29, #104
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	b	LBB2_72
LBB2_72:
	sub	x0, x29, #64
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	b	LBB2_73
LBB2_73:
	sub	x0, x29, #208
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	b	LBB2_74
LBB2_74:
	ldur	x0, [x29, #-224]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
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
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp29-Ltmp24                  ;   Call between Ltmp24 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin0            ;     jumps to Ltmp30
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp32-Ltmp31                  ;   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin0            ;     jumps to Ltmp33
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin0            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp103-Ltmp40                 ;   Call between Ltmp40 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin0           ;     jumps to Ltmp104
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin0           ; >> Call Site 15 <<
	.uleb128 Lfunc_end0-Ltmp103             ;   Call between Ltmp103 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEE10get_futureEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, x8
	str	x9, [sp, #8]
	str	x0, [sp]
	ldr	x9, [sp]
	add	x0, x9, #32
	bl	__ZNSt3__17promiseIiE10get_futureEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthEPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sxtb	w1, w8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_: ; @_ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__111__wrap_iterIPiEplEl
__ZNKSt3__111__wrap_iterIPiEplEl:       ; @_ZNKSt3__111__wrap_iterIPiEplEl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	sub	x0, x29, #8
	stur	x8, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__111__wrap_iterIPiEpLEl
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_ ; -- Begin function _ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.globl	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.p2align	2
__ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_: ; @_ZNSt3__16threadC1INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	bl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16futureIiE3getEv      ; -- Begin function _ZNSt3__16futureIiE3getEv
	.weak_definition	__ZNSt3__16futureIiE3getEv
	.p2align	2
__ZNSt3__16futureIiE3getEv:             ; @_ZNSt3__16futureIiE3getEv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [x8]
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC1ILb1EvEEPS1_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8]
	str	x9, [sp, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x0, [sp, #24]
Ltmp106:
	bl	__ZNSt3__113__assoc_stateIiE4moveEv
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
Ltmp107:
	b	LBB14_1
LBB14_1:
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED1Ev
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB14_2:
Ltmp108:
	mov	x8, x1
	str	x0, [sp, #16]
	str	w8, [sp, #12]
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED1Ev
	b	LBB14_3
LBB14_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp106-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin1           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Lfunc_end1-Ltmp107             ;   Call between Ltmp107 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ; @_ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEE5countEv: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEE5countEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16futureIiED1Ev        ; -- Begin function _ZNSt3__16futureIiED1Ev
	.weak_def_can_be_hidden	__ZNSt3__16futureIiED1Ev
	.p2align	2
__ZNSt3__16futureIiED1Ev:               ; @_ZNSt3__16futureIiED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16futureIiED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.p2align	2
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiNS_4plusIvEEEET0_T_S7_S6_T1_
__ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiNS_4plusIvEEEET0_T_S7_S6_T1_: ; @_ZNSt3__1L6reduceINS_11__wrap_iterIPiEEiNS_4plusIvEEEET0_T_S7_S6_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #8]
	b	LBB27_1
LBB27_1:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #8
	add	x1, sp, #16
	bl	__ZNSt3__1neIPiEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB27_4
	b	LBB27_2
LBB27_2:                                ;   in Loop: Header=BB27_1 Depth=1
	sub	x0, x29, #8
	bl	__ZNKSt3__111__wrap_iterIPiEdeEv
	mov	x2, x0
	add	x0, sp, #15
	add	x1, sp, #8
	bl	__ZNKSt3__14plusIvEclIRiS3_EEDTplclsr3std3__1E7forwardIT_Efp_Eclsr3std3__1E7forwardIT0_Efp0_EEOS4_OS5_
	str	w0, [sp, #8]
	b	LBB27_3
LBB27_3:                                ;   in Loop: Header=BB27_1 Depth=1
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPiEppEv
	b	LBB27_1
LBB27_4:
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1neIPiEEbRKNS_11__wrap_iterIT_EES6_
__ZNSt3__1neIPiEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1neIPiEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqIPiEEbRKNS_11__wrap_iterIT_EES6_
	eor	w8, w0, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__14plusIvEclIRiS3_EEDTplclsr3std3__1E7forwardIT_Efp_Eclsr3std3__1E7forwardIT0_Efp0_EEOS4_OS5_
__ZNKSt3__14plusIvEclIRiS3_EEDTplclsr3std3__1E7forwardIT_Efp_Eclsr3std3__1E7forwardIT0_Efp0_EEOS4_OS5_: ; @_ZNKSt3__14plusIvEclIRiS3_EEDTplclsr3std3__1E7forwardIT_Efp_Eclsr3std3__1E7forwardIT0_Efp0_EEOS4_OS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRiEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	w8, [x0]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardIRiEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [x0]
	add	w0, w8, w9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__111__wrap_iterIPiEdeEv
__ZNKSt3__111__wrap_iterIPiEdeEv:       ; @_ZNKSt3__111__wrap_iterIPiEdeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111__wrap_iterIPiEppEv
__ZNSt3__111__wrap_iterIPiEppEv:        ; @_ZNSt3__111__wrap_iterIPiEppEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #4
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1eqIPiEEbRKNS_11__wrap_iterIT_EES6_
__ZNSt3__1eqIPiEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1eqIPiEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__111__wrap_iterIPiE4baseEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPiE4baseEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__111__wrap_iterIPiE4baseEv
__ZNKSt3__111__wrap_iterIPiE4baseEv:    ; @_ZNKSt3__111__wrap_iterIPiE4baseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRiEEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardIRiEEOT_RNS_16remove_referenceIS2_E4typeE: ; @_ZNSt3__1L7forwardIRiEEOT_RNS_16remove_referenceIS2_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111__wrap_iterIPiEpLEl
__ZNSt3__111__wrap_iterIPiEpLEl:        ; @_ZNSt3__111__wrap_iterIPiEpLEl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x9, [sp]
	ldr	x8, [x0]
	add	x8, x8, x9, lsl #2
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000000EEEEENS3_ILl1ELl1000EEELb1ELb0EEclERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	mov	x8, #1000
	sdiv	x8, x0, x8
	mov	x1, sp
	str	x8, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES5_NS3_ILl1ELl1EEELb1ELb1EEclERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	mov	x1, sp
	str	x0, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	mov	x8, #16960
	movk	x8, #15, lsl #16
	sdiv	x8, x0, x8
	mov	x1, sp
	str	x8, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	mov	x8, #51712
	movk	x8, #15258, lsl #16
	sdiv	x8, x0, x8
	mov	x1, sp
	str	x8, [sp]
	sub	x0, x29, #8
	mov	x2, #0
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.p2align	2
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #32
	bl	__ZNSt3__17promiseIiED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiED1Ev       ; -- Begin function _ZNSt3__17promiseIiED1Ev
	.weak_def_can_be_hidden	__ZNSt3__17promiseIiED1Ev
	.p2align	2
__ZNSt3__17promiseIiED1Ev:              ; @_ZNSt3__17promiseIiED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__17promiseIiED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiED2Ev       ; -- Begin function _ZNSt3__17promiseIiED2Ev
	.weak_def_can_be_hidden	__ZNSt3__17promiseIiED2Ev
	.p2align	2
__ZNSt3__17promiseIiED2Ev:              ; @_ZNSt3__17promiseIiED2Ev
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, LBB53_9
	b	LBB53_1
LBB53_1:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
Ltmp123:
	bl	__ZNKSt3__117__assoc_sub_state11__has_valueEv
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp124:
	b	LBB53_2
LBB53_2:
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB53_8
	b	LBB53_3
LBB53_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__114__shared_count9use_countEv
	subs	x8, x0, #1
	b.le	LBB53_8
	b	LBB53_4
LBB53_4:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	w0, #4
	bl	__ZNSt3__1L15make_error_codeENS_11future_errcE
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldr	x1, [sp, #56]
	ldr	x2, [sp, #64]
Ltmp125:
	sub	x0, x29, #56
	bl	__ZNSt3__112future_errorC1ENS_10error_codeE
Ltmp126:
	b	LBB53_5
LBB53_5:
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #56
	bl	__ZStL18make_exception_ptrINSt3__112future_errorEESt13exception_ptrT_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp128:
	bl	__ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr
Ltmp129:
	b	LBB53_6
LBB53_6:
	sub	x0, x29, #24
	bl	__ZNSt13exception_ptrD1Ev
	sub	x0, x29, #56
	bl	__ZNSt3__112future_errorD1Ev
	b	LBB53_8
LBB53_7:
Ltmp130:
	mov	x8, x1
	str	x0, [sp, #48]
	str	w8, [sp, #44]
	sub	x0, x29, #24
	bl	__ZNSt13exception_ptrD1Ev
	sub	x0, x29, #56
	bl	__ZNSt3__112future_errorD1Ev
	b	LBB53_11
LBB53_8:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__114__shared_count16__release_sharedEv
	b	LBB53_9
LBB53_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB53_10:
Ltmp127:
	bl	___clang_call_terminate
LBB53_11:
	ldr	x0, [sp, #48]
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table53:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp123-Lfunc_begin2           ; >> Call Site 1 <<
	.uleb128 Ltmp126-Ltmp123                ;   Call between Ltmp123 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin2           ;     jumps to Ltmp127
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp128-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin2           ;     jumps to Ltmp130
	.byte	1                               ;   On action: 1
Lcst_end2:
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
	.p2align	2                               ; -- Begin function _ZNKSt3__117__assoc_sub_state11__has_valueEv
__ZNKSt3__117__assoc_sub_state11__has_valueEv: ; @_ZNKSt3__117__assoc_sub_state11__has_valueEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	w8, [x8, #136]
	mov	w10, #1
	mov	w9, #0
	and	w9, w9, #0x1
	and	w9, w9, w10
	sturb	w9, [x29, #-25]
	mov	w0, #1
	str	w0, [sp, #32]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB54_2
	b	LBB54_1
LBB54_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #24
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt13exception_ptrC1EDn
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	bl	__ZStneRKSt13exception_ptrS1_
	str	w0, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB54_2
LBB54_2:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB54_4
	b	LBB54_3
LBB54_3:
	sub	x0, x29, #24
	bl	__ZNSt13exception_ptrD1Ev
	b	LBB54_4
LBB54_4:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__114__shared_count9use_countEv
__ZNKSt3__114__shared_count9use_countEv: ; @_ZNKSt3__114__shared_count9use_countEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
Ltmp131:
	add	x0, x8, #8
	bl	__ZNSt3__1L21__libcpp_relaxed_loadIlEET_PKS1_
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp132:
	b	LBB56_1
LBB56_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB56_2:
Ltmp133:
	bl	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table56:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp131-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp132-Ltmp131                ;   Call between Ltmp131 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin3           ;     jumps to Ltmp133
	.byte	1                               ;   On action: 1
Lcst_end3:
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
	.p2align	2                               ; -- Begin function _ZStL18make_exception_ptrINSt3__112future_errorEESt13exception_ptrT_
__ZStL18make_exception_ptrINSt3__112future_errorEESt13exception_ptrT_: ; @_ZStL18make_exception_ptrINSt3__112future_errorEESt13exception_ptrT_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	mov	x0, #32
	bl	___cxa_allocate_exception
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__112future_errorC1ERKS0_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Ltmp134:
	adrp	x1, __ZTINSt3__112future_errorE@GOTPAGE
	ldr	x1, [x1, __ZTINSt3__112future_errorE@GOTPAGEOFF]
	adrp	x2, __ZNSt3__112future_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt3__112future_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
Ltmp135:
	b	LBB57_5
LBB57_1:
Ltmp136:
	mov	x8, x1
	stur	x0, [x29, #-16]
	stur	w8, [x29, #-20]
	b	LBB57_2
LBB57_2:
	ldur	x0, [x29, #-16]
	bl	___cxa_begin_catch
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	bl	__ZSt17current_exceptionv
Ltmp137:
	bl	___cxa_end_catch
Ltmp138:
	b	LBB57_3
LBB57_3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB57_4:
Ltmp139:
	bl	___clang_call_terminate
LBB57_5:
	brk	#0x1
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table57:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp134-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp134
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin4           ;     jumps to Ltmp136
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp135-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp137-Ltmp135                ;   Call between Ltmp135 and Ltmp137
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin4           ;     jumps to Ltmp139
	.byte	1                               ;   On action: 1
Lcst_end4:
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
	.p2align	2                               ; -- Begin function _ZNSt3__1L15make_error_codeENS_11future_errcE
__ZNSt3__1L15make_error_codeENS_11future_errcE: ; @_ZNSt3__1L15make_error_codeENS_11future_errcE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	__ZNSt3__115future_categoryEv
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #16
	bl	__ZNSt3__110error_codeC1EiRKNS_14error_categoryE
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114__shared_count16__release_sharedEv
__ZNSt3__114__shared_count16__release_sharedEv: ; @_ZNSt3__114__shared_count16__release_sharedEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__1L34__libcpp_atomic_refcount_decrementIlEET_RS1_
	adds	x8, x0, #1
	b.ne	LBB59_2
	b	LBB59_1
LBB59_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #16]
	blr	x8
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB59_3
LBB59_2:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB59_3
LBB59_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZStneRKSt13exception_ptrS1_
__ZStneRKSt13exception_ptrS1_:          ; @_ZStneRKSt13exception_ptrS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZSteqRKSt13exception_ptrS1_
	eor	w8, w0, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt13exception_ptrC1EDn
__ZNSt13exception_ptrC1EDn:             ; @_ZNSt13exception_ptrC1EDn
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt13exception_ptrC2EDn
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZSteqRKSt13exception_ptrS1_
__ZSteqRKSt13exception_ptrS1_:          ; @_ZSteqRKSt13exception_ptrS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt13exception_ptrC2EDn
__ZNSt13exception_ptrC2EDn:             ; @_ZNSt13exception_ptrC2EDn
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L21__libcpp_relaxed_loadIlEET_PKS1_
__ZNSt3__1L21__libcpp_relaxed_loadIlEET_PKS1_: ; @_ZNSt3__1L21__libcpp_relaxed_loadIlEET_PKS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112future_errorC1ERKS0_ ; -- Begin function _ZNSt3__112future_errorC1ERKS0_
	.weak_def_can_be_hidden	__ZNSt3__112future_errorC1ERKS0_
	.p2align	2
__ZNSt3__112future_errorC1ERKS0_:       ; @_ZNSt3__112future_errorC1ERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112future_errorC2ERKS0_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112future_errorC2ERKS0_ ; -- Begin function _ZNSt3__112future_errorC2ERKS0_
	.weak_def_can_be_hidden	__ZNSt3__112future_errorC2ERKS0_
	.p2align	2
__ZNSt3__112future_errorC2ERKS0_:       ; @_ZNSt3__112future_errorC2ERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__112future_errorE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__112future_errorE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2ERKS_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [x0, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110error_codeC1EiRKNS_14error_categoryE
__ZNSt3__110error_codeC1EiRKNS_14error_categoryE: ; @_ZNSt3__110error_codeC1EiRKNS_14error_categoryE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__110error_codeC2EiRKNS_14error_categoryE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110error_codeC2EiRKNS_14error_categoryE
__ZNSt3__110error_codeC2EiRKNS_14error_categoryE: ; @_ZNSt3__110error_codeC2EiRKNS_14error_categoryE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	w8, [sp, #20]
	str	w8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L34__libcpp_atomic_refcount_decrementIlEET_RS1_
__ZNSt3__1L34__libcpp_atomic_refcount_decrementIlEET_RS1_: ; @_ZNSt3__1L34__libcpp_atomic_refcount_decrementIlEET_RS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	mov	x9, #-1
	str	x9, [sp, #16]
	ldr	x9, [sp, #16]
	ldaddal	x9, x8, [x8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	ldr	x8, [x0, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
Ltmp145:
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp146:
	b	LBB70_1
LBB70_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	b.ne	LBB70_4
	b	LBB70_2
LBB70_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [x0]
	ldr	x8, [x8, #24]
Ltmp149:
	blr	x8
Ltmp150:
	b	LBB70_3
LBB70_3:
	b	LBB70_8
LBB70_4:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #24]
	cbz	x8, LBB70_7
	b	LBB70_5
LBB70_5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [x0]
	ldr	x8, [x8, #32]
Ltmp147:
	blr	x8
Ltmp148:
	b	LBB70_6
LBB70_6:
	b	LBB70_7
LBB70_7:
	b	LBB70_8
LBB70_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB70_9:
Ltmp151:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table70:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp145-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp148-Ltmp145                ;   Call between Ltmp145 and Ltmp148
	.uleb128 Ltmp151-Lfunc_begin5           ;     jumps to Ltmp151
	.byte	1                               ;   On action: 1
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
	.p2align	2                               ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB72_5
	b	LBB72_1
LBB72_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp153:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
Ltmp154:
	b	LBB72_2
LBB72_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
Ltmp155:
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
Ltmp156:
	b	LBB72_3
LBB72_3:
	b	LBB72_5
LBB72_4:
Ltmp157:
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #24]
	str	w8, [sp, #20]
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	b	LBB72_6
LBB72_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB72_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table72:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp153-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp156-Ltmp153                ;   Call between Ltmp153 and Ltmp156
	.uleb128 Ltmp157-Lfunc_begin6           ;     jumps to Ltmp157
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Lfunc_end6-Ltmp156             ;   Call between Ltmp156 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp158:
	bl	__ZNSt3__120__vector_base_commonILb1EEC2Ev
Ltmp159:
	b	LBB73_1
LBB73_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	add	x0, x8, #16
	add	x1, sp, #16
	str	xzr, [sp, #16]
Ltmp160:
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
Ltmp161:
	b	LBB73_2
LBB73_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB73_3:
Ltmp162:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table73:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp158-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp161-Ltmp158                ;   Call between Ltmp158 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin7           ;     jumps to Ltmp162
	.byte	1                               ;   On action: 1
Lcst_end7:
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
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.weak_definition	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB74_2
	b	LBB74_1
LBB74_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE20__throw_length_errorEv
LBB74_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x8
	str	x9, [x0, #8]
	str	x8, [x0]
	ldr	x8, [x0]
	ldur	x9, [x29, #-16]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x1, #0
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newEm
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	ldr	x8, [sp, #64]
	str	x8, [sp, #40]
	ldr	x8, [sp, #56]
	str	x8, [sp, #32]
	b	LBB75_1
LBB75_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	b.eq	LBB75_6
	b	LBB75_2
LBB75_2:                                ;   in Loop: Header=BB75_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	__ZNSt3__1L12__to_addressIiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
Ltmp163:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvvEEvRS2_PT_DpOT0_
Ltmp164:
	b	LBB75_3
LBB75_3:                                ;   in Loop: Header=BB75_1 Depth=1
	b	LBB75_4
LBB75_4:                                ;   in Loop: Header=BB75_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #4
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #56]
	b	LBB75_1
LBB75_5:
Ltmp165:
	mov	x8, x1
	str	x0, [sp, #24]
	str	w8, [sp, #20]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	b	LBB75_7
LBB75_6:
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB75_7:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table75:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp163-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp163
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin8           ;     jumps to Ltmp165
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp164             ;   Call between Ltmp164 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.p2align	2
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, LBB76_2
	b	LBB76_1
LBB76_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
	b	LBB76_2
LBB76_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__vector_base_commonILb1EEC2Ev
__ZNSt3__120__vector_base_commonILb1EEC2Ev: ; @_ZNSt3__120__vector_base_commonILb1EEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE: ; @_ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE: ; @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIiEC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIiEC2Ev
__ZNSt3__19allocatorIiEC2Ev:            ; @_ZNSt3__19allocatorIiEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeIS2_vvEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp170:
	bl	__ZNSt3__1L3minImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp171:
	b	LBB86_1
LBB86_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB86_2:
Ltmp172:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table86:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp170-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp171-Ltmp170                ;   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp172-Lfunc_begin9           ;     jumps to Ltmp172
	.byte	1                               ;   On action: 1
Lcst_end9:
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
	.p2align	2                               ; -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE20__throw_length_errorEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE20__throw_length_errorEv: ; @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE20__throw_length_errorEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIiE8allocateEm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newEm
__ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newEm: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x1, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	add	x2, x12, x13, lsl #2
	add	x3, x10, x11, lsl #2
	add	x4, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerEPKvS5_S5_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3minImEERKT_S3_S3_
__ZNSt3__1L3minImEERKT_S3_S3_:          ; @_ZNSt3__1L3minImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeIS2_vvEEmRKS2_
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeIS2_vvEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeIS2_vvEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxEv
	mov	x8, #4
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv: ; @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxEv
__ZNSt3__114numeric_limitsIlE3maxEv:    ; @_ZNSt3__114numeric_limitsIlE3maxEv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclERKmS3_
	tbz	w0, #0, LBB96_2
	b	LBB96_1
LBB96_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB96_3
LBB96_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB96_3
LBB96_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16__lessImmEclERKmS3_
__ZNKSt3__16__lessImmEclERKmS3_:        ; @_ZNKSt3__16__lessImmEclERKmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114numeric_limitsImE3maxEv
__ZNSt3__114numeric_limitsImE3maxEv:    ; @_ZNSt3__114numeric_limitsImE3maxEv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv
	.cfi_startproc
; %bb.0:
	mov	x0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv: ; @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIiE8allocateEm
__ZNSt3__19allocatorIiE8allocateEm:     ; @_ZNSt3__19allocatorIiE8allocateEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeIS2_vvEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB103_2
	b	LBB103_1
LBB103_1:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	__ZNSt3__1L20__throw_length_errorEPKc
LBB103_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #2
	mov	x1, #4
	bl	__ZNSt3__1L17__libcpp_allocateEmm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L20__throw_length_errorEPKc
__ZNSt3__1L20__throw_length_errorEPKc:  ; @_ZNSt3__1L20__throw_length_errorEPKc
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp175:
	bl	__ZNSt12length_errorC1EPKc
Ltmp176:
	b	LBB104_1
LBB104_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB104_2:
Ltmp177:
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #16]
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB104_3
LBB104_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table104:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp175-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp175
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp176-Ltmp175                ;   Call between Ltmp175 and Ltmp176
	.uleb128 Ltmp177-Lfunc_begin10          ;     jumps to Ltmp177
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp176-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp176            ;   Call between Ltmp176 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L17__libcpp_allocateEmm
__ZNSt3__1L17__libcpp_allocateEmm:      ; @_ZNSt3__1L17__libcpp_allocateEmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L24__is_overaligned_for_newEm
	tbz	w0, #0, LBB105_2
	b	LBB105_1
LBB105_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	__ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB105_3
LBB105_2:
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB105_3
LBB105_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt12length_errorC1EPKc
__ZNSt12length_errorC1EPKc:             ; @_ZNSt12length_errorC1EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt12length_errorC2EPKc
__ZNSt12length_errorC2EPKc:             ; @_ZNSt12length_errorC2EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L24__is_overaligned_for_newEm
__ZNSt3__1L24__is_overaligned_for_newEm: ; @_ZNSt3__1L24__is_overaligned_for_newEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #16
	cset	w8, hi
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
__ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_: ; @_ZNSt3__1L21__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZnwmSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_: ; @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv: ; @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerEPKvS5_S5_S5_
__ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerEPKvS5_S5_S5_: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerEPKvS5_S5_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__1L12__to_addressIiEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__to_addressIiEEPT_S2_
__ZNSt3__1L12__to_addressIiEEPT_S2_:    ; @_ZNSt3__1L12__to_addressIiEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv: ; @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv: ; @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv: ; @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv: ; @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvvEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvvEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardIRKiEEOT_RNS_16remove_referenceIS3_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__1L12construct_atIiJRKiEPiEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12construct_atIiJRKiEPiEEPT_S5_DpOT0_
__ZNSt3__1L12construct_atIiJRKiEPiEEPT_S5_DpOT0_: ; @_ZNSt3__1L12construct_atIiJRKiEPiEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRKiEEOT_RNS_16remove_referenceIS3_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8]
	str	w8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRKiEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIRKiEEOT_RNS_16remove_referenceIS3_E4typeE: ; @_ZNSt3__1L7forwardIRKiEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.p2align	2
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0]
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIiE10deallocateEPim
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi: ; @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB132_1
LBB132_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB132_4
	b	LBB132_2
LBB132_2:                               ;   in Loop: Header=BB132_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__1L12__to_addressIiEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp187:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyIivvEEvRS2_PT_
Ltmp188:
	b	LBB132_3
LBB132_3:                               ;   in Loop: Header=BB132_1 Depth=1
	b	LBB132_1
LBB132_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB132_5:
Ltmp189:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table132:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp187-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp188-Ltmp187                ;   Call between Ltmp187 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin11          ;     jumps to Ltmp189
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyIivvEEvRS2_PT_
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyIivvEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyIivvEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__1L10destroy_atIiEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L10destroy_atIiEEvPT_
__ZNSt3__1L10destroy_atIiEEvPT_:        ; @_ZNSt3__1L10destroy_atIiEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIiE10deallocateEPim
__ZNSt3__19allocatorIiE10deallocateEPim: ; @_ZNSt3__19allocatorIiE10deallocateEPim
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #2
Ltmp191:
	mov	x2, #4
	bl	__ZNSt3__1L19__libcpp_deallocateEPvmm
Ltmp192:
	b	LBB135_1
LBB135_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB135_2:
Ltmp193:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table135:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp191-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp192-Ltmp191                ;   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin12          ;     jumps to Ltmp193
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L19__libcpp_deallocateEPvmm
__ZNSt3__1L19__libcpp_deallocateEPvmm:  ; @_ZNSt3__1L19__libcpp_deallocateEPvmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L24__is_overaligned_for_newEm
	tbz	w0, #0, LBB136_2
	b	LBB136_1
LBB136_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp]
	bl	__ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
	b	LBB136_3
LBB136_2:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
	b	LBB136_3
LBB136_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
__ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_: ; @_ZNSt3__1L27__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_: ; @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
__ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_: ; @_ZNSt3__1L24__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZdlPvSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_: ; @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteEv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x1, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataEv
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	add	x2, x12, x13, lsl #2
	add	x3, x10, x11, lsl #2
	add	x4, x8, x9, lsl #2
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerEPKvS5_S5_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEvEEOT_
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEvEEOT_: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEvEEOT_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
Ltmp195:
	add	x0, x8, #32
	bl	__ZNSt3__17promiseIiEC1Ev
Ltmp196:
	b	LBB144_1
LBB144_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB144_2:
Ltmp197:
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #24]
	str	w8, [sp, #20]
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	b	LBB144_3
LBB144_3:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table144:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp195-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp195
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp195-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp196-Ltmp195                ;   Call between Ltmp195 and Ltmp196
	.uleb128 Ltmp197-Lfunc_begin13          ;     jumps to Ltmp197
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp196            ;   Call between Ltmp196 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardIRFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE: ; @_ZNSt3__1L7forwardIRFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_ ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1IRFiS3_S3_iEEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiEC1Ev       ; -- Begin function _ZNSt3__17promiseIiEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__17promiseIiEC1Ev
	.p2align	2
__ZNSt3__17promiseIiEC1Ev:              ; @_ZNSt3__17promiseIiEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__17promiseIiEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_ ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2IRFiS3_S3_iEEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x0
	str	x8, [x0, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEC2Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
Ltmp199:
	add	x0, x8, #8
	sub	x2, x29, #17
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_NS_18__default_init_tagEEEOT_OT0_
Ltmp200:
	b	LBB150_1
LBB150_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB150_2:
Ltmp201:
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #32]
	str	w8, [sp, #28]
	bl	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	b	LBB150_3
LBB150_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table150:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp199-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp200-Ltmp199                ;   Call between Ltmp199 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin14          ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Lfunc_end14-Ltmp200            ;   Call between Ltmp200 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEC2Ev
__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEC2Ev: ; @_ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x8, __ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_
__ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_: ; @_ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_NS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev: ; @_ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED0Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE9__move_toEPNS_20__packaged_task_baseISA_EE
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-16]
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE5firstEv
	bl	__ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE6secondEv
	bl	__ZNSt3__1L4moveIRNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEONS_16remove_referenceIT_E4typeEOSA_
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp205:
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_RKS7_
Ltmp206:
	b	LBB157_1
LBB157_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB157_2:
Ltmp207:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table157:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp205-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp207-Lfunc_begin15          ;     jumps to Ltmp207
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE7destroyEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEE18destroy_deallocateEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE6secondEv
	mov	x1, x0
	sub	x0, x29, #9
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC1IS6_EERKNS0_IT_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__114pointer_traitsIPNS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEE10pointer_toERSC_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, #1
	bl	__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEE10deallocateEPSB_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEclES9_S9_Oi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	ldur	x8, [x29, #-8]
	add	x0, x8, #8
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE5firstEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1L8__invokeIRPFiNS_11__wrap_iterIPiEES3_iEJRKS3_S8_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev: ; @_ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	str	x8, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED0Ev
__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED0Ev: ; @_ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED0Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EEC2IS5_vEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE: ; @_ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EEC2IS5_vEEOT_
__ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EEC2IS5_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EEC2IS5_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIPFiNS_11__wrap_iterIPiEES3_iEEC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIPFiNS_11__wrap_iterIPiEES3_iEEC2Ev
__ZNSt3__19allocatorIPFiNS_11__wrap_iterIPiEES3_iEEC2Ev: ; @_ZNSt3__19allocatorIPFiNS_11__wrap_iterIPiEES3_iEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEC2Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev
	.p2align	2
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE5firstEv
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE5firstEv: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEONS_16remove_referenceIT_E4typeEOSA_
__ZNSt3__1L4moveIRNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEONS_16remove_referenceIT_E4typeEOSA_: ; @_ZNSt3__1L4moveIRNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEONS_16remove_referenceIT_E4typeEOSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE6secondEv
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE6secondEv: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_RKS7_
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_RKS7_: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC1EOS5_RKS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_RKS7_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_RKS7_
__ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_RKS7_: ; @_ZNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEC2EOS5_RKS7_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__120__packaged_task_funcIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEFiRKS3_S9_iEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEC2Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L4moveIRPFiNS_11__wrap_iterIPiEES3_iEEEONS_16remove_referenceIT_E4typeEOS8_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-24]
Ltmp216:
	add	x0, x8, #8
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_RKS7_EEOT_OT0_
Ltmp217:
	b	LBB176_1
LBB176_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB176_2:
Ltmp218:
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #32]
	str	w8, [sp, #28]
	bl	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED2Ev
	b	LBB176_3
LBB176_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table176:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp216-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp217-Ltmp216                ;   Call between Ltmp216 and Ltmp217
	.uleb128 Ltmp218-Lfunc_begin16          ;     jumps to Ltmp218
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp217-Lfunc_begin16          ; >> Call Site 2 <<
	.uleb128 Lfunc_end16-Ltmp217            ;   Call between Ltmp217 and Lfunc_end16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end16:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_RKS7_EEOT_OT0_
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_RKS7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC1IS5_RKS7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_RKS7_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_RKS7_EEOT_OT0_
__ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_RKS7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPFiNS_11__wrap_iterIPiEES3_iENS_9allocatorIS5_EEEC2IS5_RKS7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIPFiNS_11__wrap_iterIPiEES3_iEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPFiNS_11__wrap_iterIPiEES3_iELi0ELb0EEC2IS5_vEEOT_
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardIRKNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEOT_RNS_16remove_referenceISA_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2IRKS7_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRKNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEOT_RNS_16remove_referenceISA_E4typeE
__ZNSt3__1L7forwardIRKNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEOT_RNS_16remove_referenceISA_E4typeE: ; @_ZNSt3__1L7forwardIRKNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEOT_RNS_16remove_referenceISA_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2IRKS7_vEEOT_
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2IRKS7_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEELi1ELb1EEC2IRKS7_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRKNS_9allocatorIPFiNS_11__wrap_iterIPiEES4_iEEEEEOT_RNS_16remove_referenceISA_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC1IS6_EERKNS0_IT_EE
__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC1IS6_EERKNS0_IT_EE: ; @_ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC1IS6_EERKNS0_IT_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC2IS6_EERKNS0_IT_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEE10deallocateEPSB_m
__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEE10deallocateEPSB_m: ; @_ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEE10deallocateEPSB_m
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #4
Ltmp220:
	mov	x2, #8
	bl	__ZNSt3__1L19__libcpp_deallocateEPvmm
Ltmp221:
	b	LBB182_1
LBB182_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB182_2:
Ltmp222:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table182:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp220-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp221-Ltmp220                ;   Call between Ltmp220 and Ltmp221
	.uleb128 Ltmp222-Lfunc_begin17          ;     jumps to Ltmp222
	.byte	1                               ;   On action: 1
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__114pointer_traitsIPNS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEE10pointer_toERSC_
__ZNSt3__114pointer_traitsIPNS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEE10pointer_toERSC_: ; @_ZNSt3__114pointer_traitsIPNS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEE10pointer_toERSC_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L9addressofINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEEEPT_RSD_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC2IS6_EERKNS0_IT_EE
__ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC2IS6_EERKNS0_IT_EE: ; @_ZNSt3__19allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS0_IS6_EEFiRKS4_S9_iEEEEC2IS6_EERKNS0_IT_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES5_iENS1_IS7_EEFiRKS5_SA_iEEEEEEC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES5_iENS1_IS7_EEFiRKS5_SA_iEEEEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES5_iENS1_IS7_EEFiRKS5_SA_iEEEEEEC2Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES5_iENS1_IS7_EEFiRKS5_SA_iEEEEEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L9addressofINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEEEPT_RSD_
__ZNSt3__1L9addressofINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEEEPT_RSD_: ; @_ZNSt3__1L9addressofINS_20__packaged_task_funcIPFiNS_11__wrap_iterIPiEES4_iENS_9allocatorIS6_EEFiRKS4_SA_iEEEEEPT_RSD_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L8__invokeIRPFiNS_11__wrap_iterIPiEES3_iEJRKS3_S8_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
__ZNSt3__1L8__invokeIRPFiNS_11__wrap_iterIPiEES3_iEJRKS3_S8_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_: ; @_ZNSt3__1L8__invokeIRPFiNS_11__wrap_iterIPiEES3_iEJRKS3_S8_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	str	x9, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	str	x9, [sp]
	ldr	x9, [sp, #16]
	ldr	w2, [x9]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	blr	x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE: ; @_ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE: ; @_ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiEC2Ev       ; -- Begin function _ZNSt3__17promiseIiEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__17promiseIiEC2Ev
	.p2align	2
__ZNSt3__17promiseIiEC2Ev:              ; @_ZNSt3__17promiseIiEC2Ev
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, #144
	bl	__Znwm
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp227:
	bl	__ZNSt3__113__assoc_stateIiEC1Ev
Ltmp228:
	b	LBB190_1
LBB190_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB190_2:
Ltmp229:
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, x1
	stur	x9, [x29, #-16]
	stur	w8, [x29, #-20]
	bl	__ZdlPv
	b	LBB190_3
LBB190_3:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table190:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18    ; >> Call Site 1 <<
	.uleb128 Ltmp227-Lfunc_begin18          ;   Call between Lfunc_begin18 and Ltmp227
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp227-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp228-Ltmp227                ;   Call between Ltmp227 and Ltmp228
	.uleb128 Ltmp229-Lfunc_begin18          ;     jumps to Ltmp229
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Lfunc_end18-Ltmp228            ;   Call between Ltmp228 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113__assoc_stateIiEC1Ev ; -- Begin function _ZNSt3__113__assoc_stateIiEC1Ev
	.globl	__ZNSt3__113__assoc_stateIiEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiEC1Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiEC1Ev:       ; @_ZNSt3__113__assoc_stateIiEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__113__assoc_stateIiEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiEC2Ev ; -- Begin function _ZNSt3__113__assoc_stateIiEC2Ev
	.globl	__ZNSt3__113__assoc_stateIiEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiEC2Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiEC2Ev:       ; @_ZNSt3__113__assoc_stateIiEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__113__assoc_stateIiEE@PAGE
	add	x8, x8, __ZTVNSt3__113__assoc_stateIiEE@PAGEOFF
	add	x8, x8, #16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__assoc_sub_stateC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__assoc_sub_stateC2Ev
__ZNSt3__117__assoc_sub_stateC2Ev:      ; @_ZNSt3__117__assoc_sub_stateC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt3__114__shared_countC2El
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x9, [x8]
	add	x0, x8, #16
	bl	__ZNSt13exception_ptrC1Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, x8, #24
	bl	__ZNSt3__15mutexC1Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, x8, #88
	bl	__ZNSt3__118condition_variableC1Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	wzr, [x0, #136]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiED1Ev ; -- Begin function _ZNSt3__113__assoc_stateIiED1Ev
	.globl	__ZNSt3__113__assoc_stateIiED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiED1Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiED1Ev:       ; @_ZNSt3__113__assoc_stateIiED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__113__assoc_stateIiED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiED0Ev ; -- Begin function _ZNSt3__113__assoc_stateIiED0Ev
	.globl	__ZNSt3__113__assoc_stateIiED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiED0Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiED0Ev:       ; @_ZNSt3__113__assoc_stateIiED0Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__113__assoc_stateIiED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv ; -- Begin function _ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.globl	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.p2align	2
__ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv: ; @_ZNSt3__113__assoc_stateIiE16__on_zero_sharedEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x8, #136]
	tbz	w8, #0, LBB196_2
	b	LBB196_1
LBB196_1:
	b	LBB196_2
LBB196_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	cbz	x8, LBB196_4
	b	LBB196_3
LBB196_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	blr	x8
	b	LBB196_4
LBB196_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114__shared_countC2El
__ZNSt3__114__shared_countC2El:         ; @_ZNSt3__114__shared_countC2El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x8, __ZTVNSt3__114__shared_countE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__114__shared_countE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt13exception_ptrC1Ev
__ZNSt13exception_ptrC1Ev:              ; @_ZNSt13exception_ptrC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt13exception_ptrC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__15mutexC1Ev
__ZNSt3__15mutexC1Ev:                   ; @_ZNSt3__15mutexC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15mutexC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__118condition_variableC1Ev
__ZNSt3__118condition_variableC1Ev:     ; @_ZNSt3__118condition_variableC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__118condition_variableC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt13exception_ptrC2Ev
__ZNSt13exception_ptrC2Ev:              ; @_ZNSt13exception_ptrC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__15mutexC2Ev
__ZNSt3__15mutexC2Ev:                   ; @_ZNSt3__15mutexC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x9, #43943
	movk	x9, #12970, lsl #16
	str	x9, [x8]
	add	x0, x8, #8
	mov	w1, #0
	mov	x2, #56
	bl	_memset
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__118condition_variableC2Ev
__ZNSt3__118condition_variableC2Ev:     ; @_ZNSt3__118condition_variableC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x9, #45499
	movk	x9, #15536, lsl #16
	str	x9, [x8]
	add	x0, x8, #8
	mov	w1, #0
	mov	x2, #40
	bl	_memset
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiED2Ev ; -- Begin function _ZNSt3__113__assoc_stateIiED2Ev
	.globl	__ZNSt3__113__assoc_stateIiED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__assoc_stateIiED2Ev
	.p2align	2
__ZNSt3__113__assoc_stateIiED2Ev:       ; @_ZNSt3__113__assoc_stateIiED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__117__assoc_sub_stateD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__assoc_sub_stateD2Ev ; -- Begin function _ZNSt3__117__assoc_sub_stateD2Ev
	.weak_def_can_be_hidden	__ZNSt3__117__assoc_sub_stateD2Ev
	.p2align	2
__ZNSt3__117__assoc_sub_stateD2Ev:      ; @_ZNSt3__117__assoc_sub_stateD2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__117__assoc_sub_stateE@GOTPAGEOFF]
	add	x9, x8, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x9, [x8]
	add	x0, x8, #88
	bl	__ZNSt3__118condition_variableD1Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #24
	bl	__ZNSt3__15mutexD1Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	bl	__ZNSt13exception_ptrD1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__114__shared_countD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiE10get_futureEv ; -- Begin function _ZNSt3__17promiseIiE10get_futureEv
	.weak_definition	__ZNSt3__17promiseIiE10get_futureEv
	.p2align	2
__ZNSt3__17promiseIiE10get_futureEv:    ; @_ZNSt3__17promiseIiE10get_futureEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8]
	cbnz	x8, LBB206_2
	b	LBB206_1
LBB206_1:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB206_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8]
	bl	__ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L20__throw_future_errorENS_11future_errcE
__ZNSt3__1L20__throw_future_errorENS_11future_errcE: ; @_ZNSt3__1L20__throw_future_errorENS_11future_errcE
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	mov	x0, #32
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	__ZNSt3__1L15make_error_codeENS_11future_errcE
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #24]
	str	x1, [sp, #32]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #32]
Ltmp232:
	bl	__ZNSt3__112future_errorC1ENS_10error_codeE
Ltmp233:
	b	LBB207_1
LBB207_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTINSt3__112future_errorE@GOTPAGE
	ldr	x1, [x1, __ZTINSt3__112future_errorE@GOTPAGEOFF]
	adrp	x2, __ZNSt3__112future_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt3__112future_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB207_2:
Ltmp234:
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	str	x9, [sp, #16]
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB207_3
LBB207_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table207:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ; >> Call Site 1 <<
	.uleb128 Ltmp232-Lfunc_begin19          ;   Call between Lfunc_begin19 and Ltmp232
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp232-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Ltmp233-Ltmp232                ;   Call between Ltmp232 and Ltmp233
	.uleb128 Ltmp234-Lfunc_begin19          ;     jumps to Ltmp234
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp233-Lfunc_begin19          ; >> Call Site 3 <<
	.uleb128 Lfunc_end19-Ltmp233            ;   Call between Ltmp233 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE ; -- Begin function _ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE
	.weak_def_can_be_hidden	__ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE
	.p2align	2
__ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE: ; @_ZNSt3__16futureIiEC1EPNS_13__assoc_stateIiEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE ; -- Begin function _ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE
	.weak_def_can_be_hidden	__ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE
	.p2align	2
__ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE: ; @_ZNSt3__16futureIiEC2EPNS_13__assoc_stateIiEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x0, [x8]
	bl	__ZNSt3__117__assoc_sub_state15__attach_futureEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__assoc_sub_state15__attach_futureEv
__ZNSt3__117__assoc_sub_state15__attach_futureEv: ; @_ZNSt3__117__assoc_sub_state15__attach_futureEv
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	sub	x0, x29, #16
	add	x1, x8, #24
	bl	__ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #136]
	ands	w8, w8, #0x2
	cset	w8, ne
	mov	w9, #1
	and	w8, w8, w9
	sturb	w8, [x29, #-17]
	ldurb	w8, [x29, #-17]
	tbz	w8, #0, LBB210_4
	b	LBB210_1
LBB210_1:
Ltmp235:
	mov	w0, #1
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp236:
	b	LBB210_2
LBB210_2:
	brk	#0x1
LBB210_3:
Ltmp237:
	mov	x8, x1
	str	x0, [sp, #16]
	str	w8, [sp, #12]
	sub	x0, x29, #16
	bl	__ZNSt3__110lock_guardINS_5mutexEED1Ev
	b	LBB210_5
LBB210_4:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__114__shared_count12__add_sharedEv
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x9, #136]
	orr	w8, w8, #0x2
	str	w8, [x9, #136]
	sub	x0, x29, #16
	bl	__ZNSt3__110lock_guardINS_5mutexEED1Ev
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB210_5:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table210:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ; >> Call Site 1 <<
	.uleb128 Ltmp235-Lfunc_begin20          ;   Call between Lfunc_begin20 and Ltmp235
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp236-Ltmp235                ;   Call between Ltmp235 and Ltmp236
	.uleb128 Ltmp237-Lfunc_begin20          ;     jumps to Ltmp237
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp236-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Lfunc_end20-Ltmp236            ;   Call between Ltmp236 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
__ZNSt3__110lock_guardINS_5mutexEEC1ERS1_: ; @_ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114__shared_count12__add_sharedEv
__ZNSt3__114__shared_count12__add_sharedEv: ; @_ZNSt3__114__shared_count12__add_sharedEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__1L34__libcpp_atomic_refcount_incrementIlEET_RS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEED1Ev
__ZNSt3__110lock_guardINS_5mutexEED1Ev: ; @_ZNSt3__110lock_guardINS_5mutexEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110lock_guardINS_5mutexEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
__ZNSt3__110lock_guardINS_5mutexEEC2ERS1_: ; @_ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex4lockEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L34__libcpp_atomic_refcount_incrementIlEET_RS1_
__ZNSt3__1L34__libcpp_atomic_refcount_incrementIlEET_RS1_: ; @_ZNSt3__1L34__libcpp_atomic_refcount_incrementIlEET_RS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	mov	x9, #1
	str	x9, [sp, #16]
	ldr	x9, [sp, #16]
	ldadd	x9, x8, [x8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEED2Ev
__ZNSt3__110lock_guardINS_5mutexEED2Ev: ; @_ZNSt3__110lock_guardINS_5mutexEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex6unlockEv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16futureIiED2Ev        ; -- Begin function _ZNSt3__16futureIiED2Ev
	.weak_def_can_be_hidden	__ZNSt3__16futureIiED2Ev
	.p2align	2
__ZNSt3__16futureIiED2Ev:               ; @_ZNSt3__16futureIiED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, LBB217_2
	b	LBB217_1
LBB217_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__114__shared_count16__release_sharedEv
	b	LBB217_2
LBB217_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp239:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp240:
	b	LBB218_1
LBB218_1:
Ltmp242:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp243:
	b	LBB218_2
LBB218_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB218_18
	b	LBB218_3
LBB218_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp244:
	bl	__ZNKSt3__18ios_base5flagsEv
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp245:
	b	LBB218_4
LBB218_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB218_6
	b	LBB218_5
LBB218_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB218_7
LBB218_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB218_7
LBB218_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp246:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp247:
	b	LBB218_8
LBB218_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp248:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp249:
	b	LBB218_9
LBB218_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	tbz	w0, #0, LBB218_17
	b	LBB218_10
LBB218_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp250:
	mov	w1, #5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp251:
	b	LBB218_11
LBB218_11:
	b	LBB218_17
LBB218_12:
Ltmp241:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
	b	LBB218_14
LBB218_13:
Ltmp252:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB218_14
LBB218_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp253:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp254:
	b	LBB218_15
LBB218_15:
	bl	___cxa_end_catch
	b	LBB218_16
LBB218_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB218_17:
	b	LBB218_18
LBB218_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB218_16
LBB218_19:
Ltmp255:
	mov	x8, x1
	stur	x0, [x29, #-48]
	stur	w8, [x29, #-52]
Ltmp256:
	bl	___cxa_end_catch
Ltmp257:
	b	LBB218_20
LBB218_20:
	b	LBB218_21
LBB218_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB218_22:
Ltmp258:
	bl	___clang_call_terminate
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table218:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Ltmp239-Lfunc_begin21          ; >> Call Site 1 <<
	.uleb128 Ltmp240-Ltmp239                ;   Call between Ltmp239 and Ltmp240
	.uleb128 Ltmp241-Lfunc_begin21          ;     jumps to Ltmp241
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp242-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp251-Ltmp242                ;   Call between Ltmp242 and Ltmp251
	.uleb128 Ltmp252-Lfunc_begin21          ;     jumps to Ltmp252
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp251-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Ltmp253-Ltmp251                ;   Call between Ltmp251 and Ltmp253
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp253-Lfunc_begin21          ; >> Call Site 4 <<
	.uleb128 Ltmp254-Ltmp253                ;   Call between Ltmp253 and Ltmp254
	.uleb128 Ltmp255-Lfunc_begin21          ;     jumps to Ltmp255
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp254-Lfunc_begin21          ; >> Call Site 5 <<
	.uleb128 Ltmp256-Ltmp254                ;   Call between Ltmp254 and Ltmp256
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp256-Lfunc_begin21          ; >> Call Site 6 <<
	.uleb128 Ltmp257-Ltmp256                ;   Call between Ltmp256 and Ltmp257
	.uleb128 Ltmp258-Lfunc_begin21          ;     jumps to Ltmp258
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp257-Lfunc_begin21          ; >> Call Site 7 <<
	.uleb128 Lfunc_end21-Ltmp257            ;   Call between Ltmp257 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthEPKc:  ; @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB221_2
	b	LBB221_1
LBB221_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_23
LBB221_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthEv
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB221_4
	b	LBB221_3
LBB221_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB221_5
LBB221_4:
	str	xzr, [sp, #72]
	b	LBB221_5
LBB221_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB221_9
	b	LBB221_6
LBB221_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB221_8
	b	LBB221_7
LBB221_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_23
LBB221_8:
	b	LBB221_9
LBB221_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB221_18
	b	LBB221_10
LBB221_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp260:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp261:
	b	LBB221_11
LBB221_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB221_14
	b	LBB221_12
LBB221_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB221_15
LBB221_13:
Ltmp262:
	mov	x8, x1
	str	x0, [sp, #32]
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB221_24
LBB221_14:
	str	wzr, [sp, #24]
	b	LBB221_15
LBB221_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB221_17
	b	LBB221_16
LBB221_16:
	b	LBB221_23
LBB221_17:
	b	LBB221_18
LBB221_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB221_22
	b	LBB221_19
LBB221_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB221_21
	b	LBB221_20
LBB221_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_23
LBB221_21:
	b	LBB221_22
LBB221_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0
	bl	__ZNSt3__18ios_base5widthEl
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_23
LBB221_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB221_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table221:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Lfunc_begin22-Lfunc_begin22    ; >> Call Site 1 <<
	.uleb128 Ltmp260-Lfunc_begin22          ;   Call between Lfunc_begin22 and Ltmp260
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp260-Lfunc_begin22          ; >> Call Site 2 <<
	.uleb128 Ltmp261-Ltmp260                ;   Call between Ltmp260 and Ltmp261
	.uleb128 Ltmp262-Lfunc_begin22          ;     jumps to Ltmp262
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp261-Lfunc_begin22          ; >> Call Site 3 <<
	.uleb128 Lfunc_end22-Ltmp261            ;   Call between Ltmp261 and Lfunc_end22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end22:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ; @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	tbz	w0, #0, LBB224_2
	b	LBB224_1
LBB224_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB224_2
LBB224_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ; @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	bl	__ZNSt3__1L12__to_addressIcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ; @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ; @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__to_addressIcEEPT_S2_
__ZNSt3__1L12__to_addressIcEEPT_S2_:    ; @_ZNSt3__1L12__to_addressIcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbz	w0, #0, LBB240_2
	b	LBB240_1
LBB240_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB240_3
LBB240_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB240_3
LBB240_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldrb	w8, [x0, #23]
                                        ; kill: def $x8 killed $w8
	ands	x8, x8, #0x80
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toERc
__ZNSt3__114pointer_traitsIPcE10pointer_toERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L9addressofIcEEPT_RS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L9addressofIcEEPT_RS1_
__ZNSt3__1L9addressofIcEEPT_RS1_:       ; @_ZNSt3__1L9addressofIcEEPT_RS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp273:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp274:
	b	LBB250_1
LBB250_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB250_2:
Ltmp275:
	bl	___clang_call_terminate
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table250:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Ltmp273-Lfunc_begin23          ; >> Call Site 1 <<
	.uleb128 Ltmp274-Ltmp273                ;   Call between Ltmp273 and Ltmp274
	.uleb128 Ltmp275-Lfunc_begin23          ;     jumps to Ltmp275
	.byte	1                               ;   On action: 1
Lcst_end23:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ; @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ; -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	2
__ZNSt3__111char_traitsIcE3eofEv:       ; @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
; %bb.0:
	mov	w0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp278:
	bl	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp279:
	b	LBB255_1
LBB255_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp280:
	bl	__ZNKSt3__15ctypeIcE5widenEc
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp281:
	b	LBB255_2
LBB255_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB255_3:
Ltmp282:
	mov	x8, x1
	str	x0, [sp, #32]
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB255_4
LBB255_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table255:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Lfunc_begin24-Lfunc_begin24    ; >> Call Site 1 <<
	.uleb128 Ltmp278-Lfunc_begin24          ;   Call between Lfunc_begin24 and Ltmp278
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin24          ; >> Call Site 2 <<
	.uleb128 Ltmp281-Ltmp278                ;   Call between Ltmp278 and Ltmp281
	.uleb128 Ltmp282-Lfunc_begin24          ;     jumps to Ltmp282
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp281-Lfunc_begin24          ; >> Call Site 3 <<
	.uleb128 Lfunc_end24-Ltmp281            ;   Call between Ltmp281 and Lfunc_end24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end24:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ; @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ; @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi: ; @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPiEC1ES1_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111__wrap_iterIPiEC1ES1_
__ZNSt3__111__wrap_iterIPiEC1ES1_:      ; @_ZNSt3__111__wrap_iterIPiEC1ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__111__wrap_iterIPiEC2ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111__wrap_iterIPiEC2ES1_
__ZNSt3__111__wrap_iterIPiEC2ES1_:      ; @_ZNSt3__111__wrap_iterIPiEC2ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_ ; -- Begin function _ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.globl	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
	.p2align	2
__ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_: ; @_ZNSt3__16threadC2INS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES7_iEEEJS5_S5_iEvEEOT_DpOT0_
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-64]
	stur	x2, [x29, #-72]
	stur	x3, [x29, #-80]
	stur	x4, [x29, #-88]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	mov	x0, #8
	bl	__Znwm
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp284:
	bl	__ZNSt3__115__thread_structC1Ev
Ltmp285:
	b	LBB262_1
LBB262_1:
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	sub	x0, x29, #96
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
Ltmp287:
	mov	x0, #72
	bl	__Znwm
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp288:
	b	LBB262_2
LBB262_2:
	sub	x0, x29, #96
	bl	__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-64]
	bl	__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	sub	x8, x29, #48
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1L12__decay_copyINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEENS_5decayIT_E4typeEOSA_
	ldur	x0, [x29, #-72]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	bl	__ZNSt3__1L12__decay_copyINS_11__wrap_iterIPiEEEENS_5decayIT_E4typeEOS5_
	add	x8, sp, #96
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x0, [sp, #96]
	ldur	x0, [x29, #-80]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	bl	__ZNSt3__1L12__decay_copyINS_11__wrap_iterIPiEEEENS_5decayIT_E4typeEOS5_
	add	x8, sp, #88
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #88]
	ldur	x0, [x29, #-88]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	bl	__ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	add	x5, sp, #84
	str	w8, [sp, #84]
	bl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC1IJS5_SD_S9_S9_iELi0EEEDpOT_
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	add	x0, sp, #104
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC1ILb1EvEEPSE_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv
	mov	x2, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
Ltmp290:
	adrp	x1, __ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_@PAGE
	add	x1, x1, __ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_@PAGEOFF
	bl	__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
	str	w0, [sp, #52]                   ; 4-byte Folded Spill
Ltmp291:
	b	LBB262_3
LBB262_3:
	ldr	w8, [sp, #52]                   ; 4-byte Folded Reload
	str	w8, [sp, #80]
	ldr	w8, [sp, #80]
	cbnz	w8, LBB262_8
	b	LBB262_4
LBB262_4:
	add	x0, sp, #104
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE7releaseEv
	b	LBB262_10
LBB262_5:
Ltmp286:
	mov	x9, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	mov	x8, x1
	stur	x9, [x29, #-104]
	stur	w8, [x29, #-108]
	bl	__ZdlPv
	b	LBB262_14
LBB262_6:
Ltmp289:
	mov	x8, x1
	stur	x0, [x29, #-104]
	stur	w8, [x29, #-108]
	b	LBB262_13
LBB262_7:
Ltmp294:
	mov	x8, x1
	stur	x0, [x29, #-104]
	stur	w8, [x29, #-108]
	add	x0, sp, #104
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
	b	LBB262_13
LBB262_8:
	ldr	w0, [sp, #80]
Ltmp292:
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__120__throw_system_errorEiPKc
Ltmp293:
	b	LBB262_9
LBB262_9:
	brk	#0x1
LBB262_10:
	add	x0, sp, #104
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
	sub	x0, x29, #96
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB262_12
	b	LBB262_11
LBB262_11:
	bl	___stack_chk_fail
LBB262_12:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB262_13:
	sub	x0, x29, #96
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	b	LBB262_14
LBB262_14:
	ldur	x0, [x29, #-104]
	bl	__Unwind_Resume
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table262:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Lfunc_begin25-Lfunc_begin25    ; >> Call Site 1 <<
	.uleb128 Ltmp284-Lfunc_begin25          ;   Call between Lfunc_begin25 and Ltmp284
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp284-Lfunc_begin25          ; >> Call Site 2 <<
	.uleb128 Ltmp285-Ltmp284                ;   Call between Ltmp284 and Ltmp285
	.uleb128 Ltmp286-Lfunc_begin25          ;     jumps to Ltmp286
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp287-Lfunc_begin25          ; >> Call Site 3 <<
	.uleb128 Ltmp288-Ltmp287                ;   Call between Ltmp287 and Ltmp288
	.uleb128 Ltmp289-Lfunc_begin25          ;     jumps to Ltmp289
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp290-Lfunc_begin25          ; >> Call Site 4 <<
	.uleb128 Ltmp293-Ltmp290                ;   Call between Ltmp290 and Ltmp293
	.uleb128 Ltmp294-Lfunc_begin25          ;     jumps to Ltmp294
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp293-Lfunc_begin25          ; >> Call Site 5 <<
	.uleb128 Lfunc_end25-Ltmp293            ;   Call between Ltmp293 and Lfunc_end25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end25:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_: ; @_ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__decay_copyINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEENS_5decayIT_E4typeEOSA_
__ZNSt3__1L12__decay_copyINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEENS_5decayIT_E4typeEOSA_: ; @_ZNSt3__1L12__decay_copyINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEENS_5decayIT_E4typeEOSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE: ; @_ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__decay_copyINS_11__wrap_iterIPiEEEENS_5decayIT_E4typeEOS5_
__ZNSt3__1L12__decay_copyINS_11__wrap_iterIPiEEEENS_5decayIT_E4typeEOS5_: ; @_ZNSt3__1L12__decay_copyINS_11__wrap_iterIPiEEEENS_5decayIT_E4typeEOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	ldr	x8, [x0]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE: ; @_ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
__ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_: ; @_ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	w0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC1IJS5_SD_S9_S9_iELi0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC1IJS5_SD_S9_S9_iELi0EEEDpOT_: ; @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC1IJS5_SD_S9_S9_iELi0EEEDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #16]
	bl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC2IJS5_SD_S9_S9_iELi0EEEDpOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC1ILb1EvEEPSE_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC1ILb1EvEEPSE_: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC1ILb1EvEEPSE_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC2ILb1EvEEPSE_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_: ; @_ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	mov	x1, #0
	bl	_pthread_create
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_
__ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_: ; @_ZNSt3__1L14__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEPvSG_
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC1ILb1EvEEPSE_
Ltmp298:
	bl	__ZNSt3__119__thread_local_dataEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp299:
	b	LBB273_1
LBB273_1:
	sub	x0, x29, #16
	bl	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv
	bl	__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp300:
	bl	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
Ltmp301:
	b	LBB273_2
LBB273_2:
	sub	x0, x29, #16
	bl	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv
Ltmp302:
	bl	__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEEJS9_S9_iEJLm2ELm3ELm4EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
Ltmp303:
	b	LBB273_3
LBB273_3:
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
	mov	x0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB273_4:
Ltmp304:
	mov	x8, x1
	str	x0, [sp, #24]
	str	w8, [sp, #20]
	sub	x0, x29, #16
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
	b	LBB273_5
LBB273_5:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table273:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Ltmp298-Lfunc_begin26          ; >> Call Site 1 <<
	.uleb128 Ltmp303-Ltmp298                ;   Call between Ltmp298 and Ltmp303
	.uleb128 Ltmp304-Lfunc_begin26          ;     jumps to Ltmp304
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp303-Lfunc_begin26          ; >> Call Site 2 <<
	.uleb128 Lfunc_end26-Ltmp303            ;   Call between Ltmp303 and Lfunc_end26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end26:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv
__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv: ; @_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE7releaseEv
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE7releaseEv: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE7releaseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #16]
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	stur	x0, [x29, #-8]
	add	x1, sp, #16
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp305:
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
Ltmp306:
	b	LBB278_1
LBB278_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB278_2:
Ltmp307:
	bl	___clang_call_terminate
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table278:
Lexception27:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Ltmp305-Lfunc_begin27          ; >> Call Site 1 <<
	.uleb128 Ltmp306-Ltmp305                ;   Call between Ltmp305 and Ltmp306
	.uleb128 Ltmp307-Lfunc_begin27          ;     jumps to Ltmp307
	.byte	1                               ;   On action: 1
Lcst_end27:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE: ; @_ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L4moveIRNS_24__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	ldr	x8, [sp, #16]
	add	x0, x8, #32
	bl	__ZNSt3__1L4moveIRNS_7promiseIiEEEEONS_16remove_referenceIT_E4typeEOS5_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #32
	bl	__ZNSt3__17promiseIiEC1EOS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_24__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
__ZNSt3__1L4moveIRNS_24__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_: ; @_ZNSt3__1L4moveIRNS_24__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_ ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_7promiseIiEEEEONS_16remove_referenceIT_E4typeEOS5_
__ZNSt3__1L4moveIRNS_7promiseIiEEEEONS_16remove_referenceIT_E4typeEOS5_: ; @_ZNSt3__1L4moveIRNS_7promiseIiEEEEONS_16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__17promiseIiEC1EOS1_
__ZNSt3__17promiseIiEC1EOS1_:           ; @_ZNSt3__17promiseIiEC1EOS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__17promiseIiEC2EOS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_ ; -- Begin function _ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	.weak_def_can_be_hidden	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	.p2align	2
__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_: ; @_ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEC2EOS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	cbnz	x8, LBB290_2
	b	LBB290_1
LBB290_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	b	LBB290_6
LBB290_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ne	LBB290_4
	b	LBB290_3
LBB290_3:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEE9__get_bufEv
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #16]
	blr	x8
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, x9
	str	x8, [x9, #24]
	b	LBB290_5
LBB290_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	str	x8, [x9, #24]
	ldr	x8, [sp, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	b	LBB290_5
LBB290_5:
	b	LBB290_6
LBB290_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__17promiseIiEC2EOS1_
__ZNSt3__17promiseIiEC2EOS1_:           ; @_ZNSt3__17promiseIiEC2EOS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC2IJS5_SD_S9_S9_iELi0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC2IJS5_SD_S9_S9_iELi0EEEDpOT_: ; @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEC2IJS5_SD_S9_S9_iELi0EEEDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	str	x5, [sp, #48]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #48]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #24]                   ; 8-byte Folded Reload
	mov	x5, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC1IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE: ; @_ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC1IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC1IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_: ; @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC1IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	str	x5, [sp, #8]
	ldur	x0, [x29, #-16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #16]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC2IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC2IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC2IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_: ; @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEEC2IJLm0ELm1ELm2ELm3ELm4EEJS7_SF_SB_SB_iEJEJEJS7_SF_SB_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	str	x5, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	ldr	x0, [sp, #32]
	bl	__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #8
	bl	__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EEC2IS8_vEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #48
	bl	__ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #56
	bl	__ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #64
	bl	__ZNSt3__112__tuple_leafILm4EiLb0EEC2IivEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_: ; @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EEC2IS8_vEEOT_
__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EEC2IS8_vEEOT_: ; @_ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EEC2IS8_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEOT_RNS_16remove_referenceIS9_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEC1EOS7_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
__ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_: ; @_ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
__ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_: ; @_ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EEC2IS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm4EiLb0EEC2IivEEOT_
__ZNSt3__112__tuple_leafILm4EiLb0EEC2IivEEOT_: ; @_ZNSt3__112__tuple_leafILm4EiLb0EEC2IivEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8]
	str	w8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	bl	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Ltmp314:
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
Ltmp315:
	b	LBB302_1
LBB302_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB302_2:
Ltmp316:
	bl	___clang_call_terminate
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table302:
Lexception28:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Ltmp314-Lfunc_begin28          ; >> Call Site 1 <<
	.uleb128 Ltmp315-Ltmp314                ;   Call between Ltmp314 and Ltmp315
	.uleb128 Ltmp316-Lfunc_begin28          ;     jumps to Ltmp316
	.byte	1                               ;   On action: 1
Lcst_end28:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #16]
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE: ; @_ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE: ; @_ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC2ILb1EvEEPSE_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC2ILb1EvEEPSE_: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEEC2ILb1EvEEPSE_
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	stur	x0, [x29, #-8]
	add	x1, sp, #16
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp321:
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC1IRSG_NS_18__default_init_tagEEEOT_OT0_
Ltmp322:
	b	LBB315_1
LBB315_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB315_2:
Ltmp323:
	bl	___clang_call_terminate
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table315:
Lexception29:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Ltmp321-Lfunc_begin29          ; >> Call Site 1 <<
	.uleb128 Ltmp322-Ltmp321                ;   Call between Ltmp321 and Ltmp322
	.uleb128 Ltmp323-Lfunc_begin29          ;     jumps to Ltmp323
	.byte	1                               ;   On action: 1
Lcst_end29:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC1IRSG_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC1IRSG_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC1IRSG_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC2IRSG_NS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC2IRSG_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC2IRSG_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEEC2IRSG_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEOT_RNS_16remove_referenceISI_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EEC2IRSG_vEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEOT_RNS_16remove_referenceISI_E4typeE
__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEOT_RNS_16remove_referenceISI_E4typeE: ; @_ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEOT_RNS_16remove_referenceISI_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EEC2IRSG_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EEC2IRSG_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EEC2IRSG_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEEOT_RNS_16remove_referenceISI_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_ ; -- Begin function _ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.weak_definition	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.p2align	2
__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_: ; @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x1, [sp]
	bl	__ZNSt3__1L16__libcpp_tls_setEmPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_: ; @_ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEEJS9_S9_iEJLm2ELm3ELm4EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEEJS9_S9_iEJLm2ELm3ELm4EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE: ; @_ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEEJS9_S9_iEJLm2ELm3ELm4EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	bl	__ZNSt3__1L4moveIRNS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEEEONS_16remove_referenceIT_E4typeEOSB_
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	bl	__ZNSt3__1L4moveIRNS_11__wrap_iterIPiEEEEONS_16remove_referenceIT_E4typeEOS6_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	bl	__ZNSt3__1L4moveIRNS_11__wrap_iterIPiEEEEONS_16remove_referenceIT_E4typeEOS6_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L3getILm4EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1L8__invokeINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEJS4_S4_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L16__libcpp_tls_setEmPv
__ZNSt3__1L16__libcpp_tls_setEmPv:      ; @_ZNSt3__1L16__libcpp_tls_setEmPv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	_pthread_setspecific
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv: ; @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L8__invokeINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEJS4_S4_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
__ZNSt3__1L8__invokeINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEJS4_S4_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_: ; @_ZNSt3__1L8__invokeINS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEEJS4_S4_iEEEDTclscT_fp_spscT0_fp0_EEOS9_DpOSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [sp]
	ldr	w3, [x8]
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_: ; @_ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EE3getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRNS_11__wrap_iterIPiEEEEONS_16remove_referenceIT_E4typeEOS6_
__ZNSt3__1L4moveIRNS_11__wrap_iterIPiEEEEONS_16remove_referenceIT_E4typeEOS6_: ; @_ZNSt3__1L4moveIRNS_11__wrap_iterIPiEEEEONS_16remove_referenceIT_E4typeEOS6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
__ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_: ; @_ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #48
	bl	__ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EE3getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
__ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_: ; @_ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #56
	bl	__ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EE3getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_: ; @_ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L3getILm4EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
__ZNSt3__1L3getILm4EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_: ; @_ZNSt3__1L3getILm4EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSI_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #64
	bl	__ZNSt3__112__tuple_leafILm4EiLb0EE3getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i ; -- Begin function _ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	.weak_definition	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	.p2align	2
__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i: ; @_ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #32]
	cbnz	x8, LBB333_2
	b	LBB333_1
LBB333_1:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB333_2:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	bl	__ZNKSt3__117__assoc_sub_state11__has_valueEv
	tbz	w0, #0, LBB333_4
	b	LBB333_3
LBB333_3:
	mov	w0, #2
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB333_4:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x8, x8, #32
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	sub	x0, x29, #28
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	w3, [x8]
Ltmp329:
	bl	__ZNKSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp330:
	b	LBB333_5
LBB333_5:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	sub	x1, x29, #32
	stur	w8, [x29, #-32]
Ltmp331:
	bl	__ZNSt3__17promiseIiE9set_valueEOi
Ltmp332:
	b	LBB333_6
LBB333_6:
	b	LBB333_10
LBB333_7:
Ltmp333:
	mov	x8, x1
	stur	x0, [x29, #-40]
	stur	w8, [x29, #-44]
	b	LBB333_8
LBB333_8:
	ldur	x0, [x29, #-40]
	bl	___cxa_begin_catch
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x8, x8, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x8, sp, #56
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZSt17current_exceptionv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp334:
	bl	__ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr
Ltmp335:
	b	LBB333_9
LBB333_9:
	add	x0, sp, #56
	bl	__ZNSt13exception_ptrD1Ev
	bl	___cxa_end_catch
	b	LBB333_10
LBB333_10:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB333_11:
Ltmp336:
	mov	x8, x1
	stur	x0, [x29, #-40]
	stur	w8, [x29, #-44]
	add	x0, sp, #56
	bl	__ZNSt13exception_ptrD1Ev
Ltmp337:
	bl	___cxa_end_catch
Ltmp338:
	b	LBB333_12
LBB333_12:
	b	LBB333_13
LBB333_13:
	ldur	x0, [x29, #-40]
	bl	__Unwind_Resume
LBB333_14:
Ltmp339:
	bl	___clang_call_terminate
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table333:
Lexception30:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Lfunc_begin30-Lfunc_begin30    ; >> Call Site 1 <<
	.uleb128 Ltmp329-Lfunc_begin30          ;   Call between Lfunc_begin30 and Ltmp329
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp329-Lfunc_begin30          ; >> Call Site 2 <<
	.uleb128 Ltmp332-Ltmp329                ;   Call between Ltmp329 and Ltmp332
	.uleb128 Ltmp333-Lfunc_begin30          ;     jumps to Ltmp333
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp332-Lfunc_begin30          ; >> Call Site 3 <<
	.uleb128 Ltmp334-Ltmp332                ;   Call between Ltmp332 and Ltmp334
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp334-Lfunc_begin30          ; >> Call Site 4 <<
	.uleb128 Ltmp335-Ltmp334                ;   Call between Ltmp334 and Ltmp335
	.uleb128 Ltmp336-Lfunc_begin30          ;     jumps to Ltmp336
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp335-Lfunc_begin30          ; >> Call Site 5 <<
	.uleb128 Ltmp337-Ltmp335                ;   Call between Ltmp335 and Ltmp337
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp337-Lfunc_begin30          ; >> Call Site 6 <<
	.uleb128 Ltmp338-Ltmp337                ;   Call between Ltmp337 and Ltmp338
	.uleb128 Ltmp339-Lfunc_begin30          ;     jumps to Ltmp339
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp338-Lfunc_begin30          ; >> Call Site 7 <<
	.uleb128 Lfunc_end30-Ltmp338            ;   Call between Ltmp338 and Lfunc_end30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end30:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase15:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__17promiseIiE9set_valueEOi ; -- Begin function _ZNSt3__17promiseIiE9set_valueEOi
	.weak_definition	__ZNSt3__17promiseIiE9set_valueEOi
	.p2align	2
__ZNSt3__17promiseIiE9set_valueEOi:     ; @_ZNSt3__17promiseIiE9set_valueEOi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8]
	cbnz	x8, LBB334_2
	b	LBB334_1
LBB334_1:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB334_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
__ZNKSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i: ; @_ZNKSt3__124__packaged_task_functionIFiRKNS_11__wrap_iterIPiEES5_iEEclES5_S5_i
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	sub	x8, x29, #28
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__1L7forwardIRKNS_11__wrap_iterIPiEEEEOT_RNS_16remove_referenceIS6_E4typeE
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #40]
	blr	x8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr ; -- Begin function _ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr
	.weak_definition	__ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr
	.p2align	2
__ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr: ; @_ZNSt3__17promiseIiE13set_exceptionESt13exception_ptr
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	cbnz	x8, LBB336_2
	b	LBB336_1
LBB336_1:
	mov	w0, #3
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
LBB336_2:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	sub	x0, x29, #16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt13exception_ptrC1ERKS_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp340:
	bl	__ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr
Ltmp341:
	b	LBB336_3
LBB336_3:
	sub	x0, x29, #16
	bl	__ZNSt13exception_ptrD1Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB336_4:
Ltmp342:
	mov	x8, x1
	stur	x0, [x29, #-24]
	stur	w8, [x29, #-28]
	sub	x0, x29, #16
	bl	__ZNSt13exception_ptrD1Ev
	b	LBB336_5
LBB336_5:
	ldur	x0, [x29, #-24]
	bl	__Unwind_Resume
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table336:
Lexception31:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end31-Lcst_begin31
Lcst_begin31:
	.uleb128 Lfunc_begin31-Lfunc_begin31    ; >> Call Site 1 <<
	.uleb128 Ltmp340-Lfunc_begin31          ;   Call between Lfunc_begin31 and Ltmp340
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp340-Lfunc_begin31          ; >> Call Site 2 <<
	.uleb128 Ltmp341-Ltmp340                ;   Call between Ltmp340 and Ltmp341
	.uleb128 Ltmp342-Lfunc_begin31          ;     jumps to Ltmp342
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp341-Lfunc_begin31          ; >> Call Site 3 <<
	.uleb128 Lfunc_end31-Ltmp341            ;   Call between Ltmp341 and Lfunc_end31
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end31:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_ ; -- Begin function _ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_
	.globl	__ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_
	.weak_definition	__ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_
	.p2align	2
__ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_: ; @_ZNSt3__113__assoc_stateIiE9set_valueIiEEvOT_
Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception32
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #32
	add	x1, x8, #24
	bl	__ZNSt3__111unique_lockINS_5mutexEEC1ERS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__117__assoc_sub_state11__has_valueEv
	tbz	w0, #0, LBB337_4
	b	LBB337_1
LBB337_1:
Ltmp343:
	mov	w0, #2
	bl	__ZNSt3__1L20__throw_future_errorENS_11future_errcE
Ltmp344:
	b	LBB337_2
LBB337_2:
	brk	#0x1
LBB337_3:
Ltmp345:
	mov	x8, x1
	str	x0, [sp, #24]
	str	w8, [sp, #20]
	add	x0, sp, #32
	bl	__ZNSt3__111unique_lockINS_5mutexEED1Ev
	b	LBB337_5
LBB337_4:
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [x0]
	str	w9, [x8, #140]
	ldr	w9, [x8, #136]
	mov	w10, #5
	orr	w9, w9, w10
	str	w9, [x8, #136]
	add	x0, x8, #88
	bl	__ZNSt3__118condition_variable10notify_allEv
	add	x0, sp, #32
	bl	__ZNSt3__111unique_lockINS_5mutexEED1Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB337_5:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end32:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table337:
Lexception32:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end32-Lcst_begin32
Lcst_begin32:
	.uleb128 Lfunc_begin32-Lfunc_begin32    ; >> Call Site 1 <<
	.uleb128 Ltmp343-Lfunc_begin32          ;   Call between Lfunc_begin32 and Ltmp343
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp343-Lfunc_begin32          ; >> Call Site 2 <<
	.uleb128 Ltmp344-Ltmp343                ;   Call between Ltmp343 and Ltmp344
	.uleb128 Ltmp345-Lfunc_begin32          ;     jumps to Ltmp345
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp344-Lfunc_begin32          ; >> Call Site 3 <<
	.uleb128 Lfunc_end32-Ltmp344            ;   Call between Ltmp344 and Lfunc_end32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end32:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__111unique_lockINS_5mutexEEC1ERS1_
__ZNSt3__111unique_lockINS_5mutexEEC1ERS1_: ; @_ZNSt3__111unique_lockINS_5mutexEEC1ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__111unique_lockINS_5mutexEEC2ERS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111unique_lockINS_5mutexEED1Ev
__ZNSt3__111unique_lockINS_5mutexEED1Ev: ; @_ZNSt3__111unique_lockINS_5mutexEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111unique_lockINS_5mutexEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111unique_lockINS_5mutexEEC2ERS1_
__ZNSt3__111unique_lockINS_5mutexEEC2ERS1_: ; @_ZNSt3__111unique_lockINS_5mutexEEC2ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L9addressofINS_5mutexEEEPT_RS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [x8]
	mov	w9, #1
	strb	w9, [x8, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex4lockEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L9addressofINS_5mutexEEEPT_RS2_
__ZNSt3__1L9addressofINS_5mutexEEEPT_RS2_: ; @_ZNSt3__1L9addressofINS_5mutexEEEPT_RS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__111unique_lockINS_5mutexEED2Ev
__ZNSt3__111unique_lockINS_5mutexEED2Ev: ; @_ZNSt3__111unique_lockINS_5mutexEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbz	w8, #0, LBB342_2
	b	LBB342_1
LBB342_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex6unlockEv
	b	LBB342_2
LBB342_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EE3getEv: ; @_ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EE3getEv
__ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EE3getEv: ; @_ZNSt3__112__tuple_leafILm2ENS_11__wrap_iterIPiEELb0EE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EE3getEv
__ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EE3getEv: ; @_ZNSt3__112__tuple_leafILm3ENS_11__wrap_iterIPiEELb0EE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112__tuple_leafILm4EiLb0EE3getEv
__ZNSt3__112__tuple_leafILm4EiLb0EE3getEv: ; @_ZNSt3__112__tuple_leafILm4EiLb0EE3getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv: ; @_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv: ; @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv: ; @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED2Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED2Ev: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE5resetEPSE_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE5resetEPSE_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE5resetEPSE_: ; @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEENS3_ISE_EEE5resetEPSE_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE5firstEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #24]
	cbz	x8, LBB352_2
	b	LBB352_1
LBB352_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE6secondEv
	ldr	x1, [sp, #24]
	bl	__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEEEclEPSE_
	b	LBB352_2
LBB352_2:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE6secondEv: ; @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEENS4_ISF_EEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEEEclEPSE_
__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEEEclEPSE_: ; @_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEEEEclEPSE_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cbz	x8, LBB354_2
	b	LBB354_1
LBB354_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB354_2
LBB354_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESC_iEEESA_SA_iEEEEELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev ; -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev
	.p2align	2
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev: ; @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev ; -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev
	.p2align	2
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev: ; @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESB_iEEES9_S9_iEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev ; -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev
	.p2align	2
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev: ; @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev ; -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev
	.p2align	2
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev: ; @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEESD_iEEESB_SB_iEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #8
	bl	__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev ; -- Begin function _ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev
	.p2align	2
__ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev: ; @_ZNSt3__112__tuple_leafILm1ENS_13packaged_taskIFiRKNS_11__wrap_iterIPiEES6_iEEELb0EED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__113packaged_taskIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev ; -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.p2align	2
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev: ; @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_: ; @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #24]
	cbz	x8, LBB363_2
	b	LBB363_1
LBB363_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	ldr	x1, [sp, #24]
	bl	__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
	b	LBB363_2
LBB363_2:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_: ; @_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cbz	x8, LBB364_2
	b	LBB364_1
LBB364_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__115__thread_structD1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdlPv
	b	LBB364_2
LBB364_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC1ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC1ILb1EvEEPS1_: ; @_ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC1ILb1EvEEPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC2ILb1EvEEPS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__assoc_stateIiE4moveEv ; -- Begin function _ZNSt3__113__assoc_stateIiE4moveEv
	.globl	__ZNSt3__113__assoc_stateIiE4moveEv
	.weak_definition	__ZNSt3__113__assoc_stateIiE4moveEv
	.p2align	2
__ZNSt3__113__assoc_stateIiE4moveEv:    ; @_ZNSt3__113__assoc_stateIiE4moveEv
Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception33
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	sub	x0, x29, #24
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	add	x1, x8, #24
	bl	__ZNSt3__111unique_lockINS_5mutexEEC1ERS1_
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
Ltmp354:
	bl	__ZNSt3__117__assoc_sub_state10__sub_waitERNS_11unique_lockINS_5mutexEEE
Ltmp355:
	b	LBB366_1
LBB366_1:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt13exception_ptrC1EDn
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZStneRKSt13exception_ptrS1_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	bl	__ZNSt13exception_ptrD1Ev
	ldr	w0, [sp, #36]                   ; 4-byte Folded Reload
	tbz	w0, #0, LBB366_6
	b	LBB366_2
LBB366_2:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x1, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt13exception_ptrC1ERKS_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp357:
	bl	__ZSt17rethrow_exceptionSt13exception_ptr
Ltmp358:
	b	LBB366_3
LBB366_3:
	brk	#0x1
LBB366_4:
Ltmp356:
	mov	x8, x1
	stur	x0, [x29, #-32]
	stur	w8, [x29, #-36]
	b	LBB366_7
LBB366_5:
Ltmp359:
	mov	x8, x1
	stur	x0, [x29, #-32]
	stur	w8, [x29, #-36]
	add	x0, sp, #56
	bl	__ZNSt13exception_ptrD1Ev
	b	LBB366_7
LBB366_6:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #140
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	ldr	w8, [x0]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	sub	x0, x29, #24
	bl	__ZNSt3__111unique_lockINS_5mutexEED1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB366_7:
	sub	x0, x29, #24
	bl	__ZNSt3__111unique_lockINS_5mutexEED1Ev
	b	LBB366_8
LBB366_8:
	ldur	x0, [x29, #-32]
	bl	__Unwind_Resume
Lfunc_end33:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table366:
Lexception33:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end33-Lcst_begin33
Lcst_begin33:
	.uleb128 Lfunc_begin33-Lfunc_begin33    ; >> Call Site 1 <<
	.uleb128 Ltmp354-Lfunc_begin33          ;   Call between Lfunc_begin33 and Ltmp354
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp354-Lfunc_begin33          ; >> Call Site 2 <<
	.uleb128 Ltmp355-Ltmp354                ;   Call between Ltmp354 and Ltmp355
	.uleb128 Ltmp356-Lfunc_begin33          ;     jumps to Ltmp356
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp357-Lfunc_begin33          ; >> Call Site 3 <<
	.uleb128 Ltmp358-Ltmp357                ;   Call between Ltmp357 and Ltmp358
	.uleb128 Ltmp359-Lfunc_begin33          ;     jumps to Ltmp359
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp358-Lfunc_begin33          ; >> Call Site 4 <<
	.uleb128 Lfunc_end33-Ltmp358            ;   Call between Ltmp358 and Lfunc_end33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end33:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED1Ev
__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED1Ev: ; @_ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC2ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC2ILb1EvEEPS1_: ; @_ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEEC2ILb1EvEEPS1_
Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception34
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	stur	x0, [x29, #-8]
	add	x1, sp, #16
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp360:
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
Ltmp361:
	b	LBB368_1
LBB368_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB368_2:
Ltmp362:
	bl	___clang_call_terminate
Lfunc_end34:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table368:
Lexception34:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end34-Lcst_begin34
Lcst_begin34:
	.uleb128 Ltmp360-Lfunc_begin34          ; >> Call Site 1 <<
	.uleb128 Ltmp361-Ltmp360                ;   Call between Ltmp360 and Ltmp361
	.uleb128 Ltmp362-Lfunc_begin34          ;     jumps to Ltmp362
	.byte	1                               ;   On action: 1
Lcst_end34:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase16:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC1IRS2_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEEC2IRS2_NS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__1L7forwardIRPNS_14__shared_countEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EEC2IRS2_vEEOT_
	ldr	x0, [sp, #24]
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardIRPNS_14__shared_countEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIRPNS_14__shared_countEEEOT_RNS_16remove_referenceIS4_E4typeE: ; @_ZNSt3__1L7forwardIRPNS_14__shared_countEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EEC2IRS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EEC2IRS2_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EEC2IRS2_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__1L7forwardIRPNS_14__shared_countEEEOT_RNS_16remove_referenceIS4_E4typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED2Ev
__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED2Ev: ; @_ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEE5resetEPS1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEE5resetEPS1_
__ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEE5resetEPS1_: ; @_ZNSt3__110unique_ptrINS_14__shared_countENS_22__release_shared_countEE5resetEPS1_
Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception35
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE5firstEv
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE5firstEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #24]
	cbz	x8, LBB375_3
	b	LBB375_1
LBB375_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE6secondEv
	ldr	x1, [sp, #24]
Ltmp365:
	bl	__ZNSt3__122__release_shared_countclEPNS_14__shared_countE
Ltmp366:
	b	LBB375_2
LBB375_2:
	b	LBB375_3
LBB375_3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB375_4:
Ltmp367:
	bl	___clang_call_terminate
Lfunc_end35:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table375:
Lexception35:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end35-Lcst_begin35
Lcst_begin35:
	.uleb128 Ltmp365-Lfunc_begin35          ; >> Call Site 1 <<
	.uleb128 Ltmp366-Ltmp365                ;   Call between Ltmp365 and Ltmp366
	.uleb128 Ltmp367-Lfunc_begin35          ;     jumps to Ltmp367
	.byte	1                               ;   On action: 1
Lcst_end35:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase17:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE5firstEv
__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE5firstEv: ; @_ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE6secondEv
__ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE6secondEv: ; @_ZNSt3__117__compressed_pairIPNS_14__shared_countENS_22__release_shared_countEE6secondEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__release_shared_countclEPNS_14__shared_countE ; -- Begin function _ZNSt3__122__release_shared_countclEPNS_14__shared_countE
	.weak_definition	__ZNSt3__122__release_shared_countclEPNS_14__shared_countE
	.p2align	2
__ZNSt3__122__release_shared_countclEPNS_14__shared_countE: ; @_ZNSt3__122__release_shared_countclEPNS_14__shared_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__114__shared_count16__release_sharedEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemIPNS_14__shared_countELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EE5__getEv: ; @_ZNSt3__122__compressed_pair_elemINS_22__release_shared_countELi1ELb1EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
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

l_.str.6:                               ; @.str.6
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

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

	.globl	__ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE ; @_ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.weak_def_can_be_hidden	__ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.p2align	3
__ZTVNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE:
	.quad	0
	.quad	__ZTINSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEEE
	.quad	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED1Ev
	.quad	__ZNSt3__120__packaged_task_baseIFiRKNS_11__wrap_iterIPiEES5_iEED0Ev
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

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

.subsections_via_symbols
