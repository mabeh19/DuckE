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
	.file	"float_math.c"
	.text
	.global	__aeabi_fmul
	.section	.text.fpow_int2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	fpow_int2, %function
fpow_int2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	movs	r4, r1
	push	{r7, lr}
	adds	r5, r0, #0
	cmp	r1, #1
	beq	.L1
	lsrs	r6, r1, #31
	adds	r6, r6, r1
	asrs	r6, r6, #1
	cmp	r6, #1
	beq	.L3
	movs	r7, #3
	asrs	r2, r1, #31
	ands	r7, r2
	adds	r7, r7, r1
	asrs	r7, r7, #2
	cmp	r7, #1
	beq	.L4
	movs	r3, #7
	ands	r3, r2
	adds	r3, r3, r1
	asrs	r3, r3, #3
	mov	r8, r3
	cmp	r3, #1
	beq	.L5
	movs	r3, #15
	ands	r3, r2
	adds	r3, r3, r1
	asrs	r3, r3, #4
	mov	r9, r3
	cmp	r3, #1
	beq	.L6
	movs	r3, r1
	subs	r3, r3, #32
	cmp	r3, #31
	bls	.L7
	movs	r1, #0
	bl	fpow_int2
	adds	r1, r0, #0
	bl	__aeabi_fmul
.L7:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	mov	r3, r9
	lsls	r3, r3, #31
	bpl	.L6
	adds	r1, r5, #0
	bl	__aeabi_fmul
.L6:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	mov	r3, r8
	lsls	r3, r3, #31
	bpl	.L5
	adds	r1, r5, #0
	bl	__aeabi_fmul
.L5:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	lsls	r7, r7, #31
	bmi	.L40
.L4:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	lsls	r6, r6, #31
	bpl	.L3
	adds	r1, r5, #0
	bl	__aeabi_fmul
.L3:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	lsls	r4, r4, #31
	bpl	.L1
	adds	r1, r5, #0
	bl	__aeabi_fmul
.L1:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L40:
	adds	r1, r5, #0
	bl	__aeabi_fmul
	b	.L4
	.size	fpow_int2, .-fpow_int2
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.section	.text.fpowint_0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	fpowint_0, %function
fpowint_0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r1
	subs	r4, r0, #0
	bge	.L42
	movs	r0, r1
	bl	__aeabi_i2f
	lsls	r3, r0, #1
	lsrs	r3, r3, #24
	subs	r3, r3, #127
	bmi	.L43
	movs	r2, #23
	subs	r3, r2, r3
	bmi	.L43
	movs	r1, #1
	movs	r2, r1
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r0
	bne	.L43
	cmp	r3, #23
	beq	.L44
	lsrs	r0, r0, r3
	tst	r1, r0
	bne	.L44
.L43:
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r4, r4, ip
	adds	r0, r4, #0
.L42:
	movs	r3, #255
	movs	r2, r4
	lsls	r3, r3, #23
	ands	r2, r3
	tst	r4, r3
	beq	.L46
	cmp	r2, r3
	beq	.L46
	lsls	r3, r4, #9
	bne	.L46
	ldr	r3, .L70
	cmp	r5, r3
	blt	.L68
	cmp	r5, #255
	bgt	.L69
.L48:
	lsrs	r4, r4, #23
	subs	r4, r4, #127
	muls	r5, r4
	movs	r3, r5
	adds	r3, r3, #127
	movs	r0, #0
	cmp	r3, #0
	ble	.L41
	cmp	r3, #254
	bgt	.L53
	movs	r3, #254
	lsls	r5, r5, #23
	lsls	r3, r3, #22
	adds	r0, r5, r3
	b	.L41
.L44:
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r0, r4, r3
	movs	r1, r5
	bl	fpowint_0
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
.L41:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L46:
	cmp	r5, #0
	beq	.L54
	movs	r3, r5
	adds	r3, r3, #32
	cmp	r3, #64
	bhi	.L50
	cmp	r5, #0
	bge	.L51
	adds	r1, r0, #0
	movs	r0, #254
	lsls	r0, r0, #22
	bl	__aeabi_fdiv
	rsbs	r5, r5, #0
.L51:
	movs	r1, r5
	bl	fpow_int2
	b	.L41
.L54:
	movs	r0, #254
	lsls	r0, r0, #22
	b	.L41
.L50:
	bl	__aeabi_f2d
	bl	log
	movs	r7, r1
	movs	r6, r0
	movs	r0, r5
	bl	__aeabi_i2f
	bl	__aeabi_f2d
	movs	r2, r6
	movs	r3, r7
	bl	__aeabi_dmul
	bl	exp
	bl	__aeabi_d2f
	b	.L41
.L69:
	movs	r5, #255
	b	.L48
.L68:
	movs	r5, r3
	b	.L48
.L53:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L41
.L71:
	.align	2
.L70:
	.word	-256
	.size	fpowint_0, .-fpowint_0
	.global	__aeabi_f2iz
	.section	.text.fpow_0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	fpow_0, %function
fpow_0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	adds	r6, r0, #0
	adds	r5, r1, #0
	cmp	r0, #0
	bge	.L73
	lsls	r3, r1, #1
	lsrs	r3, r3, #24
	subs	r3, r3, #127
	bmi	.L74
	movs	r2, #23
	subs	r3, r2, r3
	bmi	.L74
	movs	r1, #1
	movs	r2, r1
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r5
	bne	.L74
	cmp	r3, #23
	beq	.L75
	movs	r2, r5
	lsrs	r2, r2, r3
	tst	r1, r2
	bne	.L75
.L74:
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r4, r4, ip
	adds	r6, r4, #0
