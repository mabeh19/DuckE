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
	.file	"dcd_rp2040.c"
	.text
	.section	.time_critical.reset_non_control_endpoints,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	reset_non_control_endpoints, %function
reset_non_control_endpoints:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	ldr	r3, .L3
	push	{r4, lr}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	str	r2, [r3, #92]
	str	r2, [r3, #96]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r2, [r3, #112]
	str	r2, [r3, #116]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	adds	r2, r2, #240
	lsls	r2, r2, #2
	movs	r1, #0
	@ sp needed
	ldr	r0, .L3+4
	bl	memset
	ldr	r3, .L3+8
	ldr	r2, .L3+12
	str	r2, [r3]
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	1343225856
	.word	hw_endpoints+64
	.word	next_buffer_ptr
	.word	1343226240
	.size	reset_non_control_endpoints, .-reset_non_control_endpoints
	.section	.time_critical.hw_handle_buff_status,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	hw_handle_buff_status, %function
hw_handle_buff_status:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	ldr	r3, .L23
	movs	r5, #0
	ldr	r7, [r3, #88]
	movs	r6, #1
	sub	sp, sp, #28
	cmp	r7, #0
	beq	.L5
	ldr	r3, .L23+4
	mov	r9, r3
	movs	r3, #1
	mov	fp, r3
	ldr	r3, .L23+8
	mov	r8, r3
	b	.L6
.L7:
	cmp	r5, #32
	beq	.L5
.L6:
	movs	r2, r6
	movs	r4, r5
	adds	r5, r5, #1
	mov	r10, r6
	ands	r2, r7
	uxtb	r5, r5
	lsls	r6, r6, #1
	cmp	r2, #0
	beq	.L7
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3, #88]
	mov	r3, fp
	lsrs	r4, r4, #1
	lsls	r4, r4, #1
	ands	r3, r5
	adds	r4, r4, r3
	lsls	r4, r4, #5
	add	r4, r4, r8
	movs	r0, r4
	bl	hw_endpoint_xfer_continue
	cmp	r0, #0
	bne	.L22
.L8:
	mov	r3, r10
	bics	r7, r3
	bne	.L7
.L5:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L22:
	ldrh	r2, [r4, #22]
	ldrb	r3, [r4, #2]
	add	r0, sp, #8
	str	r2, [sp, #4]
	movs	r1, #0
	movs	r2, #6
	adds	r0, r0, #6
	str	r3, [sp]
	bl	memset
	movs	r3, #224
	add	r1, sp, #8
	lsls	r3, r3, #3
	strh	r3, [r1, #4]
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	strb	r3, [r1, #8]
	add	r0, sp, #12
	movs	r1, #1
	str	r2, [sp, #20]
	bl	dcd_event_handler
	movs	r0, r4
	bl	hw_endpoint_reset_transfer
	b	.L8
.L24:
	.align	2
.L23:
	.word	1343291392
	.word	1343303680
	.word	hw_endpoints
	.size	hw_handle_buff_status, .-hw_handle_buff_status
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC22:
	.ascii	"Unhandled IRQ 0x%x\012\000"
	.section	.time_critical.dcd_rp2040_irq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_rp2040_irq, %function
dcd_rp2040_irq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #152
	ldr	r2, .L223
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r2, r3]
	movs	r3, #128
	movs	r4, r5
	lsls	r3, r3, #10
	movs	r6, #16
	sub	sp, sp, #20
	ands	r4, r3
	tst	r5, r3
	beq	.L26
	ldr	r3, .L223+4
	ldr	r4, .L223+8
	ldr	r2, [r3, #40]
	ldr	r3, .L223+12
	movs	r6, #0
	str	r2, [r3]
	movs	r3, #59
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB199
	b	.L191	@long jump
.LCB199:
.L27:
	movs	r3, #123
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB204
	b	.L192	@long jump
.LCB204:
.L29:
	movs	r3, #187
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB209
	b	.L193	@long jump
.LCB209:
.L31:
	movs	r3, #251
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB214
	b	.L194	@long jump
.LCB214:
.L33:
	movs	r3, #60
	adds	r3, r3, #255
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB220
	b	.L195	@long jump
.LCB220:
.L35:
	movs	r3, #124
	adds	r3, r3, #255
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB226
	b	.L196	@long jump
.LCB226:
.L37:
	movs	r3, #188
	adds	r3, r3, #255
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB232
	b	.L197	@long jump
.LCB232:
.L39:
	movs	r3, #252
	adds	r3, r3, #255
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB238
	b	.L198	@long jump
.LCB238:
.L41:
	ldr	r3, .L223+16
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB243
	b	.L199	@long jump
.LCB243:
.L43:
	ldr	r3, .L223+20
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB248
	b	.L200	@long jump
.LCB248:
.L45:
	ldr	r3, .L223+24
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB253
	b	.L201	@long jump
.LCB253:
.L47:
	ldr	r3, .L223+28
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB258
	b	.L202	@long jump
.LCB258:
.L49:
	ldr	r3, .L223+32
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB263
	b	.L203	@long jump
.LCB263:
.L51:
	ldr	r3, .L223+36
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB268
	b	.L53	@long jump
.LCB268:
.L56:
	ldr	r3, .L223+40
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB273
	b	.L204	@long jump
.LCB273:
.L55:
	ldr	r3, .L223+44
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB278
	b	.L61	@long jump
.LCB278:
.L62:
	cmp	r6, #0
	bne	.L60
	ldr	r3, .L223+48
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L60
	movs	r1, #128
	ldr	r2, .L223+52
	adds	r3, r3, #144
	lsls	r1, r1, #10
	str	r1, [r2, r3]
.L60:
	ldr	r3, .L223
	movs	r2, #10
	ldr	r4, [r3, #72]
	mov	r3, sp
	movs	r1, #0
	adds	r0, r3, #6
	bl	memset
	movs	r3, #192
	lsls	r4, r4, #21
	add	r6, sp, #4
	lsls	r3, r3, #2
	lsrs	r4, r4, #21
	strh	r3, [r6]
	movs	r0, r6
	str	r4, [sp, #8]
	movs	r1, #1
	movs	r4, #128
	bl	dcd_event_handler
	ldr	r6, .L223+56
	lsls	r4, r4, #10
.L26:
	lsls	r3, r5, #27
	bmi	.L205
.L68:
	movs	r3, #128
	lsls	r3, r3, #9
	tst	r5, r3
	beq	.L69
	movs	r2, #1
	movs	r1, #35
	orrs	r4, r3
	ldr	r3, .L223+8
	strb	r2, [r3, r1]
	strb	r2, [r3, #3]
	movs	r3, #192
	ldr	r2, .L223+60
	lsls	r3, r3, #3
	str	r3, [sp, #4]
	add	r3, sp, #8
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	movs	r1, #1
	add	r0, sp, #4
	bl	dcd_event_handler
	movs	r2, #128
	ldr	r3, .L223+52
	lsls	r2, r2, #10
	str	r2, [r3, #80]
.L69:
	movs	r3, #128
	lsls	r3, r3, #5
	tst	r5, r3
	bne	.L206
.L70:
	movs	r3, #128
	lsls	r3, r3, #7
	tst	r5, r3
	bne	.L207
.L71:
	movs	r3, #128
	lsls	r3, r3, #8
	tst	r5, r3
	bne	.L208
.L72:
	cmp	r4, r5
	beq	.LCB365
	b	.L209	@long jump
.LCB365:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L208:
	orrs	r4, r3
	mov	r3, sp
	movs	r2, #10
	movs	r1, #0
	adds	r0, r3, #6
	bl	memset
	movs	r3, #160
	add	r6, sp, #4
	lsls	r3, r3, #3
	strh	r3, [r6]
	movs	r1, #1
	movs	r0, r6
	bl	dcd_event_handler
	movs	r2, #128
	ldr	r3, .L223+52
	lsls	r2, r2, #4
	str	r2, [r3, #80]
	b	.L72
.L207:
	orrs	r4, r3
	mov	r3, sp
	movs	r2, #10
	movs	r1, #0
	adds	r0, r3, #6
	bl	memset
	movs	r3, #128
	add	r6, sp, #4
	lsls	r3, r3, #3
	strh	r3, [r6]
	movs	r1, #1
	movs	r0, r6
	bl	dcd_event_handler
	movs	r2, #16
	ldr	r3, .L223+52
	str	r2, [r3, #80]
	b	.L71
.L206:
	movs	r2, #0
	orrs	r4, r3
	ldr	r3, .L223
	add	r6, sp, #4
	str	r2, [r3]
	bl	reset_non_control_endpoints
	mov	r3, sp
	movs	r2, #10
	movs	r1, #0
	adds	r0, r3, #6
	bl	memset
	movs	r3, #128
	lsls	r3, r3, #1
	strh	r3, [r6]
	movs	r1, #1
	movs	r0, r6
	bl	dcd_event_handler
	movs	r2, #128
	ldr	r3, .L223+52
	lsls	r2, r2, #12
	str	r2, [r3, #80]
	b	.L70
.L205:
	bl	hw_handle_buff_status
	movs	r4, r6
	b	.L68
.L191:
	adds	r3, r3, #56
	ldrb	r6, [r4, r3]
	cmp	r6, #0
	bne	.LCB453
	b	.L27	@long jump
.LCB453:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.LCB457
	b	.L27	@long jump
.LCB457:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #32
	strb	r2, [r4, r3]
	bl	hw_endpoint_start_next_buffer
	b	.L27
.L53:
	ldr	r3, .L223+64
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB470
	b	.L56	@long jump
.LCB470:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB474
	b	.L210	@long jump
.LCB474:
.L57:
	ldr	r3, .L223+40
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	bne	.LCB479
	b	.L58	@long jump
.LCB479:
.L64:
	ldr	r3, .L223+44
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	beq	.LCB484
	b	.L60	@long jump
.LCB484:
	ldr	r3, .L223+68
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	beq	.LCB488
	b	.L65	@long jump
.LCB488:
	b	.L60
.L203:
	ldr	r3, .L223+72
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB496
	b	.L51	@long jump
.LCB496:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB500
	b	.L211	@long jump
.LCB500:
	movs	r6, r7
	b	.L51
.L202:
	ldr	r3, .L223+76
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB509
	b	.L49	@long jump
.LCB509:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB513
	b	.L212	@long jump
.LCB513:
	movs	r6, r7
	b	.L49
.L201:
	ldr	r3, .L223+80
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB522
	b	.L47	@long jump
.LCB522:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB526
	b	.L213	@long jump
.LCB526:
	movs	r6, r7
	b	.L47
.L200:
	ldr	r3, .L223+84
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB535
	b	.L45	@long jump
.LCB535:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB539
	b	.L214	@long jump
.LCB539:
	movs	r6, r7
	b	.L45
.L199:
	ldr	r3, .L223+88
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB548
	b	.L43	@long jump
.LCB548:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB552
	b	.L215	@long jump
.LCB552:
	movs	r6, r7
	b	.L43
.L198:
	adds	r3, r3, #249
	adds	r3, r3, #255
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB562
	b	.L41	@long jump
.LCB562:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB566
	b	.L216	@long jump
.LCB566:
	movs	r6, r7
	b	.L41
.L197:
	adds	r3, r3, #185
	adds	r3, r3, #255
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB576
	b	.L39	@long jump
.LCB576:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB580
	b	.L217	@long jump
.LCB580:
	movs	r6, r7
	b	.L39
.L196:
	adds	r3, r3, #121
	adds	r3, r3, #255
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB590
	b	.L37	@long jump
.LCB590:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB594
	b	.L218	@long jump
.LCB594:
	movs	r6, r7
	b	.L37
.L195:
	adds	r3, r3, #57
	adds	r3, r3, #255
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB604
	b	.L35	@long jump
.LCB604:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	beq	.LCB608
	b	.L219	@long jump
.LCB608:
	movs	r6, r7
	b	.L35
.L224:
	.align	2
.L223:
	.word	1343291392
	.word	1074085888
	.word	hw_endpoints
	.word	e15_last_sof
	.word	571
	.word	635
	.word	699
	.word	763
	.word	827
	.word	891
	.word	955
	.word	1019
	.word	_sof_enable
	.word	1343303680
	.word	131088
	.word	1343225856
	.word	890
	.word	1018
	.word	826
	.word	762
	.word	698
	.word	634
	.word	570
.L194:
	adds	r3, r3, #248
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB645
	b	.L33	@long jump
.LCB645:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.L220
	movs	r6, r7
	b	.L33
.L193:
	adds	r3, r3, #184
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB658
	b	.L31	@long jump
.LCB658:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.L221
	movs	r6, r7
	b	.L31
.L192:
	adds	r3, r3, #120
	ldrb	r7, [r4, r3]
	cmp	r7, #0
	bne	.LCB671
	b	.L29	@long jump
.LCB671:
	adds	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.L222
	movs	r6, r7
	b	.L29
.L204:
	ldr	r3, .L225
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.LCB684
	b	.L55	@long jump
.LCB684:
.L63:
	movs	r3, #239
	lsls	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.LCB690
	b	.L64	@long jump
.LCB690:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	b	.L64
.L58:
	ldr	r3, .L225
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L63
	ldr	r3, .L225+4
	ldrb	r3, [r4, r3]
	cmp	r3, #2
	beq	.LCB707
	b	.L60	@long jump
.LCB707:
	movs	r6, r7
.L61:
	ldr	r3, .L225+8
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.LCB714
	b	.L62	@long jump
.LCB714:
.L65:
	movs	r3, #255
	lsls	r3, r3, #2
	ldrb	r2, [r4, r3]
	cmp	r2, #0
	bne	.LCB720
	b	.L60	@long jump
.LCB720:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	b	.L60
.L222:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #96
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L29
.L221:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #160
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L31
.L220:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #224
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L33
.L219:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #33
	adds	r0, r0, #255
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L35
.L218:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #97
	adds	r0, r0, #255
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L37
.L217:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #161
	adds	r0, r0, #255
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L39
.L216:
	movs	r0, r4
	movs	r2, #0
	adds	r0, r0, #225
	adds	r0, r0, #255
	strb	r2, [r4, r3]
	movs	r6, r7
	bl	hw_endpoint_start_next_buffer
	b	.L41
.L215:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	movs	r6, r7
	b	.L43
.L214:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	movs	r6, r7
	b	.L45
.L213:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	movs	r6, r7
	b	.L47
.L212:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	movs	r6, r7
	b	.L49
.L211:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	movs	r6, r7
	b	.L51
.L210:
	movs	r2, #0
	strb	r2, [r4, r3]
	subs	r3, r3, #28
	adds	r0, r4, r3
	bl	hw_endpoint_start_next_buffer
	b	.L57
.L209:
	movs	r1, r4
	ldr	r0, .L225+12
	eors	r1, r5
	bl	panic
.L226:
	.align	2
.L225:
	.word	954
	.word	1019
	.word	1018
	.word	.LC22
	.size	dcd_rp2040_irq, .-dcd_rp2040_irq
	.section	.text.dcd_int_enable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_int_enable
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_int_enable, %function
dcd_int_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r1, #1
	@ sp needed
	movs	r0, #5
	bl	irq_set_enabled
	pop	{r4, pc}
	.size	dcd_int_enable, .-dcd_int_enable
	.section	.text.dcd_int_disable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_int_disable
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_int_disable, %function
dcd_int_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r1, #0
	@ sp needed
	movs	r0, #5
	bl	irq_set_enabled
	pop	{r4, pc}
	.size	dcd_int_disable, .-dcd_int_disable
	.section	.text.dcd_set_address,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_set_address
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_set_address, %function
dcd_set_address:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	@ sp needed
	movs	r1, #0
	ldr	r0, .L230
	bl	hw_endpoint_xfer_start
	pop	{r4, pc}
.L231:
	.align	2
.L230:
	.word	hw_endpoints+32
	.size	dcd_set_address, .-dcd_set_address
	.section	.text.dcd_remote_wakeup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_remote_wakeup
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_remote_wakeup, %function
dcd_remote_wakeup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #128
	@ sp needed
	movs	r2, #144
	ldr	r3, .L233
	lsls	r1, r1, #10
	str	r1, [r3, r2]
	movs	r2, #128
	lsls	r2, r2, #5
	str	r2, [r3, #76]
	bx	lr
.L234:
	.align	2
.L233:
	.word	1343299584
	.size	dcd_remote_wakeup, .-dcd_remote_wakeup
	.section	.text.dcd_disconnect,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	dcd_disconnect
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_disconnect, %function
dcd_disconnect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #128
	@ sp needed
	ldr	r3, .L236
	lsls	r2, r2, #9
	str	r2, [r3, #76]
	bx	lr
.L237:
	.align	2
.L236:
	.word	1343303680
	.size	dcd_disconnect, .-dcd_disconnect
	.section	.text.dcd_connect,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	dcd_connect
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_connect, %function
dcd_connect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #128
	@ sp needed
	ldr	r3, .L239
	lsls	r2, r2, #9
	str	r2, [r3, #76]
	bx	lr
.L240:
	.align	2
.L239:
	.word	1343299584
	.size	dcd_connect, .-dcd_connect
	.section	.text.dcd_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_init
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_init, %function
dcd_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r6, r0
	@ sp needed
	bl	rp2040_usb_init
	movs	r3, #12
	ldr	r5, .L242
	movs	r2, #255
	str	r3, [r5, #120]
	movs	r0, #5
	ldr	r1, .L242+4
	bl	irq_add_shared_handler
	movs	r3, #64
	mov	r8, r3
	ldr	r4, .L242+8
	movs	r2, #64
	movs	r1, #0
	movs	r0, r4
	bl	memset
	mov	r3, r8
	movs	r7, #1
	strh	r3, [r4, #24]
	movs	r1, #33
	movs	r3, #0
	ldr	r2, .L242+12
	strb	r7, [r4, #1]
	str	r2, [r4, #8]
	str	r3, [r2]
	strb	r3, [r4, r1]
	adds	r1, r1, #95
	strh	r1, [r4, #34]
	mov	r1, r8
	strh	r1, [r4, #56]
	subs	r1, r1, #5
	strb	r3, [r4, r1]
	ldr	r2, .L242+16
	ldr	r1, .L242+20
	str	r3, [r4, #4]
	str	r2, [r4, #12]
	str	r1, [r4, #40]
	str	r3, [r1]
	str	r3, [r4, #36]
	str	r2, [r4, #44]
	bl	reset_non_control_endpoints
	movs	r3, #128
	lsls	r3, r3, #22
	str	r7, [r5, #64]
	str	r3, [r5, #76]
	movs	r3, #144
	ldr	r2, .L242+24
	movs	r0, r6
	str	r2, [r5, r3]
	bl	dcd_connect
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L243:
	.align	2
.L242:
	.word	1343291392
	.word	dcd_rp2040_irq
	.word	hw_endpoints
	.word	1343225988
	.word	1343226112
	.word	1343225984
	.word	118800
	.size	dcd_init, .-dcd_init
	.section	.text.dcd_sof_enable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_sof_enable
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_sof_enable, %function
dcd_sof_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L249
	strb	r1, [r3]
	cmp	r1, #0
	beq	.L244
	movs	r1, #128
	movs	r3, #144
	ldr	r2, .L249+4
	lsls	r1, r1, #10
	str	r1, [r2, r3]
.L244:
	@ sp needed
	bx	lr
.L250:
	.align	2
.L249:
	.word	_sof_enable
	.word	1343299584
	.size	dcd_sof_enable, .-dcd_sof_enable
	.section	.text.dcd_edpt0_status_complete,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	dcd_edpt0_status_complete
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt0_status_complete, %function
dcd_edpt0_status_complete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]
	lsls	r3, r3, #25
	bne	.L251
	ldrb	r3, [r1, #1]
	cmp	r3, #5
	beq	.L254
.L251:
	@ sp needed
	bx	lr
.L254:
	ldrb	r2, [r1, #2]
	ldr	r3, .L255
	str	r2, [r3]
	b	.L251
.L256:
	.align	2
.L255:
	.word	1343291392
	.size	dcd_edpt0_status_complete, .-dcd_edpt0_status_complete
	.section	.text.dcd_edpt_open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_edpt_open
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_open, %function
dcd_edpt_open:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldrb	r4, [r1, #3]
	ldrb	r0, [r1, #2]
	ldrb	r2, [r1, #4]
	ldrb	r3, [r1, #5]
	movs	r1, #127
	lsls	r4, r4, #30
	ands	r1, r0
	lsls	r3, r3, #8
	lsrs	r5, r0, #7
	orrs	r3, r2
	lsls	r7, r1, #1
	lsrs	r2, r4, #30
	movs	r4, r2
	ldr	r6, .L272
	adds	r2, r7, r5
	lsls	r2, r2, #5
	adds	r2, r6, r2
	strb	r0, [r2, #2]
	movs	r0, #1
	eors	r0, r5
	strb	r0, [r2, #1]
	movs	r0, #0
	lsls	r3, r3, #21
	lsrs	r3, r3, #21
	strb	r0, [r2, #3]
	strh	r3, [r2, #24]
	strb	r4, [r2, #27]
	mov	r8, r0
	lsls	r2, r1, #3
	cmp	r5, #1
	beq	.L270
	ldr	r0, .L272+4
	mov	ip, r0
	lsls	r0, r1, #6
	add	r2, r2, ip
	mov	ip, r0
	add	ip, ip, r6
	mov	r0, ip
	str	r2, [r0, #8]
	mov	r0, r8
	str	r0, [r2]
	cmp	r1, #0
	beq	.L261
	ldr	r2, .L272+8
	lsls	r1, r1, #3
	mov	r8, r2
	mov	r2, ip
	add	r1, r1, r8
	str	r1, [r2, #4]
.L263:
	movs	r2, #63
	adds	r3, r3, #63
	bics	r3, r2
	cmp	r4, #2
	bne	.L264
	lsls	r3, r3, #1
.L264:
	ldr	r0, .L272+12
	adds	r2, r7, r5
	ldr	r1, [r0]
	lsls	r2, r2, #5
	adds	r2, r6, r2
	str	r1, [r2, #12]
	ldr	r2, .L272+16
	adds	r3, r1, r3
	str	r3, [r0]
	eors	r1, r2
	eors	r2, r3
	movs	r3, #128
	mov	r8, r1
	lsls	r3, r3, #5
	cmp	r2, r3
	bhi	.L271
.L265:
	mov	r3, r8
	lsls	r4, r4, #26
	orrs	r4, r3
	movs	r3, #128
	adds	r7, r7, r5
	lsls	r7, r7, #5
	adds	r6, r6, r7
	ldr	r2, [r6, #4]
	lsls	r3, r3, #24
	orrs	r3, r4
	str	r3, [r2]
	b	.L260
.L270:
	ldr	r0, .L272+20
	mov	ip, r0
	lsls	r0, r1, #6
	add	r2, r2, ip
	mov	ip, r0
	add	ip, ip, r6
	mov	r0, ip
	str	r2, [r0, #40]
	mov	r0, r8
	str	r0, [r2]
	cmp	r1, #0
	bne	.L259
.L261:
	movs	r3, #0
	lsls	r5, r5, #5
	adds	r5, r6, r5
	str	r3, [r5, #4]
	ldr	r3, .L272+24
	str	r3, [r5, #12]
.L260:
	movs	r0, #1
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7, pc}
.L259:
	ldr	r2, .L272+16
	lsls	r1, r1, #3
	mov	r8, r2
	mov	r2, ip
	add	r1, r1, r8
	str	r1, [r2, #36]
	b	.L263
.L271:
	bl	hard_assertion_failure
	b	.L265
.L273:
	.align	2
.L272:
	.word	hw_endpoints
	.word	1343225988
	.word	1343225860
	.word	next_buffer_ptr
	.word	1343225856
	.word	1343225984
	.word	1343226112
	.size	dcd_edpt_open, .-dcd_edpt_open
	.section	.text.dcd_edpt_close_all,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_edpt_close_all
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_close_all, %function
dcd_edpt_close_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	reset_non_control_endpoints
	@ sp needed
	pop	{r4, pc}
	.size	dcd_edpt_close_all, .-dcd_edpt_close_all
	.section	.text.dcd_edpt_xfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_edpt_xfer
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_xfer, %function
dcd_edpt_xfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #127
	@ sp needed
	movs	r4, r1
	ands	r0, r4
	lsls	r0, r0, #1
	lsrs	r4, r4, #7
	movs	r1, r2
	adds	r0, r0, r4
	movs	r2, r3
	ldr	r3, .L276
	lsls	r0, r0, #5
	adds	r0, r0, r3
	bl	hw_endpoint_xfer_start
	movs	r0, #1
	pop	{r4, pc}
.L277:
	.align	2
.L276:
	.word	hw_endpoints
	.size	dcd_edpt_xfer, .-dcd_edpt_xfer
	.section	.text.dcd_edpt_stall,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_edpt_stall
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_stall, %function
dcd_edpt_stall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #127
	movs	r0, r3
	push	{r4, lr}
	ands	r0, r1
	lsrs	r2, r1, #7
	tst	r3, r1
	bne	.L279
	ldr	r1, .L280
	subs	r3, r3, #125
	subs	r3, r3, r2
	str	r3, [r1, #104]
.L279:
	lsls	r0, r0, #1
	adds	r0, r0, r2
	movs	r2, #128
	@ sp needed
	ldr	r3, .L280+4
	lsls	r0, r0, #5
	movs	r1, #0
	adds	r0, r0, r3
	lsls	r2, r2, #4
	bl	_hw_endpoint_buffer_control_update32
	pop	{r4, pc}
.L281:
	.align	2
.L280:
	.word	1343299584
	.word	hw_endpoints
	.size	dcd_edpt_stall, .-dcd_edpt_stall
	.section	.text.dcd_edpt_clear_stall,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_edpt_clear_stall
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_clear_stall, %function
dcd_edpt_clear_stall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #127
	movs	r3, r2
	push	{r4, lr}
	ands	r3, r1
	tst	r2, r1
	bne	.L287
.L282:
	@ sp needed
	pop	{r4, pc}
.L287:
	lsrs	r1, r1, #7
	lsls	r3, r3, #1
	adds	r3, r3, r1
	ldr	r0, .L288
	lsls	r3, r3, #5
	adds	r0, r0, r3
	movs	r3, #0
	movs	r2, #0
	ldr	r1, .L288+4
	strb	r3, [r0, #3]
	bl	_hw_endpoint_buffer_control_update32
	b	.L282
.L289:
	.align	2
.L288:
	.word	hw_endpoints
	.word	-2049
	.size	dcd_edpt_clear_stall, .-dcd_edpt_clear_stall
	.section	.text.dcd_edpt_close,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	dcd_edpt_close
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_edpt_close, %function
dcd_edpt_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #127
	movs	r3, #0
	ands	r0, r1
	lsls	r0, r0, #1
	lsrs	r1, r1, #7
	push	{r4, lr}
	adds	r0, r0, r1
	ldr	r4, .L292
	lsls	r0, r0, #5
	adds	r0, r4, r0
	ldr	r2, [r0, #4]
	movs	r1, #0
	str	r3, [r2]
	ldr	r2, [r0, #8]
	str	r3, [r2]
	movs	r2, #32
	bl	memset
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.LCB1447
	b	.L290	@long jump
.LCB1447:
	ldr	r3, [r4, #108]
	cmp	r3, #0
	beq	.LCB1450
	b	.L290	@long jump
.LCB1450:
	adds	r3, r3, #140
	ldr	r3, [r4, r3]
	cmp	r3, #0
	beq	.LCB1454
	b	.L290	@long jump
.LCB1454:
	adds	r3, r3, #172
	ldr	r3, [r4, r3]
	cmp	r3, #0
	beq	.LCB1458
	b	.L290	@long jump
.LCB1458:
	adds	r3, r3, #204
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #236
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #13
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #45
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #77
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #109
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #141
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #173
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #205
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	adds	r3, r3, #237
	adds	r3, r3, #255
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #131
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #139
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #147
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #155
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #163
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #171
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #179
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #187
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #195
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #203
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #211
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #219
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #227
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #235
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #243
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	movs	r3, #251
	lsls	r3, r3, #2
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bne	.L290
	ldr	r3, .L292+4
	ldr	r2, .L292+8
	str	r2, [r3]
.L290:
	@ sp needed
	pop	{r4, pc}
.L293:
	.align	2
.L292:
	.word	hw_endpoints
	.word	next_buffer_ptr
	.word	1343226240
	.size	dcd_edpt_close, .-dcd_edpt_close
	.section	.time_critical.dcd_int_handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	dcd_int_handler
	.syntax unified
	.code	16
	.thumb_func
	.type	dcd_int_handler, %function
dcd_int_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	dcd_rp2040_irq
	@ sp needed
	pop	{r4, pc}
	.size	dcd_int_handler, .-dcd_int_handler
	.section	.bss._sof_enable,"aw",%nobits
	.type	_sof_enable, %object
	.size	_sof_enable, 1
_sof_enable:
	.space	1
	.section	.bss.hw_endpoints,"aw",%nobits
	.align	2
	.type	hw_endpoints, %object
	.size	hw_endpoints, 1024
hw_endpoints:
	.space	1024
	.section	.bss.next_buffer_ptr,"aw",%nobits
	.align	2
	.type	next_buffer_ptr, %object
	.size	next_buffer_ptr, 4
next_buffer_ptr:
	.space	4
	.ident	"GCC: (Arch Repository) 13.1.0"
