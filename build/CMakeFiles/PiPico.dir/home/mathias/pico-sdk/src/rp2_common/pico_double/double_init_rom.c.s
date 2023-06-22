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
	.file	"double_init_rom.c"
	.text
	.section	.rodata.missing_double_func_shim.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"missing double function\000"
	.section	.text.missing_double_func_shim,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	missing_double_func_shim, %function
missing_double_func_shim:
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
	.size	missing_double_func_shim, .-missing_double_func_shim
	.section	.text.__aeabi_double_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__aeabi_double_init
	.syntax unified
	.code	16
	.thumb_func
	.type	__aeabi_double_init, %function
__aeabi_double_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #19
	push	{r4, r5, r6, lr}
	ldrb	r5, [r3]
	cmp	r5, #1
	beq	.L6
	ble	.L13
	ldr	r0, .L14
	bl	rom_data_lookup
	ldr	r4, .L14+4
	movs	r1, r0
	movs	r2, #128
	movs	r0, r4
	bl	memcpy
	cmp	r5, #2
	beq	.L8
.L9:
	@ sp needed
	ldr	r0, .L14+8
	bl	rom_func_lookup
	ldr	r3, .L14+12
	str	r0, [r3]
	pop	{r4, r5, r6, pc}
.L13:
	ldr	r4, .L14+4
.L8:
	ldr	r3, .L14+16
	str	r3, [r4, #72]
	b	.L9
.L6:
	ldr	r3, .L14+20
	ldr	r4, .L14+4
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	str	r3, [r4, #76]
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	str	r3, [r4, #88]
	str	r3, [r4, #92]
	str	r3, [r4, #96]
	str	r3, [r4, #100]
	str	r3, [r4, #104]
	str	r3, [r4, #108]
	str	r3, [r4, #112]
	str	r3, [r4, #116]
	str	r3, [r4, #120]
	str	r3, [r4, #124]
	b	.L8
.L15:
	.align	2
.L14:
	.word	17491
	.word	sd_table
	.word	13132
	.word	sf_clz_func
	.word	double_table_shim_on_use_helper
	.word	missing_double_func_shim
	.size	__aeabi_double_init, .-__aeabi_double_init
	.weak	sf_clz_func
	.section	.bss.sf_clz_func,"aw",%nobits
	.align	2
	.type	sf_clz_func, %object
	.size	sf_clz_func, 4
sf_clz_func:
	.space	4
	.global	sd_table
	.section	.bss.sd_table,"aw",%nobits
	.align	3
	.type	sd_table, %object
	.size	sd_table, 256
sd_table:
	.space	256
	.ident	"GCC: (Arch Repository) 13.1.0"
