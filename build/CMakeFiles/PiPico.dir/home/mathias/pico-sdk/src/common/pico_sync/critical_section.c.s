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
	.file	"critical_section.c"
	.text
	.section	.text.critical_section_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	critical_section_init
	.syntax unified
	.code	16
	.thumb_func
	.type	critical_section_init, %function
critical_section_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	movs	r0, #1
	bl	spin_lock_claim_unused
	ldr	r3, .L3
	adds	r3, r0, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	872415296
	.size	critical_section_init, .-critical_section_init
	.section	.text.critical_section_init_with_lock_num,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	critical_section_init_with_lock_num
	.syntax unified
	.code	16
	.thumb_func
	.type	critical_section_init_with_lock_num, %function
critical_section_init_with_lock_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	mov	ip, r3
	add	r1, r1, ip
	lsls	r1, r1, #2
	str	r1, [r0]
	.syntax divided
@ 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
	dmb
@ 0 "" 2
	.thumb
	.syntax unified
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	872415296
	.size	critical_section_init_with_lock_num, .-critical_section_init_with_lock_num
	.section	.text.critical_section_deinit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	critical_section_deinit
	.syntax unified
	.code	16
	.thumb_func
	.type	critical_section_deinit, %function
critical_section_deinit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L9
	ldr	r3, [r0]
	mov	ip, r2
	add	r3, r3, ip
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	asrs	r0, r3, #2
	bl	spin_lock_unclaim
	movs	r3, #0
	str	r3, [r4]
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	805306112
	.size	critical_section_deinit, .-critical_section_deinit
	.ident	"GCC: (Arch Repository) 13.1.0"
