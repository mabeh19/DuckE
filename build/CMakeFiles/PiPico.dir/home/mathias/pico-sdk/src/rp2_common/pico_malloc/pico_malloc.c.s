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
	.file	"pico_malloc.c"
	.text
	.section	.rodata.__wrap_malloc.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Out of memory\000"
	.section	.text.__wrap_malloc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_malloc
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_malloc, %function
__wrap_malloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	bl	__real_malloc
	cmp	r0, #0
	beq	.L2
	ldr	r3, .L8
	adds	r4, r0, r4
	cmp	r4, r3
	bhi	.L2
	@ sp needed
	pop	{r4, pc}
.L2:
	ldr	r0, .L8+4
	bl	panic
.L9:
	.align	2
.L8:
	.word	__StackLimit
	.word	.LC1
	.size	__wrap_malloc, .-__wrap_malloc
	.section	.text.__wrap_calloc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_calloc
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_calloc, %function
__wrap_calloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r1
	bl	__real_calloc
	cmp	r0, #0
	beq	.L11
	ldr	r3, .L16
	adds	r4, r0, r4
	cmp	r4, r3
	bhi	.L11
	@ sp needed
	pop	{r4, pc}
.L11:
	ldr	r0, .L16+4
	bl	panic
.L17:
	.align	2
.L16:
	.word	__StackLimit
	.word	.LC1
	.size	__wrap_calloc, .-__wrap_calloc
	.section	.text.__wrap_realloc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_realloc
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_realloc, %function
__wrap_realloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r1
	bl	__real_realloc
	cmp	r0, #0
	beq	.L19
	ldr	r3, .L24
	adds	r4, r0, r4
	cmp	r4, r3
	bhi	.L19
	@ sp needed
	pop	{r4, pc}
.L19:
	ldr	r0, .L24+4
	bl	panic
.L25:
	.align	2
.L24:
	.word	__StackLimit
	.word	.LC1
	.size	__wrap_realloc, .-__wrap_realloc
	.section	.text.__wrap_free,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_free
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_free, %function
__wrap_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__real_free
	@ sp needed
	pop	{r4, pc}
	.size	__wrap_free, .-__wrap_free
	.ident	"GCC: (Arch Repository) 13.1.0"