.L73:
	adds	r0, r5, #0
	bl	__aeabi_f2iz
	movs	r3, #255
	movs	r2, r4
	lsls	r3, r3, #23
	movs	r7, r0
	movs	r1, r0
	ands	r2, r3
	tst	r4, r3
	beq	.L77
	cmp	r2, r3
	beq	.L77
	lsls	r3, r4, #9
	bne	.L77
	ldr	r3, .L101
	cmp	r0, r3
	blt	.L99
	cmp	r0, #255
	bgt	.L100
.L79:
	lsrs	r4, r4, #23
	subs	r4, r4, #127
	muls	r7, r4
	movs	r3, r7
	adds	r3, r3, #127
	movs	r0, #0
	cmp	r3, #0
	ble	.L72
	cmp	r3, #254
	bgt	.L84
	movs	r3, #254
	lsls	r7, r7, #23
	lsls	r3, r3, #22
	adds	r0, r7, r3
	b	.L72
.L75:
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r0, r4, r3
	adds	r1, r5, #0
	bl	fpow_0
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
.L72:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L77:
	cmp	r7, #0
	beq	.L85
	movs	r3, r7
	adds	r3, r3, #32
	cmp	r3, #64
	bhi	.L81
	cmp	r7, #0
	bge	.L82
	movs	r0, #254
	adds	r1, r6, #0
	lsls	r0, r0, #22
	bl	__aeabi_fdiv
	rsbs	r1, r7, #0
	adds	r6, r0, #0
.L82:
	adds	r0, r6, #0
	bl	fpow_int2
	b	.L72
.L85:
	movs	r0, #254
	lsls	r0, r0, #22
	b	.L72
.L81:
	adds	r0, r6, #0
	bl	__aeabi_f2d
	bl	log
	movs	r6, r0
	movs	r7, r1
	adds	r0, r5, #0
	bl	__aeabi_f2d
	movs	r2, r6
	movs	r3, r7
	bl	__aeabi_dmul
	bl	exp
	bl	__aeabi_d2f
	b	.L72
.L100:
	movs	r7, #255
	b	.L79
.L99:
	movs	r7, r3
	b	.L79
.L84:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L72
.L102:
	.align	2
.L101:
	.word	-256
	.size	fpow_0, .-fpow_0
	.section	.text.__wrap_ldexpf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_ldexpf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_ldexpf, %function
__wrap_ldexpf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #1
	lsrs	r2, r2, #24
	beq	.L103
	cmp	r2, #255
	beq	.L103
	adds	r2, r2, r1
	cmp	r2, #0
	ble	.L112
	cmp	r2, #254
	ble	.L107
	lsrs	r3, r0, #31
	movs	r0, #255
	lsls	r3, r3, #31
	lsls	r0, r0, #23
	orrs	r0, r3
.L103:
	@ sp needed
	bx	lr
.L112:
	lsrs	r0, r0, #31
	lsls	r0, r0, #31
	b	.L103
.L107:
	lsls	r1, r1, #23
	adds	r0, r1, r0
	b	.L103
	.size	__wrap_ldexpf, .-__wrap_ldexpf
	.section	.text.__wrap_copysignf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_copysignf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_copysignf, %function
__wrap_copysignf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r0, r0, #1
	lsrs	r1, r1, #31
	lsls	r1, r1, #31
	lsrs	r0, r0, #1
	orrs	r0, r1
	@ sp needed
	bx	lr
	.size	__wrap_copysignf, .-__wrap_copysignf
	.section	.text.__wrap_truncf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_truncf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_truncf, %function
__wrap_truncf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #1
	lsrs	r3, r3, #24
	subs	r3, r3, #127
	bmi	.L118
	movs	r2, #23
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L114
	subs	r2, r2, #22
	lsls	r2, r2, r3
	rsbs	r3, r2, #0
	ands	r0, r3
.L114:
	@ sp needed
	bx	lr
.L118:
	lsrs	r0, r0, #31
	lsls	r0, r0, #31
	b	.L114
	.size	__wrap_truncf, .-__wrap_truncf
	.section	.text.__wrap_roundf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_roundf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_roundf, %function
__wrap_roundf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #1
	lsrs	r3, r3, #24
	subs	r3, r3, #127
	adds	r2, r3, #1
	blt	.L124
	adds	r2, r3, #1
	beq	.L125
	cmp	r3, #23
	bge	.L119
	movs	r2, #22
	subs	r2, r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	adds	r0, r3, r0
	movs	r3, #2
	lsls	r3, r3, r2
	rsbs	r3, r3, #0
	ands	r0, r3
.L119:
	@ sp needed
	bx	lr
.L124:
	lsrs	r0, r0, #31
	lsls	r0, r0, #31
	b	.L119
.L125:
	lsrs	r0, r0, #31
	lsls	r3, r0, #31
	movs	r0, #254
	lsls	r0, r0, #22
	orrs	r0, r3
	b	.L119
	.size	__wrap_roundf, .-__wrap_roundf
	.section	.text.__wrap_floorf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_floorf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_floorf, %function
__wrap_floorf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r2, r0, #1
	push	{r4, lr}
	adds	r3, r0, #0
	movs	r4, r0
	lsrs	r2, r2, #24
	beq	.L136
	subs	r2, r2, #127
	bmi	.L137
	movs	r1, #23
	subs	r2, r1, r2
	cmp	r2, #0
	ble	.L126
	movs	r0, #1
	lsls	r0, r0, r2
	cmp	r3, #0
	blt	.L138
.L130:
	rsbs	r0, r0, #0
	ands	r0, r4
.L126:
	@ sp needed
	pop	{r4, pc}
