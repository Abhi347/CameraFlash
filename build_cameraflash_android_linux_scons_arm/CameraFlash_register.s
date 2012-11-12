	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"CameraFlash_register.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align	2
.LC0:
	.ascii	"CAMERAFLASH_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling CameraFlash func on main thread: TurnFlashO"
	.ascii	"n\000"
	.section	.text._ZL16TurnFlashOn_wrapb,"ax",%progbits
	.align	2
	.type	_ZL16TurnFlashOn_wrapb, %function
_ZL16TurnFlashOn_wrapb:
.LFB33:
	.file 1 "C:\\Marmalade\\6.1\\extensions\\CameraFlash\\source\\generic\\CameraFlash_register.cpp"
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #8
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 31 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	TurnFlashOn(GOT)
.LFE33:
	.size	_ZL16TurnFlashOn_wrapb, .-_ZL16TurnFlashOn_wrapb
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling CameraFlash func on main thread: TurnFlashO"
	.ascii	"ff\000"
	.section	.text._ZL17TurnFlashOff_wrapv,"ax",%progbits
	.align	2
	.type	_ZL17TurnFlashOff_wrapv, %function
_ZL17TurnFlashOff_wrapv:
.LFB34:
	.loc 1 34 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 36 0
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	.loc 1 37 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	TurnFlashOff(GOT)
.LFE34:
	.size	_ZL17TurnFlashOff_wrapv, .-_ZL17TurnFlashOff_wrapv
	.section	.text.CameraFlashRegister,"ax",%progbits
	.align	2
	.global	CameraFlashRegister
	.hidden	CameraFlashRegister
	.type	CameraFlashRegister, %function
CameraFlashRegister:
.LFB35:
	.loc 1 45 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI3:
	sub	sp, sp, #28
