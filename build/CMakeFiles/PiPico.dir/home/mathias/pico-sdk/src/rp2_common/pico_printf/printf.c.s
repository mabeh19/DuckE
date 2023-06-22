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
	.file	"printf.c"
	.text
	.section	.text._out_buffer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_out_buffer, %function
_out_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, r3
	bcs	.L1
	strb	r0, [r1, r2]
.L1:
	@ sp needed
	bx	lr
	.size	_out_buffer, .-_out_buffer
	.section	.text._out_null,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_out_null, %function
_out_null:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	_out_null, .-_out_null
	.section	.text._out_rev,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_out_rev, %function
_out_rev:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	mov	r9, r3
	ldr	r3, [sp, #40]
	movs	r7, r0
	mov	r10, r3
	ldr	r3, [sp, #52]
	mov	r8, r1
	mov	fp, r2
	ldr	r4, [sp, #44]
	lsls	r3, r3, #30
	bne	.L6
	ldr	r3, [sp, #48]
	cmp	r4, r3
	bcs	.L27
	subs	r6, r3, r4
	str	r4, [sp, #44]
	movs	r5, r2
	movs	r4, r1
	add	r6, r6, fp
.L11:
	movs	r2, r5
	mov	r3, r9
	adds	r5, r5, #1
	movs	r1, r4
	movs	r0, #32
	blx	r7
	cmp	r5, r6
	bne	.L11
	mov	r8, r4
	ldr	r4, [sp, #44]
	cmp	r4, #0
	beq	.L5
.L9:
	mov	r5, r8
	adds	r6, r6, r4
.L13:
	mov	r3, r10
	subs	r2, r6, r4
	subs	r4, r4, #1
	ldrb	r0, [r3, r4]
	movs	r1, r5
	mov	r3, r9
	blx	r7
	cmp	r4, #0
	bne	.L13
	movs	r3, r5
	movs	r5, r6
	mov	r8, r3
.L10:
	ldr	r3, [sp, #52]
	lsls	r3, r3, #30
	bpl	.L5
	mov	r3, fp
	subs	r4, r5, r3
	ldr	r3, [sp, #48]
	cmp	r3, r4
	bls	.L5
	mov	r6, r8
	mov	r8, r3
.L14:
	movs	r2, r5
	mov	r3, r9
	movs	r1, r6
	movs	r0, #32
	adds	r4, r4, #1
	blx	r7
	adds	r5, r5, #1
	cmp	r4, r8
	bcc	.L14
.L5:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L6:
	movs	r6, r2
	movs	r5, r2
	cmp	r4, #0
	bne	.L9
	b	.L10
.L27:
	movs	r6, r2
	cmp	r4, #0
	bne	.L9
	movs	r5, r2
	b	.L5
	.size	_out_rev, .-_out_rev
	.section	.text._ntoa_format,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_ntoa_format, %function
_ntoa_format:
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	mov	lr, r10
	push	{r6, r7, lr}
	sub	sp, sp, #16
	mov	r8, r3
	add	r3, sp, #56
	ldrb	r3, [r3]
	mov	ip, r2
	mov	r9, r3
	ldr	r3, [sp, #72]
	ldr	r4, [sp, #52]
	ldr	r7, [sp, #64]
	ldr	r6, [sp, #68]
	lsls	r2, r3, #30
	bmi	.L29
	cmp	r6, #0
	bne	.L178
	cmp	r4, r7
	bcs	.L29
	movs	r2, #1
	ands	r2, r3
	mov	r10, r2
	cmp	r4, #32
	bne	.LCB181
	b	.L179	@long jump
.LCB181:
.L40:
	ldr	r2, [sp, #48]
	subs	r5, r2, #1
	movs	r2, #48
	b	.L50
.L34:
	cmp	r4, #32
	bne	.LCB191
	b	.L180	@long jump
.LCB191:
.L50:
	adds	r4, r4, #1
	strb	r2, [r5, r4]
	cmp	r7, r4
	bhi	.L34
	mov	r2, r10
	cmp	r2, #0
	beq	.L29
.L39:
	cmp	r4, r6
	bcs	.L29
	ldr	r2, [sp, #48]
	subs	r5, r2, #1
	movs	r2, #48
	cmp	r4, #32
	bne	.L49
	b	.L43
.L181:
	cmp	r4, #32
	beq	.L47
.L49:
	adds	r4, r4, #1
	strb	r2, [r5, r4]
	cmp	r4, r6
	bne	.L181
.L29:
	lsls	r2, r3, #27
	bpl	.L54
	lsls	r2, r3, #21
	bmi	.L55
	cmp	r4, #0
	bne	.L89
	ldr	r2, [sp, #60]
	cmp	r2, #16
	bne	.LCB232
	b	.L182	@long jump
.LCB232:
.L66:
	cmp	r2, #2
	bne	.LCB235
	b	.L183	@long jump
.LCB235:
	movs	r2, #48
	ldr	r4, [sp, #48]
	strb	r2, [r4]
	movs	r4, #1
.L64:
	mov	r2, r9
	cmp	r2, #0
	bne	.L184
	lsls	r2, r3, #29
	bmi	.LCB248
	b	.L78	@long jump
.LCB248:
	movs	r2, #43
	ldr	r5, [sp, #48]
	strb	r2, [r5, r4]
	adds	r4, r4, #1
.L45:
	str	r3, [sp, #12]
	ldr	r3, [sp, #48]
	mov	r2, ip
	str	r3, [sp]
	str	r6, [sp, #8]
	mov	r3, r8
	str	r4, [sp, #4]
	bl	_out_rev
	add	sp, sp, #16
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7, pc}
.L47:
	movs	r4, #32
	lsls	r2, r3, #27
	bpl	.L45
	lsls	r2, r3, #21
	bmi	.L55
.L89:
	cmp	r7, r4
	beq	.L57
.L88:
	cmp	r4, r6
	beq	.L57
.L55:
	ldr	r2, [sp, #60]
	cmp	r2, #16
	beq	.L185
	cmp	r2, #2
	beq	.L186
.L73:
	cmp	r4, #32
	beq	.L45
.L61:
	movs	r2, r4
	adds	r4, r4, #1
.L75:
	movs	r5, #48
	ldr	r7, [sp, #48]
	strb	r5, [r7, r2]
.L54:
	cmp	r4, #32
	beq	.L45
	b	.L64
.L178:
	movs	r2, #1
	movs	r5, r2
	ands	r5, r3
	mov	r10, r5
	tst	r2, r3
	beq	.L31
	mov	r2, r9
	cmp	r2, #0
	bne	.L32
	adds	r2, r2, #12
	tst	r2, r3
	bne	.L32
.L33:
	cmp	r4, r7
	bcs	.L39
	cmp	r4, #32
	bne	.L40
	cmp	r6, #32
	bhi	.L43
.L41:
	movs	r4, #32
	lsls	r2, r3, #27
	bpl	.L45
	lsls	r2, r3, #21
	bmi	.L160
	cmp	r7, #32
	beq	.L100
	cmp	r6, #32
	bne	.L55
.L100:
	movs	r2, #31
.L79:
	ldr	r5, [sp, #60]
	cmp	r5, #16
	beq	.L187
	cmp	r5, #2
	bne	.L75
.L74:
	movs	r5, #98
	ldr	r7, [sp, #48]
	strb	r5, [r7, r2]
	b	.L73
.L180:
	mov	r2, r10
	cmp	r2, #0
	beq	.L46
	cmp	r6, #32
	bls	.L47
.L43:
	movs	r4, #32
	lsls	r2, r3, #27
	bpl	.L45
	lsls	r2, r3, #21
	bmi	.L160
	cmp	r7, #32
	beq	.L100
	cmp	r6, #32
	beq	.L100
.L160:
	ldr	r2, [sp, #60]
	cmp	r2, #16
	bne	.L45
.L70:
	movs	r4, #32
	b	.L45
.L184:
	movs	r2, #45
	ldr	r5, [sp, #48]
	strb	r2, [r5, r4]
	adds	r4, r4, #1
	b	.L45
.L31:
	cmp	r4, r7
	bcc	.LCB411
	b	.L29	@long jump
.LCB411:
	cmp	r4, #32
	beq	.LCB413
	b	.L40	@long jump
.LCB413:
.L42:
	lsls	r2, r3, #27
	bpl	.L70
	lsls	r2, r3, #21
	bmi	.L70
	cmp	r7, #32
	beq	.L188
	cmp	r6, #32
	bne	.L70
	movs	r4, r6
	movs	r2, #31
	b	.L79
.L186:
	cmp	r4, #32
	bne	.LCB434
	b	.L45	@long jump
.LCB434:
	movs	r2, r4
	adds	r4, r4, #1
	b	.L74
.L32:
	subs	r6, r6, #1
	b	.L33
.L57:
	subs	r2, r4, #1
	cmp	r4, #1
	bne	.L79
	ldr	r2, [sp, #60]
	cmp	r2, #16
	beq	.LCB452
	b	.L66	@long jump
.LCB452:
	lsls	r2, r3, #26
	bpl	.L67
	movs	r2, #88
	ldr	r4, [sp, #48]
	strb	r2, [r4]
	subs	r2, r2, #40
	strb	r2, [r4, #1]
	movs	r4, #2
	b	.L64
.L185:
	lsls	r2, r3, #26
	bmi	.L72
	cmp	r4, #32
	beq	.L70
	movs	r2, #120
	ldr	r5, [sp, #48]
	strb	r2, [r5, r4]
	adds	r4, r4, #1
	b	.L73
.L78:
	lsls	r2, r3, #28
	bmi	.LCB485
	b	.L45	@long jump
.LCB485:
	movs	r2, #32
	ldr	r5, [sp, #48]
	strb	r2, [r5, r4]
	adds	r4, r4, #1
	b	.L45
.L72:
	cmp	r4, #32
	beq	.L70
	movs	r5, #88
	ldr	r2, [sp, #48]
	adds	r2, r2, r4
	strb	r5, [r2]
	adds	r4, r4, #1
	b	.L73
.L182:
	lsls	r2, r3, #26
	bpl	.L92
	movs	r2, #88
.L63:
	ldr	r4, [sp, #48]
	strb	r2, [r4]
	movs	r2, #48
	strb	r2, [r4, #1]
	movs	r4, #2
	b	.L64
.L183:
	adds	r2, r2, #96
	b	.L63
.L92:
	movs	r2, #120
	b	.L63
.L179:
	cmp	r2, #0
	bne	.L41
	b	.L42
.L187:
	subs	r2, r4, #2
	subs	r4, r4, #1
	lsls	r5, r3, #26
	bmi	.L60
	movs	r5, #120
	ldr	r7, [sp, #48]
	strb	r5, [r7, r2]
	b	.L61
.L60:
	movs	r5, #88
	ldr	r7, [sp, #48]
	strb	r5, [r7, r2]
	b	.L61
.L67:
	movs	r2, #120
	ldr	r4, [sp, #48]
	strb	r2, [r4]
	subs	r2, r2, #72
	strb	r2, [r4, #1]
	movs	r4, #2
	b	.L64
.L46:
	lsls	r2, r3, #27
	bmi	.LCB571
	b	.L45	@long jump
.LCB571:
	lsls	r2, r3, #21
	bmi	.L160
	cmp	r7, #32
	beq	.LCB577
	b	.L88	@long jump
.LCB577:
	movs	r2, #31
	b	.L79
.L188:
	movs	r4, r7
	movs	r2, #31
	b	.L79
	.size	_ntoa_format, .-_ntoa_format
	.section	.text._out_char,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_out_char, %function
_out_char:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cmp	r0, #0
	bne	.L194
.L189:
	@ sp needed
	pop	{r4, pc}
.L194:
	bl	putchar
	b	.L189
	.size	_out_char, .-_out_char
	.section	.text._out_fct,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_out_fct, %function
_out_fct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r1
	push	{r4, lr}
	cmp	r0, #0
	beq	.L195
	ldr	r1, [r1, #4]
	ldr	r3, [r3]
	blx	r3
.L195:
	@ sp needed
	pop	{r4, pc}
	.size	_out_fct, .-_out_fct
	.global	__aeabi_dcmpun
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmplt
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.global	__aeabi_ddiv
	.global	__aeabi_dcmpge
	.global	__aeabi_uidivmod
	.global	__aeabi_idivmod
	.global	__aeabi_uidiv
	.global	__aeabi_idiv
	.section	.text._etoa,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_etoa, %function
_etoa:
	@ args = 20, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	sub	sp, sp, #100
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	str	r3, [sp, #32]
	ldr	r2, [sp, #136]
	ldr	r3, [sp, #140]
	movs	r0, r2
	movs	r1, r3
	bl	__aeabi_dcmpun
	cmp	r0, #0
	beq	.LCB649
	b	.L201	@long jump
.LCB649:
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	movs	r2, #1
	ldr	r3, .L268
	rsbs	r2, r2, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.LCB657
	b	.L201	@long jump
.LCB657:
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	movs	r2, #1
	ldr	r3, .L268+4
	rsbs	r2, r2, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB665
	b	.L201	@long jump
.LCB665:
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB672
	b	.L266	@long jump
.LCB672:
	ldr	r6, [sp, #136]
	ldr	r7, [sp, #140]
.L205:
	movs	r3, #128
	ldr	r2, [sp, #152]
	lsls	r3, r3, #3
	ands	r2, r3
	str	r2, [sp, #52]
	ldr	r2, [sp, #152]
	tst	r2, r3
	bne	.L207
	movs	r3, #6
	str	r3, [sp, #144]
.L207:
	movs	r3, #128
	ldr	r2, [sp, #152]
	lsls	r3, r3, #4
	ands	r2, r3
	movs	r3, r7
	mov	fp, r2
	str	r6, [sp, #36]
	orrs	r3, r6
	beq	.LCB697
	b	.L208	@long jump
.LCB697:
	cmp	r2, #0
	beq	.LCB699
	b	.L230	@long jump
.LCB699:
	movs	r3, #0
	movs	r4, #0
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	movs	r3, #0
	movs	r5, #4
	str	r3, [sp, #36]
.L210:
	ldr	r3, [sp, #148]
	movs	r4, #0
	cmp	r3, r5
	bls	.L219
	subs	r4, r3, r5
.L219:
	movs	r3, #2
	ldr	r2, [sp, #152]
	ands	r2, r3
	str	r2, [sp, #48]
	ldr	r2, [sp, #152]
	tst	r3, r2
	beq	.L220
	rsbs	r3, r5, #0
	adcs	r3, r3, r5
	rsbs	r3, r3, #0
	ands	r4, r3
.L220:
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L221
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	movs	r0, r6
	movs	r1, r7
	bl	__aeabi_ddiv
	movs	r6, r0
	movs	r7, r1
.L221:
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.L222
	movs	r1, #128
	lsls	r1, r1, #24
	adds	r3, r7, r1
	movs	r7, r3
.L222:
	ldr	r2, [sp, #152]
	ldr	r3, .L268+8
	str	r6, [sp]
	str	r7, [sp, #4]
	ands	r3, r2
	ldr	r6, [sp, #32]
	str	r3, [sp, #16]
	ldr	r3, [sp, #144]
	str	r4, [sp, #12]
	str	r3, [sp, #8]
	mov	r2, r8
	movs	r3, r6
	mov	r1, r9
	mov	r0, r10
	bl	_ftoa
	movs	r4, r0
	cmp	r5, #0
	beq	.L200
	movs	r0, #32
	ldr	r2, [sp, #152]
	mov	r1, r9
	ands	r2, r0
	movs	r3, r2
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	rsbs	r3, r3, #0
	adds	r2, r4, #1
	ands	r0, r3
	str	r2, [sp, #40]
	movs	r3, r6
	movs	r2, r4
	adds	r0, r0, #69
	blx	r10
	ldr	r2, [sp, #36]
	subs	r7, r5, #1
	asrs	r3, r2, #31
	adds	r4, r2, r3
	eors	r4, r3
	lsrs	r3, r2, #31
	mov	fp, r3
	movs	r5, #0
	b	.L226
.L267:
	cmp	r5, #32
	beq	.L225
.L226:
	add	r2, sp, #32
	mov	ip, r2
	movs	r3, #31
	movs	r0, r4
	add	r3, r3, ip
	movs	r1, #10
	adds	r5, r5, #1
	adds	r6, r3, r5
	bl	__aeabi_uidivmod
	adds	r1, r1, #48
	strb	r1, [r6]
	movs	r0, r4
	movs	r1, #10
	bl	__aeabi_uidiv
	movs	r6, r4
	movs	r4, r0
	cmp	r6, #9
	bhi	.L267
.L225:
	movs	r3, #5
	str	r3, [sp, #24]
	movs	r3, #0
	str	r3, [sp, #16]
	adds	r3, r3, #10
	str	r3, [sp, #12]
	mov	r3, fp
	ldr	r6, [sp, #32]
	str	r3, [sp, #8]
	add	r3, sp, #64
	ldr	r2, [sp, #40]
	str	r3, [sp]
	mov	r1, r9
	movs	r3, r6
	mov	r0, r10
	str	r7, [sp, #20]
	str	r5, [sp, #4]
	bl	_ntoa_format
	ldr	r2, [sp, #48]
	movs	r4, r0
	cmp	r2, #0
	beq	.L200
	mov	r2, r8
	subs	r5, r0, r2
	ldr	r2, [sp, #148]
	cmp	r2, r5
	bls	.L200
	mov	r8, r6
	mov	r7, r10
	movs	r6, r2
.L227:
	movs	r2, r4
	mov	r3, r8
	mov	r1, r9
	movs	r0, #32
	adds	r5, r5, #1
	blx	r7
	adds	r4, r4, #1
	cmp	r6, r5
	bhi	.L227
	b	.L200
.L201:
	ldr	r3, [sp, #152]
	mov	r2, r8
	str	r3, [sp, #16]
	ldr	r3, [sp, #148]
	mov	r1, r9
	str	r3, [sp, #12]
	ldr	r3, [sp, #144]
	mov	r0, r10
	str	r3, [sp, #8]
	ldr	r3, [sp, #136]
	ldr	r4, [sp, #140]
	str	r3, [sp]
	str	r4, [sp, #4]
	ldr	r3, [sp, #32]
	bl	_ftoa
	movs	r4, r0
.L200:
	movs	r0, r4
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L208:
	ldr	r3, .L268+12
	lsls	r0, r7, #1
	mov	ip, r3
	lsrs	r0, r0, #21
	add	r0, r0, ip
	bl	__aeabi_i2d
	ldr	r2, .L268+16
	ldr	r3, .L268+20
	bl	__aeabi_dmul
	ldr	r2, .L268+24
	ldr	r3, .L268+28
	bl	__aeabi_dadd
	ldr	r2, .L268+32
	lsls	r3, r7, #12
	lsrs	r3, r3, #12
	orrs	r2, r3
	movs	r4, r0
	movs	r5, r1
	ldr	r0, [sp, #36]
	movs	r1, r2
	ldr	r3, .L268+36
	movs	r2, #0
	bl	__aeabi_dsub
	ldr	r2, .L268+40
	ldr	r3, .L268+44
	bl	__aeabi_dmul
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	str	r0, [sp, #36]
	bl	__aeabi_i2d
	ldr	r2, .L268+48
	ldr	r3, .L268+52
	movs	r4, r0
	movs	r5, r1
	bl	__aeabi_dmul
	movs	r2, #0
	ldr	r3, .L268+56
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	ldr	r2, .L268+60
	ldr	r3, .L268+64
	movs	r1, r5
	str	r0, [sp, #48]
	movs	r0, r4
	bl	__aeabi_dmul
	movs	r4, r0
	ldr	r0, [sp, #48]
	movs	r5, r1
	bl	__aeabi_i2d
	ldr	r2, .L268+68
	ldr	r3, .L268+72
	bl	__aeabi_dmul
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dsub
	movs	r4, r0
	movs	r5, r1
	movs	r2, r0
	movs	r3, r1
	str	r4, [sp, #40]
	str	r5, [sp, #44]
	bl	__aeabi_dmul
	movs	r4, r0
	movs	r5, r1
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	movs	r2, r0
	movs	r3, r1
	bl	__aeabi_dadd
	movs	r2, #0
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	ldr	r3, .L268+76
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_ddiv
	movs	r2, #0
	ldr	r3, .L268+80
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_ddiv
	movs	r2, #0
	ldr	r3, .L268+84
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_ddiv
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	movs	r5, r1
	movs	r1, #128
	movs	r4, r0
	lsls	r1, r1, #23
	movs	r0, #0
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r4
	movs	r1, r5
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #60]
	bl	__aeabi_ddiv
	movs	r2, #0
	ldr	r3, .L268+32
	bl	__aeabi_dadd
	ldr	r3, .L268+88
	ldr	r4, [sp, #48]
	mov	ip, r3
	add	r4, r4, ip
	lsls	r3, r4, #20
	movs	r2, #0
	bl	__aeabi_dmul
	movs	r4, r0
	movs	r5, r1
	movs	r2, r0
	movs	r3, r1
	movs	r0, r6
	movs	r1, r7
	str	r4, [sp, #40]
	str	r5, [sp, #44]
	bl	__aeabi_dcmplt
	cmp	r0, #0
	bne	.L211
	movs	r3, r4
	movs	r2, r5
.L212:
	movs	r5, #198
	ldr	r1, [sp, #36]
	adds	r1, r1, #99
	cmp	r5, r1
	sbcs	r5, r5, r5
	mov	r1, fp
	rsbs	r5, r5, #0
	adds	r5, r5, #4
	cmp	r1, #0
	bne	.LCB1048
	b	.L210	@long jump
.LCB1048:
	orrs	r3, r2
	beq	.L209
	movs	r0, r6
	movs	r1, r7
	ldr	r2, .L268+92
	ldr	r3, .L268+96
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	.L215
	movs	r2, #0
	movs	r0, r6
	movs	r1, r7
	ldr	r3, .L268+100
	bl	__aeabi_dcmplt
	cmp	r0, #0
	bne	.L209
.L215:
	ldr	r3, [sp, #144]
	cmp	r3, #0
	bne	.LCB1071
	b	.L210	@long jump
.LCB1071:
	ldr	r3, [sp, #52]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	ldr	r2, [sp, #144]
	subs	r3, r2, r3
	str	r3, [sp, #144]
	b	.L210
.L269:
	.align	2
.L268:
	.word	2146435071
	.word	-1048577
	.word	-2049
	.word	-1023
	.word	1352628731
	.word	1070810131
	.word	-1956591437
	.word	1069976104
	.word	1072693248
	.word	1073217536
	.word	1668236129
	.word	1070761895
	.word	158966641
	.word	1074434895
	.word	1071644672
	.word	-1145744106
	.word	1073900465
	.word	-17155601
	.word	1072049730
	.word	1076625408
	.word	1076101120
	.word	1075314688
	.word	1023
	.word	-350469331
	.word	1058682594
	.word	1093567616
.L211:
	ldr	r3, [sp, #36]
	movs	r2, #0
	subs	r3, r3, #1
	str	r3, [sp, #36]
	movs	r0, r4
	ldr	r3, .L270
	movs	r1, r5
	bl	__aeabi_ddiv
	movs	r2, r1
	movs	r1, r0
	movs	r3, r0
	str	r1, [sp, #40]
	str	r2, [sp, #44]
	b	.L212
.L230:
	movs	r3, #0
	movs	r4, #0
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	movs	r3, #0
	str	r3, [sp, #36]
.L209:
	ldr	r2, [sp, #144]
	ldr	r3, [sp, #36]
	cmp	r2, r3
	ble	.L232
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [sp, #144]
.L218:
	movs	r3, #128
	ldr	r2, [sp, #152]
	lsls	r3, r3, #3
	orrs	r2, r3
	movs	r3, #0
	movs	r5, #0
	str	r2, [sp, #152]
	str	r3, [sp, #36]
	b	.L210
.L266:
	movs	r2, #128
	lsls	r2, r2, #24
	mov	ip, r2
	ldr	r3, [sp, #136]
	movs	r6, r3
	ldr	r3, [sp, #140]
	add	r3, r3, ip
	movs	r7, r3
	b	.L205
.L232:
	movs	r3, #0
	str	r3, [sp, #144]
	b	.L218
.L271:
	.align	2
.L270:
	.word	1076101120
	.size	_etoa, .-_etoa
	.section	.rodata._ftoa.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"fni+\000"
	.align	2
.LC2:
	.ascii	"fni\000"
	.align	2
.LC4:
	.ascii	"nan\000"
	.align	2
.LC6:
	.ascii	"fni-\000"
	.global	__aeabi_d2uiz
	.global	__aeabi_ui2d
	.section	.text._ftoa,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_ftoa, %function
_ftoa:
	@ args = 20, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	mov	r7, r10
	push	{r5, r6, r7, lr}
	sub	sp, sp, #84
	mov	fp, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #124]
	str	r0, [sp, #40]
	movs	r1, r3
	movs	r0, r2
	ldr	r5, [sp, #128]
	bl	__aeabi_dcmpun
	cmp	r0, #0
	beq	.LCB1204
	b	.L381	@long jump
.LCB1204:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	movs	r2, #1
	ldr	r3, .L392
	rsbs	r2, r2, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB1212
	b	.L382	@long jump
.LCB1212:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	movs	r2, #1
	ldr	r3, .L392+4
	rsbs	r2, r2, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.LCB1220
	b	.L383	@long jump
.LCB1220:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	movs	r2, #0
	ldr	r3, .L392+8
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.LCB1227
	b	.L281	@long jump
.LCB1227:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	movs	r2, #0
	ldr	r3, .L392+12
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB1234
	b	.L281	@long jump
.LCB1234:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB1241
	b	.L384	@long jump
.LCB1241:
	movs	r3, #0
	str	r3, [sp, #44]
	movs	r3, #128
	ldr	r4, [sp, #136]
	ldr	r2, [sp, #136]
	lsls	r3, r3, #3
	ands	r4, r3
	tst	r2, r3
	bne	.LCB1250
	b	.L318	@long jump
.LCB1250:
.L388:
	cmp	r5, #9
	bhi	.LCB1253
	b	.L287	@long jump
.LCB1253:
	add	r1, sp, #24
	mov	ip, r1
	movs	r4, r5
	movs	r2, #23
	movs	r3, #0
	movs	r1, #48
	subs	r4, r4, #9
	add	r2, r2, ip
.L288:
	adds	r3, r3, #1
	strb	r1, [r2, r3]
	subs	r7, r5, r3
	cmp	r3, #32
	bne	.LCB1269
	b	.L319	@long jump
.LCB1269:
	cmp	r3, r4
	bne	.L288
.L377:
	movs	r2, #0
	ldr	r3, .L392+8
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L286:
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	bl	__aeabi_d2iz
	movs	r5, r0
	bl	__aeabi_i2d
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	bl	__aeabi_dsub
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	bl	__aeabi_dmul
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	bl	__aeabi_d2uiz
	movs	r6, r0
	bl	__aeabi_ui2d
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	bl	__aeabi_dsub
	movs	r2, #0
	ldr	r3, .L392+16
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	bne	.LCB1304
	b	.L368	@long jump
.LCB1304:
	adds	r6, r6, #1
	movs	r0, r6
	bl	__aeabi_ui2d
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	.L291
	movs	r6, #0
	adds	r5, r5, #1
.L291:
	mov	r10, r5
	cmp	r7, #0
	beq	.LCB1320
	b	.L294	@long jump
.LCB1320:
	movs	r0, r5
	bl	__aeabi_i2d
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [sp, #120]
	ldr	r1, [sp, #124]
	bl	__aeabi_dsub
	ldr	r3, .L392+16
	movs	r2, #0
	movs	r6, r0
	movs	r7, r1
	bl	__aeabi_dcmplt
	add	r3, sp, #48
	mov	r10, r3
	cmp	r0, #0
	bne	.L302
	movs	r2, #0
	movs	r0, r6
	movs	r1, r7
	ldr	r3, .L392+16
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	bne	.L302
	lsls	r3, r5, #31
	bpl	.L302
	adds	r5, r5, #1
	b	.L302
.L281:
	ldr	r3, [sp, #136]
	mov	r2, r8
	str	r3, [sp, #16]
	ldr	r3, [sp, #132]
	mov	r1, fp
	str	r3, [sp, #12]
	ldr	r0, [sp, #40]
	ldr	r3, [sp, #120]
	ldr	r4, [sp, #124]
	str	r5, [sp, #8]
	str	r3, [sp]
	str	r4, [sp, #4]
	mov	r3, r9
	bl	_etoa
.L272:
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L383:
	ldr	r3, [sp, #136]
	lsls	r3, r3, #29
	bmi	.L385
	movs	r2, #3
	ldr	r3, .L392+20
.L280:
	ldr	r1, [sp, #136]
	str	r2, [sp, #4]
	str	r1, [sp, #12]
	ldr	r1, [sp, #132]
	str	r1, [sp, #8]
.L380:
	str	r3, [sp]
	mov	r2, r8
	mov	r3, r9
	mov	r1, fp
	ldr	r0, [sp, #40]
	bl	_out_rev
	b	.L272
.L303:
	add	r2, sp, #24
	mov	ip, r2
	movs	r3, #23
	movs	r0, r5
	add	r3, r3, ip
	movs	r1, #10
	adds	r4, r4, #1
	adds	r6, r3, r4
	bl	__aeabi_idivmod
	adds	r1, r1, #48
	movs	r0, r5
	strb	r1, [r6]
	movs	r1, #10
	bl	__aeabi_idiv
	subs	r5, r0, #0
	beq	.L301
.L302:
	cmp	r4, #32
	bne	.L303
	movs	r3, #3
	ldr	r2, [sp, #136]
	ands	r3, r2
	cmp	r3, #1
	bne	.L311
	ldr	r3, [sp, #132]
	cmp	r3, #0
	beq	.L311
.L315:
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.LCB1443
	b	.L306	@long jump
.LCB1443:
	ldr	r2, [sp, #136]
	adds	r3, r3, #12
	tst	r3, r2
	beq	.LCB1448
	b	.L306	@long jump
.LCB1448:
	ldr	r3, [sp, #132]
	cmp	r3, r4
	bhi	.LCB1451
	b	.L386	@long jump
.LCB1451:
.L308:
	add	r3, sp, #24
	mov	ip, r3
	movs	r2, #23
	movs	r3, #48
	add	r2, r2, ip
	b	.L379
.L312:
	ldr	r1, [sp, #132]
	adds	r4, r4, #1
	strb	r3, [r2, r4]
	cmp	r4, r1
	beq	.L305
.L379:
	cmp	r4, #32
	bne	.L312
	movs	r4, #32
.L311:
	ldr	r3, [sp, #136]
	str	r4, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #132]
	str	r3, [sp, #8]
	mov	r3, r10
	b	.L380
.L299:
	add	r2, sp, #24
	mov	ip, r2
	movs	r3, #23
	movs	r1, #10
	add	r3, r3, ip
	movs	r0, r6
	adds	r4, r4, #1
	adds	r5, r3, r4
	bl	__aeabi_uidivmod
	adds	r1, r1, #48
	strb	r1, [r5]
	movs	r0, r6
	movs	r1, #10
	subs	r7, r7, #1
	bl	__aeabi_uidiv
	cmp	r6, #9
	bls	.L387
	movs	r6, r0
.L294:
	cmp	r4, #32
	bne	.L299
	mov	r5, r10
.L296:
	add	r3, sp, #48
	movs	r4, #32
	mov	r10, r3
	b	.L302
.L385:
	movs	r2, #4
	ldr	r3, .L392+24
	b	.L280
.L384:
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #124]
	movs	r0, #0
	movs	r1, #0
	bl	__aeabi_dsub
	movs	r3, #1
	str	r3, [sp, #44]
	movs	r3, #128
	ldr	r4, [sp, #136]
	ldr	r2, [sp, #136]
	lsls	r3, r3, #3
	str	r0, [sp, #120]
	str	r1, [sp, #124]
	ands	r4, r3
	tst	r2, r3
	beq	.LCB1536
	b	.L388	@long jump
.LCB1536:
.L318:
	movs	r2, #0
	ldr	r3, .L392+28
	movs	r7, #6
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	b	.L286
.L382:
	ldr	r3, [sp, #136]
	str	r3, [sp, #12]
	ldr	r3, [sp, #132]
	str	r3, [sp, #8]
	movs	r3, #4
	str	r3, [sp, #4]
	ldr	r3, .L392+32
	b	.L380
.L368:
	movs	r2, #0
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	ldr	r3, .L392+16
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	.LCB1563
	b	.L291	@long jump
.LCB1563:
	cmp	r6, #0
	bne	.L389
	adds	r6, r6, #1
	b	.L291
.L301:
	movs	r3, #3
	ldr	r2, [sp, #136]
	ands	r3, r2
	cmp	r3, #1
	beq	.L390
.L305:
	cmp	r4, #32
	beq	.L311
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L310
	movs	r3, #45
	mov	r2, r10
	strb	r3, [r2, r4]
	adds	r4, r4, #1
	b	.L311
.L387:
	mov	r5, r10
	cmp	r4, #32
	beq	.L296
	movs	r3, #48
	adds	r2, r7, r4
	cmp	r7, #0
	beq	.L298
.L300:
	movs	r0, #23
	add	r1, sp, #24
	adds	r4, r4, #1
	adds	r1, r1, r0
	strb	r3, [r1, r4]
	cmp	r4, #32
	beq	.L296
	cmp	r4, r2
	bne	.L300
.L298:
	add	r3, sp, #48
	mov	r10, r3
	movs	r3, #46
	mov	r2, r10
	strb	r3, [r2, r4]
	adds	r4, r4, #1
	b	.L302
.L319:
	movs	r4, #32
	b	.L377
.L386:
	cmp	r4, #32
	beq	.L311
.L310:
	ldr	r3, [sp, #136]
	lsls	r3, r3, #29
	bmi	.L391
	ldr	r3, [sp, #136]
	lsls	r3, r3, #28
	bmi	.LCB1638
	b	.L311	@long jump
.LCB1638:
	movs	r3, #32
	mov	r2, r10
	strb	r3, [r2, r4]
	adds	r4, r4, #1
	b	.L311
.L391:
	movs	r3, #43
	mov	r2, r10
	strb	r3, [r2, r4]
	adds	r4, r4, #1
	b	.L311
.L393:
	.align	2
.L392:
	.word	-1048577
	.word	2146435071
	.word	1104006501
	.word	-1043477147
	.word	1071644672
	.word	.LC2
	.word	.LC0
	.word	1093567616
	.word	.LC6
.L389:
	lsls	r3, r6, #31
	bmi	.LCB1674
	b	.L291	@long jump
.LCB1674:
	adds	r6, r6, #1
	b	.L291
.L306:
	ldr	r3, [sp, #132]
	subs	r3, r3, #1
	str	r3, [sp, #132]
	cmp	r3, r4
	bls	.LCB1684
	b	.L308	@long jump
.LCB1684:
	b	.L305
.L381:
	ldr	r3, [sp, #136]
	str	r3, [sp, #12]
	ldr	r3, [sp, #132]
	str	r3, [sp, #8]
	movs	r3, #3
	str	r3, [sp, #4]
	ldr	r3, .L394
	b	.L380
.L287:
	ldr	r3, .L394+4
	lsls	r2, r5, #3
	adds	r3, r3, r2
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	movs	r7, r5
	str	r3, [sp, #24]
	str	r4, [sp, #28]
	movs	r4, #0
	b	.L286
.L390:
	ldr	r3, [sp, #132]
	cmp	r3, #0
	beq	.L305
	b	.L315
.L395:
	.align	2
.L394:
	.word	.LC4
	.word	pow10.0
	.size	_ftoa, .-_ftoa
	.global	__aeabi_uldivmod
	.section	.text._vsnprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	_vsnprintf, %function
_vsnprintf:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	sub	sp, sp, #148
	movs	r7, r3
	ldr	r3, [sp, #184]
	mov	r9, r2
	str	r3, [sp, #52]
	ldr	r2, .L662
	ldr	r3, .L662+4
	mov	r10, r0
	mov	fp, r1
	str	r2, [r3]
	cmp	r1, #0
	bne	.LCB1746
	b	.L630	@long jump
.LCB1746:
	movs	r3, #0
	ldrb	r0, [r7]
	mov	r8, r3
	cmp	r0, #0
	bne	.LCB1751
	b	.L606	@long jump
.LCB1751:
.L645:
	ldr	r3, .L662+8
	mov	r4, r8
	str	r3, [sp, #48]
	ldr	r3, .L662+12
	mov	r5, r10
	mov	r6, r9
	str	r3, [sp, #56]
	b	.L530
.L428:
	adds	r3, r4, #1
	mov	r8, r3
	movs	r2, r4
	movs	r3, r6
	mov	r1, fp
	blx	r5
	mov	r4, r8
.L400:
	ldrb	r0, [r7]
	cmp	r0, #0
	bne	.LCB1775
	b	.L631	@long jump
.LCB1775:
.L530:
	adds	r7, r7, #1
	cmp	r0, #37
	bne	.L428
	movs	r3, #8
	mov	r10, r3
	subs	r3, r3, #4
	mov	r9, r3
	subs	r3, r3, #2
	mov	r8, r3
	subs	r3, r3, #1
	movs	r2, #0
	mov	ip, r3
	str	r4, [sp, #44]
.L399:
	ldrb	r0, [r7]
	adds	r1, r7, #1
	movs	r3, r0
	subs	r3, r3, #32
	uxtb	r3, r3
	cmp	r3, #16
	bhi	.L401
	ldr	r4, [sp, #48]
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	mov	pc, r3
	.section	.rodata._vsnprintf,"a",%progbits
	.align	2
.L403:
	.word	.L407
	.word	.L401
	.word	.L401
	.word	.L406
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L405
	.word	.L401
	.word	.L404
	.word	.L401
	.word	.L401
	.word	.L402
	.section	.text._vsnprintf
.L401:
	movs	r3, r0
	subs	r3, r3, #48
	ldr	r4, [sp, #44]
	str	r2, [sp, #44]
	cmp	r3, #9
	bls	.L632
	movs	r3, #0
	mov	r8, r3
	cmp	r0, #42
	bne	.LCB1822
	b	.L633	@long jump
.LCB1822:
.L411:
	movs	r3, #0
	mov	r10, r3
	cmp	r0, #46
	beq	.L634
.L414:
	movs	r3, r0
	subs	r3, r3, #104
	uxtb	r3, r3
	cmp	r3, #18
	bhi	.L418
	ldr	r2, [sp, #56]
	lsls	r3, r3, #2
	ldr	r3, [r2, r3]
	mov	pc, r3
	.section	.rodata._vsnprintf
	.align	2
.L420:
	.word	.L423
	.word	.L418
	.word	.L422
	.word	.L418
	.word	.L421
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L419
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L418
	.word	.L419
	.section	.text._vsnprintf
.L402:
	mov	r3, ip
	movs	r7, r1
	orrs	r2, r3
	b	.L399
.L404:
	mov	r3, r8
	movs	r7, r1
	orrs	r2, r3
	b	.L399
.L405:
	mov	r3, r9
	movs	r7, r1
	orrs	r2, r3
	b	.L399
.L406:
	movs	r3, #16
	movs	r7, r1
	orrs	r2, r3
	b	.L399
.L407:
	mov	r3, r10
	movs	r7, r1
	orrs	r2, r3
	b	.L399
.L419:
	movs	r3, #128
	lsls	r3, r3, #1
.L621:
	ldr	r2, [sp, #44]
	ldrb	r0, [r7, #1]
	orrs	r2, r3
	str	r2, [sp, #44]
	adds	r1, r1, #1
.L418:
	movs	r7, r1
	cmp	r0, #103
	bhi	.L426
	cmp	r0, #36
	bls	.L428
	movs	r3, r0
	subs	r3, r3, #37
	uxtb	r3, r3
	cmp	r3, #66
	bhi	.L428
	ldr	r1, .L662+16
	lsls	r3, r3, #2
	ldr	r3, [r1, r3]
	mov	pc, r3
	.section	.rodata._vsnprintf
	.align	2
.L433:
	.word	.L437
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L432
	.word	.L434
	.word	.L432
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L435
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L428
	.word	.L435
	.word	.L436
	.word	.L435
	.word	.L432
	.word	.L434
	.word	.L432
	.section	.text._vsnprintf
.L632:
	movs	r3, #0
	mov	r8, r3
	ldr	r3, [sp, #44]
	mov	r7, r8
	mov	ip, r3
	b	.L408
.L570:
	adds	r1, r1, #1
.L408:
	lsls	r3, r7, #2
	adds	r3, r3, r7
	lsls	r3, r3, #1
	adds	r7, r3, r0
	ldrb	r0, [r1]
	subs	r7, r7, #48
	movs	r3, r0
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L570
	mov	r3, ip
	str	r3, [sp, #44]
	movs	r3, #0
	mov	r8, r7
	mov	r10, r3
	movs	r7, r1
	adds	r1, r1, #1
	cmp	r0, #46
	bne	.L414
.L634:
	movs	r0, #128
	ldr	r2, [sp, #44]
	lsls	r0, r0, #3
	orrs	r2, r0
	str	r2, [sp, #44]
	movs	r2, #48
	rsbs	r2, r2, #0
	mov	ip, r2
	ldrb	r0, [r7, #1]
	movs	r3, r1
	add	ip, ip, r0
	mov	r2, ip
	cmp	r2, #9
	bhi	.LCB1959
	b	.L635	@long jump
.LCB1959:
	cmp	r0, #42
	bne	.LCB1961
	b	.L636	@long jump
.LCB1961:
	movs	r7, r1
	adds	r1, r1, #1
	b	.L414
.L631:
	mov	r8, r4
	mov	r10, r5
	mov	r9, r6
.L531:
	cmp	r8, r9
	bcc	.L532
	movs	r3, #1
	rsbs	r3, r3, #0
	add	r3, r3, r9
	mov	r8, r3
.L532:
	mov	r3, r9
	mov	r2, r8
	mov	r1, fp
	movs	r0, #0
	blx	r10
	movs	r0, r4
	add	sp, sp, #148
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L426:
	movs	r1, r0
	subs	r1, r1, #105
	uxtb	r1, r1
	cmp	r1, #15
	bls	.LCB2008
	b	.L428	@long jump
.LCB2008:
	movs	r3, #1
	lsls	r3, r3, r1
	mov	ip, r3
	ldr	r3, .L662+20
	mov	r9, r3
	mov	r3, ip
	mov	r2, r9
	ands	r3, r2
	str	r3, [sp, #60]
	mov	r2, ip
	mov	r3, r9
	tst	r2, r3
	beq	.LCB2021
	b	.L429	@long jump
.LCB2021:
	cmp	r1, #10
	beq	.L430
	cmp	r1, #7
	beq	.LCB2025
	b	.L428	@long jump
.LCB2025:
	ldr	r3, [sp, #52]
	ldmia	r3!, {r1}
	mov	r8, r3
	cmp	r1, #0
	beq	.LCB2030
	b	.L637	@long jump
.LCB2030:
	ldr	r3, [sp, #44]
	movs	r1, #16
	movs	r2, r3
	bics	r2, r1
	movs	r0, r2
	adds	r1, r1, #17
	orrs	r0, r1
	mov	r9, r0
	movs	r0, #128
	movs	r2, r3
	lsls	r0, r0, #3
	ands	r2, r0
	movs	r1, r2
	tst	r3, r0
	bne	.L526
.L525:
	add	r3, sp, #80
	mov	ip, r3
	movs	r2, #31
	movs	r3, #15
	add	r2, r2, ip
	str	r5, [sp, #52]
	mov	ip, r3
	movs	r5, r2
	ldr	r3, [sp, #60]
	str	r4, [sp, #44]
	b	.L529
.L638:
	cmp	r3, #32
	beq	.L618
	movs	r1, r2
.L529:
	mov	r4, ip
	ands	r4, r1
	movs	r0, r4
	adds	r0, r0, #55
	cmp	r4, #9
	bhi	.L528
	subs	r0, r0, #7
.L528:
	adds	r3, r3, #1
	strb	r0, [r5, r3]
	lsrs	r2, r1, #4
	cmp	r1, #15
	bhi	.L638
.L618:
	ldr	r4, [sp, #44]
	ldr	r5, [sp, #52]
	str	r3, [sp, #60]
.L526:
	mov	r3, r9
	movs	r2, #8
	str	r3, [sp, #24]
	mov	r3, r10
	str	r2, [sp, #20]
	adds	r2, r2, #8
	str	r2, [sp, #12]
	movs	r2, #0
	str	r3, [sp, #16]
	ldr	r3, [sp, #60]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	add	r3, sp, #112
	movs	r2, r4
	str	r3, [sp]
	mov	r1, fp
	movs	r3, r6
	movs	r0, r5
	bl	_ntoa_format
	mov	r3, r8
	movs	r4, r0
	str	r3, [sp, #52]
	b	.L400
.L633:
	ldr	r3, [sp, #52]
	ldmia	r3!, {r2}
	mov	r8, r2
	cmp	r2, #0
	blt	.L639
	ldrb	r0, [r7, #1]
	str	r3, [sp, #52]
	movs	r7, r1
	adds	r1, r1, #1
	b	.L411
.L430:
	ldr	r3, [sp, #52]
	ldmia	r3!, {r1}
	str	r3, [sp, #80]
	ldrb	r3, [r1]
	mov	ip, r3
	movs	r0, r3
	mov	r3, r10
	cmp	r3, #0
	bne	.LCB2138
	b	.L505	@long jump
.LCB2138:
	cmp	r0, #0
	beq	.L506
	mov	r3, r10
	subs	r3, r3, #1
.L507:
	adds	r3, r3, #1
	mov	r9, r3
	str	r4, [sp, #52]
	ldr	r4, [sp, #44]
	add	r9, r9, r1
	mov	r2, r9
	movs	r3, r1
	mov	r9, r4
	b	.L509
.L508:
	cmp	r3, r2
	beq	.L624
.L509:
	ldrb	r4, [r3, #1]
	adds	r3, r3, #1
	cmp	r4, #0
	bne	.L508
.L624:
	mov	r2, r9
	subs	r3, r3, r1
	ldr	r4, [sp, #52]
	str	r2, [sp, #44]
	str	r3, [sp, #60]
.L506:
	movs	r3, #128
	lsls	r3, r3, #3
	mov	r9, r3
	ldr	r2, [sp, #44]
	ands	r3, r2
	str	r3, [sp, #52]
	mov	r3, r9
	tst	r2, r3
	beq	.L510
	ldr	r3, [sp, #60]
	cmp	r3, r10
	bls	.L510
	mov	r3, r10
	str	r3, [sp, #60]
.L510:
	movs	r3, #2
	mov	r9, r3
	ldr	r2, [sp, #44]
	ands	r3, r2
	str	r3, [sp, #44]
	mov	r3, r9
	tst	r3, r2
	bne	.LCB2196
	b	.L640	@long jump
.LCB2196:
	mov	r3, ip
	cmp	r3, #0
	bne	.LCB2199
	b	.L625	@long jump
.LCB2199:
.L517:
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.LCB2203
	b	.L555	@long jump
.LCB2203:
	subs	r3, r1, r4
	mov	r9, r10
	movs	r1, r6
	mov	r10, r3
	movs	r3, r7
	add	r9, r9, r4
	movs	r6, r5
	mov	r7, fp
	mov	r5, r9
	movs	r2, r4
	mov	fp, r3
	mov	r9, r1
	b	.L521
.L642:
	mov	r3, r9
	movs	r1, r7
	adds	r4, r2, #1
	blx	r6
	mov	r3, r10
	ldrb	r0, [r3, r4]
	cmp	r0, #0
	bne	.LCB2230
	b	.L641	@long jump
.LCB2230:
	movs	r2, r4
.L521:
	cmp	r5, r2
	bne	.L642
	mov	r3, r9
	mov	r2, fp
	mov	r9, r5
	mov	fp, r7
	movs	r5, r6
	movs	r7, r2
	movs	r6, r3
	mov	r4, r9
.L516:
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.LCB2251
	b	.L625	@long jump
.LCB2251:
.L627:
	ldr	r3, [sp, #80]
	str	r3, [sp, #52]
	b	.L400
.L663:
	.align	2
.L662:
	.word	_vsnprintf
	.word	lazy_vsnprintf
	.word	.L403
	.word	.L420
	.word	.L433
	.word	36929
.L639:
	ldr	r2, [sp, #44]
	subs	r0, r0, #40
	orrs	r2, r0
	str	r2, [sp, #44]
	mov	r2, r8
	rsbs	r2, r2, #0
	ldrb	r0, [r7, #1]
	mov	r8, r2
	movs	r7, r1
	str	r3, [sp, #52]
	adds	r1, r1, #1
	b	.L411
.L421:
	ldrb	r0, [r7, #1]
	cmp	r0, #108
	bne	.LCB2287
	b	.L424	@long jump
.LCB2287:
	movs	r3, #128
	ldr	r2, [sp, #44]
	lsls	r3, r3, #1
	orrs	r2, r3
	str	r2, [sp, #44]
	adds	r1, r1, #1
	b	.L418
.L422:
	movs	r3, #128
	lsls	r3, r3, #2
	b	.L621
.L423:
	ldrb	r0, [r7, #1]
	cmp	r0, #104
	bne	.LCB2306
	b	.L425	@long jump
.LCB2306:
	movs	r3, #128
	ldr	r2, [sp, #44]
	adds	r1, r1, #1
	orrs	r2, r3
	str	r2, [sp, #44]
	b	.L418
.L432:
	cmp	r0, #103
	bne	.LCB2317
	b	.L496	@long jump
.LCB2317:
	cmp	r0, #71
	bne	.LCB2319
	b	.L497	@long jump
.LCB2319:
	cmp	r0, #69
	bne	.LCB2321
	b	.L498	@long jump
.LCB2321:
.L499:
	ldr	r2, [sp, #44]
	movs	r1, #7
	str	r2, [sp, #16]
	mov	r2, r8
	ldr	r3, [sp, #52]
	str	r2, [sp, #12]
	adds	r3, r3, #7
	mov	r2, r10
	bics	r3, r1
	movs	r1, r3
	str	r2, [sp, #8]
	ldmia	r1!, {r2, r3}
	movs	r0, r5
	str	r2, [sp]
	str	r3, [sp, #4]
	str	r1, [sp, #52]
	movs	r2, r4
	movs	r3, r6
	mov	r1, fp
	bl	_etoa
	movs	r4, r0
	b	.L400
.L434:
	cmp	r0, #70
	bne	.LCB2350
	b	.L643	@long jump
.LCB2350:
.L495:
	ldr	r2, [sp, #44]
	movs	r1, #7
	str	r2, [sp, #16]
	mov	r2, r8
	ldr	r3, [sp, #52]
	str	r2, [sp, #12]
	adds	r3, r3, #7
	mov	r2, r10
	bics	r3, r1
	movs	r1, r3
	str	r2, [sp, #8]
	ldmia	r1!, {r2, r3}
	movs	r0, r5
	str	r2, [sp]
	str	r3, [sp, #4]
	str	r1, [sp, #52]
	movs	r2, r4
	movs	r3, r6
	mov	r1, fp
	bl	_ftoa
	movs	r4, r0
	b	.L400
.L437:
	adds	r3, r4, #1
	mov	r8, r3
	movs	r2, r4
	movs	r3, r6
	mov	r1, fp
	movs	r0, #37
	blx	r5
	mov	r4, r8
	b	.L400
.L436:
	ldr	r3, [sp, #52]
	adds	r3, r3, #4
	str	r3, [sp, #60]
	adds	r3, r4, #1
	mov	r9, r3
	ldr	r3, [sp, #44]
	lsls	r2, r3, #30
	bmi	.LCB2399
	b	.L644	@long jump
.LCB2399:
	ldr	r3, [sp, #52]
	movs	r2, r4
	ldrb	r0, [r3]
	mov	r1, fp
	movs	r3, r6
	blx	r5
	mov	r3, r8
	add	r4, r4, r8
	cmp	r3, #1
	bhi	.LCB2410
	b	.L533	@long jump
.LCB2410:
	mov	r8, r6
	movs	r6, r5
	movs	r5, r4
	mov	r4, r9
	mov	r9, r7
	mov	r7, fp
.L504:
	movs	r2, r4
	mov	r3, r8
	adds	r4, r4, #1
	movs	r1, r7
	movs	r0, #32
	blx	r6
	cmp	r4, r5
	bne	.L504
	movs	r4, r5
	mov	fp, r7
	movs	r5, r6
	mov	r7, r9
	mov	r6, r8
.L503:
	ldr	r3, [sp, #60]
	str	r3, [sp, #52]
	b	.L400
.L630:
	ldr	r3, .L664
	ldrb	r0, [r7]
	mov	r10, r3
	movs	r3, #0
	mov	r8, r3
	cmp	r0, #0
	beq	.LCB2446
	b	.L645	@long jump
.LCB2446:
.L606:
	movs	r4, #0
	b	.L531
.L429:
	cmp	r0, #111
	beq	.L646
	bhi	.LCB2456
	b	.L647	@long jump
.LCB2456:
	movs	r3, #16
	cmp	r0, #120
	bne	.LCB2459
	b	.L545	@long jump
.LCB2459:
	ldr	r2, [sp, #44]
	bics	r2, r3
	str	r2, [sp, #44]
.L622:
	movs	r3, #10
	mov	ip, r3
	movs	r3, #0
	str	r3, [sp, #80]
	adds	r3, r3, #10
	str	r3, [sp, #60]
	b	.L439
.L635:
	mov	r7, r10
	ldr	r2, [sp, #44]
.L416:
	lsls	r1, r7, #2
	adds	r1, r1, r7
	lsls	r1, r1, #1
	adds	r3, r3, #1
	adds	r7, r1, r0
	ldrb	r0, [r3]
	subs	r7, r7, #48
	movs	r1, r0
	subs	r1, r1, #48
	cmp	r1, #9
	bls	.L416
	mov	r10, r7
	str	r2, [sp, #44]
	movs	r7, r3
	adds	r1, r3, #1
	b	.L414
.L636:
	ldr	r3, [sp, #52]
	ldrb	r0, [r7, #2]
	ldmia	r3!, {r2}
	adds	r7, r7, #2
	mvns	r1, r2
	asrs	r1, r1, #31
	ands	r2, r1
	mov	r10, r2
	str	r3, [sp, #52]
	adds	r1, r7, #1
	b	.L414
.L505:
	cmp	r0, #0
	bne	.LCB2515
	b	.L506	@long jump
.LCB2515:
	movs	r3, #2
	rsbs	r3, r3, #0
	b	.L507
.L637:
	movs	r0, #33
	ldr	r2, [sp, #44]
	orrs	r2, r0
	mov	r9, r2
	b	.L525
.L643:
	movs	r3, #32
	ldr	r2, [sp, #44]
	orrs	r2, r3
	str	r2, [sp, #44]
	b	.L495
.L496:
	movs	r3, #128
	ldr	r2, [sp, #44]
	lsls	r3, r3, #4
	orrs	r2, r3
	str	r2, [sp, #44]
	b	.L499
.L646:
	movs	r3, #8
	mov	ip, r3
	movs	r3, #0
	str	r3, [sp, #80]
	adds	r3, r3, #8
	str	r3, [sp, #60]
.L439:
	ldr	r0, [sp, #44]
	movs	r3, #128
	movs	r2, r0
	lsls	r3, r3, #3
	ands	r2, r3
	movs	r1, r2
	movs	r2, r0
	tst	r0, r3
	beq	.LCB2563
	b	.L648	@long jump
.LCB2563:
	movs	r3, #12
	bics	r2, r3
	movs	r0, r2
.L447:
	movs	r3, #128
	movs	r2, r0
	lsls	r3, r3, #2
	ands	r2, r3
	str	r2, [sp, #44]
	tst	r0, r3
	beq	.LCB2575
	b	.L649	@long jump
.LCB2575:
	movs	r3, #128
	movs	r2, r0
	lsls	r3, r3, #1
	ands	r2, r3
	mov	r9, r2
	ldr	r2, [sp, #52]
	adds	r2, r2, #4
	str	r2, [sp, #80]
	tst	r0, r3
	beq	.LCB2585
	b	.L650	@long jump
.LCB2585:
	lsls	r3, r0, #25
	bpl	.LCB2589
	b	.L651	@long jump
.LCB2589:
	lsls	r3, r0, #24
	bmi	.LCB2593
	b	.L487	@long jump
.LCB2593:
	ldr	r3, [sp, #52]
	ldrh	r3, [r3]
	str	r3, [sp, #36]
.L486:
	cmp	r3, #0
	beq	.LCB2602
	b	.L488	@long jump
.LCB2602:
	adds	r3, r3, #16
	bics	r0, r3
	cmp	r1, #0
	bne	.LCB2606
	b	.L488	@long jump
.LCB2606:
	movs	r3, #0
	mov	r9, r3
.L489:
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	ldr	r3, [sp, #60]
	str	r0, [sp, #24]
	str	r3, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #8]
	mov	r3, r9
.L626:
	str	r3, [sp, #4]
	add	r3, sp, #112
	movs	r2, r4
	str	r3, [sp]
	mov	r1, fp
	movs	r3, r6
	movs	r0, r5
	bl	_ntoa_format
	movs	r4, r0
	b	.L627
.L435:
	cmp	r0, #88
	beq	.L441
	cmp	r0, #98
	beq	.LCB2639
	b	.L652	@long jump
.LCB2639:
	movs	r3, #2
	mov	ip, r3
	movs	r3, #0
	str	r3, [sp, #80]
	adds	r3, r3, #2
	str	r3, [sp, #60]
	b	.L439
.L441:
	movs	r3, #32
	ldr	r2, [sp, #44]
	orrs	r2, r3
	str	r2, [sp, #44]
	subs	r3, r3, #16
.L545:
	mov	ip, r3
	movs	r3, #0
	str	r3, [sp, #80]
	adds	r3, r3, #16
	str	r3, [sp, #60]
	b	.L439
.L497:
	movs	r3, #128
	ldr	r2, [sp, #44]
	lsls	r3, r3, #4
	orrs	r2, r3
	str	r2, [sp, #44]
.L498:
	movs	r3, #32
	ldr	r2, [sp, #44]
	orrs	r2, r3
	str	r2, [sp, #44]
	b	.L499
.L555:
	subs	r3, r1, r4
	mov	r10, r3
	ldr	r3, [sp, #60]
	mov	r9, r3
	movs	r3, r7
	movs	r7, r6
	mov	r6, fp
	mov	fp, r3
.L520:
	movs	r2, r4
	movs	r3, r7
	movs	r1, r6
	blx	r5
	mov	r3, r10
	adds	r4, r4, #1
	ldrb	r0, [r3, r4]
	cmp	r0, #0
	bne	.L520
	mov	r3, r9
	str	r3, [sp, #60]
	mov	r3, fp
	mov	fp, r6
	movs	r6, r7
	movs	r7, r3
	b	.L516
.L425:
	movs	r3, #192
.L620:
	ldr	r2, [sp, #44]
	ldrb	r0, [r7, #2]
	orrs	r2, r3
	str	r2, [sp, #44]
	adds	r1, r7, #3
	b	.L418
.L424:
	movs	r3, #192
	lsls	r3, r3, #2
	b	.L620
.L648:
	movs	r3, #13
	bics	r2, r3
	movs	r0, r2
	b	.L447
.L641:
	mov	r3, fp
	movs	r5, r6
	mov	fp, r7
	mov	r6, r9
	movs	r7, r3
	b	.L516
.L644:
	mov	r3, r8
	cmp	r3, #1
	bls	.L501
	subs	r3, r4, #1
	add	r3, r3, r8
	movs	r2, r6
	movs	r6, r5
	movs	r5, r3
	movs	r3, r7
	mov	r10, r4
	mov	r7, fp
	mov	r9, r2
	mov	fp, r3
.L502:
	movs	r2, r4
	mov	r3, r9
	adds	r4, r4, #1
	movs	r1, r7
	movs	r0, #32
	blx	r6
	cmp	r4, r5
	bne	.L502
	mov	r3, fp
	movs	r5, r6
	mov	fp, r7
	mov	r6, r9
	mov	r9, r4
	mov	r4, r10
	movs	r7, r3
	ldr	r3, [sp, #52]
	mov	r2, r9
	ldrb	r0, [r3]
	mov	r1, fp
	movs	r3, r6
	add	r4, r4, r8
	blx	r5
	b	.L503
.L625:
	ldr	r3, [sp, #60]
	mov	r9, r4
	cmp	r8, r3
	bhi	.LCB2796
	b	.L627	@long jump
.LCB2796:
	add	r4, r4, r8
	subs	r4, r4, r3
	mov	r8, r6
	movs	r6, r5
	movs	r5, r4
	mov	r4, r9
	mov	r9, r7
	mov	r7, fp
.L523:
	movs	r2, r4
	mov	r3, r8
	adds	r4, r4, #1
	movs	r1, r7
	movs	r0, #32
	blx	r6
	cmp	r4, r5
	bne	.L523
	movs	r4, r5
	mov	fp, r7
	movs	r5, r6
	mov	r7, r9
	mov	r6, r8
	b	.L627
.L640:
	ldr	r0, [sp, #60]
	cmp	r8, r0
	bhi	.LCB2826
	b	.L513	@long jump
.LCB2826:
	mov	r3, r8
	adds	r2, r4, r3
	subs	r3, r2, r0
	movs	r2, r6
	movs	r6, r5
	movs	r5, r3
	movs	r3, r7
	mov	r9, r2
	mov	r7, fp
	mov	fp, r3
	str	r1, [sp, #60]
.L514:
	movs	r2, r4
	mov	r3, r9
	adds	r4, r4, #1
	movs	r1, r7
	movs	r0, #32
	blx	r6
	cmp	r4, r5
	bne	.L514
	mov	r3, fp
	mov	fp, r7
	movs	r7, r3
	mov	r3, r8
	ldr	r1, [sp, #60]
	adds	r3, r3, #1
	str	r3, [sp, #60]
	ldrb	r3, [r1]
	movs	r5, r6
	mov	ip, r3
	mov	r6, r9
.L515:
	mov	r0, ip
	cmp	r0, #0
	beq	.LCB2866
	b	.L517	@long jump
.LCB2866:
	b	.L627
.L651:
	ldr	r3, [sp, #52]
	ldrb	r3, [r3]
	str	r3, [sp, #36]
	b	.L486
.L501:
	ldr	r3, [sp, #52]
	movs	r2, r4
	ldrb	r0, [r3]
	mov	r1, fp
	movs	r3, r6
	blx	r5
.L533:
	mov	r4, r9
	b	.L503
.L649:
	ldr	r2, [sp, #52]
	subs	r3, r3, #250
	subs	r3, r3, #255
	adds	r2, r2, #7
	bics	r2, r3
	adds	r3, r3, #1
	mov	r9, r3
	add	r9, r9, r2
	mov	r3, r9
	str	r3, [sp, #52]
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	str	r2, [sp, #84]
	orrs	r2, r3
	bne	.L469
	adds	r2, r2, #16
	bics	r0, r2
	movs	r2, #0
	str	r2, [sp, #36]
	cmp	r1, #0
	beq	.LCB2915
	b	.L470	@long jump
.LCB2915:
.L469:
	movs	r2, #97
	lsls	r1, r0, #26
	bpl	.L472
	movs	r2, #65
.L472:
	uxtb	r2, r2
	str	r2, [sp, #40]
	add	r2, sp, #80
	mov	r9, r2
	ldr	r2, [sp, #40]
	movs	r1, #0
	subs	r2, r2, #10
	str	r2, [sp, #44]
	mov	r2, r8
	str	r2, [sp, #92]
	mov	r2, r10
	str	r2, [sp, #96]
	mov	r2, fp
	mov	r10, r6
	str	r1, [sp, #36]
	movs	r6, r3
	adds	r1, r1, #31
	ldr	r3, [sp, #80]
	add	r1, r1, r9
	mov	fp, r7
	str	r4, [sp, #88]
	str	r5, [sp, #104]
	movs	r4, #0
	mov	r7, ip
	mov	r8, r3
	mov	r9, r1
	ldr	r5, [sp, #84]
	str	r0, [sp, #100]
	str	r2, [sp, #108]
	b	.L476
.L654:
	adds	r2, r2, #48
	uxtb	r2, r2
.L474:
	mov	r3, r9
	adds	r4, r4, #1
	strb	r2, [r3, r4]
	cmp	r8, r5
	beq	.L653
.L562:
	cmp	r4, #32
	beq	.L615
	movs	r6, r0
	movs	r5, r1
.L476:
	movs	r2, r7
	movs	r3, #0
	movs	r0, r6
	movs	r1, r5
	bl	__aeabi_uldivmod
	uxtb	r2, r2
	cmp	r2, #9
	bls	.L654
	ldr	r3, [sp, #44]
	mov	ip, r3
	add	r2, r2, ip
	uxtb	r2, r2
	b	.L474
.L665:
	.align	2
.L664:
	.word	_out_null
.L488:
	movs	r3, #97
	lsls	r2, r0, #26
	bpl	.L491
	movs	r3, #65
.L491:
	uxtb	r3, r3
	subs	r3, r3, #10
	str	r3, [sp, #44]
	mov	r3, r8
	add	r1, sp, #80
	movs	r2, #31
	mov	ip, r1
	str	r3, [sp, #84]
	mov	r3, r10
	add	r2, r2, ip
	mov	r10, r6
	str	r4, [sp, #52]
	str	r7, [sp, #92]
	mov	r4, r9
	mov	r8, r0
	mov	r9, r5
	movs	r7, r2
	ldr	r5, [sp, #36]
	ldr	r6, [sp, #60]
	str	r3, [sp, #88]
	b	.L494
.L655:
	adds	r3, r3, #48
	uxtb	r3, r3
.L493:
	adds	r4, r4, #1
	strb	r3, [r7, r4]
	cmp	r5, r6
	bcc	.L617
	cmp	r4, #32
	beq	.L617
	movs	r5, r0
.L494:
	movs	r1, r6
	movs	r0, r5
	bl	__aeabi_uidivmod
	uxtb	r3, r1
	cmp	r1, #9
	bls	.L655
	ldr	r2, [sp, #44]
	mov	ip, r2
	add	r3, r3, ip
	uxtb	r3, r3
	b	.L493
.L617:
	ldr	r3, [sp, #84]
	mov	r0, r8
	mov	r8, r3
	ldr	r3, [sp, #88]
	mov	r5, r9
	mov	r6, r10
	mov	r9, r4
	mov	r10, r3
	ldr	r4, [sp, #52]
	ldr	r7, [sp, #92]
	b	.L489
.L653:
	cmp	r7, r6
	bls	.L562
.L615:
	ldr	r3, [sp, #92]
	mov	r6, r10
	mov	r8, r3
	ldr	r3, [sp, #96]
	mov	r7, fp
	mov	r10, r3
	ldr	r3, [sp, #108]
	str	r4, [sp, #36]
	mov	fp, r3
	ldr	r4, [sp, #88]
	ldr	r0, [sp, #100]
	ldr	r5, [sp, #104]
.L470:
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	ldr	r3, [sp, #60]
	str	r0, [sp, #24]
	str	r3, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #8]
	ldr	r3, [sp, #36]
.L629:
	str	r3, [sp, #4]
	add	r3, sp, #112
	movs	r2, r4
	str	r3, [sp]
	mov	r1, fp
	movs	r3, r6
	movs	r0, r5
	bl	_ntoa_format
	movs	r4, r0
	bl	.L400	@ far jump
.L647:
	movs	r3, #16
	ldr	r2, [sp, #44]
	bics	r2, r3
	str	r2, [sp, #60]
	cmp	r0, #105
	beq	.LCB3125
	b	.L656	@long jump
.LCB3125:
	ldr	r1, [sp, #44]
	movs	r3, #128
	movs	r2, r1
	lsls	r3, r3, #3
	ands	r2, r3
	movs	r0, r2
	movs	r2, r1
	tst	r1, r3
	beq	.L445
.L623:
	movs	r1, #17
	movs	r0, r3
	bics	r2, r1
	str	r2, [sp, #60]
.L445:
	ldr	r2, [sp, #60]
	movs	r3, #128
	movs	r1, r2
	lsls	r3, r3, #2
	ands	r1, r3
	mov	ip, r1
	tst	r2, r3
	bne	.L657
	movs	r3, #128
	movs	r1, r2
	lsls	r3, r3, #1
	ands	r1, r3
	mov	r9, r1
	ldr	r1, [sp, #52]
	adds	r1, r1, #4
	str	r1, [sp, #44]
	tst	r2, r3
	beq	.LCB3159
	b	.L658	@long jump
.LCB3159:
	movs	r3, r2
	lsls	r3, r3, #25
	bmi	.LCB3164
	b	.L461	@long jump
.LCB3164:
	ldr	r3, [sp, #52]
	ldrb	r3, [r3]
	movs	r2, r3
.L462:
	lsrs	r1, r3, #31
	str	r1, [sp, #52]
	cmp	r3, #0
	bne	.LCB3176
	b	.L464	@long jump
.LCB3176:
	movs	r0, r2
.L465:
	add	r2, sp, #80
	mov	ip, r2
	mov	r2, r8
	movs	r3, #31
	str	r2, [sp, #84]
	mov	r2, r10
	add	r3, r3, ip
	mov	r8, r5
	mov	r10, r7
	mov	r5, r9
	str	r4, [sp, #80]
	mov	r9, r6
	movs	r4, r0
	movs	r7, r3
	str	r2, [sp, #88]
	b	.L467
.L659:
	cmp	r5, #32
	beq	.L614
.L467:
	movs	r0, r4
	movs	r1, #10
	bl	__aeabi_uidivmod
	adds	r5, r5, #1
	adds	r6, r7, r5
	adds	r1, r1, #48
	strb	r1, [r6]
	movs	r0, r4
	movs	r1, #10
	bl	__aeabi_uidiv
	movs	r6, r4
	movs	r4, r0
	cmp	r6, #9
	bhi	.L659
.L614:
	ldr	r3, [sp, #84]
	mov	r6, r9
	mov	r9, r5
	mov	r5, r8
	mov	r8, r3
	ldr	r3, [sp, #88]
	mov	r7, r10
	mov	r10, r3
	ldr	r4, [sp, #80]
.L466:
	ldr	r3, [sp, #60]
	str	r3, [sp, #24]
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	movs	r3, #10
	str	r3, [sp, #12]
	ldr	r3, [sp, #52]
	str	r3, [sp, #8]
	mov	r3, r9
.L628:
	str	r3, [sp, #4]
	add	r3, sp, #112
	movs	r2, r4
	str	r3, [sp]
	mov	r1, fp
	movs	r3, r6
	movs	r0, r5
	bl	_ntoa_format
	ldr	r3, [sp, #44]
	movs	r4, r0
	str	r3, [sp, #52]
	bl	.L400	@ far jump
.L657:
	movs	r2, #7
	ldr	r3, [sp, #52]
	adds	r3, r3, #7
	bics	r3, r2
	adds	r2, r2, #1
	mov	ip, r2
	add	ip, ip, r3
	mov	r2, ip
	str	r2, [sp, #52]
	ldmia	r3, {r2, r3}
	lsrs	r1, r3, #31
	str	r1, [sp, #44]
	movs	r1, r2
	orrs	r1, r3
	bne	.LCB3274
	b	.L449	@long jump
.LCB3274:
	asrs	r1, r3, #31
	str	r1, [sp, #76]
	str	r1, [sp, #72]
	eors	r1, r2
	str	r1, [sp, #64]
	ldr	r1, [sp, #76]
	eors	r1, r3
	str	r1, [sp, #68]
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #76]
	subs	r0, r0, r2
	sbcs	r1, r1, r3
	str	r0, [sp, #64]
	str	r1, [sp, #68]
.L451:
	add	r2, sp, #80
	mov	ip, r2
	mov	r2, r8
	movs	r3, #0
	str	r2, [sp, #84]
	mov	r2, r10
	mov	r9, r3
	str	r2, [sp, #88]
	movs	r2, r6
	adds	r3, r3, #31
	add	r3, r3, ip
	mov	r8, r5
	mov	r6, r9
	mov	r10, r7
	str	r4, [sp, #80]
	movs	r7, r3
	ldr	r4, [sp, #64]
	ldr	r5, [sp, #68]
	mov	r9, r2
	b	.L454
.L561:
	cmp	r6, #32
	beq	.L612
.L454:
	movs	r0, r4
	movs	r1, r5
	movs	r2, #10
	movs	r3, #0
	bl	__aeabi_uldivmod
	adds	r6, r6, #1
	adds	r2, r2, #48
	movs	r3, r5
	strb	r2, [r7, r6]
	movs	r5, r1
	movs	r2, r4
	movs	r4, r0
	cmp	r3, #0
	bne	.L561
	cmp	r2, #9
	bhi	.L561
.L612:
	ldr	r3, [sp, #84]
	str	r4, [sp, #64]
	str	r5, [sp, #68]
	mov	r5, r8
	mov	r8, r3
	mov	r3, r9
	ldr	r2, [sp, #88]
	mov	r9, r6
	mov	r7, r10
	movs	r6, r3
	mov	r10, r2
	ldr	r4, [sp, #80]
.L452:
	ldr	r3, [sp, #60]
	str	r3, [sp, #24]
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	movs	r3, #10
	str	r3, [sp, #12]
	ldr	r3, [sp, #44]
	str	r3, [sp, #8]
	mov	r3, r9
	b	.L629
.L464:
	cmp	r0, #0
	bne	.L466
	b	.L465
.L658:
	ldr	r3, [sp, #52]
	ldr	r3, [r3]
	lsrs	r2, r3, #31
	movs	r1, r2
	cmp	r3, #0
	bne	.LCB3383
	b	.L457	@long jump
.LCB3383:
	asrs	r2, r3, #31
	adds	r0, r3, r2
	eors	r0, r2
.L458:
	add	r2, sp, #80
	mov	r9, r2
	movs	r3, #31
	mov	r2, r8
	add	r3, r3, r9
	mov	r8, r5
	str	r4, [sp, #52]
	str	r7, [sp, #88]
	movs	r4, r0
	mov	r5, ip
	mov	r9, r6
	movs	r7, r3
	str	r1, [sp, #80]
	str	r2, [sp, #84]
	b	.L460
.L660:
	cmp	r5, #32
	beq	.L613
.L460:
	movs	r0, r4
	movs	r1, #10
	bl	__aeabi_uidivmod
	adds	r5, r5, #1
	adds	r6, r7, r5
	adds	r1, r1, #48
	strb	r1, [r6]
	movs	r0, r4
	movs	r1, #10
	bl	__aeabi_uidiv
	movs	r6, r4
	movs	r4, r0
	cmp	r6, #9
	bhi	.L660
.L613:
	ldr	r3, [sp, #84]
	mov	ip, r5
	mov	r5, r8
	mov	r8, r3
	ldr	r3, [sp, #80]
	mov	r6, r9
	movs	r1, r3
	ldr	r4, [sp, #52]
	ldr	r7, [sp, #88]
.L459:
	ldr	r3, [sp, #60]
	str	r1, [sp, #8]
	str	r3, [sp, #24]
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	movs	r3, #10
	str	r3, [sp, #12]
	mov	r3, ip
	b	.L628
.L461:
	movs	r3, r2
	lsls	r3, r3, #24
	bpl	.L463
	ldr	r3, [sp, #52]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	asrs	r1, r3, #31
	adds	r2, r3, r1
	eors	r2, r1
	uxth	r2, r2
	b	.L462
.L449:
	movs	r3, #0
	mov	r9, r3
	cmp	r0, #0
	bne	.L452
	movs	r2, #0
	movs	r3, #0
	str	r2, [sp, #64]
	str	r3, [sp, #68]
	b	.L451
.L650:
	ldr	r3, [sp, #52]
	ldr	r3, [r3]
	mov	r9, r3
	cmp	r3, #0
	bne	.L478
	adds	r3, r3, #16
	bics	r0, r3
	cmp	r1, #0
	bne	.L479
.L478:
	movs	r3, #97
	lsls	r2, r0, #26
	bpl	.L481
	movs	r3, #65
.L481:
	uxtb	r3, r3
	subs	r3, r3, #10
	str	r3, [sp, #52]
	mov	r3, r8
	str	r3, [sp, #88]
	mov	r3, r10
	add	r1, sp, #80
	movs	r2, #31
	mov	ip, r1
	str	r3, [sp, #92]
	movs	r3, r5
	add	r2, r2, ip
	mov	r5, r9
	mov	r10, r6
	str	r4, [sp, #84]
	str	r7, [sp, #96]
	mov	r8, r0
	movs	r7, r2
	mov	r9, r3
	ldr	r4, [sp, #44]
	ldr	r6, [sp, #60]
	b	.L484
.L661:
	adds	r3, r3, #48
	uxtb	r3, r3
.L483:
	adds	r4, r4, #1
	strb	r3, [r7, r4]
	cmp	r5, r6
	bcc	.L616
	cmp	r4, #32
	beq	.L616
	movs	r5, r0
.L484:
	movs	r1, r6
	movs	r0, r5
	bl	__aeabi_uidivmod
	uxtb	r3, r1
	cmp	r1, #9
	bls	.L661
	ldr	r2, [sp, #52]
	mov	ip, r2
	add	r3, r3, ip
	uxtb	r3, r3
	b	.L483
.L616:
	ldr	r3, [sp, #88]
	mov	r0, r8
	mov	r8, r3
	ldr	r3, [sp, #92]
	mov	r6, r10
	mov	r5, r9
	mov	r10, r3
	str	r4, [sp, #44]
	ldr	r7, [sp, #96]
	ldr	r4, [sp, #84]
.L479:
	mov	r3, r8
	str	r3, [sp, #20]
	mov	r3, r10
	str	r3, [sp, #16]
	ldr	r3, [sp, #60]
	str	r0, [sp, #24]
	str	r3, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #8]
	ldr	r3, [sp, #44]
	b	.L626
.L652:
	ldr	r1, [sp, #44]
	movs	r3, #128
	movs	r2, r1
	lsls	r3, r3, #3
	ands	r2, r3
	movs	r0, r2
	movs	r2, r1
	tst	r1, r3
	beq	.LCB3589
	b	.L623	@long jump
.LCB3589:
	movs	r3, #16
	bics	r2, r3
	str	r2, [sp, #60]
	b	.L445
.L457:
	cmp	r0, #0
	bne	.L459
	b	.L458
.L463:
	ldr	r3, [sp, #52]
	ldr	r3, [r3]
	asrs	r1, r3, #31
	adds	r2, r3, r1
	eors	r2, r1
	b	.L462
.L487:
	ldr	r3, [sp, #52]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	b	.L486
.L513:
	movs	r3, r0
	adds	r3, r3, #1
	str	r3, [sp, #60]
	b	.L515
.L656:
	str	r2, [sp, #44]
	b	.L622
	.size	_vsnprintf, .-_vsnprintf
	.section	.text.__wrap_sprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_sprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_sprintf, %function
__wrap_sprintf:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r1, r2, r3}
	movs	r2, #1
	push	{r4, r5, lr}
	sub	sp, sp, #16
	add	r4, sp, #28
	ldmia	r4!, {r3}
	ldr	r5, .L667
	movs	r1, r0
	str	r4, [sp]
	movs	r0, r5
	rsbs	r2, r2, #0
	str	r4, [sp, #12]
	bl	_vsnprintf
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5}
	pop	{r3}
	add	sp, sp, #12
	bx	r3
.L668:
	.align	2
.L667:
	.word	_out_buffer
	.size	__wrap_sprintf, .-__wrap_sprintf
	.section	.text.__wrap_snprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_snprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_snprintf, %function
__wrap_snprintf:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r2, r3}
	push	{r4, r5, lr}
	sub	sp, sp, #20
	add	r4, sp, #32
	ldmia	r4!, {r3}
	ldr	r5, .L670
	movs	r2, r1
	str	r4, [sp]
	movs	r1, r0
	movs	r0, r5
	str	r4, [sp, #12]
	bl	_vsnprintf
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5}
	pop	{r3}
	add	sp, sp, #8
	bx	r3
.L671:
	.align	2
.L670:
	.word	_out_buffer
	.size	__wrap_snprintf, .-__wrap_snprintf
	.section	.text.__wrap_vsnprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	__wrap_vsnprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	__wrap_vsnprintf, %function
__wrap_vsnprintf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L673
	sub	sp, sp, #8
	str	r3, [sp]
	movs	r3, r2
	movs	r2, r1
	movs	r1, r0
	movs	r0, r4
	bl	_vsnprintf
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L674:
	.align	2
.L673:
	.word	_out_buffer
	.size	__wrap_vsnprintf, .-__wrap_vsnprintf
	.section	.text.vfctprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vfctprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	vfctprintf, %function
vfctprintf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #20
	str	r1, [sp, #12]
	movs	r1, #1
	str	r0, [sp, #8]
	str	r3, [sp]
	ldr	r0, .L676
	movs	r3, r2
	rsbs	r2, r1, #0
	add	r1, sp, #8
	bl	_vsnprintf
	add	sp, sp, #20
	@ sp needed
	pop	{pc}
.L677:
	.align	2
.L676:
	.word	_out_fct
	.size	vfctprintf, .-vfctprintf
	.section	.text.weak_raw_printf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	weak_raw_printf
	.syntax unified
	.code	16
	.thumb_func
	.type	weak_raw_printf, %function
weak_raw_printf:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{r4, r5, lr}
	ldr	r1, .L681
	sub	sp, sp, #20
	add	r2, sp, #32
	ldmia	r2!, {r3}
	ldr	r5, [r1]
	str	r2, [sp, #12]
	cmp	r5, #0
	beq	.L679
	str	r2, [sp]
	movs	r2, #1
	ldr	r4, .L681+4
	rsbs	r2, r2, #0
	movs	r0, r4
	add	r1, sp, #8
	blx	r5
	movs	r0, #1
.L680:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5}
	pop	{r3}
	add	sp, sp, #16
	bx	r3
.L679:
	movs	r0, r3
	bl	puts
	movs	r0, #0
	b	.L680
.L682:
	.align	2
.L681:
	.word	lazy_vsnprintf
	.word	_out_char
	.size	weak_raw_printf, .-weak_raw_printf
	.section	.text.weak_raw_vprintf,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	weak_raw_vprintf
	.syntax unified
	.code	16
	.thumb_func
	.type	weak_raw_vprintf, %function
weak_raw_vprintf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L686
	movs	r3, r0
	ldr	r4, [r2]
	sub	sp, sp, #16
	cmp	r4, #0
	beq	.L684
	movs	r2, #1
	str	r1, [sp]
	ldr	r0, .L686+4
	rsbs	r2, r2, #0
	add	r1, sp, #12
	blx	r4
	movs	r0, #1
.L685:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L684:
	bl	puts
	movs	r0, #0
	b	.L685
.L687:
	.align	2
.L686:
	.word	lazy_vsnprintf
	.word	_out_char
	.size	weak_raw_vprintf, .-weak_raw_vprintf
	.section	.rodata.pow10.0,"a"
	.align	3
	.type	pow10.0, %object
	.size	pow10.0, 80
pow10.0:
	.word	0
	.word	1072693248
	.word	0
	.word	1076101120
	.word	0
	.word	1079574528
	.word	0
	.word	1083129856
	.word	0
	.word	1086556160
	.word	0
	.word	1090021888
	.word	0
	.word	1093567616
	.word	0
	.word	1097011920
	.word	0
	.word	1100470148
	.word	0
	.word	1104006501
	.section	.bss.lazy_vsnprintf,"aw",%nobits
	.align	2
	.type	lazy_vsnprintf, %object
	.size	lazy_vsnprintf, 4
lazy_vsnprintf:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
