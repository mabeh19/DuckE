	.cpu cortex-m0plus
	.arch armv6s-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"datetime.c"
	.text
	.section	.rodata.datetime_to_str.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%s %d %s %d:%02d:%02d %d\000"
	.section	.text.datetime_to_str,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	datetime_to_str
	.syntax unified
	.code	16
	.thumb_func
	.type	datetime_to_str, %function
datetime_to_str:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r2
	movs	r2, #4
	movs	r6, #0
	ldrsh	r5, [r4, r6]
	sub	sp, sp, #24
	ldrsb	r2, [r4, r2]
	str	r5, [sp, #20]
	movs	r5, #7
	ldrsb	r5, [r4, r5]
	ldr	r6, .L3
	str	r5, [sp, #16]
	movs	r5, #6
	ldrsb	r5, [r4, r5]
	ldr	r3, .L3+4
	str	r5, [sp, #12]
	movs	r5, #5
	ldrsb	r5, [r4, r5]
	lsls	r2, r2, #2
	str	r5, [sp, #8]
	movs	r5, #2
	ldrsb	r5, [r4, r5]
	ldr	r3, [r2, r3]
	subs	r5, r5, #1
	lsls	r5, r5, #2
	ldr	r5, [r5, r6]
	ldr	r2, .L3+8
	str	r5, [sp, #4]
	ldrb	r4, [r4, #3]
	sxtb	r4, r4
	str	r4, [sp]
	bl	snprintf
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	DATETIME_MONTHS
	.word	DATETIME_DOWS
	.word	.LC1
	.size	datetime_to_str, .-datetime_to_str
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC4:
	.ascii	"Sunday\000"
	.align	2
.LC5:
	.ascii	"Monday\000"
	.align	2
.LC6:
	.ascii	"Tuesday\000"
	.align	2
.LC7:
	.ascii	"Wednesday\000"
	.align	2
.LC8:
	.ascii	"Thursday\000"
	.align	2
.LC9:
	.ascii	"Friday\000"
	.align	2
.LC10:
	.ascii	"Saturday\000"
	.section	.rodata.DATETIME_DOWS,"a"
	.align	2
	.type	DATETIME_DOWS, %object
	.size	DATETIME_DOWS, 28
DATETIME_DOWS:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"January\000"
	.align	2
.LC12:
	.ascii	"February\000"
	.align	2
.LC13:
	.ascii	"March\000"
	.align	2
.LC14:
	.ascii	"April\000"
	.align	2
.LC15:
	.ascii	"May\000"
	.align	2
.LC16:
	.ascii	"June\000"
	.align	2
.LC17:
	.ascii	"July\000"
	.align	2
.LC18:
	.ascii	"August\000"
	.align	2
.LC19:
	.ascii	"September\000"
	.align	2
.LC20:
	.ascii	"October\000"
	.align	2
.LC21:
	.ascii	"November\000"
	.align	2
.LC22:
	.ascii	"December\000"
	.section	.rodata.DATETIME_MONTHS,"a"
	.align	2
	.type	DATETIME_MONTHS, %object
	.size	DATETIME_MONTHS, 48
DATETIME_MONTHS:
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.ident	"GCC: (Arch Repository) 13.1.0"
