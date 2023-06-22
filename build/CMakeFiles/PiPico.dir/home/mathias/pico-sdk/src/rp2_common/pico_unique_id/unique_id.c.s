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
	.file	"unique_id.c"
	.text
	.section	.text.startup._retrieve_unique_id_on_boot,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_retrieve_unique_id_on_boot, %function
_retrieve_unique_id_on_boot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L3
	bl	flash_get_unique_id
	@ sp needed
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	retrieved_id
	.size	_retrieve_unique_id_on_boot, .-_retrieve_unique_id_on_boot
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_retrieve_unique_id_on_boot(target1)
	.section	.text.pico_get_unique_board_id,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pico_get_unique_board_id
	.syntax unified
	.code	16
	.thumb_func
	.type	pico_get_unique_board_id, %function
pico_get_unique_board_id:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #8
	@ sp needed
	ldr	r1, .L6
	bl	memcpy
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	retrieved_id
	.size	pico_get_unique_board_id, .-pico_get_unique_board_id
	.section	.text.pico_get_unique_board_id_string,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pico_get_unique_board_id_string
	.syntax unified
	.code	16
	.thumb_func
	.type	pico_get_unique_board_id_string, %function
pico_get_unique_board_id_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r3, r1, #1
	cmp	r1, #1
	bne	.LCB44
	b	.L9	@long jump
.LCB44:
	ldr	r2, .L105
	ldrb	r1, [r2]
	lsrs	r5, r1, #4
	movs	r4, r5
	adds	r4, r4, #48
	cmp	r1, #159
	bls	.LCB53
	b	.L92	@long jump
.LCB53:
.L11:
	strb	r4, [r0]
	cmp	r3, #1
	bne	.LCB57
	b	.L12	@long jump
.LCB57:
	movs	r1, #15
	ldrb	r4, [r2]
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bls	.LCB66
	b	.L93	@long jump
.LCB66:
.L14:
	strb	r4, [r0, #1]
	cmp	r3, #2
	bne	.LCB70
	b	.L12	@long jump
.LCB70:
	ldrb	r4, [r2, #1]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bls	.LCB78
	b	.L94	@long jump
.LCB78:
.L16:
	strb	r1, [r0, #2]
	cmp	r3, #3
	bne	.LCB82
	b	.L12	@long jump
.LCB82:
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bls	.LCB90
	b	.L95	@long jump
.LCB90:
.L18:
	strb	r4, [r0, #3]
	cmp	r3, #4
	bne	.LCB94
	b	.L12	@long jump
.LCB94:
	ldrb	r4, [r2, #2]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bls	.LCB102
	b	.L96	@long jump
.LCB102:
.L20:
	strb	r1, [r0, #4]
	cmp	r3, #5
	bne	.LCB106
	b	.L12	@long jump
.LCB106:
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bls	.LCB114
	b	.L97	@long jump
.LCB114:
.L22:
	strb	r4, [r0, #5]
	cmp	r3, #6
	bne	.LCB118
	b	.L12	@long jump
.LCB118:
	ldrb	r4, [r2, #3]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bls	.LCB126
	b	.L98	@long jump
.LCB126:
.L24:
	strb	r1, [r0, #6]
	cmp	r3, #7
	bne	.LCB130
	b	.L12	@long jump
.LCB130:
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bhi	.L99
.L26:
	strb	r4, [r0, #7]
	cmp	r3, #8
	bne	.LCB142
	b	.L12	@long jump
.LCB142:
	ldrb	r4, [r2, #4]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bhi	.L100
.L28:
	strb	r1, [r0, #8]
	cmp	r3, #9
	beq	.L12
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bhi	.L101
.L30:
	strb	r4, [r0, #9]
	cmp	r3, #10
	beq	.L12
	ldrb	r4, [r2, #5]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bhi	.L102
.L32:
	strb	r1, [r0, #10]
	cmp	r3, #11
	beq	.L12
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bhi	.L103
	strb	r4, [r0, #11]
	cmp	r3, #12
	beq	.L12
.L104:
	ldrb	r4, [r2, #6]
	lsrs	r5, r4, #4
	movs	r1, r5
	adds	r1, r1, #48
	cmp	r4, #159
	bls	.L36
	adds	r1, r1, #7
.L36:
	strb	r1, [r0, #12]
	cmp	r3, #13
	beq	.L12
	movs	r1, #15
	ands	r1, r4
	movs	r4, r1
	adds	r4, r4, #48
	cmp	r1, #9
	bls	.L38
	adds	r1, r1, #55
	movs	r4, r1
.L38:
	strb	r4, [r0, #13]
	cmp	r3, #14
	beq	.L12
	ldrb	r1, [r2, #7]
	lsrs	r4, r1, #4
	movs	r2, r4
	adds	r2, r2, #48
	cmp	r1, #159
	bls	.L40
	adds	r2, r2, #7
.L40:
	strb	r2, [r0, #14]
	cmp	r3, #15
	beq	.L12
	movs	r2, #15
	ands	r2, r1
	movs	r1, r2
	adds	r1, r1, #55
	cmp	r2, #9
	bhi	.L42
	adds	r2, r2, #48
	movs	r1, r2
.L42:
	strb	r1, [r0, #15]
	cmp	r3, #16
	beq	.L12
	adds	r0, r0, #16
.L9:
	movs	r3, #0
	@ sp needed
	strb	r3, [r0]
	pop	{r4, r5, pc}
.L92:
	adds	r4, r4, #7
	b	.L11
.L93:
	adds	r1, r1, #55
	movs	r4, r1
	b	.L14
.L94:
	adds	r1, r1, #7
	b	.L16
.L95:
	adds	r1, r1, #55
	movs	r4, r1
	b	.L18
.L96:
	adds	r1, r1, #7
	b	.L20
.L97:
	adds	r1, r1, #55
	movs	r4, r1
	b	.L22
.L98:
	adds	r1, r1, #7
	b	.L24
.L99:
	adds	r1, r1, #55
	movs	r4, r1
	b	.L26
.L100:
	adds	r1, r1, #7
	b	.L28
.L101:
	adds	r1, r1, #55
	movs	r4, r1
	b	.L30
.L102:
	adds	r1, r1, #7
	b	.L32
.L103:
	adds	r1, r1, #55
	movs	r4, r1
	strb	r4, [r0, #11]
	cmp	r3, #12
	bne	.L104
.L12:
	adds	r0, r0, r3
	b	.L9
.L106:
	.align	2
.L105:
	.word	retrieved_id
	.size	pico_get_unique_board_id_string, .-pico_get_unique_board_id_string
	.section	.bss.retrieved_id,"aw",%nobits
	.align	2
	.type	retrieved_id, %object
	.size	retrieved_id, 8
retrieved_id:
	.space	8
	.ident	"GCC: (Arch Repository) 13.1.0"