.L137:
	movs	r0, #0
	cmp	r3, #0
	bge	.L126
	ldr	r0, .L139
	b	.L126
.L136:
	lsrs	r3, r0, #31
	lsls	r0, r3, #31
	b	.L126
.L138:
	subs	r4, r0, #1
	adds	r4, r4, r3
	b	.L130
.L140:
	.align	2
.L139:
	.word	-1082130432
	.size	__wrap_floorf, .-__wrap_floorf
	.section	.text.__wrap_ceilf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_ceilf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_ceilf, %function
__wrap_ceilf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r2, r0, #1
	push	{r4, lr}
	adds	r3, r0, #0
	movs	r4, r0
	lsrs	r2, r2, #24
	beq	.L148
	subs	r2, r2, #127
	bmi	.L149
	movs	r1, #23
	subs	r2, r1, r2
	cmp	r2, #0
	ble	.L141
	movs	r0, #1
	lsls	r0, r0, r2
	cmp	r3, #0
	bge	.L150
.L145:
	rsbs	r0, r0, #0
	ands	r0, r4
.L141:
	@ sp needed
	pop	{r4, pc}
.L149:
	cmp	r0, #0
	bge	.L146
	movs	r0, #128
	lsls	r0, r0, #24
	b	.L141
.L148:
	lsrs	r3, r0, #31
	lsls	r0, r3, #31
	b	.L141
.L150:
	subs	r4, r0, #1
	adds	r4, r4, r3
	b	.L145
.L146:
	movs	r0, #254
	lsls	r0, r0, #22
	b	.L141
	.size	__wrap_ceilf, .-__wrap_ceilf
	.global	__aeabi_fsub
	.global	__aeabi_fadd
	.section	.text.__wrap_asinf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_asinf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_asinf, %function
__wrap_asinf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	adds	r1, r0, #0
	adds	r4, r0, #0
	movs	r0, #254
	lsls	r0, r0, #22
	bl	__aeabi_fsub
	movs	r1, #254
	adds	r5, r0, #0
	lsls	r1, r1, #22
	adds	r0, r4, #0
	bl	__aeabi_fadd
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fmul
	movs	r3, #255
	lsls	r3, r3, #23
	tst	r3, r0
	beq	.L152
	cmp	r0, #0
	blt	.L154
.L152:
	bl	sqrtf
	adds	r1, r0, #0
	adds	r0, r4, #0
	bl	atan2f
.L151:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L154:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L151
	.size	__wrap_asinf, .-__wrap_asinf
	.section	.text.__wrap_acosf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_acosf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_acosf, %function
__wrap_acosf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	adds	r1, r0, #0
	adds	r4, r0, #0
	movs	r0, #254
	lsls	r0, r0, #22
	bl	__aeabi_fsub
	movs	r1, #254
	adds	r5, r0, #0
	lsls	r1, r1, #22
	adds	r0, r4, #0
	bl	__aeabi_fadd
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fmul
	movs	r3, #255
	lsls	r3, r3, #23
	tst	r3, r0
	beq	.L159
	cmp	r0, #0
	blt	.L161
.L159:
	bl	sqrtf
	adds	r1, r4, #0
	bl	atan2f
.L158:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L161:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L158
	.size	__wrap_acosf, .-__wrap_acosf
	.section	.text.__wrap_atanf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_atanf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_atanf, %function
__wrap_atanf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsrs	r3, r0, #23
	cmp	r3, #255
	beq	.L167
	ldr	r2, .L169
	cmp	r3, r2
	beq	.L168
	movs	r1, #254
	lsls	r1, r1, #22
	bl	atan2f
.L165:
	@ sp needed
	pop	{r4, pc}
.L168:
	ldr	r0, .L169+4
	b	.L165
.L167:
	ldr	r0, .L169+8
	b	.L165
.L170:
	.align	2
.L169:
	.word	511
	.word	-1077342245
	.word	1070141403
	.size	__wrap_atanf, .-__wrap_atanf
	.section	.text.__wrap_sinhf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_sinhf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_sinhf, %function
__wrap_sinhf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	adds	r4, r0, #0
	bl	expf
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r5, r0, #0
	adds	r0, r4, r3
	bl	expf
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fsub
	lsls	r2, r0, #1
	adds	r3, r0, #0
	lsrs	r2, r2, #24
	beq	.L171
	cmp	r2, #255
	beq	.L171
	ldr	r1, .L182
	adds	r0, r0, r1
	cmp	r2, #1
	beq	.L181
.L171:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L181:
	lsrs	r0, r3, #31
	lsls	r0, r0, #31
	b	.L171
.L183:
	.align	2
.L182:
	.word	-8388608
	.size	__wrap_sinhf, .-__wrap_sinhf
	.section	.text.__wrap_coshf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_coshf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_coshf, %function
__wrap_coshf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	adds	r4, r0, #0
	bl	expf
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r5, r0, #0
	adds	r0, r4, r3
	bl	expf
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fadd
	lsls	r2, r0, #1
	adds	r3, r0, #0
	lsrs	r2, r2, #24
	beq	.L184
	cmp	r2, #255
	beq	.L184
	ldr	r1, .L195
	adds	r0, r0, r1
	cmp	r2, #1
	beq	.L194
.L184:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L194:
	lsrs	r0, r3, #31
	lsls	r0, r0, #31
	b	.L184
.L196:
	.align	2
.L195:
	.word	-8388608
	.size	__wrap_coshf, .-__wrap_coshf
	.section	.text.__wrap_tanhf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_tanhf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_tanhf, %function
