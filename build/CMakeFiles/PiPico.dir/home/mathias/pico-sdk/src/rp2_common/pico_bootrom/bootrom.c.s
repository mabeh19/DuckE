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
	.file	"bootrom.c"
	.text
	.section	.text.rom_func_lookup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rom_func_lookup
	.syntax unified
	.code	16
	.thumb_func
	.type	rom_func_lookup, %function
rom_func_lookup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #20
	push	{r4, lr}
	movs	r1, r0
	@ sp needed
	ldrh	r0, [r3]
	adds	r3, r3, #4
	ldrh	r3, [r3]
	blx	r3
	pop	{r4, pc}
	.size	rom_func_lookup, .-rom_func_lookup
	.section	.text.rom_data_lookup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rom_data_lookup
	.syntax unified
	.code	16
	.thumb_func
	.type	rom_data_lookup, %function
rom_data_lookup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #22
	push	{r4, lr}
	movs	r1, r0
	@ sp needed
	ldrh	r0, [r3]
	adds	r3, r3, #2
	ldrh	r3, [r3]
	blx	r3
	pop	{r4, pc}
	.size	rom_data_lookup, .-rom_data_lookup
	.section	.text.rom_funcs_lookup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	rom_funcs_lookup
	.syntax unified
	.code	16
	.thumb_func
	.type	rom_funcs_lookup, %function
rom_funcs_lookup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	subs	r7, r1, #0
	beq	.L8
	movs	r3, #20
	mov	r9, r3
	adds	r3, r3, #4
	movs	r4, r0
	movs	r5, #0
	movs	r6, #1
	mov	r8, r3
.L7:
	mov	r3, r9
	ldrh	r0, [r3]
	mov	r3, r8
	ldr	r1, [r4]
	ldrh	r3, [r3]
	blx	r3
	stmia	r4!, {r0}
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #1
	rsbs	r0, r0, #0
	ands	r6, r0
	cmp	r7, r5
	bne	.L7
.L5:
	@ sp needed
	movs	r0, r6
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L8:
	movs	r6, #1
	b	.L5
	.size	rom_funcs_lookup, .-rom_funcs_lookup
	.ident	"GCC: (Arch Repository) 13.1.0"