.LCFI4:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 46 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [sp, #0]
	mov	r2, #0
	str	r2, [sp, #4]
	mov	r0, #106954752
	add	r0, r0, #4800
	add	r0, r0, #28
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [sp, #16]
	bl	s3eEdkCallbacksRegister(PLT)
	mov	r3, r0
	.loc 1 47 0
	mov	r0, r3
	add	sp, sp, #28
	ldr	lr, [sp], #4
	bx	lr
.LFE35:
	.size	CameraFlashRegister, .-CameraFlashRegister
	.section	.text.CameraFlashUnRegister,"ax",%progbits
	.align	2
	.global	CameraFlashUnRegister
	.hidden	CameraFlashUnRegister
	.type	CameraFlashUnRegister, %function
CameraFlashUnRegister:
.LFB36:
	.loc 1 50 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	sub	sp, sp, #20
.LCFI6:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 1 51 0
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [sp, #0]
	mov	r0, #106954752
	add	r0, r0, #4800
	add	r0, r0, #28
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [sp, #8]
	bl	s3eEdkCallbacksUnRegister(PLT)
	mov	r3, r0
	.loc 1 52 0
	mov	r0, r3
	add	sp, sp, #20
	ldr	lr, [sp], #4
	bx	lr
.LFE36:
	.size	CameraFlashUnRegister, .-CameraFlashUnRegister
	.section	.rodata
	.align	2
.LC3:
	.ascii	"CameraFlash\000"
	.section	.text._Z22CameraFlashRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z22CameraFlashRegisterExtv
	.hidden	_Z22CameraFlashRegisterExtv
	.type	_Z22CameraFlashRegisterExtv, %function
_Z22CameraFlashRegisterExtv:
.LFB37:
	.loc 1 55 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI7:
	sub	sp, sp, #52
.LCFI8:
.LBB2:
	.loc 1 71 0
	ldr	r2, .L17
.LPIC12:
	add	r2, pc, r2
	.loc 1 58 0
	ldr	r3, .L17+4
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #32]
	.loc 1 59 0
	ldr	r3, .L17+8
.LPIC9:
	add	r3, pc, r3
	str	r3, [sp, #36]
	.loc 1 60 0
	ldr	r3, .L17+12
.LPIC10:
	add	r3, pc, r3
	str	r3, [sp, #40]
	.loc 1 61 0
	ldr	r3, .L17+16
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #44]
	.loc 1 66 0
	add	r3, sp, #16
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	.loc 1 71 0
	add	r1, sp, #32
	add	ip, sp, #16
	ldr	r3, .L17+20
	ldr	r3, [r2, r3]
	str	r3, [sp, #0]
	ldr	r3, .L17+24
	ldr	r3, [r2, r3]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L17+28
.LPIC13:
	add	r3, pc, r3
	mov	r0, r3
	mov	r2, #16
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 72 0
	add	sp, sp, #52
	ldr	lr, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	CameraFlashRegister-(.LPIC8+8)
	.word	CameraFlashUnRegister-(.LPIC9+8)
	.word	_ZL16TurnFlashOn_wrapb-(.LPIC10+8)
	.word	_ZL17TurnFlashOff_wrapv-(.LPIC11+8)
	.word	_Z15CameraFlashInitv(GOT)
	.word	_Z20CameraFlashTerminatev(GOT)
	.word	.LC3-(.LPIC13+8)
.LFE37:
	.size	_Z22CameraFlashRegisterExtv, .-_Z22CameraFlashRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB38:
	.loc 1 91 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI9:
	.loc 1 92 0
	bl	_Z22CameraFlashRegisterExtv(PLT)
	.loc 1 93 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE38:
	.size	RegisterExt, .-RegisterExt
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI7-.LFB37
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x38
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI9-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB33
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB34
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB35
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB36
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB37
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB38
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../s3e/h/s3eTypes.h"
	.file 3 "../h/CameraFlash.h"
	.section	.debug_info
	.4byte	0x22a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x84
	.4byte	0x4c
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2
	.byte	0xe0
	.4byte	0x8c
	.uleb128 0x6
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF9
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe4
	.4byte	0x73
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xfe
	.4byte	0xa2
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x8
	.4byte	0x68
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xbc
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF14
	.uleb128 0xc
	.4byte	0xbc
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.4byte	0xed
	.uleb128 0x6
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.4byte	0xd4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST0
	.4byte	0x11e
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1b
	.4byte	0x11e
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x21
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST1
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST2
	.4byte	0x17e
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0xbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.4byte	0x8c
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST3
	.4byte	0x1b6
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x31
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x36
	.4byte	.LASF32
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST4
	.4byte	0x1f9
	.uleb128 0x13
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.byte	0x39
	.4byte	0x1f9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.4byte	0x209
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.4byte	0xbc
	.4byte	0x209
	.uleb128 0x16
	.4byte	0xc5
	.byte	0x3
	.byte	0x0
	.uleb128 0x15
	.4byte	0x4c
	.4byte	0x219
	.uleb128 0x16
	.4byte	0xc5
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST5
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x6b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x22e
	.4byte	0x138
	.ascii	"CameraFlashRegister\000"
	.4byte	0x17e
	.ascii	"CameraFlashUnRegister\000"
	.4byte	0x1b6
	.ascii	"CameraFlashRegisterExt\000"
	.4byte	0x219
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"c:\\\\Marmalade\\\\6.1\\\\extensions\\\\CameraFlash"
	.ascii	"\\\\build_cameraflash_android_linux_scons_arm\000"
.LASF17:
	.ascii	"CAMERAFLASH_CALLBACK_MAX\000"
.LASF32:
	.ascii	"_Z22CameraFlashRegisterExtv\000"
.LASF18:
	.ascii	"bool\000"
.LASF23:
	.ascii	"CameraFlashUnRegister\000"
.LASF15:
	.ascii	"CameraFlashCallback\000"
.LASF21:
	.ascii	"pData\000"
.LASF19:
	.ascii	"turnOn\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"int32\000"
.LASF16:
	.ascii	"CAMERAFLASH_CALLBACK_DUMMY\000"
.LASF3:
	.ascii	"short int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF26:
	.ascii	"flags\000"
.LASF27:
	.ascii	"GNU C++ 4.4.3\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF28:
	.ascii	"C:\\Marmalade\\6.1\\extensions\\CameraFlash\\source"
	.ascii	"\\generic\\CameraFlash_register.cpp\000"
.LASF20:
	.ascii	"cbid\000"
.LASF31:
	.ascii	"TurnFlashOff_wrap\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF5:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"char\000"
.LASF25:
	.ascii	"funcPtrs\000"
.LASF33:
	.ascii	"RegisterExt\000"
.LASF24:
	.ascii	"CameraFlashRegisterExt\000"
.LASF12:
	.ascii	"s3eCallback\000"
.LASF22:
	.ascii	"CameraFlashRegister\000"
.LASF30:
	.ascii	"TurnFlashOn_wrap\000"
.LASF13:
	.ascii	"long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"s3eResult\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