__wrap_tanhf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r3, r0, #1
	push	{r4, r5, r6, lr}
	lsrs	r3, r3, #24
	cmp	r3, #130
	bls	.L198
	cmp	r0, #0
	blt	.L201
	movs	r0, #254
	lsls	r0, r0, #22
	b	.L197
.L198:
	cmp	r3, #0
	beq	.L200
	movs	r3, #128
	lsls	r3, r3, #16
	adds	r0, r0, r3
.L200:
	bl	expf
	movs	r1, #254
	lsls	r1, r1, #22
	adds	r4, r0, #0
	bl	__aeabi_fsub
	movs	r1, #254
	adds	r5, r0, #0
	lsls	r1, r1, #22
	adds	r0, r4, #0
	bl	__aeabi_fadd
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fdiv
.L197:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L201:
	ldr	r0, .L205
	b	.L197
.L206:
	.align	2
.L205:
	.word	-1082130432
	.size	__wrap_tanhf, .-__wrap_tanhf
	.global	__aeabi_dadd
	.global	__aeabi_fcmpgt
	.global	__aeabi_dsub
	.section	.text.__wrap_asinhf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_asinhf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_asinhf, %function
__wrap_asinhf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	lsls	r3, r0, #1
	mov	r8, r0
	push	{lr}
	lsrs	r3, r3, #24
	cmp	r3, #142
	bls	.L208
	cmp	r0, #0
	blt	.L209
	bl	logf
	ldr	r1, .L215
	bl	__aeabi_fadd
	b	.L207
.L208:
	bl	__aeabi_f2d
	movs	r2, r0
	movs	r3, r1
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dmul
	movs	r2, #0
	ldr	r3, .L215+4
	bl	__aeabi_dadd
	movs	r6, r0
	movs	r7, r1
	mov	r0, r8
	movs	r1, #0
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	beq	.L214
	movs	r0, r6
	movs	r1, r7
	bl	sqrt
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dadd
	bl	log
	bl	__aeabi_d2f
.L207:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L209:
	movs	r0, #128
	lsls	r0, r0, #24
	add	r0, r0, r8
	bl	logf
	ldr	r1, .L215
	bl	__aeabi_fadd
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
	b	.L207
.L214:
	movs	r0, r6
	movs	r1, r7
	bl	sqrt
	movs	r3, r5
	movs	r2, r4
	bl	__aeabi_dsub
	bl	log
	bl	__aeabi_d2f
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
	b	.L207
.L216:
	.align	2
.L215:
	.word	1060205080
	.word	1072693248
	.size	__wrap_asinhf, .-__wrap_asinhf
	.section	.text.__wrap_acoshf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_acoshf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_acoshf, %function
__wrap_acoshf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	subs	r3, r0, #0
	bge	.L218
	movs	r3, #128
	lsls	r3, r3, #24
	adds	r3, r0, r3
	adds	r0, r3, #0
.L218:
	lsrs	r3, r3, #23
	cmp	r3, #142
	bhi	.L224
	bl	__aeabi_f2d
	movs	r2, #0
	ldr	r3, .L225
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dadd
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	ldr	r3, .L225
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_dmul
	bl	sqrt
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	bl	log
	bl	__aeabi_d2f
.L217:
	@ sp needed
	pop	{r3, r4, r5, r6, r7, pc}
.L224:
	bl	logf
	ldr	r1, .L225+4
	bl	__aeabi_fadd
	b	.L217
.L226:
	.align	2
.L225:
	.word	1072693248
	.word	1060205080
	.size	__wrap_acoshf, .-__wrap_acoshf
	.section	.text.__wrap_atanhf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_atanhf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_atanhf, %function
__wrap_atanhf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #254
	push	{r4, r5, r6, lr}
	lsls	r1, r1, #22
	adds	r4, r0, #0
	bl	__aeabi_fadd
	adds	r5, r0, #0
	movs	r0, #254
	adds	r1, r4, #0
	lsls	r0, r0, #22
	bl	__aeabi_fsub
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fdiv
	bl	logf
	lsls	r3, r0, #1
	movs	r2, r0
	lsrs	r3, r3, #24
	beq	.L227
	cmp	r3, #255
	beq	.L227
	ldr	r1, .L238
	adds	r0, r0, r1
	cmp	r3, #1
	beq	.L237
.L227:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L237:
	lsrs	r2, r2, #31
	lsls	r0, r2, #31
	b	.L227
.L239:
	.align	2
.L238:
	.word	-8388608
	.size	__wrap_atanhf, .-__wrap_atanhf
	.section	.text.__wrap_exp2f,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_exp2f
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_exp2f, %function
__wrap_exp2f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_f2d
	@ sp needed
	ldr	r2, .L241
	ldr	r3, .L241+4
	bl	__aeabi_dmul
	bl	exp
	bl	__aeabi_d2f
	pop	{r4, pc}
.L242:
	.align	2
.L241:
	.word	-17155601
	.word	1072049730
	.size	__wrap_exp2f, .-__wrap_exp2f
	.section	.text.__wrap_log2f,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log2f
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log2f, %function
__wrap_log2f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	logf
	@ sp needed
	ldr	r1, .L244
	bl	__aeabi_fmul
	pop	{r4, pc}
.L245:
	.align	2
.L244:
	.word	1069066811
	.size	__wrap_log2f, .-__wrap_log2f
	.section	.text.__wrap_exp10f,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_exp10f
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_exp10f, %function
__wrap_exp10f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_f2d
	@ sp needed
	ldr	r2, .L247
	ldr	r3, .L247+4
	bl	__aeabi_dmul
	bl	exp
	bl	__aeabi_d2f
	pop	{r4, pc}
