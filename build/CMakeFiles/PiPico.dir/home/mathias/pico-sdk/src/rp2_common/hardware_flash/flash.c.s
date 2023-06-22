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
	.file	"flash.c"
	.text
	.section	.time_critical.flash_init_boot2_copyout,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_init_boot2_copyout, %function
flash_init_boot2_copyout:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L6
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L1
	movs	r3, #128
	ldr	r0, .L6+4
	ldr	r1, .L6+8
	lsls	r3, r3, #21
.L3:
	ldr	r2, [r3]
	str	r2, [r0, r3]
	adds	r3, r3, #4
	cmp	r3, r1
	bne	.L3
	movs	r3, #1
	strb	r3, [r4]
.L1:
	@ sp needed
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	boot2_copyout_valid
	.word	boot2_copyout-268435456
	.word	268435712
	.size	flash_init_boot2_copyout, .-flash_init_boot2_copyout
	.section	.time_critical.flash_enable_xip_via_boot2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_enable_xip_via_boot2, %function
flash_enable_xip_via_boot2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L9
	blx	r3
	@ sp needed
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	boot2_copyout+1
	.size	flash_enable_xip_via_boot2, .-flash_enable_xip_via_boot2
	.section	.time_critical.flash_cs_force,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_cs_force.constprop.0, %function
flash_cs_force.constprop.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #192
	lsls	r3, r3, #2
	bics	r3, r2
	ldr	r2, .L12+4
	str	r3, [r2]
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073840140
	.word	1073844236
	.size	flash_cs_force.constprop.0, .-flash_cs_force.constprop.0
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_cs_force.constprop.1, %function
flash_cs_force.constprop.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	lsls	r3, r3, #2
	eors	r3, r2
	movs	r2, #192
	lsls	r2, r2, #2
	ands	r3, r2
	ldr	r2, .L15+4
	str	r3, [r2]
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073840140
	.word	1073844236
	.size	flash_cs_force.constprop.1, .-flash_cs_force.constprop.1
	.section	.time_critical.flash_range_erase,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	flash_range_erase
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_range_erase, %function
flash_range_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r3, #128
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	adds	r2, r0, r1
	movs	r4, r0
	movs	r5, r1
	push	{r6, r7, lr}
	lsls	r3, r3, #14
	cmp	r2, r3
	bhi	.L19
.L18:
	movs	r7, #20
	movs	r6, #24
	ldrh	r0, [r7]
	ldrh	r3, [r6]
	ldr	r1, .L20
	blx	r3
	ldrh	r3, [r6]
	mov	r10, r0
	ldr	r1, .L20+4
	ldrh	r0, [r7]
	blx	r3
	ldrh	r3, [r6]
	mov	r9, r0
	ldr	r1, .L20+8
	ldrh	r0, [r7]
	blx	r3
	ldrh	r3, [r6]
	ldr	r1, .L20+12
	mov	r8, r0
	ldrh	r0, [r7]
	blx	r3
	movs	r6, r0
	bl	flash_init_boot2_copyout
	@ sp needed
	blx	r10
	blx	r9
	movs	r2, #128
	movs	r1, r5
	movs	r3, #216
	movs	r0, r4
	lsls	r2, r2, #9
	blx	r8
	blx	r6
	bl	flash_enable_xip_via_boot2
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L19:
	bl	hard_assertion_failure
	b	.L18
.L21:
	.align	2
.L20:
	.word	17993
	.word	22597
	.word	17746
	.word	17222
	.size	flash_range_erase, .-flash_range_erase
	.section	.time_critical.flash_range_program,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	flash_range_program
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_range_program, %function
flash_range_program:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	movs	r3, #128
	push	{r5, r6, r7, lr}
	movs	r5, r2
	adds	r2, r0, r2
	movs	r4, r0
	mov	r9, r1
	lsls	r3, r3, #14
	cmp	r2, r3
	bhi	.L24
.L23:
	movs	r7, #20
	movs	r6, #24
	ldrh	r0, [r7]
	ldrh	r3, [r6]
	ldr	r1, .L25
	blx	r3
	ldrh	r3, [r6]
	mov	fp, r0
	ldr	r1, .L25+4
	ldrh	r0, [r7]
	blx	r3
	ldrh	r3, [r6]
	mov	r10, r0
	ldr	r1, .L25+8
	ldrh	r0, [r7]
	blx	r3
	ldrh	r3, [r6]
	ldr	r1, .L25+12
	mov	r8, r0
	ldrh	r0, [r7]
	blx	r3
	movs	r6, r0
	bl	flash_init_boot2_copyout
	@ sp needed
	blx	fp
	blx	r10
	movs	r2, r5
	mov	r1, r9
	movs	r0, r4
	blx	r8
	blx	r6
	bl	flash_enable_xip_via_boot2
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L24:
	bl	hard_assertion_failure
	b	.L23
