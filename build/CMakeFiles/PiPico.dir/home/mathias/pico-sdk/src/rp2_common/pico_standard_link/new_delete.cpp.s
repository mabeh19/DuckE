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
	.file	"new_delete.cpp"
	.text
	.section	.text._Znwj,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_Znwj
	.syntax unified
	.code	16
	.thumb_func
	.type	_Znwj, %function
_Znwj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	malloc
	@ sp needed
	pop	{r4, pc}
	.size	_Znwj, .-_Znwj
	.section	.text._Znaj,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_Znaj
	.syntax unified
	.code	16
	.thumb_func
	.type	_Znaj, %function
_Znaj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	malloc
	@ sp needed
	pop	{r4, pc}
	.size	_Znaj, .-_Znaj
	.section	.text._ZdlPv,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_ZdlPv
	.syntax unified
	.code	16
	.thumb_func
	.type	_ZdlPv, %function
_ZdlPv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	free
	@ sp needed
	pop	{r4, pc}
	.size	_ZdlPv, .-_ZdlPv
	.section	.text._ZdaPv,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_ZdaPv
	.syntax unified
	.code	16
	.thumb_func
	.type	_ZdaPv, %function
_ZdaPv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	free
	@ sp needed
	pop	{r4, pc}
	.size	_ZdaPv, .-_ZdaPv
	.section	.text._ZdlPvj,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_ZdlPvj
	.syntax unified
	.code	16
	.thumb_func
	.type	_ZdlPvj, %function
_ZdlPvj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	free
	@ sp needed
	pop	{r4, pc}
	.size	_ZdlPvj, .-_ZdlPvj
	.section	.text._ZdaPvj,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_ZdaPvj
	.syntax unified
	.code	16
	.thumb_func
	.type	_ZdaPvj, %function
_ZdaPvj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	free
	@ sp needed
	pop	{r4, pc}
	.size	_ZdaPvj, .-_ZdaPvj
	.ident	"GCC: (Arch Repository) 13.1.0"