.L248:
	.align	2
.L247:
	.word	-1145744106
	.word	1073900465
	.size	__wrap_exp10f, .-__wrap_exp10f
	.section	.text.__wrap_log10f,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log10f
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log10f, %function
__wrap_log10f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	logf
	@ sp needed
	ldr	r1, .L250
	bl	__aeabi_fmul
	pop	{r4, pc}
.L251:
	.align	2
.L250:
	.word	1054759897
	.size	__wrap_log10f, .-__wrap_log10f
	.section	.text.__wrap_expm1f,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_expm1f
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_expm1f, %function
__wrap_expm1f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_f2d
	@ sp needed
	bl	exp
	movs	r2, #0
	ldr	r3, .L253
	bl	__aeabi_dsub
	bl	__aeabi_d2f
	pop	{r4, pc}
.L254:
	.align	2
.L253:
	.word	1072693248
	.size	__wrap_expm1f, .-__wrap_expm1f
	.section	.text.__wrap_log1pf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_log1pf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_log1pf, %function
__wrap_log1pf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_f2d
	@ sp needed
	movs	r2, #0
	ldr	r3, .L256
	bl	__aeabi_dadd
	bl	log
	bl	__aeabi_d2f
	pop	{r4, pc}
.L257:
	.align	2
.L256:
	.word	1072693248
	.size	__wrap_log1pf, .-__wrap_log1pf
	.section	.text.__wrap_fmaf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_fmaf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_fmaf, %function
__wrap_fmaf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	adds	r6, r2, #0
	adds	r7, r1, #0
	bl	__aeabi_f2d
	@ sp needed
	movs	r4, r0
	adds	r0, r7, #0
	movs	r5, r1
	bl	__aeabi_f2d
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dmul
	movs	r4, r0
	adds	r0, r6, #0
	movs	r5, r1
	bl	__aeabi_f2d
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	bl	__aeabi_d2f
	pop	{r3, r4, r5, r6, r7, pc}
	.size	__wrap_fmaf, .-__wrap_fmaf
	.global	__aeabi_fcmpeq
	.section	.text.__wrap_powintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_powintf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_powintf, %function
__wrap_powintf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r1
	movs	r1, #254
	lsls	r1, r1, #22
	adds	r4, r0, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.L259
	cmp	r5, #0
	beq	.L268
	movs	r1, #0
	adds	r0, r4, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.L275
	movs	r3, #1
	ands	r3, r5
	cmp	r5, #0
	ble	.L263
	cmp	r3, #0
	beq	.L271
.L259:
	@ sp needed
	adds	r0, r4, #0
	pop	{r4, r5, r6, pc}
.L268:
	movs	r4, #254
	lsls	r4, r4, #22
	b	.L259
.L275:
	lsrs	r3, r4, #23
	cmp	r3, #255
	beq	.L277
	ldr	r2, .L278
	cmp	r3, r2
	bne	.L265
	movs	r3, #1
	ands	r3, r5
	cmp	r5, #0
	ble	.L266
	cmp	r3, #0
	beq	.L270
	ldr	r4, .L278+4
	b	.L259
.L263:
	cmp	r3, #0
	beq	.L270
	lsrs	r4, r4, #31
	lsls	r3, r4, #31
	movs	r4, #255
	lsls	r4, r4, #23
	orrs	r4, r3
	b	.L259
.L277:
	cmp	r5, #0
	blt	.L271
.L270:
	movs	r4, #255
	lsls	r4, r4, #23
	b	.L259
.L271:
	movs	r4, #0
	b	.L259
.L265:
	adds	r0, r4, #0
	movs	r1, r5
	bl	fpowint_0
	adds	r4, r0, #0
	b	.L259
.L266:
	cmp	r3, #0
	beq	.L271
	movs	r4, #128
	lsls	r4, r4, #24
	b	.L259
.L279:
	.align	2
.L278:
	.word	511
	.word	-8388608
	.size	__wrap_powintf, .-__wrap_powintf
	.section	.text.__wrap_powf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_powf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_powf, %function
__wrap_powf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	adds	r4, r1, #0
	movs	r1, #254
	push	{lr}
	lsls	r1, r1, #22
	adds	r7, r0, #0
	bl	__aeabi_fcmpeq
	adds	r5, r7, #0
	cmp	r0, #0
	bne	.L280
	movs	r6, #255
	lsls	r6, r6, #23
	movs	r3, r6
	ands	r3, r4
	mov	r8, r3
	tst	r6, r4
	beq	.L297
	ldr	r1, .L335
	adds	r0, r7, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.L329
	cmp	r8, r6
	beq	.L297
	movs	r5, #128
	ldr	r2, .L335
	lsrs	r3, r4, #23
	adds	r5, r5, #255
.L289:
	cmp	r3, #255
	beq	.L333
	ldr	r1, .L335+4
	cmp	r3, r1
	beq	.L334
	movs	r0, #255
	movs	r1, r0
	ands	r1, r3
	tst	r0, r3
	beq	.L293
	subs	r1, r1, #127
	bmi	.L294
	movs	r3, #23
	subs	r3, r3, r1
	cmp	r3, #0
	ble	.L293
	movs	r1, #1
	lsls	r1, r1, r3
	movs	r3, r1
	subs	r3, r3, #1
	tst	r3, r4
	bne	.L294
.L293:
	adds	r1, r4, #0
	adds	r0, r7, #0
	bl	fpow_0
	adds	r5, r0, #0
.L280:
	adds	r0, r5, #0
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L297:
	movs	r5, #254
	lsls	r5, r5, #22
	b	.L280