.L26:
	.align	2
.L25:
	.word	17993
	.word	22597
	.word	20562
	.word	17222
	.size	flash_range_program, .-flash_range_program
	.section	.time_critical.flash_do_cmd,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	flash_do_cmd
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_do_cmd, %function
flash_do_cmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #20
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	mov	r10, r3
	mov	r9, r0
	ldrh	r0, [r3]
	adds	r3, r3, #4
	push	{r6, r7, lr}
	mov	r8, r3
	movs	r6, r1
	ldrh	r3, [r3]
	ldr	r1, .L50
	movs	r4, r2
	blx	r3
	mov	r3, r10
	movs	r7, r0
	ldrh	r0, [r3]
	mov	r3, r8
	ldr	r1, .L50+4
	ldrh	r3, [r3]
	blx	r3
	mov	r3, r10
	movs	r5, r0
	ldrh	r0, [r3]
	mov	r3, r8
	ldr	r1, .L50+8
	ldrh	r3, [r3]
	blx	r3
	mov	r8, r0
	bl	flash_init_boot2_copyout
	blx	r7
	blx	r5
	bl	flash_cs_force.constprop.1
	subs	r2, r4, #0
	beq	.L34
	movs	r1, #192
	movs	r7, #8
	movs	r0, #2
	lsls	r1, r1, #21
	b	.L28
.L49:
	cmp	r4, #0
	beq	.L29
	subs	r3, r2, r4
	cmp	r3, #13
	bls	.L30
	cmp	r5, #0
	beq	.L28
.L31:
	movs	r3, r4
	cmp	r2, #0
	beq	.L33
	ldr	r3, [r1, #96]
	subs	r2, r2, #1
	strb	r3, [r6]
	movs	r3, r2
	adds	r6, r6, #1
	orrs	r3, r4
.L33:
	cmp	r3, #0
	beq	.L34
.L28:
	movs	r5, r7
	ldr	r3, [r1, #40]
	ands	r5, r3
	tst	r0, r3
	bne	.L49
.L29:
	cmp	r5, #0
	bne	.L31
	movs	r3, r4
	orrs	r3, r2
	bne	.L28
.L34:
	@ sp needed
	bl	flash_cs_force.constprop.0
	blx	r8
	bl	flash_enable_xip_via_boot2
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L30:
	mov	r3, r9
	ldrb	r3, [r3]
	subs	r4, r4, #1
	str	r3, [r1, #96]
	movs	r3, #1
	mov	ip, r3
	add	r9, r9, ip
	b	.L29
.L51:
	.align	2
.L50:
	.word	17993
	.word	22597
	.word	17222
	.size	flash_do_cmd, .-flash_do_cmd
	.section	.text.flash_get_unique_id,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	flash_get_unique_id
	.syntax unified
	.code	16
	.thumb_func
	.type	flash_get_unique_id, %function
flash_get_unique_id:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #32
	movs	r4, r0
	movs	r2, #13
	movs	r1, #0
	mov	r0, sp
	bl	memset
	movs	r2, #13
	movs	r1, #0
	add	r0, sp, #16
	bl	memset
	movs	r3, #75
	mov	r2, sp
	mov	r0, sp
	strb	r3, [r2]
	add	r1, sp, #16
	movs	r2, #13
	bl	flash_do_cmd
	movs	r1, #21
	movs	r2, #8
	movs	r0, r4
	add	r1, r1, sp
	bl	memcpy
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
	.size	flash_get_unique_id, .-flash_get_unique_id
	.section	.bss.boot2_copyout_valid,"aw",%nobits
	.type	boot2_copyout_valid, %object
	.size	boot2_copyout_valid, 1
boot2_copyout_valid:
	.space	1
	.section	.bss.boot2_copyout,"aw",%nobits
	.align	2
	.type	boot2_copyout, %object
	.size	boot2_copyout, 256
boot2_copyout:
	.space	256
	.ident	"GCC: (Arch Repository) 13.1.0"
