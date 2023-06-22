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
	.file	"float_init_rom.c"
	.text
	.section	.rodata.missing_float_func_shim.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\000"
	.section	.text.missing_float_func_shim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	missing_float_func_shim, %function
missing_float_func_shim:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L3
	bl	panic
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	missing_float_func_shim, .-missing_float_func_shim
	.section	.text.__aeabi_float_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__aeabi_float_init
	.syntax unified
	.code	16
	.thumb_func
	.type	__aeabi_float_init, %function
__aeabi_float_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #19
	push	{r4, lr}
	ldr	r0, .L12
	ldrb	r4, [r3]
	bl	rom_data_lookup
	movs	r1, r0
	cmp	r4, #1
	beq	.L11
	ble	.L9
	movs	r2, #128
	ldr	r0, .L12+4
	bl	memcpy
.L9:
	@ sp needed
	ldr	r0, .L12+8
	bl	rom_func_lookup
	ldr	r3, .L12+12
	str	r0, [r3]
	pop	{r4, pc}
.L11:
	ldr	r4, .L12+4
	movs	r2, #84
	movs	r0, r4
	bl	memcpy
	movs	r2, r4
	ldr	r1, .L12+16
	adds	r2, r2, #128
.L8:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L7
	str	r1, [r4]
.L7:
	adds	r4, r4, #4
	cmp	r4, r2
	bne	.L8
	b	.L9
.L13:
	.align	2
.L12:
	.word	18003
	.word	sf_table
	.word	13132
	.word	sf_clz_func
	.word	missing_float_func_shim
	.size	__aeabi_float_init, .-__aeabi_float_init
	.weak	sf_clz_func
	.section	.bss.sf_clz_func,"aw",%nobits
	.align	2
	.type	sf_clz_func, %object
	.size	sf_clz_func, 4
sf_clz_func:
	.space	4
	.global	sf_table
	.section	.bss.sf_table,"aw",%nobits
	.align	2
	.type	sf_table, %object
	.size	sf_table, 256
sf_table:
	.space	256
	.ident	"GCC: (Arch Repository) 13.1.0"