.L329:
	movs	r2, r7
	tst	r6, r7
	bne	.L285
	lsrs	r3, r4, #23
	cmp	r4, #0
	blt	.L286
	subs	r3, r3, #127
	bmi	.L318
	movs	r2, #23
	subs	r3, r2, r3
	bmi	.L318
	movs	r1, #1
	movs	r2, r1
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r4
	bne	.L318
	cmp	r3, #23
	beq	.L280
	lsrs	r4, r4, r3
	tst	r1, r4
	bne	.L280
.L318:
	movs	r5, #0
	b	.L280
.L285:
	lsrs	r5, r7, #23
	cmp	r5, #255
	bne	.L288
	cmp	r4, #0
	blt	.L318
.L320:
	movs	r5, #255
	lsls	r5, r5, #23
	b	.L280
.L286:
	movs	r2, #255
	ands	r3, r2
	subs	r3, r3, #127
	bmi	.L320
	subs	r2, r2, #232
	subs	r3, r2, r3
	bmi	.L320
	movs	r1, #1
	movs	r2, r1
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r4
	bne	.L320
	cmp	r3, #23
	beq	.L287
	lsrs	r4, r4, r3
	tst	r1, r4
	beq	.L320
.L287:
	movs	r5, #255
	lsrs	r7, r7, #31
	lsls	r7, r7, #31
	lsls	r5, r5, #23
	orrs	r5, r7
	b	.L280
.L334:
	movs	r3, #255
	ands	r3, r5
	cmp	r3, #126
	bls	.L320
	b	.L318
.L333:
	ands	r3, r5
	cmp	r3, #126
	bhi	.L320
	movs	r5, #0
	b	.L280
.L294:
	cmp	r2, #0
	blt	.L320
	adds	r0, r7, #0
	bl	__aeabi_f2d
	bl	log
	movs	r6, r0
	movs	r7, r1
	adds	r0, r4, #0
	bl	__aeabi_f2d
	movs	r2, r6
	movs	r3, r7
	bl	__aeabi_dmul
	bl	exp
	bl	__aeabi_d2f
	adds	r5, r0, #0
	b	.L280
.L288:
	ldr	r1, .L335+4
	lsrs	r3, r4, #23
	cmp	r5, r1
	beq	.LCB1733
	b	.L289	@long jump
.LCB1733:
	cmp	r4, #0
	blt	.L290
	subs	r3, r3, #127
	bmi	.L320
	movs	r2, #23
	subs	r3, r2, r3
	bmi	.L320
	subs	r2, r2, #22
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r4
	bne	.L320
	cmp	r3, #23
	beq	.L312
	lsrs	r4, r4, r3
	lsls	r4, r4, #31
	bpl	.L320
.L312:
	ldr	r5, .L335+8
	b	.L280
.L290:
	movs	r2, #255
	ands	r3, r2
	subs	r3, r3, #127
	bmi	.L318
	subs	r2, r2, #232
	subs	r3, r2, r3
	bmi	.L318
	subs	r2, r2, #22
	lsls	r2, r2, r3
	subs	r2, r2, #1
	tst	r2, r4
	bne	.L318
	cmp	r3, #23
	beq	.L317
	lsrs	r4, r4, r3
	lsls	r4, r4, #31
	bpl	.L318
.L317:
	movs	r5, #128
	lsls	r5, r5, #24
	b	.L280
.L336:
	.align	2
.L335:
	.word	-1082130432
	.word	511
	.word	-8388608
	.size	__wrap_powf, .-__wrap_powf
	.section	.text.__wrap_hypotf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_hypotf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_hypotf, %function
__wrap_hypotf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, r5, r6, lr}
	lsrs	r2, r0, #23
	lsrs	r5, r1, #23
	ands	r2, r3
	adds	r4, r1, #0
	ands	r3, r5
	cmp	r2, #176
	bhi	.L338
	cmp	r3, #176
	bhi	.L389
	cmp	r2, #77
	bhi	.L350
	cmp	r3, #77
	bls	.L390
.L350:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	adds	r1, r4, #0
	adds	r5, r0, #0
	adds	r0, r4, #0
	bl	__aeabi_fmul
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fadd
	bl	sqrtf
.L337:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L389:
	cmp	r2, #0
	bne	.L391
.L342:
	cmp	r3, #255
	beq	.L343
.L344:
	movs	r3, #221
	lsls	r3, r3, #24
	adds	r4, r1, r3
.L343:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	adds	r1, r4, #0
	adds	r5, r0, #0
	adds	r0, r4, #0
	bl	__aeabi_fmul
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fadd
	bl	sqrtf
	lsls	r3, r0, #1
	movs	r2, r0
	lsrs	r3, r3, #24
	beq	.L337
	cmp	r3, #255
	beq	.L337
	movs	r1, #140
	lsls	r1, r1, #22
	adds	r0, r0, r1
	cmp	r3, #184
	bls	.L337
	movs	r0, #255
	lsrs	r2, r2, #31
	lsls	r2, r2, #31
	lsls	r0, r0, #23
	orrs	r0, r2
	b	.L337
.L338:
	cmp	r2, #255
	beq	.L345
	movs	r2, #221
	lsls	r2, r2, #24
	adds	r0, r0, r2
.L345:
	cmp	r3, #0
	beq	.L343
	cmp	r3, #255
	beq	.L343
	cmp	r3, #70
	bhi	.L344
	lsrs	r1, r1, #31
	lsls	r4, r1, #31
	b	.L343
.L390:
	cmp	r2, #0
	beq	.L351
	movs	r2, #140
	lsls	r2, r2, #22
	adds	r0, r0, r2
