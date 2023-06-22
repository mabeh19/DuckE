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
	.file	"double_math.c"
	.text
	.global	__aeabi_ddiv
	.global	__aeabi_dcmpgt
	.global	__aeabi_dsub
	.global	__aeabi_dmul
	.global	__aeabi_dcmpge
	.global	__aeabi_dcmple
	.global	__aeabi_d2iz
	.global	__aeabi_i2d
	.global	__aeabi_dadd
	.section	.text.dpow_1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	dpow_1, %function
dpow_1:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	lr, r10
	mov	r7, r9
	movs	r5, r3
	ldr	r3, .L40
	push	{r6, r7, lr}
	mov	r8, r3
	lsls	r6, r1, #1
	lsrs	r6, r6, #21
	movs	r4, r2
	sub	sp, sp, #32
	add	r8, r8, r6
	cmp	r6, #0
	beq	.L2
	ldr	r3, .L40+4
	cmp	r6, r3
	beq	.L2
	movs	r2, #0
	ldr	r7, .L40+8
	subs	r7, r7, r6
	lsls	r3, r7, #20
	adds	r0, r0, r2
	adcs	r1, r1, r3
	bl	log
	ldr	r2, .L40+12
	ldr	r3, .L40+16
	bl	__aeabi_ddiv
	movs	r2, #0
	ldr	r3, .L40+20
	str	r0, [sp]
	str	r1, [sp, #4]
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.L3
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r3, .L40+24
	movs	r2, #0
	bl	__aeabi_dsub
	ldr	r3, .L40+28
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r8, r3
	add	r8, r8, r6
.L3:
	mov	r3, r8
	cmp	r3, #0
	beq	.L36
.L5:
	movs	r2, #0
	movs	r0, r4
	movs	r1, r5
	ldr	r3, .L40+32
	bl	__aeabi_dcmpge
	cmp	r0, #0
	bne	.L37
.L33:
	movs	r2, #0
	movs	r0, r4
	movs	r1, r5
	ldr	r3, .L40+36
	bl	__aeabi_dcmple
	cmp	r0, #0
	beq	.L34
	mov	r3, r8
	movs	r0, #0
	cmp	r3, #0
	blt	.L19
.L18:
	movs	r1, #0
	b	.L1
.L37:
	mov	r3, r8
	movs	r0, #0
	cmp	r3, #0
	blt	.L18
.L19:
	ldr	r1, .L40+40
	b	.L1
.L36:
	movs	r2, r4
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	movs	r3, r5
	bl	__aeabi_dmul
	bl	exp2
.L1:
	add	sp, sp, #32
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L2:
	bl	log
	ldr	r2, .L40+12
	ldr	r3, .L40+16
	bl	__aeabi_ddiv
	movs	r2, #0
	ldr	r3, .L40+20
	str	r0, [sp]
	str	r1, [sp, #4]
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.L5
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	movs	r2, #0
	ldr	r3, .L40+24
	bl	__aeabi_dsub
	ldr	r3, .L40+28
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r8, r3
	movs	r2, #0
	movs	r0, r4
	movs	r1, r5
	ldr	r3, .L40+32
	add	r8, r8, r6
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	.L33
	b	.L37
.L34:
	movs	r0, r4
	movs	r1, r5
	bl	round
	movs	r3, r1
	movs	r2, r0
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	movs	r2, #26
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	bl	ldexp
	bl	round
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	beq	.L11
	ldr	r2, .L40+4
	cmp	r3, r2
	beq	.L11
	movs	r4, #0
	cmp	r3, #26
	bgt	.LCB171
	b	.L38	@long jump
.LCB171:
	ldr	r5, .L40+44
	adds	r4, r4, r0
	adcs	r5, r5, r1
.L11:
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_d2iz
	mov	r10, r0
	mov	r0, r8
	bl	__aeabi_i2d
	movs	r2, r4
	movs	r3, r5
	movs	r6, r0
	movs	r7, r1
	bl	__aeabi_dmul
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	bl	round
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	bl	__aeabi_dsub
	movs	r2, r4
	movs	r3, r5
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__aeabi_dsub
	movs	r2, r6
	movs	r3, r7
	bl	__aeabi_dmul
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	bl	__aeabi_dadd
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	mov	r0, r10
	bl	__aeabi_i2d
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	bl	__aeabi_dmul
	movs	r4, r0
	movs	r5, r1
	bl	round
	movs	r2, r0
	movs	r3, r1
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	bl	__aeabi_dadd
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	movs	r4, r0
	movs	r5, r1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__aeabi_dmul
	movs	r3, r5
	movs	r2, r4
	bl	__aeabi_dadd
	bl	exp2
	lsls	r3, r1, #1
	lsrs	r3, r3, #21
	movs	r4, r0
	movs	r5, r1
	mov	r9, r3
	cmp	r3, #0
	bne	.LCB243
	b	.L1	@long jump
.LCB243:
	ldr	r3, .L40+4
	cmp	r9, r3
	bne	.LCB246
	b	.L1	@long jump
.LCB246:
	mov	r1, r10
	mov	r3, r8
	muls	r3, r1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	mov	r10, r3
	bl	__aeabi_d2iz
	movs	r1, r7
	add	r10, r10, r0
	movs	r0, r6
	bl	__aeabi_d2iz
	mov	r3, r9
	add	r0, r0, r10
	adds	r3, r0, r3
	cmp	r3, #0
	ble	.L39
	ldr	r2, .L40+48
	cmp	r3, r2
	ble	.L16
	ldr	r2, .L40+40
	lsrs	r3, r5, #31
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
	b	.L1
.L39:
	lsrs	r3, r5, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L1
.L38:
	lsrs	r1, r1, #31
	lsls	r5, r1, #31
	b	.L11
.L16:
	movs	r2, #0
	lsls	r3, r0, #20
	adds	r2, r2, r4
	adcs	r3, r3, r5
	movs	r0, r2
	movs	r1, r3
	b	.L1
.L41:
	.align	2
.L40:
	.word	-1023
	.word	2047
	.word	1023
	.word	-17155601
	.word	1072049730
	.word	1071644672
	.word	1072693248
	.word	-1022
	.word	1085276160
	.word	-1062207488
	.word	2146435072
	.word	-27262976
	.word	2046
	.size	dpow_1, .-dpow_1
	.section	.text.dpow_int2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	dpow_int2, %function
dpow_int2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	lr, r10
	mov	r7, r9
	movs	r4, r0
	push	{r6, r7, lr}
	movs	r5, r1
	movs	r6, r2
	cmp	r2, #1
	beq	.L42
	lsrs	r7, r2, #31
	adds	r7, r7, r2
	asrs	r7, r7, #1
	cmp	r7, #1
	beq	.L44
	movs	r3, #3
	asrs	r2, r2, #31
	ands	r3, r2
	adds	r3, r3, r6
	asrs	r3, r3, #2
	mov	r8, r3
	cmp	r3, #1
	beq	.L45
	movs	r3, #7
	ands	r3, r2
	adds	r3, r3, r6
	asrs	r3, r3, #3
	mov	r9, r3
	cmp	r3, #1
	beq	.L46
	movs	r3, #15
	ands	r3, r2
	adds	r3, r3, r6
	asrs	r3, r3, #4
	mov	r10, r3
	cmp	r3, #1
	beq	.L47
	movs	r3, r6
	subs	r3, r3, #32
	cmp	r3, #31
	bls	.L48
	movs	r2, #0
	bl	dpow_int2
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
.L48:
	movs	r3, r1
	movs	r2, r0
	bl	__aeabi_dmul
	mov	r3, r10
	lsls	r3, r3, #31
	bpl	.L47
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dmul
.L47:
	movs	r3, r1
	movs	r2, r0
	bl	__aeabi_dmul
	mov	r3, r9
	lsls	r3, r3, #31
	bpl	.L46
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dmul
.L46:
	movs	r3, r1
	movs	r2, r0
	bl	__aeabi_dmul
	mov	r3, r8
	lsls	r3, r3, #31
	bmi	.L80
.L45:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	lsls	r7, r7, #31
	bpl	.L44
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dmul
.L44:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	lsls	r6, r6, #31
	bpl	.L42
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dmul
.L42:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L80:
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dmul
	b	.L45
	.size	dpow_int2, .-dpow_int2
	.section	.text.dpowint_0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	dpowint_0, %function
dpowint_0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r6, r0
	movs	r7, r1
	mov	r8, r2
	movs	r4, r0
	movs	r5, r1
	push	{lr}
	cmp	r1, #0
	bge	.L82
	movs	r0, r2
	bl	__aeabi_i2d
	ldr	r2, .L115
	lsls	r3, r1, #1
	lsrs	r3, r3, #21
	adds	r3, r3, r2
	bmi	.L83
	movs	r2, #52
	subs	r3, r2, r3
	bmi	.L83
	movs	r7, r3
	subs	r7, r7, #32
	bmi	.L84
	subs	r2, r2, #53
	mov	ip, r7
	lsls	r2, r2, r7
.L85:
	movs	r6, #1
	rsbs	r6, r6, #0
	lsls	r6, r6, r3
	movs	r7, r0
	bics	r7, r6
	movs	r6, r7
	movs	r7, r1
	bics	r7, r2
	movs	r2, r7
	orrs	r2, r6
	bne	.L83
	cmp	r3, #52
	beq	.L86
	mov	r2, ip
	cmp	r2, #0
	blt	.L87
	movs	r0, r1
	lsrs	r0, r0, r2
.L88:
	lsls	r0, r0, #31
	bmi	.L86
.L83:
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r3, r5, r3
	movs	r5, r3
	movs	r6, r4
	movs	r7, r3
.L82:
	lsrs	r3, r5, #20
	beq	.L90
	ldr	r2, .L115+4
	cmp	r3, r2
	beq	.L90
	lsls	r2, r5, #12
	lsrs	r2, r2, #12
	orrs	r2, r4
	bne	.L90
	mov	r2, r8
	ldr	r1, .L115+8
	cmp	r2, r1
	blt	.L113
.L91:
	movs	r1, #128
	lsls	r1, r1, #4
	cmp	r2, r1
	bge	.L114
.L92:
	ldr	r1, .L115
	mov	ip, r1
	add	r3, r3, ip
	muls	r2, r3
	ldr	r3, .L115+12
	adds	r3, r2, r3
	cmp	r3, #0
	ble	.L96
	ldr	r1, .L115+16
	movs	r0, #0
	cmp	r3, r1
	bgt	.L97
	lsls	r1, r2, #20
	movs	r2, #0
	ldr	r3, .L115+20
	adds	r0, r0, r2
	adcs	r1, r1, r3
	b	.L81
.L84:
	movs	r2, #1
	movs	r6, #32
	rsbs	r2, r2, #0
	mov	ip, r7
	movs	r7, r2
	subs	r6, r6, r3
	lsrs	r7, r7, r6
	lsls	r2, r2, r3
	orrs	r2, r7
	b	.L85
.L87:
	movs	r2, #32
	movs	r6, r1
	subs	r2, r2, r3
	lsls	r6, r6, r2
	lsrs	r0, r0, r3
	orrs	r0, r6
	b	.L88
.L86:
	movs	r6, #128
	lsls	r6, r6, #24
	movs	r0, r4
	mov	r2, r8
	adds	r1, r5, r6
	bl	dpowint_0
	adds	r1, r1, r6
.L81:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L90:
	mov	r3, r8
	cmp	r3, #0
	beq	.L98
	adds	r3, r3, #32
	cmp	r3, #64
	bhi	.L94
	mov	r3, r8
	cmp	r3, #0
	bge	.L95
	movs	r3, r7
	movs	r2, r6
	movs	r0, #0
	ldr	r1, .L115+20
	bl	__aeabi_ddiv
	mov	r3, r8
	rsbs	r3, r3, #0
	movs	r6, r0
	movs	r7, r1
	mov	r8, r3
.L95:
	mov	r2, r8
	movs	r0, r6
	movs	r1, r7
	bl	dpow_int2
	b	.L81
.L98:
	movs	r0, #0
	ldr	r1, .L115+20
	b	.L81
.L94:
	mov	r0, r8
	bl	__aeabi_i2d
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	dpow_1
	b	.L81
.L114:
	ldr	r2, .L115+4
	b	.L92
.L113:
	movs	r2, r1
	b	.L91
.L96:
	movs	r0, #0
	movs	r1, #0
	b	.L81
.L97:
	ldr	r1, .L115+24
	b	.L81
.L116:
	.align	2
.L115:
	.word	-1023
	.word	2047
	.word	-2048
	.word	1023
	.word	2046
	.word	1072693248
	.word	2146435072
	.size	dpowint_0, .-dpowint_0
	.section	.text.dpow_0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	dpow_0, %function
dpow_0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	sub	sp, sp, #8
	movs	r6, r2
	movs	r7, r3
	movs	r4, r0
	movs	r5, r1
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r1, #0
	bge	.L118
	lsls	r3, r7, #1
	ldr	r2, .L151
	lsrs	r3, r3, #21
	adds	r3, r3, r2
	bmi	.L119
	movs	r2, #52
	subs	r3, r2, r3
	bmi	.L119
	movs	r0, r3
	subs	r0, r0, #32
	bmi	.L120
	subs	r2, r2, #53
	mov	ip, r0
	lsls	r2, r2, r0
.L121:
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r0, r6
	bics	r0, r1
	movs	r1, r0
	movs	r0, r7
	bics	r0, r2
	movs	r2, r0
	orrs	r2, r1
	bne	.L119
	cmp	r3, #52
	beq	.L122
	mov	r2, ip
	cmp	r2, #0
	blt	.L123
	movs	r3, r7
	lsrs	r3, r3, r2
.L124:
	lsls	r3, r3, #31
	bmi	.L122
.L119:
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r3, r5, r3
	movs	r5, r3
	str	r4, [sp]
	str	r5, [sp, #4]
.L118:
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_d2iz
	lsrs	r3, r5, #20
	mov	r8, r0
	movs	r2, r0
	cmp	r3, #0
	beq	.L126
	ldr	r1, .L151+4
	cmp	r3, r1
	beq	.L126
	lsls	r1, r5, #12
	lsrs	r1, r1, #12
	orrs	r1, r4
	bne	.L126
	ldr	r1, .L151+8
	cmp	r0, r1
	blt	.L149
.L127:
	movs	r1, #128
	lsls	r1, r1, #4
	cmp	r2, r1
	bge	.L150
.L128:
	ldr	r1, .L151
	mov	ip, r1
	add	r3, r3, ip
	muls	r2, r3
	ldr	r3, .L151+12
	adds	r3, r2, r3
	cmp	r3, #0
	ble	.L132
	ldr	r1, .L151+16
	movs	r0, #0
	cmp	r3, r1
	bgt	.L133
	lsls	r1, r2, #20
	movs	r2, #0
	ldr	r3, .L151+20
	adds	r0, r0, r2
	adcs	r1, r1, r3
	b	.L117
.L120:
	movs	r2, #1
	movs	r1, #32
	rsbs	r2, r2, #0
	mov	ip, r0
	movs	r0, r2
	subs	r1, r1, r3
	lsrs	r0, r0, r1
	lsls	r2, r2, r3
	orrs	r2, r0
	b	.L121
.L123:
	movs	r2, #32
	movs	r1, r7
	subs	r2, r2, r3
	lsls	r1, r1, r2
	movs	r2, r1
	movs	r1, r6
	lsrs	r1, r1, r3
	movs	r3, r1
	orrs	r3, r2
	b	.L124
.L122:
	movs	r3, #128
	lsls	r3, r3, #24
	movs	r0, r4
	adds	r1, r5, r3
	movs	r2, r6
	movs	r3, r7
	movs	r4, #128
	bl	dpow_0
	lsls	r4, r4, #24
	adds	r1, r1, r4
.L117:
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L126:
	mov	r3, r8
	cmp	r3, #0
	beq	.L134
	adds	r3, r3, #32
	cmp	r3, #64
	bhi	.L130
	mov	r3, r8
	cmp	r3, #0
	bge	.L131
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	movs	r0, #0
	ldr	r1, .L151+20
	bl	__aeabi_ddiv
	mov	r3, r8
	str	r0, [sp]
	str	r1, [sp, #4]
	rsbs	r2, r3, #0
.L131:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	bl	dpow_int2
	b	.L117
.L134:
	movs	r0, #0
	ldr	r1, .L151+20
	b	.L117
.L130:
	movs	r2, r6
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	movs	r3, r7
	bl	dpow_1
	b	.L117
.L150:
	ldr	r2, .L151+4
	b	.L128
.L149:
	movs	r2, r1
	b	.L127
.L132:
	movs	r0, #0
	movs	r1, #0
	b	.L117
.L133:
	ldr	r1, .L151+24
	b	.L117
.L152:
	.align	2
.L151:
	.word	-1023
	.word	2047
	.word	-2048
	.word	1023
	.word	2046
	.word	1072693248
	.word	2146435072
	.size	dpow_0, .-dpow_0
	.section	.text.__wrap_ldexp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_ldexp
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_ldexp, %function
__wrap_ldexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r3, r1, #1
	push	{r4, r5, r6, lr}
	lsrs	r3, r3, #21
	movs	r4, r0
	movs	r5, r1
	cmp	r3, #0
	beq	.L153
	ldr	r6, .L162
	cmp	r3, r6
	beq	.L153
	adds	r3, r2, r3
	cmp	r3, #0
	ble	.L161
	ldr	r1, .L162+4
	cmp	r3, r1
	ble	.L157
	ldr	r2, .L162+8
	lsrs	r3, r5, #31
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
.L153:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L161:
	lsrs	r3, r1, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L153
.L157:
	movs	r0, #0
	lsls	r1, r2, #20
	adds	r0, r0, r4
	adcs	r1, r1, r5
	b	.L153
.L163:
	.align	2
.L162:
	.word	2047
	.word	2046
	.word	2146435072
	.size	__wrap_ldexp, .-__wrap_ldexp
	.section	.text.__wrap_copysign,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_copysign
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_copysign, %function
__wrap_copysign:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	lsrs	r3, r3, #31
	lsls	r4, r1, #1
	lsls	r3, r3, #31
	lsrs	r4, r4, #1
	orrs	r4, r3
	movs	r1, r4
	@ sp needed
	pop	{r4, r5, pc}
	.size	__wrap_copysign, .-__wrap_copysign
	.section	.text.__wrap_trunc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_trunc
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_trunc, %function
__wrap_trunc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r3, r1, #1
	ldr	r2, .L172
	lsrs	r3, r3, #21
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r5, r1
	adds	r3, r3, r2
	bmi	.L171
	movs	r2, #52
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L165
	movs	r2, r3
	subs	r2, r2, #32
	bmi	.L168
	movs	r6, #1
	lsls	r6, r6, r2
	movs	r1, r6
.L169:
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r0, r2
	movs	r6, r4
	movs	r3, #0
	rsbs	r2, r0, #0
	sbcs	r3, r1
	movs	r4, r5
	ands	r6, r2
	ands	r4, r3
	movs	r0, r6
	movs	r1, r4
.L165:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L168:
	movs	r2, #32
	movs	r6, #1
	subs	r2, r2, r3
	lsrs	r6, r6, r2
	movs	r1, r6
	b	.L169
.L171:
	lsrs	r3, r1, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L165
.L173:
	.align	2
.L172:
	.word	-1023
	.size	__wrap_trunc, .-__wrap_trunc
	.section	.text.__wrap_round,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_round
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_round, %function
__wrap_round:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L186
	lsls	r3, r1, #1
	mov	ip, r2
	lsrs	r3, r3, #21
	add	r3, r3, ip
	push	{r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	adds	r2, r3, #1
	blt	.L183
	adds	r2, r3, #1
	beq	.L184
	cmp	r3, #52
	bge	.L174
	movs	r6, #51
	subs	r6, r6, r3
	movs	r7, r6
	subs	r7, r7, #32
	bmi	.L178
	movs	r1, #1
	lsls	r1, r1, r7
	movs	r3, r1
	movs	r1, #1
	lsls	r1, r1, r6
	movs	r2, r1
	adds	r2, r2, r4
	adcs	r3, r3, r5
	cmp	r7, #0
	blt	.L180
.L185:
	movs	r4, #2
	lsls	r4, r4, r7
	movs	r1, r4
.L181:
	movs	r4, #2
	lsls	r4, r4, r6
	movs	r0, r4
	movs	r6, r2
	movs	r5, #0
	rsbs	r4, r0, #0
	sbcs	r5, r1
	ands	r6, r4
	ands	r3, r5
	movs	r0, r6
	movs	r1, r3
.L174:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L183:
	lsrs	r3, r1, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L174
.L178:
	movs	r1, #32
	movs	r0, #1
	subs	r1, r1, r6
	lsrs	r0, r0, r1
	movs	r1, #1
	lsls	r1, r1, r6
	movs	r3, r0
	movs	r2, r1
	adds	r2, r2, r4
	adcs	r3, r3, r5
	cmp	r7, #0
	bge	.L185
.L180:
	movs	r4, #32
	movs	r5, #2
	subs	r4, r4, r6
	lsrs	r5, r5, r4
	movs	r1, r5
	b	.L181
.L184:
	lsrs	r3, r1, #31
	ldr	r2, .L186+4
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
	b	.L174
.L187:
	.align	2
.L186:
	.word	-1023
	.word	1072693248
	.size	__wrap_round, .-__wrap_round
	.section	.text.__wrap_floor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_floor
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_floor, %function
__wrap_floor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r3, r1
	movs	r5, r1
	lsls	r1, r1, #1
	movs	r2, r0
	movs	r4, r0
	push	{lr}
	lsrs	r1, r1, #21
	beq	.L200
	ldr	r0, .L202
	adds	r1, r1, r0
	bmi	.L201
	movs	r6, #52
	subs	r1, r6, r1
	mov	r8, r1
	mov	r6, r8
	movs	r0, r2
	movs	r1, r3
	cmp	r6, #0
	ble	.L188
	mov	r7, r8
	subs	r7, r7, #32
	bmi	.L192
	movs	r6, #1
	lsls	r6, r6, r7
	movs	r1, r6
.L193:
	movs	r7, #1
	mov	r6, r8
	lsls	r7, r7, r6
	movs	r0, r7
	cmp	r3, #0
	bge	.L194
	movs	r4, #1
	rsbs	r4, r4, #0
	asrs	r5, r4, #31
	adds	r4, r4, r2
	adcs	r5, r5, r3
	adds	r4, r4, r0
	adcs	r5, r5, r1
.L194:
	movs	r3, #0
	rsbs	r2, r0, #0
	sbcs	r3, r1
	movs	r6, r4
	movs	r4, r5
	ands	r6, r2
	ands	r4, r3
	movs	r0, r6
	movs	r1, r4
.L188:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L201:
	movs	r0, #0
	movs	r1, #0
	cmp	r3, #0
	bge	.L188
	ldr	r1, .L202+4
	b	.L188
.L200:
	lsrs	r3, r3, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L188
.L192:
	movs	r7, #32
	subs	r7, r7, r6
	movs	r6, #1
	lsrs	r6, r6, r7
	movs	r1, r6
	b	.L193
.L203:
	.align	2
.L202:
	.word	-1023
	.word	-1074790400
	.size	__wrap_floor, .-__wrap_floor
	.section	.text.__wrap_ceil,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_ceil
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_ceil, %function
__wrap_ceil:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	movs	r3, r1
	movs	r5, r1
	lsls	r1, r1, #1
	movs	r2, r0
	movs	r4, r0
	push	{lr}
	lsrs	r1, r1, #21
	beq	.L213
	ldr	r0, .L215
	adds	r1, r1, r0
	bmi	.L214
	movs	r6, #52
	subs	r1, r6, r1
	mov	r8, r1
	mov	r6, r8
	movs	r0, r2
	movs	r1, r3
	cmp	r6, #0
	ble	.L204
	mov	r7, r8
	subs	r7, r7, #32
	bmi	.L208
	movs	r6, #1
	lsls	r6, r6, r7
	movs	r1, r6
.L209:
	movs	r7, #1
	mov	r6, r8
	lsls	r7, r7, r6
	movs	r0, r7
	cmp	r3, #0
	blt	.L210
	movs	r4, #1
	rsbs	r4, r4, #0
	asrs	r5, r4, #31
	adds	r4, r4, r2
	adcs	r5, r5, r3
	adds	r4, r4, r0
	adcs	r5, r5, r1
.L210:
	movs	r3, #0
	rsbs	r2, r0, #0
	sbcs	r3, r1
	movs	r6, r4
	movs	r4, r5
	ands	r6, r2
	ands	r4, r3
	movs	r0, r6
	movs	r1, r4
.L204:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L214:
	movs	r0, #0
	cmp	r3, #0
	bge	.L211
	movs	r1, #128
	lsls	r1, r1, #24
	b	.L204
.L213:
	lsrs	r3, r3, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L204
.L211:
	ldr	r1, .L215+4
	b	.L204
.L208:
	movs	r7, #32
	subs	r7, r7, r6
	movs	r6, #1
	lsrs	r6, r6, r7
	movs	r1, r6
	b	.L209
.L216:
	.align	2
.L215:
	.word	-1023
	.word	1072693248
	.size	__wrap_ceil, .-__wrap_ceil
	.section	.text.__wrap_asin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_asin
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_asin, %function
__wrap_asin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r2, r0
	movs	r3, r1
	movs	r4, r0
	movs	r5, r1
	movs	r0, #0
	ldr	r1, .L224
	bl	__aeabi_dsub
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	ldr	r3, .L224
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	movs	r3, r1
	movs	r2, r0
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_dmul
	lsls	r3, r1, #1
	lsrs	r3, r3, #21
	beq	.L218
	cmp	r1, #0
	blt	.L220
.L218:
	bl	sqrt
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	atan2
.L217:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L220:
	movs	r0, #0
	ldr	r1, .L224+4
	b	.L217
.L225:
	.align	2
.L224:
	.word	1072693248
	.word	2146435072
	.size	__wrap_asin, .-__wrap_asin
	.section	.text.__wrap_acos,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_acos
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_acos, %function
__wrap_acos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r2, r0
	movs	r3, r1
	movs	r4, r0
	movs	r5, r1
	movs	r0, #0
	ldr	r1, .L233
	bl	__aeabi_dsub
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	ldr	r3, .L233
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	movs	r3, r1
	movs	r2, r0
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_dmul
	lsls	r3, r1, #1
	lsrs	r3, r3, #21
	beq	.L227
	cmp	r1, #0
	blt	.L229
.L227:
	bl	sqrt
	movs	r2, r4
	movs	r3, r5
	bl	atan2
.L226:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L229:
	movs	r0, #0
	ldr	r1, .L233+4
	b	.L226
.L234:
	.align	2
.L233:
	.word	1072693248
	.word	2146435072
	.size	__wrap_acos, .-__wrap_acos
	.section	.text.__wrap_atan,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_atan
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_atan, %function
__wrap_atan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L239
	push	{r4, lr}
	lsrs	r3, r1, #20
	cmp	r3, r2
	beq	.L237
	ldr	r2, .L239+4
	cmp	r3, r2
	beq	.L238
	movs	r2, #0
	ldr	r3, .L239+8
	bl	atan2
.L235:
	@ sp needed
	pop	{r4, pc}
.L238:
	ldr	r0, .L239+12
	ldr	r1, .L239+16
	b	.L235
.L237:
	ldr	r0, .L239+12
	ldr	r1, .L239+20
	b	.L235
.L240:
	.align	2
.L239:
	.word	2047
	.word	4095
	.word	1072693248
	.word	1413754136
	.word	-1074191877
	.word	1073291771
	.size	__wrap_atan, .-__wrap_atan
	.section	.text.__wrap_sinh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_sinh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_sinh, %function
__wrap_sinh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	bl	exp
	movs	r3, #128
	lsls	r3, r3, #24
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	adds	r1, r5, r3
	bl	exp
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_dsub
	movs	r3, r1
	movs	r5, r1
	lsls	r1, r1, #1
	movs	r2, r0
	movs	r4, r0
	lsrs	r1, r1, #21
	beq	.L241
	ldr	r0, .L249
	cmp	r1, r0
	beq	.L241
	movs	r4, #0
	cmp	r1, #1
	beq	.L248
	ldr	r5, .L249+4
	adds	r4, r4, r2
	adcs	r5, r5, r3
.L241:
	@ sp needed
	movs	r1, r5
	movs	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L248:
	lsrs	r3, r3, #31
	lsls	r5, r3, #31
	b	.L241
.L250:
	.align	2
.L249:
	.word	2047
	.word	-1048576
	.size	__wrap_sinh, .-__wrap_sinh
	.section	.text.__wrap_cosh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_cosh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_cosh, %function
__wrap_cosh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	bl	exp
	movs	r3, #128
	lsls	r3, r3, #24
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	adds	r1, r5, r3
	bl	exp
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_dadd
	movs	r3, r1
	movs	r5, r1
	lsls	r1, r1, #1
	movs	r2, r0
	movs	r4, r0
	lsrs	r1, r1, #21
	beq	.L251
	ldr	r0, .L259
	cmp	r1, r0
	beq	.L251
	movs	r4, #0
	cmp	r1, #1
	beq	.L258
	ldr	r5, .L259+4
	adds	r4, r4, r2
	adcs	r5, r5, r3
.L251:
	@ sp needed
	movs	r1, r5
	movs	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L258:
	lsrs	r3, r3, #31
	lsls	r5, r3, #31
	b	.L251
.L260:
	.align	2
.L259:
	.word	2047
	.word	-1048576
	.size	__wrap_cosh, .-__wrap_cosh
	.section	.text.__wrap_tanh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_tanh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_tanh, %function
__wrap_tanh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L269
	push	{r3, r4, r5, r6, r7, lr}
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	cmp	r3, r2
	ble	.L262
	movs	r0, #0
	cmp	r1, #0
	blt	.L265
	ldr	r1, .L269+4
	b	.L261
.L262:
	cmp	r3, #0
	beq	.L264
	movs	r1, #128
	movs	r0, #0
	lsls	r1, r1, #13
	adds	r0, r0, r4
	adcs	r1, r1, r5
.L264:
	bl	exp
	movs	r2, #0
	ldr	r3, .L269+4
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dsub
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	ldr	r3, .L269+4
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_ddiv
.L261:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L265:
	ldr	r1, .L269+8
	b	.L261
.L270:
	.align	2
.L269:
	.word	1027
	.word	1072693248
	.word	-1074790400
	.size	__wrap_tanh, .-__wrap_tanh
	.section	.text.__wrap_asinh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_asinh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_asinh, %function
__wrap_asinh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L279
	push	{r3, r4, r5, r6, r7, lr}
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	cmp	r3, r2
	ble	.L272
	cmp	r5, #0
	blt	.L273
	movs	r1, r5
	bl	log
	ldr	r2, .L279+4
	ldr	r3, .L279+8
	bl	__aeabi_dadd
	b	.L271
.L272:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	movs	r2, #0
	ldr	r3, .L279+12
	bl	__aeabi_dadd
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	movs	r3, #0
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.L278
	movs	r0, r6
	movs	r1, r7
	bl	sqrt
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dadd
	bl	log
.L271:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L273:
	movs	r6, #128
	lsls	r6, r6, #24
	adds	r3, r5, r6
	movs	r1, r3
	bl	log
	ldr	r2, .L279+4
	ldr	r3, .L279+8
	bl	__aeabi_dadd
	adds	r1, r1, r6
	b	.L271
.L278:
	movs	r0, r6
	movs	r1, r7
	bl	sqrt
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dsub
	movs	r4, #128
	bl	log
	lsls	r4, r4, #24
	adds	r1, r1, r4
	b	.L271
.L280:
	.align	2
.L279:
	.word	1054
	.word	-17155601
	.word	1072049730
	.word	1072693248
	.size	__wrap_asinh, .-__wrap_asinh
	.section	.text.__wrap_acosh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_acosh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_acosh, %function
__wrap_acosh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	subs	r3, r1, #0
	bge	.L282
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r1, r5, r3
	movs	r3, r1
	movs	r5, r1
.L282:
	lsrs	r2, r3, #20
	ldr	r3, .L289
	cmp	r2, r3
	bgt	.L288
	movs	r2, #0
	ldr	r3, .L289+4
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	ldr	r3, .L289+4
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_dmul
	bl	sqrt
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dadd
	bl	log
.L281:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L288:
	movs	r0, r4
	movs	r1, r5
	bl	log
	ldr	r2, .L289+8
	ldr	r3, .L289+12
	bl	__aeabi_dadd
	b	.L281
.L290:
	.align	2
.L289:
	.word	1054
	.word	1072693248
	.word	-17155601
	.word	1072049730
	.size	__wrap_acosh, .-__wrap_acosh
	.section	.text.__wrap_atanh,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_atanh
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_atanh, %function
__wrap_atanh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r2, #0
	ldr	r3, .L299
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dadd
	movs	r2, r4
	movs	r3, r5
	movs	r6, r0
	movs	r7, r1
	movs	r0, #0
	ldr	r1, .L299
	bl	__aeabi_dsub
	movs	r3, r1
	movs	r2, r0
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_ddiv
	bl	log
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	beq	.L291
	ldr	r2, .L299+4
	cmp	r3, r2
	beq	.L291
	movs	r0, #0
	cmp	r3, #1
	beq	.L298
	ldr	r1, .L299+8
	adds	r0, r0, r4
	adcs	r1, r1, r5
.L291:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L298:
	lsrs	r3, r1, #31
	lsls	r1, r3, #31
	b	.L291
.L300:
	.align	2
.L299:
	.word	1072693248
	.word	2047
	.word	-1048576
	.size	__wrap_atanh, .-__wrap_atanh
	.section	.text.__wrap_exp2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_exp2
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_exp2, %function
__wrap_exp2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L314
	push	{r4, r5, r6, lr}
	lsrs	r2, r1, #20
	movs	r4, r0
	movs	r5, r1
	cmp	r2, r3
	beq	.L307
	movs	r2, #0
	ldr	r3, .L314+4
	bl	__aeabi_dcmple
	cmp	r0, #0
	bne	.L307
	movs	r2, #0
	movs	r0, r4
	movs	r1, r5
	ldr	r3, .L314+8
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	.L312
	movs	r0, #0
	ldr	r1, .L314+12
.L301:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L312:
	movs	r0, r4
	movs	r1, r5
	bl	round
	bl	__aeabi_d2iz
	movs	r6, r0
	bl	__aeabi_i2d
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	ldr	r3, .L314+16
	ldr	r2, .L314+20
	bl	__aeabi_dmul
	bl	exp
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	beq	.L301
	ldr	r2, .L314+24
	cmp	r3, r2
	beq	.L301
	adds	r3, r6, r3
	cmp	r3, #0
	ble	.L313
	ldr	r2, .L314+28
	cmp	r3, r2
	ble	.L305
	lsrs	r3, r1, #31
	ldr	r2, .L314+12
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
	b	.L301
.L307:
	movs	r0, #0
	movs	r1, #0
	b	.L301
.L313:
	lsrs	r3, r1, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L301
.L305:
	movs	r0, #0
	lsls	r1, r6, #20
	adds	r0, r0, r4
	adcs	r1, r1, r5
	b	.L301
.L315:
	.align	2
.L314:
	.word	4095
	.word	-1062207488
	.word	1085276160
	.word	2146435072
	.word	1072049730
	.word	-17155601
	.word	2047
	.word	2046
	.size	__wrap_exp2, .-__wrap_exp2
	.section	.text.__wrap_log2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log2
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log2, %function
__wrap_log2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	log
	@ sp needed
	ldr	r2, .L317
	ldr	r3, .L317+4
	bl	__aeabi_dmul
	pop	{r4, pc}
.L318:
	.align	2
.L317:
	.word	1697350398
	.word	1073157447
	.size	__wrap_log2, .-__wrap_log2
	.section	.text.__wrap_exp10,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_exp10
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_exp10, %function
__wrap_exp10:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, r0
	@ sp needed
	movs	r3, r1
	movs	r0, #0
	ldr	r1, .L320
	bl	pow
	pop	{r4, pc}
.L321:
	.align	2
.L320:
	.word	1076101120
	.size	__wrap_exp10, .-__wrap_exp10
	.section	.text.__wrap_log10,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log10
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log10, %function
__wrap_log10:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	log
	@ sp needed
	ldr	r2, .L323
	ldr	r3, .L323+4
	bl	__aeabi_dmul
	pop	{r4, pc}
.L324:
	.align	2
.L323:
	.word	354870542
	.word	1071369083
	.size	__wrap_log10, .-__wrap_log10
	.section	.text.__wrap_expm1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_expm1
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_expm1, %function
__wrap_expm1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	exp
	@ sp needed
	movs	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dsub
	pop	{r4, pc}
.L327:
	.align	2
.L326:
	.word	1072693248
	.size	__wrap_expm1, .-__wrap_expm1
	.section	.text.__wrap_log1p,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log1p
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log1p, %function
__wrap_log1p:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	@ sp needed
	ldr	r3, .L329
	bl	__aeabi_dadd
	bl	log
	pop	{r4, pc}
.L330:
	.align	2
.L329:
	.word	1072693248
	.size	__wrap_log1p, .-__wrap_log1p
	.section	.text.__wrap_fma,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_fma
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_fma, %function
__wrap_fma:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_dmul
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	@ sp needed
	bl	__aeabi_dadd
	pop	{r4, pc}
	.size	__wrap_fma, .-__wrap_fma
	.global	__aeabi_dcmpeq
	.section	.text.__wrap_powint,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_powint
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_powint, %function
__wrap_powint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L349
	movs	r6, r2
	movs	r2, #0
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.L332
	cmp	r6, #0
	beq	.L340
	lsrs	r3, r5, #20
	lsls	r2, r3, #21
	bne	.L334
	movs	r3, #1
	ands	r3, r6
	cmp	r6, #0
	ble	.L335
	cmp	r3, #0
	bne	.L332
	movs	r4, #0
	movs	r5, #0
.L332:
	@ sp needed
	movs	r1, r5
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L340:
	movs	r4, #0
	ldr	r5, .L349
	b	.L332
.L334:
	ldr	r2, .L349+4
	cmp	r3, r2
	beq	.L348
	ldr	r2, .L349+8
	cmp	r3, r2
	bne	.L337
	movs	r3, #1
	movs	r4, #0
	ands	r3, r6
	cmp	r6, #0
	ble	.L338
	cmp	r3, #0
	beq	.L347
	ldr	r5, .L349+12
	b	.L332
.L335:
	cmp	r3, #0
	beq	.L342
	lsrs	r3, r5, #31
	ldr	r2, .L349+16
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r4, #0
	movs	r5, r2
	b	.L332
.L348:
	movs	r4, #0
	cmp	r6, #0
	blt	.L343
.L347:
	ldr	r5, .L349+16
	b	.L332
.L337:
	movs	r0, r4
	movs	r1, r5
	movs	r2, r6
	bl	dpowint_0
	movs	r4, r0
	movs	r5, r1
	b	.L332
.L342:
	movs	r4, #0
	ldr	r5, .L349+16
	b	.L332
.L343:
	movs	r5, #0
	b	.L332
.L338:
	cmp	r3, #0
	beq	.L343
	movs	r5, #128
	lsls	r5, r5, #24
	b	.L332
.L350:
	.align	2
.L349:
	.word	1072693248
	.word	2047
	.word	4095
	.word	-1048576
	.word	2146435072
	.size	__wrap_powint, .-__wrap_powint
	.section	.text.__wrap_pow,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_pow
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_pow, %function
__wrap_pow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7, lr}
	movs	r6, r2
	movs	r7, r3
	movs	r2, #0
	ldr	r3, .L430
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dcmpeq
	movs	r2, r4
	movs	r3, r5
	cmp	r0, #0
	bne	.L351
	lsrs	r3, r7, #20
	mov	r8, r3
	lsls	r3, r3, #21
	lsrs	r2, r3, #21
	mov	r9, r2
	movs	r2, #0
	cmp	r3, #0
	beq	.L425
	movs	r0, r4
	movs	r1, r5
	ldr	r3, .L430+4
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.L418
	ldr	r3, .L430+8
	cmp	r9, r3
	beq	.L428
	cmp	r8, r3
	bne	.LCB2444
	b	.L412	@long jump
.LCB2444:
	ldr	r3, .L430+12
	cmp	r8, r3
	beq	.L409
	ldr	r1, .L430+4
.L379:
	mov	r3, r9
	ldr	r2, .L430+16
	adds	r2, r3, r2
	bpl	.LCB2455
	b	.L380	@long jump
.LCB2455:
	movs	r3, #52
	subs	r3, r3, r2
	mov	ip, r3
	cmp	r3, #0
	ble	.L381
	movs	r0, r3
	subs	r0, r0, #32
	bpl	.LCB2464
	b	.L382	@long jump
.LCB2464:
	movs	r2, #1
	rsbs	r2, r2, #0
	lsls	r2, r2, r0
.L383:
	movs	r0, #1
	mov	r3, ip
	rsbs	r0, r0, #0
	lsls	r0, r0, r3
	movs	r3, r6
	bics	r3, r0
	movs	r0, r7
	bics	r0, r2
	orrs	r3, r0
	beq	.LCB2482
	b	.L380	@long jump
.LCB2482:
.L381:
	movs	r2, r6
	movs	r3, r7
	movs	r0, r4
	movs	r1, r5
	bl	dpow_0
	movs	r2, r0
	movs	r3, r1
.L351:
	@ sp needed
	movs	r0, r2
	movs	r1, r3
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L428:
	movs	r2, #0
.L425:
	ldr	r3, .L430
	b	.L351
.L418:
	lsrs	r2, r5, #20
	lsls	r3, r2, #21
	movs	r1, r5
	lsrs	r0, r3, #21
	cmp	r3, #0
	bne	.L356
	ldr	r3, .L430+16
	add	r3, r3, r9
	cmp	r7, #0
	blt	.L357
	cmp	r3, #0
	blt	.L409
	movs	r1, #52
	subs	r1, r1, r3
	bmi	.L409
	movs	r0, r1
	subs	r0, r0, #32
	bmi	.L358
	movs	r3, #1
	rsbs	r3, r3, #0
	mov	ip, r0
	lsls	r3, r3, r0
.L359:
	movs	r2, #1
	rsbs	r2, r2, #0
	lsls	r2, r2, r1
	movs	r0, r6
	bics	r0, r2
	movs	r2, r0
	movs	r0, r7
	bics	r0, r3
	movs	r3, r0
	orrs	r3, r2
	bne	.L409
	movs	r2, r4
	movs	r3, r5
	cmp	r1, #52
	beq	.L351
	mov	r3, ip
	cmp	r3, #0
	bge	.LCB2564
	b	.L360	@long jump
.LCB2564:
	movs	r6, r7
	lsrs	r6, r6, r3
.L361:
	movs	r2, r4
	movs	r3, r5
	lsls	r6, r6, #31
	bmi	.L351
.L409:
	movs	r2, #0
.L424:
	movs	r3, #0
	b	.L351
.L356:
	ldr	r3, .L430+8
	mov	r10, r3
	cmp	r2, r3
	bne	.L367
	movs	r2, #0
	cmp	r7, #0
	blt	.L424
.L423:
	ldr	r3, .L430+20
	b	.L351
.L412:
	movs	r2, #0
	ldr	r3, .L430+20
	b	.L351
.L357:
	ldr	r2, .L430+24
	cmp	r9, r2
	ble	.L412
	movs	r2, #52
	subs	r3, r2, r3
	bmi	.L412
	movs	r0, r3
	subs	r0, r0, #32
	bmi	.L362
	subs	r2, r2, #53
	mov	ip, r0
	lsls	r2, r2, r0
.L363:
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r0, r6
	bics	r0, r1
	movs	r1, r0
	movs	r0, r7
	bics	r0, r2
	movs	r2, r0
	orrs	r2, r1
	bne	.L412
	cmp	r3, #52
	beq	.L364
	mov	r2, ip
	cmp	r2, #0
	bge	.LCB2638
	b	.L365	@long jump
.LCB2638:
	movs	r6, r7
	lsrs	r6, r6, r2
.L366:
	lsls	r6, r6, #31
	bpl	.L412
.L364:
	ldr	r2, .L430+20
	lsrs	r3, r5, #31
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r1, r2
	movs	r0, #0
	movs	r3, r1
	movs	r2, r0
	b	.L351
.L358:
	movs	r3, #1
	movs	r2, #32
	rsbs	r3, r3, #0
	mov	ip, r0
	movs	r0, r3
	subs	r2, r2, r1
	lsrs	r0, r0, r2
	lsls	r3, r3, r1
	orrs	r3, r0
	b	.L359
.L362:
	movs	r2, #1
	movs	r1, #32
	rsbs	r2, r2, #0
	mov	ip, r0
	movs	r0, r2
	subs	r1, r1, r3
	lsrs	r0, r0, r1
	lsls	r2, r2, r3
	orrs	r2, r0
	b	.L363
.L367:
	ldr	r3, .L430+12
	cmp	r2, r3
	beq	.LCB2689
	b	.L368	@long jump
.LCB2689:
	ldr	r3, .L430+16
	add	r3, r3, r9
	cmp	r7, #0
	blt	.L369
	cmp	r3, #0
	blt	.L412
	movs	r2, #52
	subs	r3, r2, r3
	bmi	.L412
	movs	r0, r3
	subs	r0, r0, #32
	bmi	.L370
	subs	r2, r2, #53
	lsls	r2, r2, r0
.L371:
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r4, r6
	bics	r4, r1
	movs	r1, r4
	movs	r4, r7
	bics	r4, r2
	movs	r2, r4
	orrs	r2, r1
	bne	.L412
	cmp	r3, #52
	beq	.L401
	cmp	r0, #0
	blt	.L372
	movs	r6, r7
	lsrs	r6, r6, r0
.L373:
	movs	r2, #0
	lsls	r6, r6, #31
	bpl	.L423
	ldr	r3, .L430+28
	b	.L351
.L369:
	ldr	r2, .L430+24
	cmp	r9, r2
	ble	.L409
	movs	r2, #52
	subs	r3, r2, r3
	bpl	.LCB2747
	b	.L409	@long jump
.LCB2747:
	movs	r0, r3
	subs	r0, r0, #32
	bmi	.L374
	subs	r2, r2, #53
	lsls	r2, r2, r0
.L375:
	movs	r1, #1
	rsbs	r1, r1, #0
	lsls	r1, r1, r3
	movs	r4, r6
	bics	r4, r1
	movs	r1, r4
	movs	r4, r7
	bics	r4, r2
	movs	r2, r4
	orrs	r2, r1
	beq	.LCB2769
	b	.L409	@long jump
.LCB2769:
	cmp	r3, #52
	beq	.L406
	cmp	r0, #0
	blt	.L376
	movs	r6, r7
	lsrs	r6, r6, r0
.L377:
	movs	r2, #0
	lsls	r6, r6, #31
	bmi	.LCB2782
	b	.L424	@long jump
.LCB2782:
	movs	r3, #128
	lsls	r3, r3, #24
	b	.L351
.L380:
	cmp	r1, #0
	bge	.LCB2791
	b	.L412	@long jump
.LCB2791:
	movs	r2, r6
	movs	r3, r7
	movs	r0, r4
	movs	r1, r5
	bl	dpow_1
	movs	r2, r0
	movs	r3, r1
	b	.L351
.L360:
	movs	r3, #32
	movs	r2, r7
	subs	r3, r3, r1
	lsls	r2, r2, r3
	lsrs	r6, r6, r1
	orrs	r6, r2
	b	.L361
.L365:
	movs	r2, #32
	movs	r1, r7
	subs	r2, r2, r3
	lsls	r1, r1, r2
	lsrs	r6, r6, r3
	orrs	r6, r1
	b	.L366
.L382:
	movs	r2, #1
	movs	r0, #32
	rsbs	r2, r2, #0
	subs	r0, r0, r3
	movs	r3, r2
	lsrs	r3, r3, r0
	movs	r0, r3
	mov	r3, ip
	lsls	r2, r2, r3
	orrs	r2, r0
	b	.L383
.L374:
	movs	r2, #1
	movs	r1, #32
	rsbs	r2, r2, #0
	movs	r4, r2
	subs	r1, r1, r3
	lsrs	r4, r4, r1
	lsls	r2, r2, r3
	orrs	r2, r4
	b	.L375
.L370:
	movs	r2, #1
	movs	r1, #32
	rsbs	r2, r2, #0
	movs	r4, r2
	subs	r1, r1, r3
	lsrs	r4, r4, r1
	lsls	r2, r2, r3
	orrs	r2, r4
	b	.L371
.L376:
	movs	r2, #32
	movs	r1, r7
	subs	r2, r2, r3
	lsls	r1, r1, r2
	lsrs	r6, r6, r3
	orrs	r6, r1
	b	.L377
.L372:
	movs	r2, #32
	movs	r1, r7
	subs	r2, r2, r3
	lsls	r1, r1, r2
	lsrs	r6, r6, r3
	orrs	r6, r1
	b	.L373
.L401:
	movs	r2, #0
	ldr	r3, .L430+28
	b	.L351
.L406:
	movs	r3, #128
	movs	r2, #0
	lsls	r3, r3, #24
	b	.L351
.L368:
	cmp	r8, r10
	beq	.L429
	cmp	r8, r3
	beq	.LCB2898
	b	.L379	@long jump
.LCB2898:
	ldr	r3, .L430+24
	movs	r2, #0
	cmp	r0, r3
	ble	.LCB2902
	b	.L424	@long jump
.LCB2902:
	ldr	r3, .L430+20
	b	.L351
.L429:
	ldr	r3, .L430+24
	movs	r2, #0
	cmp	r0, r3
	ble	.LCB2911
	b	.L423	@long jump
.LCB2911:
	movs	r3, #0
	b	.L351
.L431:
	.align	2
.L430:
	.word	1072693248
	.word	-1074790400
	.word	2047
	.word	4095
	.word	-1023
	.word	2146435072
	.word	1022
	.word	-1048576
	.size	__wrap_pow, .-__wrap_pow
	.section	.text.__wrap_hypot,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_hypot
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_hypot, %function
__wrap_hypot:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	lsls	r6, r1, #1
	lsrs	r6, r6, #21
	mov	ip, r6
	push	{r7, lr}
	movs	r5, r3
	movs	r7, r3
	lsls	r3, r3, #1
	lsrs	r3, r3, #21
	mov	r8, r3
	ldr	r3, .L470
	sub	sp, sp, #12
	movs	r4, r2
	movs	r6, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	ip, r3
	bgt	.L433
	cmp	r8, r3
	bgt	.L466
	movs	r3, #156
	lsls	r3, r3, #2
	cmp	ip, r3
	bge	.L445
	cmp	r8, r3
	blt	.L467
.L445:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	movs	r2, r4
	movs	r6, r0
	movs	r7, r1
	movs	r3, r5
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dmul
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_dadd
	bl	sqrt
.L432:
	add	sp, sp, #12
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7, pc}
.L466:
	mov	r3, ip
	cmp	r3, #0
	beq	.LCB2998
	b	.L468	@long jump
.LCB2998:
.L437:
	ldr	r3, .L470+4
	cmp	r8, r3
	beq	.L438
.L439:
	movs	r4, #0
	ldr	r5, .L470+8
	adds	r4, r4, r6
	adcs	r5, r5, r7
.L438:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	movs	r2, r4
	movs	r3, r5
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dmul
	movs	r3, r1
	movs	r2, r0
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_dadd
	bl	sqrt
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	beq	.L432
	ldr	r2, .L470+4
	cmp	r3, r2
	beq	.L432
	ldr	r2, .L470+12
	cmp	r3, r2
	ble	.L443
	lsrs	r3, r1, #31
	ldr	r2, .L470+16
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
	b	.L432
.L433:
	ldr	r3, .L470+4
	cmp	ip, r3
	beq	.L440
	movs	r2, r0
	movs	r3, r1
	movs	r0, #0
	ldr	r1, .L470+8
	adds	r0, r0, r2
	adcs	r1, r1, r3
.L440:
	mov	r3, r8
	cmp	r3, #0
	beq	.L438
	ldr	r3, .L470+4
	cmp	r8, r3
	beq	.L438
	movs	r3, #150
	lsls	r3, r3, #2
	cmp	r8, r3
	bgt	.L439
	lsrs	r3, r7, #31
	movs	r4, #0
	lsls	r5, r3, #31
	b	.L438
.L443:
	movs	r1, #150
	movs	r0, #0
	lsls	r1, r1, #22
	adds	r0, r0, r4
	adcs	r1, r1, r5
	b	.L432
.L467:
	mov	r3, ip
	cmp	r3, #0
	beq	.L446
	movs	r3, r1
	movs	r1, #150
	movs	r2, r0
	movs	r0, #0
	lsls	r1, r1, #22
	adds	r0, r0, r2
	adcs	r1, r1, r3
.L446:
	mov	r3, r8
	cmp	r3, #0
	beq	.L447
	movs	r5, #150
	movs	r4, #0
	lsls	r5, r5, #22
	adds	r4, r4, r6
	adcs	r5, r5, r7
.L447:
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dmul
	movs	r2, r4
	movs	r3, r5
	movs	r6, r0
	movs	r7, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dmul
	movs	r3, r1
	movs	r2, r0
	movs	r1, r7
	movs	r0, r6
	bl	__aeabi_dadd
	bl	sqrt
	lsls	r3, r1, #1
	movs	r4, r0
	movs	r5, r1
	lsrs	r3, r3, #21
	bne	.LCB3130
	b	.L432	@long jump
.LCB3130:
	ldr	r2, .L470+4
	cmp	r3, r2
	bne	.LCB3133
	b	.L432	@long jump
.LCB3133:
	movs	r2, #150
	movs	r0, #0
	lsls	r2, r2, #2
	cmp	r3, r2
	ble	.L469
	ldr	r1, .L470+8
	adds	r0, r0, r4
	adcs	r1, r1, r5
	b	.L432
.L468:
	movs	r1, #150
	movs	r0, #0
	lsls	r1, r1, #2
	cmp	ip, r1
	bgt	.L436
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #31
	lsls	r1, r3, #31
	b	.L437
.L469:
	lsrs	r3, r1, #31
	lsls	r1, r3, #31
	b	.L432
.L436:
	ldr	r1, .L470+8
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	adds	r0, r0, r2
	adcs	r1, r1, r3
	b	.L437
.L471:
	.align	2
.L470:
	.word	1422
	.word	2047
	.word	-629145600
	.word	1446
	.word	2146435072
	.size	__wrap_hypot, .-__wrap_hypot
	.section	.text.__wrap_cbrt,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_cbrt
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_cbrt, %function
__wrap_cbrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r2, r0
	subs	r3, r1, #0
	blt	.L486
	lsrs	r5, r1, #20
	beq	.L480
	lsls	r4, r5, #2
	adds	r4, r4, r5
	lsls	r6, r4, #4
	adds	r4, r4, r6
	lsls	r6, r4, #8
	adds	r4, r4, r6
	ldr	r6, .L489
	ldr	r7, .L489+4
	mov	ip, r6
	add	r4, r4, ip
	asrs	r4, r4, #16
	lsls	r6, r4, #2
	subs	r6, r4, r6
	cmp	r5, r7
	beq	.L475
	adds	r5, r6, r5
	cmp	r5, #0
	ble	.L481
	ldr	r1, .L489+8
	movs	r0, #0
	cmp	r5, r1
	ble	.L487
	ldr	r1, .L489+12
.L475:
	bl	log
	ldr	r2, .L489+16
	ldr	r3, .L489+20
	bl	__aeabi_dmul
	bl	exp
	lsls	r5, r1, #1
	movs	r2, r0
	movs	r3, r1
	lsrs	r5, r5, #21
	beq	.L472
	ldr	r6, .L489+4
	cmp	r5, r6
	beq	.L472
	adds	r5, r4, r5
	cmp	r5, #0
	ble	.L488
	ldr	r1, .L489+8
	cmp	r5, r1
	ble	.L479
	ldr	r2, .L489+12
	lsrs	r3, r3, #31
	lsls	r3, r3, #31
	orrs	r2, r3
	movs	r0, #0
	movs	r1, r2
	b	.L472
.L480:
	movs	r0, #0
	movs	r1, #0
.L472:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L486:
	movs	r6, #128
	lsls	r6, r6, #24
	adds	r5, r1, r6
	movs	r1, r5
	bl	cbrt
	adds	r1, r1, r6
	b	.L472
.L487:
	lsls	r1, r6, #20
	adds	r0, r0, r2
	adcs	r1, r1, r3
	b	.L475
.L488:
	lsrs	r3, r1, #31
	movs	r0, #0
	lsls	r1, r3, #31
	b	.L472
.L481:
	movs	r0, #0
	movs	r1, #0
	b	.L475
.L479:
	movs	r0, #0
	lsls	r1, r4, #20
	adds	r0, r0, r2
	adcs	r1, r1, r3
	b	.L472
.L490:
	.align	2
.L489:
	.word	-22314667
	.word	2047
	.word	2046
	.word	2146435072
	.word	1431655765
	.word	1070945621
	.size	__wrap_cbrt, .-__wrap_cbrt
	.global	__aeabi_uidiv
	.global	__aeabi_lmul
	.section	.text.__wrap_fmod,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_fmod
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_fmod, %function
__wrap_fmod:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	push	{r5, r6, r7, lr}
	lsls	r7, r1, #1
	sub	sp, sp, #28
	movs	r5, r1
	lsls	r1, r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	lsrs	r3, r1, #21
	ldr	r1, .L526
	mov	r8, r0
	movs	r6, r2
	lsrs	r7, r7, #21
	str	r3, [sp, #8]
	cmp	r7, r1
	beq	.L511
	cmp	r3, #0
	beq	.L511
	lsrs	r3, r5, #31
	mov	fp, r3
	cmp	r7, #0
	bne	.L493
	movs	r0, #0
	movs	r1, #0
	cmp	r3, #0
	beq	.L491
	movs	r1, #128
	lsls	r1, r1, #24
.L491:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L493:
	ldr	r3, [sp, #8]
	movs	r1, r5
	cmp	r7, r3
	blt	.L491
	movs	r1, #128
	ldr	r3, [sp, #4]
	lsls	r2, r5, #12
	lsls	r3, r3, #12
	lsls	r1, r1, #13
	movs	r4, r0
	lsrs	r2, r2, #12
	lsrs	r0, r3, #12
	ldr	r3, [sp, #8]
	orrs	r2, r1
	orrs	r1, r0
	str	r6, [sp]
	movs	r5, r2
	str	r1, [sp, #4]
	subs	r6, r7, r3
	cmp	r7, r3
	beq	.L494
	movs	r0, #1
	asrs	r1, r1, #4
	rsbs	r0, r0, #0
	bl	__aeabi_uidiv
	movs	r3, #29
	mov	r10, r3
	mov	r3, fp
	mov	r9, r6
	mov	fp, r0
	str	r3, [sp, #12]
	b	.L498
.L523:
	movs	r2, r4
	lsls	r2, r2, r3
	movs	r7, r2
.L497:
	movs	r3, r4
	mov	r2, r8
	lsls	r3, r3, r2
	movs	r6, r3
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	asrs	r0, r1, #1
	asrs	r1, r1, #31
	bl	__aeabi_lmul
	mov	r3, r9
	mov	r2, r8
	movs	r4, r6
	movs	r5, r7
	subs	r3, r3, r2
	subs	r4, r4, r0
	sbcs	r5, r5, r1
	mov	r9, r3
	cmp	r3, #0
	ble	.L522
.L498:
	mov	r3, r9
	mov	r8, r9
	cmp	r3, #12
	ble	.L495
	movs	r3, #12
	mov	r8, r3
.L495:
	mov	r3, fp
	asrs	r1, r5, #6
	muls	r1, r3
	mov	r2, r8
	mov	r3, r10
	subs	r3, r3, r2
	asrs	r1, r1, r3
	mov	r3, r8
	adds	r1, r1, #1
	subs	r3, r3, #32
	bpl	.L523
	movs	r3, #32
	subs	r3, r3, r2
	movs	r2, r4
	lsrs	r2, r2, r3
	mov	r0, r8
	movs	r3, r2
	movs	r2, r5
	lsls	r2, r2, r0
	movs	r7, r2
	orrs	r7, r3
	b	.L497
.L511:
	movs	r0, #0
	ldr	r1, .L526+4
	b	.L491
.L522:
	ldr	r3, [sp, #12]
	mov	fp, r3
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	cmp	r3, r5
	bgt	.L514
	beq	.L524
.L503:
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	subs	r4, r4, r2
	sbcs	r5, r5, r3
	cmp	r3, r5
	bgt	.L502
	beq	.L525
.L500:
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	subs	r4, r4, r2
	sbcs	r5, r5, r3
.L502:
	mov	r3, fp
	cmp	r3, #0
	beq	.L509
	movs	r2, r4
	movs	r3, r5
	movs	r5, #0
	rsbs	r4, r2, #0
	sbcs	r5, r3
.L509:
	ldr	r3, [sp, #8]
	ldr	r2, .L526+8
	movs	r0, r4
	movs	r1, r5
	subs	r2, r2, r3
	bl	fix642double
	b	.L491
.L494:
	cmp	r1, r2
	bgt	.L502
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	cmp	r3, r5
	bne	.L500
	cmp	r2, r8
	bhi	.L502
	b	.L500
.L524:
	ldr	r3, [sp]
	cmp	r3, r4
	bls	.L503
.L514:
	cmp	r5, #0
	bge	.L502
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	adds	r4, r4, r2
	adcs	r5, r5, r3
	cmp	r5, #0
	bge	.L502
	adds	r4, r4, r2
	adcs	r5, r5, r3
	b	.L502
.L525:
	ldr	r3, [sp]
	cmp	r3, r4
	bls	.L500
	b	.L502
.L527:
	.align	2
.L526:
	.word	2047
	.word	2146435072
	.word	1075
	.size	__wrap_fmod, .-__wrap_fmod
	.section	.text.__wrap_remquo,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_remquo
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_remquo, %function
__wrap_remquo:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r6, r9
	mov	lr, fp
	mov	r7, r10
	movs	r4, r3
	movs	r3, r2
	push	{r5, r6, r7, lr}
	sub	sp, sp, #36
	str	r3, [sp, #16]
	str	r4, [sp, #20]
	lsls	r5, r1, #1
	ldr	r3, [sp, #72]
	mov	r8, r2
	lsls	r4, r4, #1
	lsrs	r2, r5, #21
	mov	r9, r0
	mov	ip, r2
	lsrs	r4, r4, #21
	cmp	r3, #0
	beq	.L529
	movs	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L529:
	ldr	r5, .L593
	cmp	ip, r5
	beq	.L559
	cmp	r4, #0
	beq	.L559
	mov	r3, ip
	cmp	r3, #0
	bne	.LCB3591
	b	.L560	@long jump
.LCB3591:
	movs	r2, r0
	movs	r3, r1
	cmp	r4, r5
	beq	.L528
	subs	r5, r4, #1
	cmp	r5, ip
	bgt	.L528
	movs	r2, #128
	lsrs	r3, r1, #31
	mov	fp, r3
	lsls	r3, r1, #12
	lsls	r2, r2, #13
	lsrs	r3, r3, #12
	orrs	r3, r2
	movs	r7, r3
	ldr	r3, [sp, #20]
	mov	r6, r9
	lsls	r3, r3, #12
	lsrs	r3, r3, #12
	mov	r10, r3
	mov	r3, r8
	str	r3, [sp, #8]
	mov	r3, r10
	orrs	r2, r3
	str	r2, [sp, #12]
	cmp	r5, ip
	bne	.LCB3618
	b	.L584	@long jump
.LCB3618:
	mov	r3, fp
	cmp	r3, #0
	bne	.LCB3621
	b	.L535	@long jump
.LCB3621:
	movs	r3, r7
	movs	r2, r6
	movs	r7, #0
	rsbs	r6, r2, #0
	sbcs	r7, r3
	mov	r3, ip
	subs	r5, r3, r4
	cmp	r5, #0
	bgt	.LCB3628
	b	.L585	@long jump
.LCB3628:
.L536:
	movs	r0, #1
	ldr	r3, [sp, #12]
	rsbs	r0, r0, #0
	asrs	r1, r3, #4
	bl	__aeabi_uidiv
	movs	r3, #0
	mov	fp, r3
	adds	r3, r3, #29
	mov	r9, r0
	mov	r10, r3
	mov	r8, r5
	str	r4, [sp, #28]
	b	.L542
.L587:
	movs	r2, r6
	lsls	r2, r2, r3
	str	r2, [sp, #4]
.L541:
	movs	r3, r6
	lsls	r3, r3, r5
	movs	r0, r4
	str	r3, [sp]
	asrs	r1, r4, #31
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	bl	__aeabi_lmul
	ldr	r6, [sp]
	ldr	r7, [sp, #4]
	mov	r3, fp
	mov	fp, r4
	lsls	r3, r3, r5
	add	fp, fp, r3
	mov	r3, r8
	subs	r3, r3, r5
	subs	r6, r6, r0
	sbcs	r7, r7, r1
	mov	r8, r3
	cmp	r3, #0
	ble	.L586
.L542:
	mov	r5, r8
	cmp	r5, #12
	ble	.L539
	movs	r5, #12
.L539:
	mov	r3, r9
	asrs	r4, r7, #6
	muls	r4, r3
	mov	r3, r10
	subs	r3, r3, r5
	asrs	r4, r4, r3
	movs	r3, r5
	adds	r4, r4, #1
	asrs	r4, r4, #1
	subs	r3, r3, #32
	bpl	.L587
	movs	r3, #32
	movs	r2, r6
	subs	r3, r3, r5
	lsrs	r2, r2, r3
	movs	r3, r2
	movs	r2, r7
	lsls	r2, r2, r5
	orrs	r2, r3
	str	r2, [sp, #4]
	b	.L541
.L559:
	movs	r2, #0
	ldr	r3, .L593+4
.L528:
	movs	r0, r2
	movs	r1, r3
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L560:
	movs	r2, #0
	movs	r3, #0
	b	.L528
.L586:
	ldr	r4, [sp, #28]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, r7
	ble	.LCB3736
	b	.L565	@long jump
.LCB3736:
	bne	.LCB3738
	b	.L588	@long jump
.LCB3738:
.L547:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r6, r6, r2
	sbcs	r7, r7, r3
	cmp	r3, r7
	ble	.LCB3743
	b	.L566	@long jump
.LCB3743:
	bne	.LCB3745
	b	.L589	@long jump
.LCB3745:
.L551:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r6, r6, r2
	sbcs	r7, r7, r3
	movs	r3, #2
	mov	ip, r3
	add	fp, fp, ip
.L550:
	movs	r2, r6
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	movs	r3, r7
	adds	r2, r2, r6
	adcs	r3, r3, r7
	cmp	r3, r1
	bgt	.L546
	bne	.L567
	cmp	r2, r0
	bhi	.L546
.L567:
	ldr	r1, [sp, #8]
	cmp	r2, r1
	bne	.L534
	ldr	r2, [sp, #12]
	cmp	r3, r2
	bne	.L534
	mov	r3, fp
	lsls	r3, r3, #31
	bpl	.L534
.L546:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r6, r6, r2
	sbcs	r7, r7, r3
	movs	r3, #1
	mov	ip, r3
	add	fp, fp, ip
	b	.L534
.L584:
	cmp	r7, r2
	ble	.L590
.L564:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	mov	r1, fp
	adds	r2, r2, r2
	adcs	r3, r3, r3
	cmp	r1, #0
	bne	.L533
	subs	r6, r6, r2
	sbcs	r7, r7, r3
	movs	r3, #1
	movs	r4, r5
	mov	fp, r3
.L534:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L556
	mov	r3, fp
	rsbs	r3, r3, #0
	mov	fp, r3
.L556:
	ldr	r3, [sp, #72]
	cmp	r3, #0
	beq	.L557
	mov	r2, fp
	str	r2, [r3]
.L557:
	ldr	r2, .L593+8
	movs	r0, r6
	subs	r2, r2, r4
	movs	r1, r7
	bl	fix642double
	movs	r2, r0
	movs	r3, r1
	b	.L528
.L535:
	mov	r3, ip
	subs	r5, r3, r4
	cmp	r5, #0
	ble	.LCB3830
	b	.L536	@long jump
.LCB3830:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r3, r7
	bgt	.L546
	beq	.L591
.L544:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r6, r6, r2
	sbcs	r7, r7, r3
	movs	r3, #1
	mov	fp, r3
	b	.L550
.L585:
	movs	r3, #0
	mov	fp, r3
.L537:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	adds	r6, r6, r2
	adcs	r7, r7, r3
	cmp	r7, #0
	bge	.L592
	adds	r6, r6, r2
	adcs	r7, r7, r3
	movs	r3, #2
	rsbs	r3, r3, #0
	mov	ip, r3
	add	fp, fp, ip
	b	.L550
.L590:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #12]
	cmp	r7, r4
	bne	.L563
	cmp	r6, r3
	bhi	.L564
.L563:
	movs	r2, r0
	movs	r3, r1
	b	.L528
.L588:
	ldr	r3, [sp, #8]
	cmp	r3, r6
	bhi	.LCB3876
	b	.L547	@long jump
.LCB3876:
.L565:
	cmp	r7, #0
	bge	.L550
	b	.L537
.L533:
	subs	r2, r2, r6
	sbcs	r3, r3, r7
	movs	r7, r3
	movs	r3, #1
	rsbs	r3, r3, #0
	movs	r6, r2
	movs	r4, r5
	mov	fp, r3
	b	.L534
.L592:
	movs	r3, #1
	rsbs	r3, r3, #0
	mov	ip, r3
	add	fp, fp, ip
	b	.L550
.L591:
	cmp	r2, r6
	bls	.L544
	b	.L546
.L589:
	ldr	r3, [sp, #8]
	cmp	r3, r6
	bhi	.LCB3911
	b	.L551	@long jump
.LCB3911:
.L566:
	movs	r3, #1
	mov	ip, r3
	add	fp, fp, ip
	b	.L550
.L594:
	.align	2
.L593:
	.word	2047
	.word	2146435072
	.word	1075
	.size	__wrap_remquo, .-__wrap_remquo
	.section	.text.__wrap_drem,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_drem
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_drem, %function
__wrap_drem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #8
	str	r4, [sp]
	bl	remquo
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	__wrap_drem, .-__wrap_drem
	.section	.text.__wrap_remainder,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_remainder
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_remainder, %function
__wrap_remainder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #8
	str	r4, [sp]
	bl	remquo
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	__wrap_remainder, .-__wrap_remainder
	.ident	"GCC: (Arch Repository) 13.1.0"
