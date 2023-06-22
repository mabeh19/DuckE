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
	.file	"pheap.c"
	.text
	.section	.text.ph_merge_nodes,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_merge_nodes, %function
ph_merge_nodes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r6, r0
	movs	r5, r1
	movs	r4, r2
	cmp	r1, #0
	beq	.L2
	cmp	r2, #0
	beq	.L3
	ldr	r3, [r6, #4]
	ldr	r0, [r0, #8]
	blx	r3
	lsls	r2, r4, #1
	lsls	r3, r5, #1
	adds	r2, r2, r4
	adds	r3, r3, r5
	ldr	r1, [r6]
	subs	r2, r2, #3
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L4
	adds	r2, r1, r2
	strb	r5, [r2, #2]
	adds	r0, r1, r3
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L5
	strb	r4, [r0]
.L3:
	movs	r0, r5
.L6:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L4:
	adds	r3, r1, r3
	strb	r4, [r3, #2]
	adds	r0, r1, r2
	ldrb	r2, [r1, r2]
	cmp	r2, #0
	bne	.L7
	strb	r5, [r0]
.L2:
	movs	r0, r4
	b	.L6
.L5:
	strb	r3, [r2, #1]
	strb	r4, [r0]
	b	.L3
.L7:
	strb	r2, [r3, #1]
	strb	r5, [r0]
	b	.L2
	.size	ph_merge_nodes, .-ph_merge_nodes
	.section	.rodata.ph_dump_node.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d (c=%d s=%d p=%d) \000"
	.section	.text.ph_dump_node,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_dump_node, %function
ph_dump_node:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	mov	r9, r0
	movs	r6, r1
	mov	r8, r2
	mov	r10, r3
	sub	sp, sp, #20
	cmp	r1, #0
	beq	.L25
	ldr	r3, [sp, #56]
	movs	r7, #0
	lsls	r5, r3, #1
	adds	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, .L36
	mov	fp, r3
.L24:
	movs	r4, #0
	cmp	r5, #0
	beq	.L22
.L19:
	movs	r0, #32
	adds	r4, r4, #1
	bl	putchar
	cmp	r4, r5
	bne	.L19
.L22:
	mov	r2, r9
	lsls	r3, r6, #1
	ldr	r4, [r2]
	adds	r3, r3, r6
	subs	r3, r3, #3
	adds	r4, r4, r3
	ldrb	r1, [r4, #2]
	ldrb	r3, [r4, #1]
	ldrb	r2, [r4]
	mov	r0, fp
	str	r1, [sp]
	movs	r1, r6
	bl	printf
	mov	r3, r8
	cmp	r3, #0
	beq	.L35
	mov	r1, r10
	movs	r0, r6
	blx	r8
	movs	r0, #10
	bl	putchar
	ldr	r3, [sp, #12]
	ldrb	r1, [r4]
	mov	r2, r8
	str	r3, [sp]
	mov	r3, r10
.L34:
	mov	r0, r9
	bl	ph_dump_node
	ldrb	r6, [r4, #1]
	adds	r7, r7, #1
	adds	r7, r7, r0
	cmp	r6, #0
	bne	.L24
.L17:
	movs	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L35:
	movs	r0, #10
	bl	putchar
	ldr	r3, [sp, #12]
	ldrb	r1, [r4]
	movs	r2, #0
	str	r3, [sp]
	mov	r3, r10
	b	.L34
.L25:
	movs	r7, #0
	b	.L17
.L37:
	.align	2
.L36:
	.word	.LC0
	.size	ph_dump_node, .-ph_dump_node
	.section	.text.ph_create,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_create
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_create, %function
ph_create:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	movs	r7, r0
	mov	r9, r1
	push	{lr}
	movs	r1, #16
	movs	r0, #1
	movs	r6, r2
	bl	calloc
	movs	r1, #3
	movs	r5, r0
	movs	r0, r7
	bl	calloc
	mov	r3, r9
	str	r3, [r5, #4]
	movs	r3, #0
	uxtb	r4, r7
	strb	r3, [r5, #13]
	adds	r3, r3, #1
	str	r0, [r5]
	strb	r4, [r5, #12]
	str	r6, [r5, #8]
	strb	r3, [r5, #14]
	strb	r4, [r5, #15]
	cmp	r4, #1
	bls	.L39
	adds	r2, r0, #1
.L40:
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	adds	r2, r2, #3
	cmp	r4, r3
	bne	.L40
.L39:
	@ sp needed
	movs	r3, #255
	ands	r3, r7
	lsls	r2, r3, #1
	adds	r3, r2, r3
	adds	r6, r0, r3
	movs	r3, #0
	subs	r6, r6, #3
	movs	r0, r5
	strb	r3, [r6, #1]
	pop	{r7}
	mov	r9, r7
	pop	{r4, r5, r6, r7, pc}
	.size	ph_create, .-ph_create
	.section	.text.ph_post_alloc_init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_post_alloc_init
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_post_alloc_init, %function
ph_post_alloc_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	str	r3, [r0, #8]
	movs	r3, #0
	uxtb	r4, r1
	strb	r3, [r0, #13]
	adds	r3, r3, #1
	str	r2, [r0, #4]
	strb	r4, [r0, #12]
	strb	r3, [r0, #14]
	strb	r4, [r0, #15]
	ldr	r0, [r0]
	adds	r2, r0, #1
	cmp	r4, #1
	bls	.L45
.L44:
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	adds	r2, r2, #3
	cmp	r4, r3
	bne	.L44
.L45:
	@ sp needed
	movs	r3, #255
	ands	r3, r1
	lsls	r2, r3, #1
	adds	r3, r2, r3
	adds	r0, r0, r3
	movs	r3, #0
	subs	r0, r0, #3
	strb	r3, [r0, #1]
	pop	{r4, pc}
	.size	ph_post_alloc_init, .-ph_post_alloc_init
	.section	.text.ph_clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_clear
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_clear, %function
ph_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	ldrb	r1, [r0, #12]
	strb	r3, [r0, #13]
	adds	r3, r3, #1
	strb	r3, [r0, #14]
	strb	r1, [r0, #15]
	ldr	r0, [r0]
	adds	r2, r0, #1
	cmp	r1, #1
	bls	.L52
.L51:
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	adds	r2, r2, #3
	cmp	r1, r3
	bne	.L51
.L52:
	@ sp needed
	lsls	r3, r1, #1
	adds	r3, r3, r1
	adds	r0, r0, r3
	movs	r3, #0
	subs	r0, r0, #3
	strb	r3, [r0, #1]
	bx	lr
	.size	ph_clear, .-ph_clear
	.section	.text.ph_destroy,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_destroy
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_destroy, %function
ph_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	ldr	r0, [r0]
	bl	free
	movs	r0, r4
	bl	free
	pop	{r4, pc}
	.size	ph_destroy, .-ph_destroy
	.section	.text.ph_merge_two_pass,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_merge_two_pass
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_merge_two_pass, %function
ph_merge_two_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	subs	r4, r1, #0
	beq	.L58
	lsls	r3, r4, #1
	ldr	r1, [r0]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r3, r1, r3
	ldrb	r2, [r3, #1]
	cmp	r2, #0
	bne	.L78
.L58:
	@ sp needed
	movs	r0, r4
	pop	{r4, r5, r6, pc}
.L78:
	lsls	r0, r2, #1
	adds	r0, r0, r2
	subs	r0, r0, #3
	adds	r1, r1, r0
	movs	r0, #0
	ldrb	r6, [r1, #1]
	strb	r0, [r1, #1]
	movs	r1, r4
	strb	r0, [r3, #1]
	movs	r0, r5
	bl	ph_merge_nodes
	movs	r1, r6
	movs	r4, r0
	movs	r0, r5
	bl	ph_merge_two_pass
	movs	r6, r0
	cmp	r4, #0
	beq	.L59
	cmp	r0, #0
	beq	.L58
	movs	r2, r6
	movs	r1, r4
	ldr	r3, [r5, #4]
	ldr	r0, [r5, #8]
	blx	r3
	lsls	r2, r6, #1
	lsls	r3, r4, #1
	adds	r2, r2, r6
	adds	r3, r3, r4
	ldr	r1, [r5]
	subs	r2, r2, #3
	subs	r3, r3, #3
	cmp	r0, #0
	beq	.L61
	adds	r2, r1, r2
	strb	r4, [r2, #2]
	adds	r0, r1, r3
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L77
	strb	r3, [r2, #1]
.L77:
	strb	r6, [r0]
	b	.L58
.L61:
	adds	r3, r1, r3
	strb	r6, [r3, #2]
	adds	r0, r1, r2
	ldrb	r2, [r1, r2]
	cmp	r2, #0
	beq	.L76
	strb	r2, [r3, #1]
.L76:
	strb	r4, [r0]
.L59:
	movs	r4, r6
	b	.L58
	.size	ph_merge_two_pass, .-ph_merge_two_pass
	.section	.text.ph_remove_any_head,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_remove_any_head, %function
ph_remove_any_head:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	movs	r5, r1
	lsls	r7, r5, #1
	ldr	r1, [r0]
	adds	r7, r7, r5
	subs	r7, r7, #3
	movs	r4, r0
	ldrb	r0, [r1, r7]
	sub	sp, sp, #12
	str	r2, [sp, #4]
	adds	r2, r1, r7
	cmp	r0, #0
	beq	.L102
	lsls	r3, r0, #1
	adds	r3, r3, r0
	subs	r3, r3, #3
	adds	r3, r1, r3
	ldrb	r6, [r3, #1]
	mov	ip, r6
	cmp	r6, #0
	bne	.L83
	ldr	r6, [sp, #4]
	cmp	r6, #0
	beq	.L84
.L81:
	ldrb	r6, [r4, #15]
	cmp	r6, #0
	beq	.L88
	lsls	r3, r6, #1
	adds	r3, r3, r6
	adds	r3, r1, r3
	subs	r3, r3, #3
	strb	r5, [r3, #1]
.L88:
	ldrb	r3, [r4, #14]
	cmp	r3, #0
	bne	.L89
	strb	r5, [r4, #14]
.L89:
	strb	r5, [r4, #15]
	cmp	r0, #0
	bne	.L103
.L82:
	movs	r3, #0
	strb	r3, [r2, #1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L83:
	lsls	r2, r6, #1
	add	r2, r2, ip
	subs	r2, r2, #3
	adds	r2, r1, r2
	ldrb	r1, [r2, #1]
	mov	r8, r1
	movs	r1, #0
	strb	r1, [r2, #1]
	mov	r9, r1
	strb	r1, [r3, #1]
	movs	r2, r6
	movs	r1, r0
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r3, r8
	mov	r10, r0
	cmp	r3, #0
	beq	.L85
	lsls	r3, r3, #1
	ldr	r1, [r4]
	add	r3, r3, r8
	subs	r3, r3, #3
	adds	r3, r1, r3
	ldrb	r2, [r3, #1]
	cmp	r2, #0
	bne	.L104
.L85:
	mov	r2, r8
	mov	r1, r10
	movs	r0, r4
	bl	ph_merge_nodes
	ldr	r1, [r4]
	ldr	r3, [sp, #4]
	adds	r2, r1, r7
	cmp	r3, #0
	bne	.L81
	cmp	r0, #0
	beq	.L82
.L103:
	lsls	r3, r0, #1
	adds	r3, r3, r0
	subs	r3, r3, #3
	adds	r3, r1, r3
.L84:
	movs	r1, #0
	strb	r1, [r3, #2]
	b	.L82
.L102:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L81
	b	.L82
.L104:
	lsls	r0, r2, #1
	adds	r0, r0, r2
	subs	r0, r0, #3
	adds	r1, r1, r0
	ldrb	r0, [r1, #1]
	mov	fp, r0
	mov	r0, r9
	strb	r0, [r1, #1]
	strb	r0, [r3, #1]
	mov	r1, r8
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r1, fp
	mov	r8, r0
	movs	r0, r4
	bl	ph_merge_two_pass
	mov	r1, r8
	movs	r2, r0
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r8, r0
	b	.L85
	.size	ph_remove_any_head, .-ph_remove_any_head
	.section	.text.ph_remove_head,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_remove_head
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_remove_head, %function
ph_remove_head:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	sub	sp, sp, #12
	str	r1, [sp, #4]
	ldrb	r5, [r0, #13]
	movs	r4, r0
	lsls	r7, r5, #1
	ldr	r0, [r0]
	adds	r7, r7, r5
	subs	r7, r7, #3
	ldrb	r1, [r0, r7]
	adds	r2, r0, r7
	cmp	r1, #0
	beq	.L128
	lsls	r3, r1, #1
	adds	r3, r3, r1
	subs	r3, r3, #3
	adds	r3, r0, r3
	ldrb	r6, [r3, #1]
	mov	ip, r6
	cmp	r6, #0
	bne	.L109
	ldr	r6, [sp, #4]
	cmp	r6, #0
	beq	.L110
.L107:
	ldrb	r6, [r4, #15]
	cmp	r6, #0
	beq	.L114
	lsls	r3, r6, #1
	adds	r3, r3, r6
	adds	r3, r0, r3
	subs	r3, r3, #3
	strb	r5, [r3, #1]
.L114:
	ldrb	r3, [r4, #14]
	cmp	r3, #0
	bne	.L115
	strb	r5, [r4, #14]
.L115:
	strb	r5, [r4, #15]
	cmp	r1, #0
	bne	.L129
.L108:
	movs	r3, #0
	movs	r0, r5
	strb	r3, [r2, #1]
	strb	r1, [r4, #13]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L109:
	lsls	r2, r6, #1
	add	r2, r2, ip
	subs	r2, r2, #3
	adds	r2, r0, r2
	ldrb	r0, [r2, #1]
	mov	r8, r0
	movs	r0, #0
	strb	r0, [r2, #1]
	mov	r9, r0
	strb	r0, [r3, #1]
	movs	r2, r6
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r3, r8
	mov	r10, r0
	cmp	r3, #0
	beq	.L111
	lsls	r3, r3, #1
	ldr	r1, [r4]
	add	r3, r3, r8
	subs	r3, r3, #3
	adds	r3, r1, r3
	ldrb	r2, [r3, #1]
	cmp	r2, #0
	bne	.L130
.L111:
	mov	r2, r8
	mov	r1, r10
	movs	r0, r4
	bl	ph_merge_nodes
	ldr	r3, [sp, #4]
	movs	r1, r0
	ldr	r0, [r4]
	adds	r2, r0, r7
	cmp	r3, #0
	bne	.L107
	cmp	r1, #0
	beq	.L108
.L129:
	lsls	r3, r1, #1
	adds	r3, r3, r1
	subs	r3, r3, #3
	adds	r3, r0, r3
.L110:
	movs	r0, #0
	strb	r0, [r3, #2]
	b	.L108
.L128:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L107
	b	.L108
.L130:
	lsls	r0, r2, #1
	adds	r0, r0, r2
	subs	r0, r0, #3
	adds	r1, r1, r0
	ldrb	r0, [r1, #1]
	mov	fp, r0
	mov	r0, r9
	strb	r0, [r1, #1]
	strb	r0, [r3, #1]
	mov	r1, r8
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r1, fp
	mov	r8, r0
	movs	r0, r4
	bl	ph_merge_two_pass
	mov	r1, r8
	movs	r2, r0
	movs	r0, r4
	bl	ph_merge_nodes
	mov	r8, r0
	b	.L111
	.size	ph_remove_head, .-ph_remove_head
	.section	.text.ph_remove_and_free_node,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_remove_and_free_node
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_remove_and_free_node, %function
ph_remove_and_free_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	cmp	r1, #0
	beq	.L139
	ldrb	r3, [r0, #13]
	cmp	r3, r1
	beq	.L142
	lsls	r4, r1, #1
	ldr	r0, [r0]
	adds	r4, r4, r1
	subs	r4, r4, #3
	adds	r4, r0, r4
	ldrb	r2, [r4, #2]
	cmp	r2, #0
	beq	.L139
	lsls	r3, r2, #1
	adds	r3, r3, r2
	subs	r3, r3, #3
	ldrb	r2, [r0, r3]
	adds	r6, r0, r3
	cmp	r2, r1
	bne	.L134
	b	.L143
.L136:
	cmp	r2, #0
	beq	.L135
.L134:
	lsls	r3, r2, #1
	adds	r3, r3, r2
	subs	r3, r3, #3
	adds	r3, r0, r3
	ldrb	r2, [r3, #1]
	cmp	r2, r1
	bne	.L136
	ldrb	r2, [r4, #1]
	strb	r2, [r3, #1]
.L135:
	movs	r3, #0
	movs	r2, #1
	movs	r0, r5
	strb	r3, [r4, #2]
	strb	r3, [r4, #1]
	bl	ph_remove_any_head
	ldrb	r1, [r5, #13]
	movs	r2, r0
	movs	r0, r5
	bl	ph_merge_nodes
.L137:
	strb	r0, [r5, #13]
	movs	r0, #1
	b	.L132
.L139:
	movs	r0, #0
.L132:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L143:
	ldrb	r3, [r4, #1]
	strb	r3, [r6]
	b	.L135
.L142:
	movs	r2, #1
	movs	r1, r3
	bl	ph_remove_any_head
	b	.L137
	.size	ph_remove_and_free_node, .-ph_remove_and_free_node
	.section	.rodata.ph_dump.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"node_count %d\012\000"
	.section	.text.ph_dump,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	ph_dump
	.syntax unified
	.code	16
	.thumb_func
	.type	ph_dump, %function
ph_dump:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	ldrb	r4, [r0, #13]
	mov	r10, r2
	movs	r5, #0
	sub	sp, sp, #68
	cmp	r4, #0
	bne	.LCB846
	b	.L145	@long jump
.LCB846:
	mov	fp, r0
	mov	r9, r1
	ldr	r3, .L228
	str	r3, [sp, #12]
.L174:
	mov	r2, fp
	lsls	r3, r4, #1
	ldr	r6, [r2]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r6, r6, r3
	ldrb	r1, [r6, #2]
	ldrb	r3, [r6, #1]
	ldrb	r2, [r6]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	mov	r3, r9
	cmp	r3, #0
	beq	.L146
	mov	r1, r10
	movs	r0, r4
	blx	r9
.L146:
	movs	r0, #10
	bl	putchar
	movs	r3, #0
	ldrb	r4, [r6]
	str	r3, [sp, #28]
	cmp	r4, #0
	bne	.LCB882
	b	.L147	@long jump
.LCB882:
	mov	r8, r10
.L173:
	movs	r0, #32
	bl	putchar
	movs	r0, #32
	bl	putchar
	mov	r2, fp
	ldr	r2, [r2]
	lsls	r3, r4, #1
	mov	r10, r2
	adds	r3, r3, r4
	subs	r3, r3, #3
	add	r10, r10, r3
	mov	r1, r10
	mov	r3, r10
	mov	r2, r10
	ldrb	r1, [r1, #2]
	ldrb	r3, [r3, #1]
	ldrb	r2, [r2]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	mov	r3, r9
	cmp	r3, #0
	beq	.L148
	mov	r1, r8
	movs	r0, r4
	blx	r9
.L148:
	movs	r0, #10
	bl	putchar
	mov	r3, r10
	ldrb	r7, [r3]
	movs	r3, #0
	str	r3, [sp, #32]
	cmp	r7, #0
	bne	.LCB922
	b	.L149	@long jump
.LCB922:
	mov	r3, r8
	movs	r4, r7
	mov	r8, r9
	mov	r9, r3
.L172:
	movs	r0, #32
	bl	putchar
	movs	r0, #32
	bl	putchar
	movs	r0, #32
	bl	putchar
	movs	r0, #32
	bl	putchar
	mov	r2, fp
	lsls	r3, r4, #1
	ldr	r7, [r2]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r7, r7, r3
	ldrb	r1, [r7, #2]
	ldrb	r3, [r7, #1]
	ldrb	r2, [r7]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	mov	r3, r8
	cmp	r3, #0
	beq	.L150
	mov	r1, r9
	movs	r0, r4
	blx	r8
.L150:
	movs	r0, #10
	bl	putchar
	movs	r3, #0
	ldrb	r4, [r7]
	str	r3, [sp, #36]
	cmp	r4, #0
	bne	.LCB965
	b	.L178	@long jump
.LCB965:
	str	r7, [sp, #44]
	mov	r7, r8
	mov	r8, r5
.L171:
	movs	r3, #6
	str	r3, [sp, #20]
.L152:
	movs	r0, #32
	bl	putchar
	ldr	r3, [sp, #20]
	subs	r3, r3, #1
	str	r3, [sp, #20]
	cmp	r3, #0
	bne	.L152
	mov	r2, fp
	lsls	r3, r4, #1
	ldr	r5, [r2]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r5, r5, r3
	ldrb	r1, [r5, #2]
	ldrb	r3, [r5, #1]
	ldrb	r2, [r5]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	cmp	r7, #0
	beq	.L153
	mov	r1, r9
	movs	r0, r4
	blx	r7
.L153:
	movs	r0, #10
	bl	putchar
	ldrb	r4, [r5]
	cmp	r4, #0
	bne	.LCB1006
	b	.L154	@long jump
.LCB1006:
	str	r6, [sp, #48]
	mov	r6, r10
	mov	r10, r9
	mov	r9, r8
	mov	r8, r5
.L170:
	movs	r3, #8
	str	r3, [sp, #16]
.L155:
	movs	r0, #32
	bl	putchar
	ldr	r3, [sp, #16]
	subs	r3, r3, #1
	str	r3, [sp, #16]
	cmp	r3, #0
	bne	.L155
	mov	r2, fp
	lsls	r3, r4, #1
	ldr	r5, [r2]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r5, r5, r3
	ldrb	r1, [r5, #2]
	ldrb	r3, [r5, #1]
	ldrb	r2, [r5]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	cmp	r7, #0
	beq	.L156
	mov	r1, r10
	movs	r0, r4
	blx	r7
.L156:
	movs	r0, #10
	bl	putchar
	ldrb	r4, [r5]
	cmp	r4, #0
	bne	.LCB1049
	b	.L157	@long jump
.LCB1049:
	mov	r3, r9
	str	r5, [sp, #56]
	mov	r5, r8
	mov	r8, r7
	movs	r7, r6
	str	r3, [sp, #52]
.L169:
	movs	r3, #10
	str	r3, [sp, #24]
.L158:
	movs	r0, #32
	bl	putchar
	ldr	r3, [sp, #24]
	subs	r3, r3, #1
	str	r3, [sp, #24]
	cmp	r3, #0
	bne	.L158
	mov	r2, fp
	lsls	r3, r4, #1
	ldr	r6, [r2]
	adds	r3, r3, r4
	subs	r3, r3, #3
	adds	r6, r6, r3
	ldrb	r1, [r6, #2]
	ldrb	r3, [r6, #1]
	ldrb	r2, [r6]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r4
	bl	printf
	mov	r3, r8
	cmp	r3, #0
	beq	.L159
	mov	r1, r10
	movs	r0, r4
	blx	r8
.L159:
	movs	r0, #10
	bl	putchar
	ldrb	r3, [r6]
	mov	r9, r3
	cmp	r3, #0
	beq	.L160
	mov	r3, r8
	mov	r8, r5
	mov	r5, r9
	mov	r9, r6
	movs	r6, r3
	str	r7, [sp, #60]
.L168:
	movs	r4, #12
.L161:
	movs	r0, #32
	subs	r4, r4, #1
	bl	putchar
	cmp	r4, #0
	bne	.L161
	mov	r2, fp
	lsls	r3, r5, #1
	ldr	r2, [r2]
	adds	r3, r3, r5
	subs	r3, r3, #3
	adds	r1, r2, r3
	str	r1, [sp, #40]
	ldrb	r3, [r1, #1]
	ldrb	r2, [r1]
	ldrb	r1, [r1, #2]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r5
	bl	printf
	cmp	r6, #0
	beq	.L162
	mov	r1, r10
	movs	r0, r5
	blx	r6
.L162:
	movs	r0, #10
	bl	putchar
	ldr	r3, [sp, #40]
	ldrb	r7, [r3]
	cmp	r7, #0
	beq	.L163
.L167:
	movs	r5, #14
.L164:
	movs	r0, #32
	subs	r5, r5, #1
	bl	putchar
	cmp	r5, #0
	bne	.L164
	mov	r2, fp
	lsls	r3, r7, #1
	ldr	r5, [r2]
	adds	r3, r3, r7
	subs	r3, r3, #3
	adds	r5, r5, r3
	ldrb	r1, [r5, #2]
	ldrb	r3, [r5, #1]
	ldrb	r2, [r5]
	ldr	r0, [sp, #12]
	str	r1, [sp]
	movs	r1, r7
	bl	printf
	cmp	r6, #0
	bne	.LCB1163
	b	.L165	@long jump
.LCB1163:
	mov	r1, r10
	movs	r0, r7
	blx	r6
	movs	r0, #10
	bl	putchar
	movs	r3, #8
	ldrb	r1, [r5]
	movs	r2, r6
	str	r3, [sp]
	mov	r3, r10
.L227:
	mov	r0, fp
	bl	ph_dump_node
	ldrb	r7, [r5, #1]
	adds	r4, r4, #1
	adds	r4, r4, r0
	cmp	r7, #0
	bne	.L167
.L163:
	ldr	r3, [sp, #40]
	ldrb	r5, [r3, #1]
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	adds	r3, r3, r4
	str	r3, [sp, #24]
	cmp	r5, #0
	bne	.L168
	mov	r5, r8
	mov	r8, r6
	mov	r6, r9
	ldr	r7, [sp, #60]
.L160:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	mov	ip, r2
	adds	r3, r3, #1
	add	ip, ip, r3
	mov	r3, ip
	ldrb	r4, [r6, #1]
	str	r3, [sp, #16]
	cmp	r4, #0
	beq	.LCB1208
	b	.L169	@long jump
.LCB1208:
	ldr	r3, [sp, #52]
	movs	r6, r7
	mov	r9, r3
	mov	r7, r8
	mov	r8, r5
	ldr	r5, [sp, #56]
.L157:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	mov	ip, r2
	adds	r3, r3, #1
	add	ip, ip, r3
	mov	r3, ip
	ldrb	r4, [r5, #1]
	str	r3, [sp, #20]
	cmp	r4, #0
	beq	.LCB1226
	b	.L170	@long jump
.LCB1226:
	mov	r5, r8
	mov	r8, r9
	mov	r9, r10
	mov	r10, r6
	ldr	r6, [sp, #48]
.L154:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #36]
	mov	ip, r2
	adds	r3, r3, #1
	add	ip, ip, r3
	mov	r3, ip
	ldrb	r4, [r5, #1]
	str	r3, [sp, #36]
	cmp	r4, #0
	beq	.LCB1243
	b	.L171	@long jump
.LCB1243:
	movs	r2, r3
	mov	r5, r8
	mov	r8, r7
	ldr	r7, [sp, #44]
.L151:
	mov	ip, r2
	ldr	r3, [sp, #32]
	ldrb	r4, [r7, #1]
	adds	r3, r3, #1
	add	ip, ip, r3
	mov	r3, ip
	str	r3, [sp, #32]
	cmp	r4, #0
	beq	.LCB1258
	b	.L172	@long jump
.LCB1258:
	mov	r3, r9
	mov	r9, r8
	mov	r8, r3
.L149:
	mov	r3, r10
	ldr	r2, [sp, #32]
	ldrb	r4, [r3, #1]
	mov	ip, r2
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	add	ip, ip, r3
	mov	r3, ip
	str	r3, [sp, #28]
	cmp	r4, #0
	beq	.LCB1275
	b	.L173	@long jump
.LCB1275:
	mov	r10, r8
.L147:
	mov	ip, r3
	ldrb	r4, [r6, #1]
	adds	r5, r5, #1
	add	r5, r5, ip
	cmp	r4, #0
	beq	.LCB1284
	b	.L174	@long jump
.LCB1284:
.L145:
	movs	r1, r5
	ldr	r0, .L228+4
	bl	printf
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7, pc}
.L165:
	movs	r0, #10
	bl	putchar
	movs	r3, #8
	ldrb	r1, [r5]
	movs	r2, #0
	str	r3, [sp]
	mov	r3, r10
	b	.L227
.L178:
	movs	r2, r3
	b	.L151
.L229:
	.align	2
.L228:
	.word	.LC0
	.word	.LC3
	.size	ph_dump, .-ph_dump
	.ident	"GCC: (Arch Repository) 13.1.0"