.L351:
	cmp	r3, #0
	beq	.L352
	movs	r3, #140
	lsls	r3, r3, #22
	adds	r4, r1, r3
.L352:
	adds	r1, r0, #0
	bl	__aeabi_fmul
	adds	r1, r4, #0
	adds	r5, r0, #0
	adds	r0, r4, #0
	bl	__aeabi_fmul
	adds	r1, r0, #0
	adds	r0, r5, #0
	bl	__aeabi_fadd
	bl	sqrtf
	lsls	r3, r0, #1
	movs	r2, r0
	lsrs	r3, r3, #24
	beq	.L337
	cmp	r3, #255
	beq	.L337
	movs	r1, #221
	lsls	r1, r1, #24
	adds	r0, r0, r1
	cmp	r3, #70
	bhi	.L337
	lsrs	r2, r2, #31
	lsls	r0, r2, #31
	b	.L337
.L391:
	cmp	r2, #70
	bhi	.L341
	lsrs	r6, r0, #31
	lsls	r0, r6, #31
	b	.L342
.L341:
	movs	r2, #221
	lsls	r2, r2, #24
	adds	r0, r0, r2
	b	.L342
	.size	__wrap_hypotf, .-__wrap_hypotf
	.section	.text.__wrap_cbrtf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_cbrtf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_cbrtf, %function
__wrap_cbrtf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, r0
	push	{r4, lr}
	cmp	r0, #0
	blt	.L412
	movs	r3, #255
	lsls	r3, r3, #23
	tst	r3, r0
	beq	.L400
	lsrs	r3, r0, #23
	lsls	r4, r3, #2
	adds	r4, r4, r3
	lsls	r2, r4, #4
	adds	r4, r4, r2
	lsls	r2, r4, #8
	adds	r4, r4, r2
	ldr	r2, .L415
	mov	ip, r2
	add	r4, r4, ip
	asrs	r4, r4, #16
	lsls	r2, r4, #2
	subs	r2, r4, r2
	cmp	r3, #255
	beq	.L395
	adds	r3, r2, r3
	movs	r0, #0
	cmp	r3, #0
	ble	.L395
	cmp	r3, #254
	ble	.L413
	movs	r0, #255
	lsls	r0, r0, #23
.L395:
	bl	logf
	ldr	r1, .L415+4
	bl	__aeabi_fmul
	bl	expf
	lsls	r3, r0, #1
	lsrs	r3, r3, #24
	beq	.L392
	cmp	r3, #255
	beq	.L392
	adds	r3, r3, r4
	cmp	r3, #0
	ble	.L414
	cmp	r3, #254
	ble	.L399
	lsrs	r2, r0, #31
	movs	r0, #255
	lsls	r2, r2, #31
	lsls	r0, r0, #23
	orrs	r0, r2
	b	.L392
.L400:
	movs	r0, #0
.L392:
	@ sp needed
	pop	{r4, pc}
.L412:
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
	bl	cbrtf
	movs	r3, #128
	lsls	r3, r3, #24
	mov	ip, r3
	add	r0, r0, ip
	b	.L392
.L413:
	lsls	r2, r2, #23
	adds	r0, r2, r1
	b	.L395
.L414:
	lsrs	r2, r0, #31
	lsls	r0, r2, #31
	b	.L392
.L399:
	lsls	r4, r4, #23
	adds	r0, r4, r0
	b	.L392
.L416:
	.align	2
.L415:
	.word	-2741547
	.word	1051372203
	.size	__wrap_cbrtf, .-__wrap_cbrtf
	.global	__aeabi_uidiv
	.section	.text.__wrap_fmodf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_fmodf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_fmodf, %function
__wrap_fmodf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, #255
	mov	lr, r9
	mov	r7, r8
	lsrs	r2, r0, #23
	adds	r3, r0, #0
	lsrs	r0, r1, #23
	ands	r2, r4
	push	{r7, lr}
	ands	r4, r0
	cmp	r2, #255
	beq	.L430
	cmp	r4, #0
	beq	.L430
	lsrs	r0, r3, #31
	mov	r8, r0
	cmp	r2, #0
	bne	.L419
	movs	r3, r0
	movs	r0, #0
	cmp	r3, #0
	beq	.L417
	movs	r0, #128
	lsls	r0, r0, #24
.L417:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L419:
	adds	r0, r3, #0
	cmp	r2, r4
	blt	.L417
	movs	r6, #128
	lsls	r3, r3, #9
	lsls	r1, r1, #9
	lsls	r6, r6, #16
	lsrs	r7, r3, #9
	lsrs	r1, r1, #9
	orrs	r7, r6
	subs	r5, r2, r4
	orrs	r6, r1
	cmp	r2, r4
	beq	.L420
	movs	r0, #1
	asrs	r1, r6, #7
	rsbs	r0, r0, #0
	bl	__aeabi_uidiv
	movs	r1, #29
	mov	r9, r0
.L422:
	movs	r2, r5
	cmp	r5, #12
	ble	.L421
	movs	r2, #12
.L421:
	mov	r0, r9
	asrs	r3, r7, #9
	muls	r3, r0
	subs	r0, r1, r2
	asrs	r3, r3, r0
	lsls	r7, r7, r2
	adds	r3, r3, #1
	asrs	r3, r3, #1
	muls	r3, r6
	subs	r5, r5, r2
	subs	r7, r7, r3
	cmp	r5, #0
	bgt	.L422
	cmp	r6, r7
	bgt	.L439
	subs	r7, r7, r6
	cmp	r6, r7
	bgt	.L425
.L424:
	subs	r7, r7, r6
