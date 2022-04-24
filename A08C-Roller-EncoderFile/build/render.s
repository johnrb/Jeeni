	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/A08C-Roller-EncoderFile/build/render.bc"
	.file	1 "/root/Bela/projects/A08C-Roller-EncoderFile" "render.cpp"
	.file	2 "/root/Bela/projects/A08C-Roller-EncoderFile" "encoder.h"
	.file	3 "./include" "Bela.h"
	.file	4 "/usr/include" "stdint.h"
	.file	5 "/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.3.0/../../../../include/arm-linux-gnueabihf/c++/6.3.0/bits" "c++config.h"
	.file	6 "/usr/include/arm-linux-gnueabihf/bits" "math-finite.h"
	.file	7 "/usr/include/arm-linux-gnueabihf/bits" "mathcalls.h"
	.file	8 "/usr/include/arm-linux-gnueabihf/bits" "mathdef.h"
	.globl	setup
	.p2align	2
	.type	setup,%function
setup:                                  @ @setup
.Lfunc_begin0:
	.loc	1 28 0                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:28:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r11, -8
.Ltmp3:
	.cfi_offset r10, -12
.Ltmp4:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp5:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: setup:context <- %R0
	@DEBUG_VALUE: setup:userData <- %R1
.Ltmp6:
	.loc	1 29 16 prologue_end    @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:29:16
	vmov.f32	d1, #1.000000e+00
	.loc	1 29 31 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:29:31
	vldr	s0, [r0, #32]
	.loc	1 29 14                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:29:14
	movw	r4, :lower16:.L_MergedGlobals
	movt	r4, :upper16:.L_MergedGlobals
	.loc	1 29 16                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:29:16
	vdiv.f32	s0, s2, s0
	.loc	1 29 14                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:29:14
	vstr	s0, [r4, #20]
	.loc	1 30 31 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:30:31
	ldr	r2, [r0, #20]
	.loc	1 30 54 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:30:54
	ldr	r1, [r0, #36]
.Ltmp7:
	.loc	1 30 43                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:30:43
	mov	r0, r2
.Ltmp8:
	bl	__aeabi_uidiv
	.loc	1 30 20                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:30:20
	str	r0, [r4, #24]
	.loc	1 32 2 is_stmt 1        @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:32:2
	mov	r0, #1
	pop	{r4, r10, r11, pc}
.Ltmp9:
.Lfunc_end0:
	.size	setup, .Lfunc_end0-setup
	.cfi_endproc
	.fnend

	.globl	render
	.p2align	3
	.type	render,%function
render:                                 @ @render
.Lfunc_begin1:
	.loc	1 36 0                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:36:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp10:
	.cfi_def_cfa_offset 32
.Ltmp11:
	.cfi_offset lr, -4
.Ltmp12:
	.cfi_offset r11, -8
.Ltmp13:
	.cfi_offset r10, -12
.Ltmp14:
	.cfi_offset r8, -16
.Ltmp15:
	.cfi_offset r7, -20
.Ltmp16:
	.cfi_offset r6, -24
.Ltmp17:
	.cfi_offset r5, -28
.Ltmp18:
	.cfi_offset r4, -32
	.setfp	r11, sp, #24
	add	r11, sp, #24
.Ltmp19:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9, d10, d11, d12}
	vpush	{d8, d9, d10, d11, d12}
.Ltmp20:
	.cfi_offset d12, -40
.Ltmp21:
	.cfi_offset d11, -48
.Ltmp22:
	.cfi_offset d10, -56
.Ltmp23:
	.cfi_offset d9, -64
.Ltmp24:
	.cfi_offset d8, -72
	@DEBUG_VALUE: render:context <- %R0
	@DEBUG_VALUE: render:userData <- %R1
	mov	r4, r0
.Ltmp25:
	@DEBUG_VALUE: n <- 0
	@DEBUG_VALUE: render:context <- %R4
	.loc	1 37 39 prologue_end discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:37:39
	ldr	r0, [r4, #20]
	.loc	1 37 2 is_stmt 0 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:37:2
	cmp	r0, #0
	beq	.LBB1_6
.Ltmp26:
@ BB#1:                                 @ %.lr.ph
	@DEBUG_VALUE: render:context <- %R4
	@DEBUG_VALUE: render:userData <- %R1
	.loc	1 38 6 is_stmt 1        @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:6
	movw	r8, :lower16:.L_MergedGlobals
.Ltmp27:
	.loc	1 46 43                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:43
	vldr	d9, .LCPI1_2
.Ltmp28:
	.loc	1 47 54 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:47:54
	vldr	d10, .LCPI1_3
	mov	r5, #0
.Ltmp29:
	.file	9 "./include" "Utilities.h"
	.loc	9 73 44                 @ ./include/Utilities.h:73:44
	vldr	s22, .LCPI1_0
.Ltmp30:
	.loc	1 38 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:6
	movt	r8, :upper16:.L_MergedGlobals
.Ltmp31:
	.loc	9 73 64                 @ ./include/Utilities.h:73:64
	vldr	s24, .LCPI1_1
.Ltmp32:
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 38 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:6
	ldr	r6, [r8, #24]
	.loc	1 38 24 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:24
	cmp	r6, #0
	beq	.LBB1_5
@ BB#3:                                 @   in Loop: Header=BB1_2 Depth=1
	.loc	1 38 31 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:31
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_uidivmod
	.loc	1 38 6 discriminator 1  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:38:6
	cmp	r1, #0
	bne	.LBB1_5
@ BB#4:                                 @   in Loop: Header=BB1_2 Depth=1
.Ltmp33:
	.loc	1 40 41 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:40:41
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_uidiv
	ldr	r2, [r4, #40]
	.loc	1 40 61 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:40:61
	ldr	r3, [r8]
	ldr	r1, [r4, #8]
.Ltmp34:
	.loc	3 1400 61 is_stmt 1     @ ./include/Bela.h:1400:61
	mla	r0, r2, r0, r3
	.loc	3 1400 9 is_stmt 0      @ ./include/Bela.h:1400:9
	add	r0, r1, r0, lsl #2
	vldr	s0, [r0]
.Ltmp35:
	@DEBUG_VALUE: map:out_max <- 1.000000e+03
	@DEBUG_VALUE: map:out_min <- 1.000000e+02
	@DEBUG_VALUE: map:in_max <- 1.000000e+00
	@DEBUG_VALUE: map:in_min <- 0.000000e+00
	.loc	9 73 44 is_stmt 1       @ ./include/Utilities.h:73:44
	vmul.f32	d16, d0, d11
	.loc	9 73 64 is_stmt 0       @ ./include/Utilities.h:73:64
	vadd.f32	d0, d16, d12
.Ltmp36:
	.loc	1 40 14 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:40:14
	vstr	s0, [r8, #12]
.Ltmp37:
.LBB1_5:                                @   in Loop: Header=BB1_2 Depth=1
	.loc	1 43 28 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:43:28
	add	r0, r8, #28
	mov	r1, r4
	mov	r2, r5
	bl	_ZN7Encoder8getSpeedEP11BelaContexti
	.loc	1 46 45                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:45
	vldr	s2, [r8, #12]
	.loc	1 43 28 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:43:28
	vorr	d8, d0, d0
.Ltmp38:
	@DEBUG_VALUE: speed <- %S16
	.loc	1 46 57                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:57
	vldr	s4, [r8, #20]
	.loc	1 46 45 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:45
	vcvt.f64.f32	d16, s2
	.loc	1 46 43                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:43
	vmul.f64	d16, d16, d9
	.loc	1 46 57                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:57
	vcvt.f64.f32	d17, s4
	.loc	1 46 55                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:55
	vmul.f64	d16, d16, d17
	.loc	1 45 34 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:45:34
	vldr	s0, [r8, #16]
	.loc	1 46 11                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:11
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d16, d17
	vcvt.f32.f64	s2, d16
.Ltmp39:
	.loc	1 47 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:47:6
	vcvt.f64.f32	d16, s2
.Ltmp40:
	.loc	1 47 6 is_stmt 0        @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:47:6
	vcmpe.f64	d16, d9
	vmrs	APSR_nzcv, fpscr
.Ltmp41:
	.loc	1 47 54 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:47:54
	vadd.f64	d17, d16, d10
	vcvt.f32.f64	s4, d17
.Ltmp42:
	.loc	1 47 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:47:6
	vmovgt.f32	s2, s4
	.loc	1 46 11 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:46:11
	vstr	s2, [r8, #16]
	ldr	r0, [r4, #28]
	ldr	r6, [r4, #4]
.Ltmp43:
	.loc	3 1389 26               @ ./include/Bela.h:1389:26
	mul	r7, r0, r5
.Ltmp44:
	.loc	1 45 29 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:45:29
	bl	sinf
                                        @ kill: %S0<def> %S0<kill> %D0<def>
	add	r0, r6, r7, lsl #2
.Ltmp45:
	.loc	1 37 53 discriminator 3 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:37:53
	add	r5, r5, #1
.Ltmp46:
	@DEBUG_VALUE: n <- %R5
	.loc	1 45 15                 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:45:15
	vmul.f32	d0, d0, d8
.Ltmp47:
	@DEBUG_VALUE: out <- %S0
	.loc	3 1389 65               @ ./include/Bela.h:1389:65
	vstr	s0, [r0]
.Ltmp48:
	.loc	3 1389 65 is_stmt 0     @ ./include/Bela.h:1389:65
	vstr	s0, [r0, #4]
.Ltmp49:
	.loc	1 37 39 is_stmt 1 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:37:39
	ldr	r0, [r4, #20]
	.loc	1 37 2 is_stmt 0 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:37:2
	cmp	r5, r0
	blo	.LBB1_2
.Ltmp50:
.LBB1_6:                                @ %._crit_edge
	.loc	1 53 1 is_stmt 1        @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:53:1
	vpop	{d8, d9, d10, d11, d12}
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.Ltmp51:
	.p2align	3
@ BB#7:
.LCPI1_2:
	.long	1413754136              @ double 6.2831853071795862
	.long	1075388923
.LCPI1_3:
	.long	1413754136              @ double -6.2831853071795862
	.long	3222872571
.LCPI1_0:
	.long	1147207680              @ float 900
.LCPI1_1:
	.long	1120403456              @ float 100
.Lfunc_end1:
	.size	render, .Lfunc_end1-render
	.cfi_endproc
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
.Lfunc_begin2:
	.loc	1 55 0                  @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:55:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: cleanup:context <- %R0
	@DEBUG_VALUE: cleanup:userData <- %R1
	.loc	1 57 1 prologue_end     @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:57:1
	bx	lr
.Ltmp52:
.Lfunc_end2:
	.size	cleanup, .Lfunc_end2-cleanup
	.cfi_endproc
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	2
	.type	_GLOBAL__sub_I_render.ii,%function
_GLOBAL__sub_I_render.ii:               @ @_GLOBAL__sub_I_render.ii
.Lfunc_begin3:
	.file	10 "/root/Bela/projects/A08C-Roller-EncoderFile/build" "render.cpp"
	.loc	10 0 0                  @ /root/Bela/projects/A08C-Roller-EncoderFile/build/render.cpp:0:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.loc	1 15 20 prologue_end    @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:15:20
	movw	r0, :lower16:.L_MergedGlobals
	movt	r0, :upper16:.L_MergedGlobals
	ldmib	r0, {r1, r2}
	.loc	1 15 9 is_stmt 0        @ /root/Bela/projects/A08C-Roller-EncoderFile/render.cpp:15:9
	add	r0, r0, #28
	b	_ZN7EncoderC1Eii
.Ltmp53:
.Lfunc_end3:
	.size	_GLOBAL__sub_I_render.ii, .Lfunc_end3-_GLOBAL__sub_I_render.ii
	.cfi_endproc
	.fnend

	.type	amplitude,%object       @ @amplitude
	.bss
	.globl	amplitude
	.p2align	2
amplitude:
	.long	0                       @ float 0
	.size	amplitude, 4

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_render.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.long	0                       @ 0x0
	.long	6                       @ 0x6
	.long	7                       @ 0x7
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ 0x0
	.zero	44
	.size	.L_MergedGlobals, 72

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/A08C-Roller-EncoderFile/build/render.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=106
.Linfo_string3:
	.asciz	"gFreqChan"             @ string offset=117
.Linfo_string4:
	.asciz	"int"                   @ string offset=127
.Linfo_string5:
	.asciz	"Apin"                  @ string offset=131
.Linfo_string6:
	.asciz	"Bpin"                  @ string offset=136
.Linfo_string7:
	.asciz	"encoderOne"            @ string offset=141
.Linfo_string8:
	.asciz	"APIN"                  @ string offset=152
.Linfo_string9:
	.asciz	"BPIN"                  @ string offset=157
.Linfo_string10:
	.asciz	"encoderLastState"      @ string offset=162
.Linfo_string11:
	.asciz	"thisStateCounter"      @ string offset=179
.Linfo_string12:
	.asciz	"lastStateCount"        @ string offset=196
.Linfo_string13:
	.asciz	"minCount"              @ string offset=211
.Linfo_string14:
	.asciz	"maxCount"              @ string offset=220
.Linfo_string15:
	.asciz	"newSpeed"              @ string offset=229
.Linfo_string16:
	.asciz	"float"                 @ string offset=238
.Linfo_string17:
	.asciz	"lastSpeed"             @ string offset=244
.Linfo_string18:
	.asciz	"speed"                 @ string offset=254
.Linfo_string19:
	.asciz	"smoothFrac"            @ string offset=260
.Linfo_string20:
	.asciz	"Encoder"               @ string offset=271
.Linfo_string21:
	.asciz	"_ZN7Encoder8getSpeedEP11BelaContexti" @ string offset=279
.Linfo_string22:
	.asciz	"getSpeed"              @ string offset=316
.Linfo_string23:
	.asciz	"audioIn"               @ string offset=325
.Linfo_string24:
	.asciz	"audioOut"              @ string offset=333
.Linfo_string25:
	.asciz	"analogIn"              @ string offset=342
.Linfo_string26:
	.asciz	"analogOut"             @ string offset=351
.Linfo_string27:
	.asciz	"digital"               @ string offset=361
.Linfo_string28:
	.asciz	"unsigned int"          @ string offset=369
.Linfo_string29:
	.asciz	"uint32_t"              @ string offset=382
.Linfo_string30:
	.asciz	"audioFrames"           @ string offset=391
.Linfo_string31:
	.asciz	"audioInChannels"       @ string offset=403
.Linfo_string32:
	.asciz	"audioOutChannels"      @ string offset=419
.Linfo_string33:
	.asciz	"audioSampleRate"       @ string offset=436
.Linfo_string34:
	.asciz	"analogFrames"          @ string offset=452
.Linfo_string35:
	.asciz	"analogInChannels"      @ string offset=465
.Linfo_string36:
	.asciz	"analogOutChannels"     @ string offset=482
.Linfo_string37:
	.asciz	"analogSampleRate"      @ string offset=500
.Linfo_string38:
	.asciz	"digitalFrames"         @ string offset=517
.Linfo_string39:
	.asciz	"digitalChannels"       @ string offset=531
.Linfo_string40:
	.asciz	"digitalSampleRate"     @ string offset=547
.Linfo_string41:
	.asciz	"audioFramesElapsed"    @ string offset=565
.Linfo_string42:
	.asciz	"long long unsigned int" @ string offset=584
.Linfo_string43:
	.asciz	"uint64_t"              @ string offset=607
.Linfo_string44:
	.asciz	"multiplexerChannels"   @ string offset=616
.Linfo_string45:
	.asciz	"multiplexerStartingChannel" @ string offset=636
.Linfo_string46:
	.asciz	"multiplexerAnalogIn"   @ string offset=663
.Linfo_string47:
	.asciz	"audioExpanderEnabled"  @ string offset=683
.Linfo_string48:
	.asciz	"flags"                 @ string offset=704
.Linfo_string49:
	.asciz	"projectName"           @ string offset=710
.Linfo_string50:
	.asciz	"char"                  @ string offset=722
.Linfo_string51:
	.asciz	"sizetype"              @ string offset=727
.Linfo_string52:
	.asciz	"underrunCount"         @ string offset=736
.Linfo_string53:
	.asciz	"BelaContext"           @ string offset=750
.Linfo_string54:
	.asciz	"frequency"             @ string offset=762
.Linfo_string55:
	.asciz	"amplitude"             @ string offset=772
.Linfo_string56:
	.asciz	"gPhase1"               @ string offset=782
.Linfo_string57:
	.asciz	"gSampleTime"           @ string offset=790
.Linfo_string58:
	.asciz	"gAnalogFrameRatio"     @ string offset=802
.Linfo_string59:
	.asciz	"std"                   @ string offset=820
.Linfo_string60:
	.asciz	"__acos_finite"         @ string offset=824
.Linfo_string61:
	.asciz	"acos"                  @ string offset=838
.Linfo_string62:
	.asciz	"double"                @ string offset=843
.Linfo_string63:
	.asciz	"__asin_finite"         @ string offset=850
.Linfo_string64:
	.asciz	"asin"                  @ string offset=864
.Linfo_string65:
	.asciz	"atan"                  @ string offset=869
.Linfo_string66:
	.asciz	"__atan2_finite"        @ string offset=874
.Linfo_string67:
	.asciz	"atan2"                 @ string offset=889
.Linfo_string68:
	.asciz	"ceil"                  @ string offset=895
.Linfo_string69:
	.asciz	"cos"                   @ string offset=900
.Linfo_string70:
	.asciz	"__cosh_finite"         @ string offset=904
.Linfo_string71:
	.asciz	"cosh"                  @ string offset=918
.Linfo_string72:
	.asciz	"__exp_finite"          @ string offset=923
.Linfo_string73:
	.asciz	"exp"                   @ string offset=936
.Linfo_string74:
	.asciz	"fabs"                  @ string offset=940
.Linfo_string75:
	.asciz	"floor"                 @ string offset=945
.Linfo_string76:
	.asciz	"__fmod_finite"         @ string offset=951
.Linfo_string77:
	.asciz	"fmod"                  @ string offset=965
.Linfo_string78:
	.asciz	"frexp"                 @ string offset=970
.Linfo_string79:
	.asciz	"ldexp"                 @ string offset=976
.Linfo_string80:
	.asciz	"__log_finite"          @ string offset=982
.Linfo_string81:
	.asciz	"log"                   @ string offset=995
.Linfo_string82:
	.asciz	"__log10_finite"        @ string offset=999
.Linfo_string83:
	.asciz	"log10"                 @ string offset=1014
.Linfo_string84:
	.asciz	"modf"                  @ string offset=1020
.Linfo_string85:
	.asciz	"__pow_finite"          @ string offset=1025
.Linfo_string86:
	.asciz	"pow"                   @ string offset=1038
.Linfo_string87:
	.asciz	"sin"                   @ string offset=1042
.Linfo_string88:
	.asciz	"__sinh_finite"         @ string offset=1046
.Linfo_string89:
	.asciz	"sinh"                  @ string offset=1060
.Linfo_string90:
	.asciz	"__sqrt_finite"         @ string offset=1065
.Linfo_string91:
	.asciz	"sqrt"                  @ string offset=1079
.Linfo_string92:
	.asciz	"tan"                   @ string offset=1084
.Linfo_string93:
	.asciz	"tanh"                  @ string offset=1088
.Linfo_string94:
	.asciz	"double_t"              @ string offset=1093
.Linfo_string95:
	.asciz	"float_t"               @ string offset=1102
.Linfo_string96:
	.asciz	"__acosh_finite"        @ string offset=1110
.Linfo_string97:
	.asciz	"acosh"                 @ string offset=1125
.Linfo_string98:
	.asciz	"__acoshf_finite"       @ string offset=1131
.Linfo_string99:
	.asciz	"acoshf"                @ string offset=1147
.Linfo_string100:
	.asciz	"acoshl"                @ string offset=1154
.Linfo_string101:
	.asciz	"long double"           @ string offset=1161
.Linfo_string102:
	.asciz	"asinh"                 @ string offset=1173
.Linfo_string103:
	.asciz	"asinhf"                @ string offset=1179
.Linfo_string104:
	.asciz	"asinhl"                @ string offset=1186
.Linfo_string105:
	.asciz	"__atanh_finite"        @ string offset=1193
.Linfo_string106:
	.asciz	"atanh"                 @ string offset=1208
.Linfo_string107:
	.asciz	"__atanhf_finite"       @ string offset=1214
.Linfo_string108:
	.asciz	"atanhf"                @ string offset=1230
.Linfo_string109:
	.asciz	"atanhl"                @ string offset=1237
.Linfo_string110:
	.asciz	"cbrt"                  @ string offset=1244
.Linfo_string111:
	.asciz	"cbrtf"                 @ string offset=1249
.Linfo_string112:
	.asciz	"cbrtl"                 @ string offset=1255
.Linfo_string113:
	.asciz	"copysign"              @ string offset=1261
.Linfo_string114:
	.asciz	"copysignf"             @ string offset=1270
.Linfo_string115:
	.asciz	"copysignl"             @ string offset=1280
.Linfo_string116:
	.asciz	"erf"                   @ string offset=1290
.Linfo_string117:
	.asciz	"erff"                  @ string offset=1294
.Linfo_string118:
	.asciz	"erfl"                  @ string offset=1299
.Linfo_string119:
	.asciz	"erfc"                  @ string offset=1304
.Linfo_string120:
	.asciz	"erfcf"                 @ string offset=1309
.Linfo_string121:
	.asciz	"erfcl"                 @ string offset=1315
.Linfo_string122:
	.asciz	"__exp2_finite"         @ string offset=1321
.Linfo_string123:
	.asciz	"exp2"                  @ string offset=1335
.Linfo_string124:
	.asciz	"__exp2f_finite"        @ string offset=1340
.Linfo_string125:
	.asciz	"exp2f"                 @ string offset=1355
.Linfo_string126:
	.asciz	"exp2l"                 @ string offset=1361
.Linfo_string127:
	.asciz	"expm1"                 @ string offset=1367
.Linfo_string128:
	.asciz	"expm1f"                @ string offset=1373
.Linfo_string129:
	.asciz	"expm1l"                @ string offset=1380
.Linfo_string130:
	.asciz	"fdim"                  @ string offset=1387
.Linfo_string131:
	.asciz	"fdimf"                 @ string offset=1392
.Linfo_string132:
	.asciz	"fdiml"                 @ string offset=1398
.Linfo_string133:
	.asciz	"fma"                   @ string offset=1404
.Linfo_string134:
	.asciz	"fmaf"                  @ string offset=1408
.Linfo_string135:
	.asciz	"fmal"                  @ string offset=1413
.Linfo_string136:
	.asciz	"fmax"                  @ string offset=1418
.Linfo_string137:
	.asciz	"fmaxf"                 @ string offset=1423
.Linfo_string138:
	.asciz	"fmaxl"                 @ string offset=1429
.Linfo_string139:
	.asciz	"fmin"                  @ string offset=1435
.Linfo_string140:
	.asciz	"fminf"                 @ string offset=1440
.Linfo_string141:
	.asciz	"fminl"                 @ string offset=1446
.Linfo_string142:
	.asciz	"__hypot_finite"        @ string offset=1452
.Linfo_string143:
	.asciz	"hypot"                 @ string offset=1467
.Linfo_string144:
	.asciz	"__hypotf_finite"       @ string offset=1473
.Linfo_string145:
	.asciz	"hypotf"                @ string offset=1489
.Linfo_string146:
	.asciz	"hypotl"                @ string offset=1496
.Linfo_string147:
	.asciz	"ilogb"                 @ string offset=1503
.Linfo_string148:
	.asciz	"ilogbf"                @ string offset=1509
.Linfo_string149:
	.asciz	"ilogbl"                @ string offset=1516
.Linfo_string150:
	.asciz	"lgamma"                @ string offset=1523
.Linfo_string151:
	.asciz	"lgammaf"               @ string offset=1530
.Linfo_string152:
	.asciz	"lgammal"               @ string offset=1538
.Linfo_string153:
	.asciz	"llrint"                @ string offset=1546
.Linfo_string154:
	.asciz	"long long int"         @ string offset=1553
.Linfo_string155:
	.asciz	"llrintf"               @ string offset=1567
.Linfo_string156:
	.asciz	"llrintl"               @ string offset=1575
.Linfo_string157:
	.asciz	"llround"               @ string offset=1583
.Linfo_string158:
	.asciz	"llroundf"              @ string offset=1591
.Linfo_string159:
	.asciz	"llroundl"              @ string offset=1600
.Linfo_string160:
	.asciz	"log1p"                 @ string offset=1609
.Linfo_string161:
	.asciz	"log1pf"                @ string offset=1615
.Linfo_string162:
	.asciz	"log1pl"                @ string offset=1622
.Linfo_string163:
	.asciz	"__log2_finite"         @ string offset=1629
.Linfo_string164:
	.asciz	"log2"                  @ string offset=1643
.Linfo_string165:
	.asciz	"__log2f_finite"        @ string offset=1648
.Linfo_string166:
	.asciz	"log2f"                 @ string offset=1663
.Linfo_string167:
	.asciz	"log2l"                 @ string offset=1669
.Linfo_string168:
	.asciz	"logb"                  @ string offset=1675
.Linfo_string169:
	.asciz	"logbf"                 @ string offset=1680
.Linfo_string170:
	.asciz	"logbl"                 @ string offset=1686
.Linfo_string171:
	.asciz	"lrint"                 @ string offset=1692
.Linfo_string172:
	.asciz	"long int"              @ string offset=1698
.Linfo_string173:
	.asciz	"lrintf"                @ string offset=1707
.Linfo_string174:
	.asciz	"lrintl"                @ string offset=1714
.Linfo_string175:
	.asciz	"lround"                @ string offset=1721
.Linfo_string176:
	.asciz	"lroundf"               @ string offset=1728
.Linfo_string177:
	.asciz	"lroundl"               @ string offset=1736
.Linfo_string178:
	.asciz	"nan"                   @ string offset=1744
.Linfo_string179:
	.asciz	"nanf"                  @ string offset=1748
.Linfo_string180:
	.asciz	"nanl"                  @ string offset=1753
.Linfo_string181:
	.asciz	"nearbyint"             @ string offset=1758
.Linfo_string182:
	.asciz	"nearbyintf"            @ string offset=1768
.Linfo_string183:
	.asciz	"nearbyintl"            @ string offset=1779
.Linfo_string184:
	.asciz	"nextafter"             @ string offset=1790
.Linfo_string185:
	.asciz	"nextafterf"            @ string offset=1800
.Linfo_string186:
	.asciz	"nextafterl"            @ string offset=1811
.Linfo_string187:
	.asciz	"nexttoward"            @ string offset=1822
.Linfo_string188:
	.asciz	"nexttowardf"           @ string offset=1833
.Linfo_string189:
	.asciz	"nexttowardl"           @ string offset=1845
.Linfo_string190:
	.asciz	"__remainder_finite"    @ string offset=1857
.Linfo_string191:
	.asciz	"remainder"             @ string offset=1876
.Linfo_string192:
	.asciz	"__remainderf_finite"   @ string offset=1886
.Linfo_string193:
	.asciz	"remainderf"            @ string offset=1906
.Linfo_string194:
	.asciz	"remainderl"            @ string offset=1917
.Linfo_string195:
	.asciz	"remquo"                @ string offset=1928
.Linfo_string196:
	.asciz	"remquof"               @ string offset=1935
.Linfo_string197:
	.asciz	"remquol"               @ string offset=1943
.Linfo_string198:
	.asciz	"rint"                  @ string offset=1951
.Linfo_string199:
	.asciz	"rintf"                 @ string offset=1956
.Linfo_string200:
	.asciz	"rintl"                 @ string offset=1962
.Linfo_string201:
	.asciz	"round"                 @ string offset=1968
.Linfo_string202:
	.asciz	"roundf"                @ string offset=1974
.Linfo_string203:
	.asciz	"roundl"                @ string offset=1981
.Linfo_string204:
	.asciz	"scalbln"               @ string offset=1988
.Linfo_string205:
	.asciz	"scalblnf"              @ string offset=1996
.Linfo_string206:
	.asciz	"scalblnl"              @ string offset=2005
.Linfo_string207:
	.asciz	"scalbn"                @ string offset=2014
.Linfo_string208:
	.asciz	"scalbnf"               @ string offset=2021
.Linfo_string209:
	.asciz	"scalbnl"               @ string offset=2029
.Linfo_string210:
	.asciz	"tgamma"                @ string offset=2037
.Linfo_string211:
	.asciz	"tgammaf"               @ string offset=2044
.Linfo_string212:
	.asciz	"tgammal"               @ string offset=2052
.Linfo_string213:
	.asciz	"trunc"                 @ string offset=2060
.Linfo_string214:
	.asciz	"truncf"                @ string offset=2066
.Linfo_string215:
	.asciz	"truncl"                @ string offset=2073
.Linfo_string216:
	.asciz	"_ZL3mapfffff"          @ string offset=2080
.Linfo_string217:
	.asciz	"map"                   @ string offset=2093
.Linfo_string218:
	.asciz	"x"                     @ string offset=2097
.Linfo_string219:
	.asciz	"in_min"                @ string offset=2099
.Linfo_string220:
	.asciz	"in_max"                @ string offset=2106
.Linfo_string221:
	.asciz	"out_min"               @ string offset=2113
.Linfo_string222:
	.asciz	"out_max"               @ string offset=2121
.Linfo_string223:
	.asciz	"_ZL10analogReadP11BelaContextii" @ string offset=2129
.Linfo_string224:
	.asciz	"analogRead"            @ string offset=2161
.Linfo_string225:
	.asciz	"context"               @ string offset=2172
.Linfo_string226:
	.asciz	"frame"                 @ string offset=2180
.Linfo_string227:
	.asciz	"channel"               @ string offset=2186
.Linfo_string228:
	.asciz	"_ZL10audioWriteP11BelaContextiif" @ string offset=2194
.Linfo_string229:
	.asciz	"audioWrite"            @ string offset=2227
.Linfo_string230:
	.asciz	"value"                 @ string offset=2238
.Linfo_string231:
	.asciz	"__cxx_global_var_init" @ string offset=2244
.Linfo_string232:
	.asciz	"setup"                 @ string offset=2266
.Linfo_string233:
	.asciz	"bool"                  @ string offset=2272
.Linfo_string234:
	.asciz	"render"                @ string offset=2277
.Linfo_string235:
	.asciz	"cleanup"               @ string offset=2284
.Linfo_string236:
	.asciz	"_GLOBAL__sub_I_render.ii" @ string offset=2292
.Linfo_string237:
	.asciz	"userData"              @ string offset=2317
.Linfo_string238:
	.asciz	"n"                     @ string offset=2326
.Linfo_string239:
	.asciz	"out"                   @ string offset=2328
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp8
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin0
	.long	.Ltmp7
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin1
	.long	.Ltmp25
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp25
	.long	.Ltmp32
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin1
	.long	.Ltmp32
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp25
	.long	.Ltmp46
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp46
	.long	.Ltmp50
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp35
	.long	.Lfunc_end1
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1148846080
	.byte	128                     @ DW_OP_stack_value
	.byte	232                     @ 
	.byte	163                     @ 
	.byte	4                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp35
	.long	.Lfunc_end1
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1120403456
	.byte	128                     @ DW_OP_stack_value
	.byte	160                     @ 
	.byte	150                     @ 
	.byte	4                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp35
	.long	.Lfunc_end1
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1065353216
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	252                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp35
	.long	.Lfunc_end1
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp38
	.long	.Ltmp50
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp47
	.long	.Ltmp50
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	5                       @ DW_FORM_data2
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.ascii	"\266B"                 @ DW_AT_GNU_discriminator
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	43                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	44                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	45                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	5099                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x13e4 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges3         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x14 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	0
	.byte	34
	.byte	3                       @ Abbrev [3] 0x3a:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x41:0x14 DW_TAG_variable
	.long	.Linfo_string5          @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	4
	.byte	34
	.byte	2                       @ Abbrev [2] 0x55:0x14 DW_TAG_variable
	.long	.Linfo_string6          @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	8
	.byte	34
	.byte	2                       @ Abbrev [2] 0x69:0x14 DW_TAG_variable
	.long	.Linfo_string7          @ DW_AT_name
	.long	125                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	28
	.byte	34
	.byte	4                       @ Abbrev [4] 0x7d:0xc5 DW_TAG_class_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	44                      @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	6                       @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x85:0xc DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x91:0xc DW_TAG_member
	.long	.Linfo_string9          @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x9d:0xc DW_TAG_member
	.long	.Linfo_string10         @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xa9:0xc DW_TAG_member
	.long	.Linfo_string11         @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xb5:0xc DW_TAG_member
	.long	.Linfo_string12         @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xc1:0xc DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xcd:0xc DW_TAG_member
	.long	.Linfo_string14         @ DW_AT_name
	.long	58                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xd9:0xc DW_TAG_member
	.long	.Linfo_string15         @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xe5:0xc DW_TAG_member
	.long	.Linfo_string17         @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xf1:0xc DW_TAG_member
	.long	.Linfo_string18         @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0xfd:0xc DW_TAG_member
	.long	.Linfo_string19         @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x109:0x18 DW_TAG_subprogram
	.long	.Linfo_string20         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x111:0x5 DW_TAG_formal_parameter
	.long	329                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x116:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x11b:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x121:0x20 DW_TAG_subprogram
	.long	.Linfo_string21         @ DW_AT_linkage_name
	.long	.Linfo_string22         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x131:0x5 DW_TAG_formal_parameter
	.long	329                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x136:0x5 DW_TAG_formal_parameter
	.long	334                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x13b:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x142:0x7 DW_TAG_base_type
	.long	.Linfo_string16         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	10                      @ Abbrev [10] 0x149:0x5 DW_TAG_pointer_type
	.long	125                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x14e:0x5 DW_TAG_pointer_type
	.long	339                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x153:0xc DW_TAG_typedef
	.long	351                     @ DW_AT_type
	.long	.Linfo_string53         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	410                     @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x15f:0x13d DW_TAG_structure_type
	.short	352                     @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x164:0xc DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	668                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	238                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x170:0xc DW_TAG_member
	.long	.Linfo_string24         @ DW_AT_name
	.long	683                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string25         @ DW_AT_name
	.long	668                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	272                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x189:0xd DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	683                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	287                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x196:0xd DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	693                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	297                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1a3:0xd DW_TAG_member
	.long	.Linfo_string30         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	311                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1b0:0xd DW_TAG_member
	.long	.Linfo_string31         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1bd:0xd DW_TAG_member
	.long	.Linfo_string32         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	315                     @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1ca:0xd DW_TAG_member
	.long	.Linfo_string33         @ DW_AT_name
	.long	678                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	317                     @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1d7:0xd DW_TAG_member
	.long	.Linfo_string34         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1e4:0xd DW_TAG_member
	.long	.Linfo_string35         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1f1:0xd DW_TAG_member
	.long	.Linfo_string36         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	340                     @ DW_AT_decl_line
	.byte	44                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x1fe:0xd DW_TAG_member
	.long	.Linfo_string37         @ DW_AT_name
	.long	678                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	351                     @ DW_AT_decl_line
	.byte	48                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x20b:0xd DW_TAG_member
	.long	.Linfo_string38         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.byte	52                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x218:0xd DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	358                     @ DW_AT_decl_line
	.byte	56                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x225:0xd DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	678                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.byte	60                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x232:0xd DW_TAG_member
	.long	.Linfo_string41         @ DW_AT_name
	.long	726                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	368                     @ DW_AT_decl_line
	.byte	64                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x23f:0xd DW_TAG_member
	.long	.Linfo_string44         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	374                     @ DW_AT_decl_line
	.byte	72                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x24c:0xd DW_TAG_member
	.long	.Linfo_string45         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	380                     @ DW_AT_decl_line
	.byte	76                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x259:0xd DW_TAG_member
	.long	.Linfo_string46         @ DW_AT_name
	.long	668                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	387                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x266:0xd DW_TAG_member
	.long	.Linfo_string47         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	393                     @ DW_AT_decl_line
	.byte	84                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x273:0xd DW_TAG_member
	.long	.Linfo_string48         @ DW_AT_name
	.long	721                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	403                     @ DW_AT_decl_line
	.byte	88                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x280:0xd DW_TAG_member
	.long	.Linfo_string49         @ DW_AT_name
	.long	749                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	406                     @ DW_AT_decl_line
	.byte	92                      @ DW_AT_data_member_location
	.byte	14                      @ Abbrev [14] 0x28d:0xe DW_TAG_member
	.long	.Linfo_string52         @ DW_AT_name
	.long	776                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	409                     @ DW_AT_decl_line
	.short	348                     @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x29c:0x5 DW_TAG_const_type
	.long	673                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x2a1:0x5 DW_TAG_pointer_type
	.long	678                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x2a6:0x5 DW_TAG_const_type
	.long	322                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x2ab:0x5 DW_TAG_const_type
	.long	688                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x2b0:0x5 DW_TAG_pointer_type
	.long	322                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x2b5:0x5 DW_TAG_const_type
	.long	698                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x2ba:0x5 DW_TAG_pointer_type
	.long	703                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x2bf:0xb DW_TAG_typedef
	.long	714                     @ DW_AT_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x2ca:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x2d1:0x5 DW_TAG_const_type
	.long	703                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x2d6:0x5 DW_TAG_const_type
	.long	731                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x2db:0xb DW_TAG_typedef
	.long	742                     @ DW_AT_type
	.long	.Linfo_string43         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x2e6:0x7 DW_TAG_base_type
	.long	.Linfo_string42         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x2ed:0xd DW_TAG_array_type
	.long	762                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x2f2:0x7 DW_TAG_subrange_type
	.long	769                     @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x2fa:0x7 DW_TAG_base_type
	.long	.Linfo_string50         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	19                      @ Abbrev [19] 0x301:0x7 DW_TAG_base_type
	.long	.Linfo_string51         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	15                      @ Abbrev [15] 0x308:0x5 DW_TAG_const_type
	.long	714                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x30d:0x14 DW_TAG_variable
	.long	.Linfo_string54         @ DW_AT_name
	.long	322                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	12
	.byte	34
	.byte	2                       @ Abbrev [2] 0x321:0x11 DW_TAG_variable
	.long	.Linfo_string55         @ DW_AT_name
	.long	322                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	amplitude
	.byte	2                       @ Abbrev [2] 0x332:0x14 DW_TAG_variable
	.long	.Linfo_string56         @ DW_AT_name
	.long	322                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	16
	.byte	34
	.byte	2                       @ Abbrev [2] 0x346:0x14 DW_TAG_variable
	.long	.Linfo_string57         @ DW_AT_name
	.long	322                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	20
	.byte	34
	.byte	2                       @ Abbrev [2] 0x35a:0x14 DW_TAG_variable
	.long	.Linfo_string58         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	24
	.byte	34
	.byte	20                      @ Abbrev [20] 0x36e:0x408 DW_TAG_namespace
	.long	.Linfo_string59         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x375:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1910                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x37c:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	1938                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x383:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1959                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x38a:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	1976                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x391:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	2002                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x398:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	2019                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x39f:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	2036                    @ DW_AT_import
	.byte	21                      @ Abbrev [21] 0x3a6:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	241                     @ DW_AT_decl_line
	.long	2057                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3ad:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2078                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3b5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	2095                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3bd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	2112                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3c5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	2138                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3cd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	2165                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3d5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2187                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3dd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	2209                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3e5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	2231                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3ed:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	2258                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3f5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	444                     @ DW_AT_decl_line
	.long	2285                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x3fd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	463                     @ DW_AT_decl_line
	.long	2302                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x405:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	482                     @ DW_AT_decl_line
	.long	2324                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x40d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	501                     @ DW_AT_decl_line
	.long	2346                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x415:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	520                     @ DW_AT_decl_line
	.long	2363                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x41d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1101                    @ DW_AT_decl_line
	.long	2380                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x425:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1102                    @ DW_AT_decl_line
	.long	2391                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x42d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1105                    @ DW_AT_decl_line
	.long	2402                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x435:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1106                    @ DW_AT_decl_line
	.long	2423                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x43d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1107                    @ DW_AT_decl_line
	.long	2444                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x445:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1109                    @ DW_AT_decl_line
	.long	2472                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x44d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1110                    @ DW_AT_decl_line
	.long	2489                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x455:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1111                    @ DW_AT_decl_line
	.long	2506                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x45d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1113                    @ DW_AT_decl_line
	.long	2523                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x465:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1114                    @ DW_AT_decl_line
	.long	2544                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x46d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1115                    @ DW_AT_decl_line
	.long	2565                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x475:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1117                    @ DW_AT_decl_line
	.long	2586                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x47d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1118                    @ DW_AT_decl_line
	.long	2603                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x485:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1119                    @ DW_AT_decl_line
	.long	2620                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x48d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1121                    @ DW_AT_decl_line
	.long	2637                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x495:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1122                    @ DW_AT_decl_line
	.long	2659                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x49d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1123                    @ DW_AT_decl_line
	.long	2681                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4a5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1125                    @ DW_AT_decl_line
	.long	2703                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4ad:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1126                    @ DW_AT_decl_line
	.long	2721                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4b5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1127                    @ DW_AT_decl_line
	.long	2739                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4bd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1129                    @ DW_AT_decl_line
	.long	2757                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4c5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1130                    @ DW_AT_decl_line
	.long	2775                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4cd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1131                    @ DW_AT_decl_line
	.long	2793                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4d5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1133                    @ DW_AT_decl_line
	.long	2811                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4dd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1134                    @ DW_AT_decl_line
	.long	2832                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4e5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1135                    @ DW_AT_decl_line
	.long	2853                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4ed:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1137                    @ DW_AT_decl_line
	.long	2874                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4f5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1138                    @ DW_AT_decl_line
	.long	2891                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x4fd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1139                    @ DW_AT_decl_line
	.long	2908                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x505:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1141                    @ DW_AT_decl_line
	.long	2925                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x50d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1142                    @ DW_AT_decl_line
	.long	2948                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x515:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1143                    @ DW_AT_decl_line
	.long	2971                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x51d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1145                    @ DW_AT_decl_line
	.long	2994                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x525:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1146                    @ DW_AT_decl_line
	.long	3022                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x52d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1147                    @ DW_AT_decl_line
	.long	3050                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x535:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1149                    @ DW_AT_decl_line
	.long	3078                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x53d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1150                    @ DW_AT_decl_line
	.long	3101                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x545:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1151                    @ DW_AT_decl_line
	.long	3124                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x54d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1153                    @ DW_AT_decl_line
	.long	3147                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x555:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.long	3170                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x55d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1155                    @ DW_AT_decl_line
	.long	3193                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x565:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1157                    @ DW_AT_decl_line
	.long	3216                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x56d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1158                    @ DW_AT_decl_line
	.long	3242                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x575:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1159                    @ DW_AT_decl_line
	.long	3268                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x57d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1161                    @ DW_AT_decl_line
	.long	3294                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x585:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1162                    @ DW_AT_decl_line
	.long	3312                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x58d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1163                    @ DW_AT_decl_line
	.long	3330                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x595:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1165                    @ DW_AT_decl_line
	.long	3348                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x59d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1166                    @ DW_AT_decl_line
	.long	3366                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5a5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1167                    @ DW_AT_decl_line
	.long	3384                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5ad:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1169                    @ DW_AT_decl_line
	.long	3402                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5b5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1170                    @ DW_AT_decl_line
	.long	3427                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5bd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1171                    @ DW_AT_decl_line
	.long	3445                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5c5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1173                    @ DW_AT_decl_line
	.long	3463                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5cd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1174                    @ DW_AT_decl_line
	.long	3481                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5d5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1175                    @ DW_AT_decl_line
	.long	3499                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5dd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1177                    @ DW_AT_decl_line
	.long	3517                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5e5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1178                    @ DW_AT_decl_line
	.long	3534                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5ed:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1179                    @ DW_AT_decl_line
	.long	3551                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5f5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1181                    @ DW_AT_decl_line
	.long	3568                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x5fd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1182                    @ DW_AT_decl_line
	.long	3590                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x605:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1183                    @ DW_AT_decl_line
	.long	3612                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x60d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1185                    @ DW_AT_decl_line
	.long	3634                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x615:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1186                    @ DW_AT_decl_line
	.long	3651                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x61d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1187                    @ DW_AT_decl_line
	.long	3668                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x625:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1189                    @ DW_AT_decl_line
	.long	3685                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x62d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1190                    @ DW_AT_decl_line
	.long	3710                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x635:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1191                    @ DW_AT_decl_line
	.long	3728                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x63d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1193                    @ DW_AT_decl_line
	.long	3746                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x645:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1194                    @ DW_AT_decl_line
	.long	3764                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x64d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1195                    @ DW_AT_decl_line
	.long	3782                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x655:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1197                    @ DW_AT_decl_line
	.long	3800                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x65d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1198                    @ DW_AT_decl_line
	.long	3827                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x665:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1199                    @ DW_AT_decl_line
	.long	3844                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x66d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1201                    @ DW_AT_decl_line
	.long	3861                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x675:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1202                    @ DW_AT_decl_line
	.long	3879                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x67d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1203                    @ DW_AT_decl_line
	.long	3897                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x685:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1205                    @ DW_AT_decl_line
	.long	3915                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x68d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1206                    @ DW_AT_decl_line
	.long	3938                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x695:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1207                    @ DW_AT_decl_line
	.long	3961                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x69d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1209                    @ DW_AT_decl_line
	.long	3984                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6a5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1210                    @ DW_AT_decl_line
	.long	4007                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6ad:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1211                    @ DW_AT_decl_line
	.long	4030                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6b5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1213                    @ DW_AT_decl_line
	.long	4053                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6bd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1214                    @ DW_AT_decl_line
	.long	4080                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6c5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1215                    @ DW_AT_decl_line
	.long	4107                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6cd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1217                    @ DW_AT_decl_line
	.long	4134                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6d5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1218                    @ DW_AT_decl_line
	.long	4162                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6dd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1219                    @ DW_AT_decl_line
	.long	4190                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6e5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1221                    @ DW_AT_decl_line
	.long	4218                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6ed:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1222                    @ DW_AT_decl_line
	.long	4236                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6f5:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1223                    @ DW_AT_decl_line
	.long	4254                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x6fd:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1225                    @ DW_AT_decl_line
	.long	4272                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x705:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1226                    @ DW_AT_decl_line
	.long	4290                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x70d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1227                    @ DW_AT_decl_line
	.long	4308                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x715:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1229                    @ DW_AT_decl_line
	.long	4326                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x71d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1230                    @ DW_AT_decl_line
	.long	4349                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x725:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1231                    @ DW_AT_decl_line
	.long	4372                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x72d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1233                    @ DW_AT_decl_line
	.long	4395                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x735:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1234                    @ DW_AT_decl_line
	.long	4418                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x73d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1235                    @ DW_AT_decl_line
	.long	4441                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x745:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1237                    @ DW_AT_decl_line
	.long	4464                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x74d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1238                    @ DW_AT_decl_line
	.long	4482                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x755:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1239                    @ DW_AT_decl_line
	.long	4500                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x75d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1241                    @ DW_AT_decl_line
	.long	4518                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x765:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1242                    @ DW_AT_decl_line
	.long	4536                    @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x76d:0x8 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.short	1243                    @ DW_AT_decl_line
	.long	4554                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x776:0x15 DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_linkage_name
	.long	.Linfo_string61         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x785:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x78b:0x7 DW_TAG_base_type
	.long	.Linfo_string62         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	23                      @ Abbrev [23] 0x792:0x15 DW_TAG_subprogram
	.long	.Linfo_string63         @ DW_AT_linkage_name
	.long	.Linfo_string64         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x7a1:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x7a7:0x11 DW_TAG_subprogram
	.long	.Linfo_string65         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x7b2:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x7b8:0x1a DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_linkage_name
	.long	.Linfo_string67         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x7c7:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x7cc:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x7d2:0x11 DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x7dd:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x7e3:0x11 DW_TAG_subprogram
	.long	.Linfo_string69         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x7ee:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x7f4:0x15 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_linkage_name
	.long	.Linfo_string71         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x803:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x809:0x15 DW_TAG_subprogram
	.long	.Linfo_string72         @ DW_AT_linkage_name
	.long	.Linfo_string73         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x818:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x81e:0x11 DW_TAG_subprogram
	.long	.Linfo_string74         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	181                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x829:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x82f:0x11 DW_TAG_subprogram
	.long	.Linfo_string75         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x83a:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x840:0x1a DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_linkage_name
	.long	.Linfo_string77         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x84f:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x854:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x85a:0x16 DW_TAG_subprogram
	.long	.Linfo_string78         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x865:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x86a:0x5 DW_TAG_formal_parameter
	.long	2160                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x870:0x5 DW_TAG_pointer_type
	.long	58                      @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x875:0x16 DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x880:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x885:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x88b:0x16 DW_TAG_subprogram
	.long	.Linfo_string80         @ DW_AT_linkage_name
	.long	.Linfo_string81         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x89b:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x8a1:0x16 DW_TAG_subprogram
	.long	.Linfo_string82         @ DW_AT_linkage_name
	.long	.Linfo_string83         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x8b1:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x8b7:0x16 DW_TAG_subprogram
	.long	.Linfo_string84         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x8c2:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x8c7:0x5 DW_TAG_formal_parameter
	.long	2253                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x8cd:0x5 DW_TAG_pointer_type
	.long	1931                    @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x8d2:0x1b DW_TAG_subprogram
	.long	.Linfo_string85         @ DW_AT_linkage_name
	.long	.Linfo_string86         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x8e2:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x8e7:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x8ed:0x11 DW_TAG_subprogram
	.long	.Linfo_string87         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x8f8:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x8fe:0x16 DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_linkage_name
	.long	.Linfo_string89         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	452                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x90e:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x914:0x16 DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_linkage_name
	.long	.Linfo_string91         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	465                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x924:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x92a:0x11 DW_TAG_subprogram
	.long	.Linfo_string92         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x935:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x93b:0x11 DW_TAG_subprogram
	.long	.Linfo_string93         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x946:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x94c:0xb DW_TAG_typedef
	.long	1931                    @ DW_AT_type
	.long	.Linfo_string94         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	16                      @ Abbrev [16] 0x957:0xb DW_TAG_typedef
	.long	322                     @ DW_AT_type
	.long	.Linfo_string95         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	23                      @ Abbrev [23] 0x962:0x15 DW_TAG_subprogram
	.long	.Linfo_string96         @ DW_AT_linkage_name
	.long	.Linfo_string97         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x971:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x977:0x15 DW_TAG_subprogram
	.long	.Linfo_string98         @ DW_AT_linkage_name
	.long	.Linfo_string99         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x986:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x98c:0x15 DW_TAG_subprogram
	.long	.Linfo_string96         @ DW_AT_linkage_name
	.long	.Linfo_string100        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x99b:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x9a1:0x7 DW_TAG_base_type
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ Abbrev [24] 0x9a8:0x11 DW_TAG_subprogram
	.long	.Linfo_string102        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x9b3:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x9b9:0x11 DW_TAG_subprogram
	.long	.Linfo_string103        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x9c4:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x9ca:0x11 DW_TAG_subprogram
	.long	.Linfo_string104        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x9d5:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x9db:0x15 DW_TAG_subprogram
	.long	.Linfo_string105        @ DW_AT_linkage_name
	.long	.Linfo_string106        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x9ea:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x9f0:0x15 DW_TAG_subprogram
	.long	.Linfo_string107        @ DW_AT_linkage_name
	.long	.Linfo_string108        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x9ff:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xa05:0x15 DW_TAG_subprogram
	.long	.Linfo_string105        @ DW_AT_linkage_name
	.long	.Linfo_string109        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa14:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa1a:0x11 DW_TAG_subprogram
	.long	.Linfo_string110        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa25:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa2b:0x11 DW_TAG_subprogram
	.long	.Linfo_string111        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa36:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa3c:0x11 DW_TAG_subprogram
	.long	.Linfo_string112        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa47:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa4d:0x16 DW_TAG_subprogram
	.long	.Linfo_string113        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa58:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xa5d:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa63:0x16 DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa6e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xa73:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xa79:0x16 DW_TAG_subprogram
	.long	.Linfo_string115        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa84:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xa89:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xa8f:0x12 DW_TAG_subprogram
	.long	.Linfo_string116        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xa9b:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xaa1:0x12 DW_TAG_subprogram
	.long	.Linfo_string117        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xaad:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xab3:0x12 DW_TAG_subprogram
	.long	.Linfo_string118        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xabf:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xac5:0x12 DW_TAG_subprogram
	.long	.Linfo_string119        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xad1:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xad7:0x12 DW_TAG_subprogram
	.long	.Linfo_string120        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xae3:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xae9:0x12 DW_TAG_subprogram
	.long	.Linfo_string121        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xaf5:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xafb:0x15 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_linkage_name
	.long	.Linfo_string123        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb0a:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xb10:0x15 DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_linkage_name
	.long	.Linfo_string125        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb1f:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xb25:0x15 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_linkage_name
	.long	.Linfo_string126        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb34:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xb3a:0x11 DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb45:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xb4b:0x11 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb56:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xb5c:0x11 DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb67:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb6d:0x17 DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb79:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xb7e:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb84:0x17 DW_TAG_subprogram
	.long	.Linfo_string131        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xb90:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xb95:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb9b:0x17 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xba7:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbac:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xbb2:0x1c DW_TAG_subprogram
	.long	.Linfo_string133        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xbbe:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbc3:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbc8:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xbce:0x1c DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xbda:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbdf:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbe4:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xbea:0x1c DW_TAG_subprogram
	.long	.Linfo_string135        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xbf6:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xbfb:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc00:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc06:0x17 DW_TAG_subprogram
	.long	.Linfo_string136        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc12:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc17:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc1d:0x17 DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc29:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc2e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc34:0x17 DW_TAG_subprogram
	.long	.Linfo_string138        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc40:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc45:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc4b:0x17 DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc57:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc5c:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc62:0x17 DW_TAG_subprogram
	.long	.Linfo_string140        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc6e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc73:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc79:0x17 DW_TAG_subprogram
	.long	.Linfo_string141        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc85:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xc8a:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xc90:0x1a DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_linkage_name
	.long	.Linfo_string143        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xc9f:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xca4:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xcaa:0x1a DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_linkage_name
	.long	.Linfo_string145        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xcb9:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xcbe:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0xcc4:0x1a DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_linkage_name
	.long	.Linfo_string146        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xcd3:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xcd8:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xcde:0x12 DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xcea:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xcf0:0x12 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xcfc:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd02:0x12 DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd0e:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd14:0x12 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd20:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd26:0x12 DW_TAG_subprogram
	.long	.Linfo_string151        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd32:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd38:0x12 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	329                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd44:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd4a:0x12 DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd56:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0xd5c:0x7 DW_TAG_base_type
	.long	.Linfo_string154        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0xd63:0x12 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd6f:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd75:0x12 DW_TAG_subprogram
	.long	.Linfo_string156        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd81:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd87:0x12 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xd93:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd99:0x12 DW_TAG_subprogram
	.long	.Linfo_string158        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xda5:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xdab:0x12 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3420                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xdb7:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xdbd:0x11 DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xdc8:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xdce:0x11 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xdd9:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xddf:0x11 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xdea:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xdf0:0x16 DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_linkage_name
	.long	.Linfo_string164        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe00:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xe06:0x16 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_linkage_name
	.long	.Linfo_string166        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe16:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xe1c:0x16 DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_linkage_name
	.long	.Linfo_string167        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe2c:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xe32:0x11 DW_TAG_subprogram
	.long	.Linfo_string168        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe3d:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xe43:0x11 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe4e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xe54:0x11 DW_TAG_subprogram
	.long	.Linfo_string170        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe5f:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xe65:0x12 DW_TAG_subprogram
	.long	.Linfo_string171        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe71:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0xe77:0x7 DW_TAG_base_type
	.long	.Linfo_string172        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0xe7e:0x12 DW_TAG_subprogram
	.long	.Linfo_string173        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe8a:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xe90:0x12 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xe9c:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xea2:0x12 DW_TAG_subprogram
	.long	.Linfo_string175        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xeae:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xeb4:0x12 DW_TAG_subprogram
	.long	.Linfo_string176        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xec0:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xec6:0x12 DW_TAG_subprogram
	.long	.Linfo_string177        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	3703                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xed2:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xed8:0x11 DW_TAG_subprogram
	.long	.Linfo_string178        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xee3:0x5 DW_TAG_formal_parameter
	.long	3817                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xee9:0x5 DW_TAG_pointer_type
	.long	3822                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xeee:0x5 DW_TAG_const_type
	.long	762                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0xef3:0x11 DW_TAG_subprogram
	.long	.Linfo_string179        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xefe:0x5 DW_TAG_formal_parameter
	.long	3817                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xf04:0x11 DW_TAG_subprogram
	.long	.Linfo_string180        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf0f:0x5 DW_TAG_formal_parameter
	.long	3817                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf15:0x12 DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf21:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf27:0x12 DW_TAG_subprogram
	.long	.Linfo_string182        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf33:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf39:0x12 DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf45:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf4b:0x17 DW_TAG_subprogram
	.long	.Linfo_string184        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf57:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xf5c:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf62:0x17 DW_TAG_subprogram
	.long	.Linfo_string185        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf6e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xf73:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf79:0x17 DW_TAG_subprogram
	.long	.Linfo_string186        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf85:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xf8a:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xf90:0x17 DW_TAG_subprogram
	.long	.Linfo_string187        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xf9c:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xfa1:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xfa7:0x17 DW_TAG_subprogram
	.long	.Linfo_string188        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xfb3:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xfb8:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xfbe:0x17 DW_TAG_subprogram
	.long	.Linfo_string189        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xfca:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xfcf:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xfd5:0x1b DW_TAG_subprogram
	.long	.Linfo_string190        @ DW_AT_linkage_name
	.long	.Linfo_string191        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0xfe5:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xfea:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xff0:0x1b DW_TAG_subprogram
	.long	.Linfo_string192        @ DW_AT_linkage_name
	.long	.Linfo_string193        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1000:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1005:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x100b:0x1b DW_TAG_subprogram
	.long	.Linfo_string190        @ DW_AT_linkage_name
	.long	.Linfo_string194        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	424                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x101b:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1020:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1026:0x1c DW_TAG_subprogram
	.long	.Linfo_string195        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1032:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1037:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x103c:0x5 DW_TAG_formal_parameter
	.long	2160                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1042:0x1c DW_TAG_subprogram
	.long	.Linfo_string196        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x104e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1053:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1058:0x5 DW_TAG_formal_parameter
	.long	2160                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x105e:0x1c DW_TAG_subprogram
	.long	.Linfo_string197        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x106a:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x106f:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1074:0x5 DW_TAG_formal_parameter
	.long	2160                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x107a:0x12 DW_TAG_subprogram
	.long	.Linfo_string198        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1086:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x108c:0x12 DW_TAG_subprogram
	.long	.Linfo_string199        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1098:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x109e:0x12 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x10aa:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x10b0:0x12 DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x10bc:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x10c2:0x12 DW_TAG_subprogram
	.long	.Linfo_string202        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x10ce:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x10d4:0x12 DW_TAG_subprogram
	.long	.Linfo_string203        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x10e0:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x10e6:0x17 DW_TAG_subprogram
	.long	.Linfo_string204        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x10f2:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x10f7:0x5 DW_TAG_formal_parameter
	.long	3703                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x10fd:0x17 DW_TAG_subprogram
	.long	.Linfo_string205        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1109:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x110e:0x5 DW_TAG_formal_parameter
	.long	3703                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1114:0x17 DW_TAG_subprogram
	.long	.Linfo_string206        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1120:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1125:0x5 DW_TAG_formal_parameter
	.long	3703                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x112b:0x17 DW_TAG_subprogram
	.long	.Linfo_string207        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1137:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x113c:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1142:0x17 DW_TAG_subprogram
	.long	.Linfo_string208        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x114e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x1153:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1159:0x17 DW_TAG_subprogram
	.long	.Linfo_string209        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x1165:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x116a:0x5 DW_TAG_formal_parameter
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1170:0x12 DW_TAG_subprogram
	.long	.Linfo_string210        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	480                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x117c:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1182:0x12 DW_TAG_subprogram
	.long	.Linfo_string211        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	487                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x118e:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1194:0x12 DW_TAG_subprogram
	.long	.Linfo_string212        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	495                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x11a0:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x11a6:0x12 DW_TAG_subprogram
	.long	.Linfo_string213        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1931                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x11b2:0x5 DW_TAG_formal_parameter
	.long	1931                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x11b8:0x12 DW_TAG_subprogram
	.long	.Linfo_string214        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x11c4:0x5 DW_TAG_formal_parameter
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x11ca:0x12 DW_TAG_subprogram
	.long	.Linfo_string215        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	2465                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	8                       @ Abbrev [8] 0x11d6:0x5 DW_TAG_formal_parameter
	.long	2465                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x11dc:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string232        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.long	5094                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	28                      @ Abbrev [28] 0x11f1:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string225        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.long	334                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x1200:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	.Linfo_string237        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.long	5101                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1210:0x48 DW_TAG_subprogram
	.long	.Linfo_string216        @ DW_AT_linkage_name
	.long	.Linfo_string217        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	30                      @ Abbrev [30] 0x1220:0xb DW_TAG_formal_parameter
	.long	.Linfo_string218        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x122b:0xb DW_TAG_formal_parameter
	.long	.Linfo_string219        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1236:0xb DW_TAG_formal_parameter
	.long	.Linfo_string220        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1241:0xb DW_TAG_formal_parameter
	.long	.Linfo_string221        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x124c:0xb DW_TAG_formal_parameter
	.long	.Linfo_string222        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	31                      @ Abbrev [31] 0x1258:0x36 DW_TAG_subprogram
	.long	.Linfo_string223        @ DW_AT_linkage_name
	.long	.Linfo_string224        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1399                    @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	32                      @ Abbrev [32] 0x1269:0xc DW_TAG_formal_parameter
	.long	.Linfo_string225        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1399                    @ DW_AT_decl_line
	.long	334                     @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x1275:0xc DW_TAG_formal_parameter
	.long	.Linfo_string226        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1399                    @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x1281:0xc DW_TAG_formal_parameter
	.long	.Linfo_string227        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1399                    @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	33                      @ Abbrev [33] 0x128e:0x3e DW_TAG_subprogram
	.long	.Linfo_string228        @ DW_AT_linkage_name
	.long	.Linfo_string229        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1388                    @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	32                      @ Abbrev [32] 0x129b:0xc DW_TAG_formal_parameter
	.long	.Linfo_string225        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1388                    @ DW_AT_decl_line
	.long	334                     @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x12a7:0xc DW_TAG_formal_parameter
	.long	.Linfo_string226        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1388                    @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x12b3:0xc DW_TAG_formal_parameter
	.long	.Linfo_string227        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1388                    @ DW_AT_decl_line
	.long	58                      @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x12bf:0xc DW_TAG_formal_parameter
	.long	.Linfo_string230        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	1388                    @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x12cc:0xc7 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string234        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	28                      @ Abbrev [28] 0x12dd:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	.Linfo_string225        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.long	334                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x12ec:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	.Linfo_string237        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.long	5101                    @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x12fb:0x97 DW_TAG_lexical_block
	.long	.Ltmp25                 @ DW_AT_low_pc
	.long	.Ltmp50-.Ltmp25         @ DW_AT_high_pc
	.byte	36                      @ Abbrev [36] 0x1304:0xf DW_TAG_variable
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	.Linfo_string238        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	714                     @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x1313:0x7e DW_TAG_lexical_block
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	36                      @ Abbrev [36] 0x1318:0xf DW_TAG_variable
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	.Linfo_string18         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x1327:0xf DW_TAG_variable
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	.Linfo_string239        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	322                     @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x1336:0x31 DW_TAG_inlined_subroutine
	.long	4624                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	40                      @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	39                      @ Abbrev [39] 0x1342:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	4651                    @ DW_AT_abstract_origin
	.byte	39                      @ Abbrev [39] 0x134b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	4662                    @ DW_AT_abstract_origin
	.byte	39                      @ Abbrev [39] 0x1354:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	4673                    @ DW_AT_abstract_origin
	.byte	39                      @ Abbrev [39] 0x135d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	4684                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	40                      @ Abbrev [40] 0x1367:0xf DW_TAG_inlined_subroutine
	.long	4696                    @ DW_AT_abstract_origin
	.long	.Ltmp34                 @ DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	40                      @ DW_AT_call_line
	.byte	41                      @ Abbrev [41] 0x1376:0xb DW_TAG_inlined_subroutine
	.long	4750                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	49                      @ DW_AT_call_line
	.byte	40                      @ Abbrev [40] 0x1381:0xf DW_TAG_inlined_subroutine
	.long	4750                    @ DW_AT_abstract_origin
	.long	.Ltmp48                 @ DW_AT_low_pc
	.long	.Ltmp49-.Ltmp48         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	50                      @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1393:0x2c DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string235        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	42                      @ Abbrev [42] 0x13a4:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string225        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	334                     @ DW_AT_type
	.byte	42                      @ Abbrev [42] 0x13b1:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	81
	.long	.Linfo_string237        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	5101                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x13bf:0x8 DW_TAG_subprogram
	.long	.Linfo_string231        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	44                      @ Abbrev [44] 0x13c7:0x1f DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string236        @ DW_AT_linkage_name
                                        @ DW_AT_artificial
	.byte	40                      @ Abbrev [40] 0x13d6:0xf DW_TAG_inlined_subroutine
	.long	5055                    @ DW_AT_abstract_origin
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Ltmp53-.Lfunc_begin3   @ DW_AT_high_pc
	.byte	10                      @ DW_AT_call_file
	.byte	0                       @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x13e6:0x7 DW_TAG_base_type
	.long	.Linfo_string233        @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	45                      @ Abbrev [45] 0x13ed:0x1 DW_TAG_pointer_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp29
	.long	.Ltmp30
	.long	.Ltmp31
	.long	.Ltmp32
	.long	.Ltmp35
	.long	.Ltmp36
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp43
	.long	.Ltmp44
	.long	.Ltmp47
	.long	.Ltmp48
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp26
	.long	.Ltmp45
	.long	.Ltmp46
	.long	.Ltmp49
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Lfunc_begin0
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	5103                    @ Compilation Unit Length
	.long	4812                    @ DIE offset
	.asciz	"render"                @ External Name
	.long	5063                    @ DIE offset
	.byte	0                       @ External Name
	.long	105                     @ DIE offset
	.asciz	"encoderOne"            @ External Name
	.long	858                     @ DIE offset
	.asciz	"gAnalogFrameRatio"     @ External Name
	.long	801                     @ DIE offset
	.asciz	"amplitude"             @ External Name
	.long	65                      @ DIE offset
	.asciz	"Apin"                  @ External Name
	.long	85                      @ DIE offset
	.asciz	"Bpin"                  @ External Name
	.long	818                     @ DIE offset
	.asciz	"gPhase1"               @ External Name
	.long	878                     @ DIE offset
	.asciz	"std"                   @ External Name
	.long	4696                    @ DIE offset
	.asciz	"analogRead"            @ External Name
	.long	38                      @ DIE offset
	.asciz	"gFreqChan"             @ External Name
	.long	4572                    @ DIE offset
	.asciz	"setup"                 @ External Name
	.long	781                     @ DIE offset
	.asciz	"frequency"             @ External Name
	.long	5011                    @ DIE offset
	.asciz	"cleanup"               @ External Name
	.long	838                     @ DIE offset
	.asciz	"gSampleTime"           @ External Name
	.long	5055                    @ DIE offset
	.asciz	"__cxx_global_var_init" @ External Name
	.long	4750                    @ DIE offset
	.asciz	"audioWrite"            @ External Name
	.long	4624                    @ DIE offset
	.asciz	"map"                   @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	5103                    @ Compilation Unit Length
	.long	125                     @ DIE offset
	.asciz	"Encoder"               @ External Name
	.long	742                     @ DIE offset
	.asciz	"long long unsigned int" @ External Name
	.long	2391                    @ DIE offset
	.asciz	"float_t"               @ External Name
	.long	2465                    @ DIE offset
	.asciz	"long double"           @ External Name
	.long	58                      @ DIE offset
	.asciz	"int"                   @ External Name
	.long	5094                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	2380                    @ DIE offset
	.asciz	"double_t"              @ External Name
	.long	3420                    @ DIE offset
	.asciz	"long long int"         @ External Name
	.long	714                     @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	322                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	703                     @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	339                     @ DIE offset
	.asciz	"BelaContext"           @ External Name
	.long	1931                    @ DIE offset
	.asciz	"double"                @ External Name
	.long	3703                    @ DIE offset
	.asciz	"long int"              @ External Name
	.long	731                     @ DIE offset
	.asciz	"uint64_t"              @ External Name
	.long	762                     @ DIE offset
	.asciz	"char"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	gFreqChan
gFreqChan = .L_MergedGlobals
	.size	gFreqChan, 4
	.globl	Apin
Apin = .L_MergedGlobals+4
	.size	Apin, 4
	.globl	Bpin
Bpin = .L_MergedGlobals+8
	.size	Bpin, 4
	.globl	frequency
frequency = .L_MergedGlobals+12
	.size	frequency, 4
	.globl	gPhase1
gPhase1 = .L_MergedGlobals+16
	.size	gPhase1, 4
	.globl	gSampleTime
gSampleTime = .L_MergedGlobals+20
	.size	gSampleTime, 4
	.globl	gAnalogFrameRatio
gAnalogFrameRatio = .L_MergedGlobals+24
	.size	gAnalogFrameRatio, 4
	.globl	encoderOne
encoderOne = .L_MergedGlobals+28
	.size	encoderOne, 44
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
