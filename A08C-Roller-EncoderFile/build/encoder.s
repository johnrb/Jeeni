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
	.file	"/root/Bela/projects/A08C-Roller-EncoderFile/build/encoder.bc"
	.file	1 "./include" "Bela.h"
	.file	2 "/usr/include" "stdint.h"
	.file	3 "/root/Bela/projects/A08C-Roller-EncoderFile" "encoder.cpp"
	.globl	_ZN7EncoderC2Eii
	.p2align	2
	.type	_ZN7EncoderC2Eii,%function
_ZN7EncoderC2Eii:                       @ @_ZN7EncoderC2Eii
.Lfunc_begin0:
	.loc	3 8 0                   @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:8:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: Encoder:this <- %R0
	@DEBUG_VALUE: Encoder:Apin <- %R1
	@DEBUG_VALUE: Encoder:Bpin <- %R2
	.file	4 "/root/Bela/projects/A08C-Roller-EncoderFile" "encoder.h"
	.loc	4 17 7 prologue_end     @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.h:17:7
	mov	r3, #3
	str	r3, [r0, #20]
	.loc	4 18 7                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.h:18:7
	mov	r3, #4000
	str	r3, [r0, #24]
	mov	r3, #0
	.loc	4 20 9                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.h:20:9
	str	r3, [r0, #32]
	.loc	4 22 9                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.h:22:9
	movw	r3, #55050
	movt	r3, #15395
	str	r3, [r0, #40]
.Ltmp0:
	.loc	3 9 7                   @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:9:7
	stm	r0, {r1, r2}
.Ltmp1:
	.loc	3 11 1                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:11:1
	bx	lr
.Ltmp2:
.Lfunc_end0:
	.size	_ZN7EncoderC2Eii, .Lfunc_end0-_ZN7EncoderC2Eii
	.cfi_endproc
	.fnend

	.globl	_ZN7Encoder8getSpeedEP11BelaContexti
	.p2align	2
	.type	_ZN7Encoder8getSpeedEP11BelaContexti,%function
_ZN7Encoder8getSpeedEP11BelaContexti:   @ @_ZN7Encoder8getSpeedEP11BelaContexti
.Lfunc_begin1:
	.loc	3 13 0                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:13:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset lr, -4
.Ltmp5:
	.cfi_offset r11, -8
.Ltmp6:
	.cfi_offset r5, -12
.Ltmp7:
	.cfi_offset r4, -16
	@DEBUG_VALUE: getSpeed:this <- %R0
	@DEBUG_VALUE: getSpeed:context <- %R1
	@DEBUG_VALUE: getSpeed:n <- %R2
	ldr	r1, [r1, #16]
.Ltmp8:
	.loc	3 14 41 prologue_end    @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:14:41
	ldm	r0, {r3, lr}
.Ltmp9:
	.loc	1 1438 12               @ ./include/Bela.h:1438:12
	ldr	r5, [r1, r2, lsl #2]
	.loc	1 1438 49 is_stmt 0     @ ./include/Bela.h:1438:49
	add	r1, r3, #16
.Ltmp10:
	.loc	1 1438 49               @ ./include/Bela.h:1438:49
	add	r3, lr, #16
	mov	r2, #1
.Ltmp11:
	.loc	3 17 38 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:17:38
	ldr	r4, [r0, #8]
.Ltmp12:
	.loc	1 1438 56               @ ./include/Bela.h:1438:56
	and	r1, r2, r5, lsr r1
.Ltmp13:
	@DEBUG_VALUE: getSpeed:encoderA <- %R1
	.loc	1 1438 37 is_stmt 0     @ ./include/Bela.h:1438:37
	lsr	r3, r5, r3
.Ltmp14:
	.loc	3 19 20 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:19:20
	ldr	r12, [r0, #12]
.Ltmp15:
	.loc	3 16 30                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:16:30
	bfi	r1, r3, #1, #1
.Ltmp16:
	@DEBUG_VALUE: getSpeed:encoderState <- %R1
	.loc	3 17 36                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:17:36
	sub	r3, r1, r4
	.loc	3 18 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:18:6
	tst	r3, #3
	beq	.LBB1_2
.Ltmp17:
@ BB#1:
	@DEBUG_VALUE: getSpeed:encoderState <- %R1
	@DEBUG_VALUE: getSpeed:this <- %R0
	.loc	3 22 19                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:22:19
	mov	r3, r0
	str	r12, [r3, #16]!
	.loc	3 24 21                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:24:21
	stmdb	r3, {r1, r2}
	b	.LBB1_3
.Ltmp18:
.LBB1_2:
	@DEBUG_VALUE: getSpeed:encoderState <- %R1
	@DEBUG_VALUE: getSpeed:this <- %R0
	.loc	3 19 20                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:19:20
	add	r2, r12, #1
	str	r2, [r0, #12]
.Ltmp19:
	.loc	3 26 25                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:26:25
	mov	r3, r0
	ldr	r12, [r3, #16]!
.Ltmp20:
.LBB1_3:
	@DEBUG_VALUE: getSpeed:encoderState <- %R1
	@DEBUG_VALUE: getSpeed:this <- %R0
	.loc	3 26 6 is_stmt 0        @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:26:6
	cmp	r2, r12
.Ltmp21:
	.loc	3 26 57 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:26:57
	strgt	r2, [r3]
.Ltmp22:
	.loc	3 27 35 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:35
	movgt	r12, r2
	.loc	3 27 19 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:19
	ldr	r1, [r0, #20]
.Ltmp23:
	.loc	3 27 35                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:35
	vmov	s0, r12
	vcvt.f32.s32	d0, d0
.Ltmp24:
	.loc	3 28 23 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:28:23
	ldr	r2, [r0, #24]
.Ltmp25:
	.loc	3 27 19                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:19
	vmov	s2, r1
	.loc	3 28 6                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:28:6
	cmp	r12, r2
	.loc	3 27 19                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:19
	vcvt.f32.s32	d1, d1
	.loc	3 27 28 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:27:28
	vdiv.f32	s0, s2, s0
	.loc	3 28 6 is_stmt 1        @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:28:6
	vmov.i32	d1, #0x0
	vmovgt.f32	s0, s2
.Ltmp26:
	.loc	3 28 44 is_stmt 0 discriminator 1 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:28:44
	vstr	s0, [r0, #28]
.Ltmp27:
	.loc	3 29 10 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:10
	vldr	s2, [r0, #32]
	.loc	3 29 22 is_stmt 0       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:22
	vldr	s4, [r0, #40]
	.loc	3 29 42                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:42
	vsub.f32	d16, d0, d1
	.loc	3 29 32                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:32
	vmul.f32	d16, d2, d16
	.loc	3 29 20                 @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:20
	vadd.f32	d0, d16, d1
	.loc	3 29 8                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:29:8
	vstr	s0, [r0, #36]
	.loc	3 30 12 is_stmt 1       @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:30:12
	vstr	s0, [r0, #32]
	.loc	3 31 2                  @ /root/Bela/projects/A08C-Roller-EncoderFile/encoder.cpp:31:2
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	pop	{r4, r5, r11, pc}
.Ltmp28:
.Lfunc_end1:
	.size	_ZN7Encoder8getSpeedEP11BelaContexti, .Lfunc_end1-_ZN7Encoder8getSpeedEP11BelaContexti
	.cfi_endproc
	.fnend

	.type	CONTEXT,%object         @ @CONTEXT
	.bss
	.globl	CONTEXT
	.p2align	2
CONTEXT:
	.long	0
	.size	CONTEXT, 4

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/A08C-Roller-EncoderFile/build/encoder.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=107
.Linfo_string3:
	.asciz	"CONTEXT"               @ string offset=118
.Linfo_string4:
	.asciz	"audioIn"               @ string offset=126
.Linfo_string5:
	.asciz	"float"                 @ string offset=134
.Linfo_string6:
	.asciz	"audioOut"              @ string offset=140
.Linfo_string7:
	.asciz	"analogIn"              @ string offset=149
.Linfo_string8:
	.asciz	"analogOut"             @ string offset=158
.Linfo_string9:
	.asciz	"digital"               @ string offset=168
.Linfo_string10:
	.asciz	"unsigned int"          @ string offset=176
.Linfo_string11:
	.asciz	"uint32_t"              @ string offset=189
.Linfo_string12:
	.asciz	"audioFrames"           @ string offset=198
.Linfo_string13:
	.asciz	"audioInChannels"       @ string offset=210
.Linfo_string14:
	.asciz	"audioOutChannels"      @ string offset=226
.Linfo_string15:
	.asciz	"audioSampleRate"       @ string offset=243
.Linfo_string16:
	.asciz	"analogFrames"          @ string offset=259
.Linfo_string17:
	.asciz	"analogInChannels"      @ string offset=272
.Linfo_string18:
	.asciz	"analogOutChannels"     @ string offset=289
.Linfo_string19:
	.asciz	"analogSampleRate"      @ string offset=307
.Linfo_string20:
	.asciz	"digitalFrames"         @ string offset=324
.Linfo_string21:
	.asciz	"digitalChannels"       @ string offset=338
.Linfo_string22:
	.asciz	"digitalSampleRate"     @ string offset=354
.Linfo_string23:
	.asciz	"audioFramesElapsed"    @ string offset=372
.Linfo_string24:
	.asciz	"long long unsigned int" @ string offset=391
.Linfo_string25:
	.asciz	"uint64_t"              @ string offset=414
.Linfo_string26:
	.asciz	"multiplexerChannels"   @ string offset=423
.Linfo_string27:
	.asciz	"multiplexerStartingChannel" @ string offset=443
.Linfo_string28:
	.asciz	"multiplexerAnalogIn"   @ string offset=470
.Linfo_string29:
	.asciz	"audioExpanderEnabled"  @ string offset=490
.Linfo_string30:
	.asciz	"flags"                 @ string offset=511
.Linfo_string31:
	.asciz	"projectName"           @ string offset=517
.Linfo_string32:
	.asciz	"char"                  @ string offset=529
.Linfo_string33:
	.asciz	"sizetype"              @ string offset=534
.Linfo_string34:
	.asciz	"underrunCount"         @ string offset=543
.Linfo_string35:
	.asciz	"BelaContext"           @ string offset=557
.Linfo_string36:
	.asciz	"APIN"                  @ string offset=569
.Linfo_string37:
	.asciz	"int"                   @ string offset=574
.Linfo_string38:
	.asciz	"BPIN"                  @ string offset=578
.Linfo_string39:
	.asciz	"encoderLastState"      @ string offset=583
.Linfo_string40:
	.asciz	"thisStateCounter"      @ string offset=600
.Linfo_string41:
	.asciz	"lastStateCount"        @ string offset=617
.Linfo_string42:
	.asciz	"minCount"              @ string offset=632
.Linfo_string43:
	.asciz	"maxCount"              @ string offset=641
.Linfo_string44:
	.asciz	"newSpeed"              @ string offset=650
.Linfo_string45:
	.asciz	"lastSpeed"             @ string offset=659
.Linfo_string46:
	.asciz	"speed"                 @ string offset=669
.Linfo_string47:
	.asciz	"smoothFrac"            @ string offset=675
.Linfo_string48:
	.asciz	"Encoder"               @ string offset=686
.Linfo_string49:
	.asciz	"_ZN7Encoder8getSpeedEP11BelaContexti" @ string offset=694
.Linfo_string50:
	.asciz	"getSpeed"              @ string offset=731
.Linfo_string51:
	.asciz	"_ZL11digitalReadP11BelaContextii" @ string offset=740
.Linfo_string52:
	.asciz	"digitalRead"           @ string offset=773
.Linfo_string53:
	.asciz	"context"               @ string offset=785
.Linfo_string54:
	.asciz	"frame"                 @ string offset=793
.Linfo_string55:
	.asciz	"channel"               @ string offset=799
.Linfo_string56:
	.asciz	"_ZN7EncoderC2Eii"      @ string offset=807
.Linfo_string57:
	.asciz	"this"                  @ string offset=824
.Linfo_string58:
	.asciz	"Apin"                  @ string offset=829
.Linfo_string59:
	.asciz	"Bpin"                  @ string offset=834
.Linfo_string60:
	.asciz	"n"                     @ string offset=839
.Linfo_string61:
	.asciz	"encoderA"              @ string offset=841
.Linfo_string62:
	.asciz	"encoderState"          @ string offset=850
.Linfo_string63:
	.asciz	"encoderB"              @ string offset=863
.Linfo_string64:
	.asciz	"encoderChange"         @ string offset=872
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
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
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
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
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
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
	.byte	5                       @ Abbreviation Code
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
	.byte	6                       @ Abbreviation Code
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
	.byte	7                       @ Abbreviation Code
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
	.byte	8                       @ Abbreviation Code
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
	.byte	9                       @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
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
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
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
	.byte	15                      @ Abbreviation Code
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
	.byte	16                      @ Abbreviation Code
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
	.byte	17                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
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
	.byte	20                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
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
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
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
	.byte	25                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
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
	.byte	27                      @ Abbreviation Code
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
	.byte	28                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
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
	.byte	29                      @ Abbreviation Code
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
	.ascii	"\266B"                 @ DW_AT_GNU_discriminator
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	975                     @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x3c8 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	55                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	3                       @ DW_AT_decl_file
	.byte	5                       @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	CONTEXT
	.byte	3                       @ Abbrev [3] 0x37:0x5 DW_TAG_pointer_type
	.long	60                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x3c:0xc DW_TAG_typedef
	.long	72                      @ DW_AT_type
	.long	.Linfo_string35         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	410                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x48:0x13d DW_TAG_structure_type
	.short	352                     @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x4d:0xc DW_TAG_member
	.long	.Linfo_string4          @ DW_AT_name
	.long	389                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	238                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x59:0xc DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	411                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x65:0xd DW_TAG_member
	.long	.Linfo_string7          @ DW_AT_name
	.long	389                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	272                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x72:0xd DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	411                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	287                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x7f:0xd DW_TAG_member
	.long	.Linfo_string9          @ DW_AT_name
	.long	421                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	297                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x8c:0xd DW_TAG_member
	.long	.Linfo_string12         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	311                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x99:0xd DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xa6:0xd DW_TAG_member
	.long	.Linfo_string14         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	315                     @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xb3:0xd DW_TAG_member
	.long	.Linfo_string15         @ DW_AT_name
	.long	399                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	317                     @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xc0:0xd DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xcd:0xd DW_TAG_member
	.long	.Linfo_string17         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xda:0xd DW_TAG_member
	.long	.Linfo_string18         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	340                     @ DW_AT_decl_line
	.byte	44                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xe7:0xd DW_TAG_member
	.long	.Linfo_string19         @ DW_AT_name
	.long	399                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	351                     @ DW_AT_decl_line
	.byte	48                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0xf4:0xd DW_TAG_member
	.long	.Linfo_string20         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.byte	52                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x101:0xd DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	358                     @ DW_AT_decl_line
	.byte	56                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x10e:0xd DW_TAG_member
	.long	.Linfo_string22         @ DW_AT_name
	.long	399                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.byte	60                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x11b:0xd DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	454                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	368                     @ DW_AT_decl_line
	.byte	64                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x128:0xd DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	374                     @ DW_AT_decl_line
	.byte	72                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x135:0xd DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	380                     @ DW_AT_decl_line
	.byte	76                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x142:0xd DW_TAG_member
	.long	.Linfo_string28         @ DW_AT_name
	.long	389                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	387                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x14f:0xd DW_TAG_member
	.long	.Linfo_string29         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	393                     @ DW_AT_decl_line
	.byte	84                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x15c:0xd DW_TAG_member
	.long	.Linfo_string30         @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	403                     @ DW_AT_decl_line
	.byte	88                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x169:0xd DW_TAG_member
	.long	.Linfo_string31         @ DW_AT_name
	.long	477                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	406                     @ DW_AT_decl_line
	.byte	92                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x176:0xe DW_TAG_member
	.long	.Linfo_string34         @ DW_AT_name
	.long	504                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	409                     @ DW_AT_decl_line
	.short	348                     @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x185:0x5 DW_TAG_const_type
	.long	394                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x18a:0x5 DW_TAG_pointer_type
	.long	399                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x18f:0x5 DW_TAG_const_type
	.long	404                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x194:0x7 DW_TAG_base_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	9                       @ Abbrev [9] 0x19b:0x5 DW_TAG_const_type
	.long	416                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x1a0:0x5 DW_TAG_pointer_type
	.long	404                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x1a5:0x5 DW_TAG_const_type
	.long	426                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x1aa:0x5 DW_TAG_pointer_type
	.long	431                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1af:0xb DW_TAG_typedef
	.long	442                     @ DW_AT_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x1ba:0x7 DW_TAG_base_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	9                       @ Abbrev [9] 0x1c1:0x5 DW_TAG_const_type
	.long	431                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x1c6:0x5 DW_TAG_const_type
	.long	459                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1cb:0xb DW_TAG_typedef
	.long	470                     @ DW_AT_type
	.long	.Linfo_string25         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x1d6:0x7 DW_TAG_base_type
	.long	.Linfo_string24         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0x1dd:0xd DW_TAG_array_type
	.long	490                     @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x1e2:0x7 DW_TAG_subrange_type
	.long	497                     @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x1ea:0x7 DW_TAG_base_type
	.long	.Linfo_string32         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1f1:0x7 DW_TAG_base_type
	.long	.Linfo_string33         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	9                       @ Abbrev [9] 0x1f8:0x5 DW_TAG_const_type
	.long	442                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x1fd:0xc5 DW_TAG_class_type
	.long	.Linfo_string48         @ DW_AT_name
	.byte	44                      @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	6                       @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x205:0xc DW_TAG_member
	.long	.Linfo_string36         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x211:0xc DW_TAG_member
	.long	.Linfo_string38         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x21d:0xc DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x229:0xc DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x235:0xc DW_TAG_member
	.long	.Linfo_string41         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x241:0xc DW_TAG_member
	.long	.Linfo_string42         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x24d:0xc DW_TAG_member
	.long	.Linfo_string43         @ DW_AT_name
	.long	706                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x259:0xc DW_TAG_member
	.long	.Linfo_string44         @ DW_AT_name
	.long	404                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x265:0xc DW_TAG_member
	.long	.Linfo_string45         @ DW_AT_name
	.long	404                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x271:0xc DW_TAG_member
	.long	.Linfo_string46         @ DW_AT_name
	.long	404                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x27d:0xc DW_TAG_member
	.long	.Linfo_string47         @ DW_AT_name
	.long	404                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	16                      @ Abbrev [16] 0x289:0x18 DW_TAG_subprogram
	.long	.Linfo_string48         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0x291:0x5 DW_TAG_formal_parameter
	.long	713                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x296:0x5 DW_TAG_formal_parameter
	.long	706                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x29b:0x5 DW_TAG_formal_parameter
	.long	706                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x2a1:0x20 DW_TAG_subprogram
	.long	.Linfo_string49         @ DW_AT_linkage_name
	.long	.Linfo_string50         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	404                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	17                      @ Abbrev [17] 0x2b1:0x5 DW_TAG_formal_parameter
	.long	713                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x2b6:0x5 DW_TAG_formal_parameter
	.long	55                      @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x2bb:0x5 DW_TAG_formal_parameter
	.long	706                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x2c2:0x7 DW_TAG_base_type
	.long	.Linfo_string37         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x2c9:0x5 DW_TAG_pointer_type
	.long	509                     @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x2ce:0x3e DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	742                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.long	.Linfo_string56         @ DW_AT_linkage_name
	.long	649                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x2e6:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string57         @ DW_AT_name
	.long	973                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0x2f1:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	81
	.long	.Linfo_string58         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x2fe:0xd DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	82
	.long	.Linfo_string59         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x30c:0x36 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string52         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	1437                    @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	24                      @ Abbrev [24] 0x31d:0xc DW_TAG_formal_parameter
	.long	.Linfo_string53         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	1437                    @ DW_AT_decl_line
	.long	55                      @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x329:0xc DW_TAG_formal_parameter
	.long	.Linfo_string54         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	1437                    @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x335:0xc DW_TAG_formal_parameter
	.long	.Linfo_string55         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	1437                    @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x342:0x8b DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	855                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	673                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x357:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string57         @ DW_AT_name
	.long	973                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	26                      @ Abbrev [26] 0x362:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string53         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	55                      @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x371:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	.Linfo_string60         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x380:0xf DW_TAG_variable
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	.Linfo_string61         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x38f:0xf DW_TAG_variable
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	.Linfo_string62         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x39e:0xb DW_TAG_variable
	.long	.Linfo_string63         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x3a9:0xb DW_TAG_variable
	.long	.Linfo_string64         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	706                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x3b4:0xc DW_TAG_inlined_subroutine
	.long	780                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	3                       @ DW_AT_call_file
	.byte	14                      @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	29                      @ Abbrev [29] 0x3c0:0xc DW_TAG_inlined_subroutine
	.long	780                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	3                       @ DW_AT_call_file
	.byte	15                      @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x3cd:0x5 DW_TAG_pointer_type
	.long	509                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
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
	.long	979                     @ Compilation Unit Length
	.long	718                     @ DIE offset
	.asciz	"Encoder::Encoder"      @ External Name
	.long	38                      @ DIE offset
	.asciz	"CONTEXT"               @ External Name
	.long	834                     @ DIE offset
	.asciz	"Encoder::getSpeed"     @ External Name
	.long	780                     @ DIE offset
	.asciz	"digitalRead"           @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	979                     @ Compilation Unit Length
	.long	509                     @ DIE offset
	.asciz	"Encoder"               @ External Name
	.long	404                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	431                     @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	60                      @ DIE offset
	.asciz	"BelaContext"           @ External Name
	.long	442                     @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	706                     @ DIE offset
	.asciz	"int"                   @ External Name
	.long	459                     @ DIE offset
	.asciz	"uint64_t"              @ External Name
	.long	470                     @ DIE offset
	.asciz	"long long unsigned int" @ External Name
	.long	490                     @ DIE offset
	.asciz	"char"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	_ZN7EncoderC1Eii
	.type	_ZN7EncoderC1Eii,%function
_ZN7EncoderC1Eii = _ZN7EncoderC2Eii
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