.L425:
	mov	r3, r8
	cmp	r3, #0
	beq	.L428
	rsbs	r7, r7, #0
.L428:
	movs	r1, #150
	movs	r0, r7
	subs	r1, r1, r4
	bl	fix2float
	b	.L417
.L430:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L417
.L420:
	cmp	r7, r6
	blt	.L425
	b	.L424
.L439:
	cmp	r7, #0
	bge	.L425
	adds	r7, r7, r6
	bpl	.L425
	adds	r7, r7, r6
	b	.L425
	.size	__wrap_fmodf, .-__wrap_fmodf
	.section	.text.__wrap_remquof,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_remquof
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_remquof, %function
__wrap_remquof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r8
	mov	r7, r9
	mov	lr, r10
	push	{r6, r7, lr}
	movs	r6, #255
	lsrs	r5, r0, #23
	lsrs	r3, r1, #23
	ands	r5, r6
	mov	r8, r1
	movs	r7, r2
	adds	r4, r0, #0
	ands	r6, r3
	cmp	r2, #0
	beq	.L441
	movs	r3, #0
	str	r3, [r2]
.L441:
	cmp	r5, #255
	beq	.L462
	cmp	r6, #0
	beq	.L462
	cmp	r5, #0
	beq	.L463
	adds	r0, r4, #0
	cmp	r6, #255
	beq	.L440
	movs	r3, r6
	subs	r3, r3, #1
	mov	r10, r6
	cmp	r3, r5
	bgt	.L440
	movs	r2, #128
	lsls	r2, r2, #16
	mov	r9, r2
	lsrs	r1, r4, #31
	lsls	r4, r4, #9
	lsrs	r4, r4, #9
	orrs	r4, r2
	mov	r2, r8
	mov	r6, r9
	lsls	r2, r2, #9
	lsrs	r2, r2, #9
	orrs	r6, r2
	mov	r9, r6
	cmp	r3, r5
	beq	.L483
	cmp	r1, #0
	beq	.L446
	mov	r3, r10
	movs	r1, #0
	rsbs	r4, r4, #0
	subs	r5, r5, r3
	cmp	r5, #0
	ble	.L448
.L447:
	mov	r3, r9
	movs	r0, #1
	asrs	r1, r3, #7
	rsbs	r0, r0, #0
	bl	__aeabi_uidiv
	movs	r3, #29
	movs	r1, #0
	mov	ip, r3
.L451:
	movs	r2, r5
	cmp	r5, #12
	ble	.L450
	movs	r2, #12
.L450:
	mov	r6, ip
	asrs	r3, r4, #9
	lsls	r4, r4, r2
	muls	r3, r0
	subs	r6, r6, r2
	asrs	r3, r3, r6
	movs	r6, r4
	mov	r4, r9
	lsls	r1, r1, r2
	adds	r3, r3, #1
	asrs	r3, r3, #1
	muls	r4, r3
	adds	r1, r3, r1
	subs	r4, r6, r4
	subs	r5, r5, r2
	cmp	r5, #0
	bgt	.L451
	cmp	r9, r4
	bgt	.L484
	mov	r3, r9
	subs	r4, r4, r3
	cmp	r4, r9
	blt	.L485
	subs	r4, r4, r3
	adds	r1, r1, #2
.L456:
	lsls	r3, r4, #1
	cmp	r3, r9
	bgt	.L454
	beq	.L486
.L445:
	mov	r3, r8
	cmp	r3, #0
	bge	.L459
	rsbs	r1, r1, #0
.L459:
	cmp	r7, #0
	beq	.L460
	str	r1, [r7]
.L460:
	movs	r1, #150
	mov	r3, r10
	movs	r0, r4
	subs	r1, r1, r3
	bl	fix2float
.L440:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L462:
	movs	r0, #255
	lsls	r0, r0, #23
	b	.L440
.L463:
	movs	r0, #0
	b	.L440
.L483:
	cmp	r4, r6
	ble	.L440
	lsls	r3, r6, #1
	cmp	r1, #0
	bne	.L444
	mov	r10, r5
	subs	r4, r4, r3
	adds	r1, r1, #1
	b	.L445
.L446:
	mov	r3, r10
	subs	r5, r5, r3
	cmp	r5, #0
	bgt	.L447
	movs	r1, #0
	cmp	r4, r6
	blt	.L454
	movs	r1, #1
	subs	r4, r4, r6
	b	.L456
.L484:
	cmp	r4, #0
	bge	.L456
.L448:
	mov	r3, r9
	adds	r4, r4, r3
	bpl	.L487
	add	r4, r4, r9
	subs	r1, r1, #2
	b	.L456
.L486:
	lsls	r3, r1, #31
	bpl	.L445
.L454:
	mov	r3, r9
	adds	r1, r1, #1
	subs	r4, r4, r3
	b	.L445
.L444:
	movs	r1, #1
	mov	r10, r5
	subs	r4, r3, r4
	rsbs	r1, r1, #0
	b	.L445
.L487:
	subs	r1, r1, #1
	b	.L456
.L485:
	adds	r1, r1, #1
	b	.L456
	.size	__wrap_remquof, .-__wrap_remquof
	.section	.text.__wrap_dremf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_dremf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_dremf, %function
__wrap_dremf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	@ sp needed
	bl	remquof
	pop	{r4, pc}
	.size	__wrap_dremf, .-__wrap_dremf
	.section	.text.__wrap_remainderf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_remainderf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_remainderf, %function
__wrap_remainderf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	@ sp needed
	bl	remquof
	pop	{r4, pc}
	.size	__wrap_remainderf, .-__wrap_remainderf
	.ident	"GCC: (Arch Repository) 13.1.0"
