# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S"






.syntax unified
.cpu cortex-m0plus
.thumb

# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/asm_helper.S" 1






# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 25 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/version.h" 1
# 26 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2





# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h" 1
# 19 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h"
# 1 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 1






# 1 "/home/mathias/pico-sdk/src/boards/include/boards/pico_w.h" 1
# 8 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 2



# 1 "/home/mathias/pico-sdk/src/rp2_common/cmsis/include/cmsis/rename_exceptions.h" 1
# 12 "/home/mathias/Documents/C/PiPico/build/generated/pico_base/pico/config_autogen.h" 2
# 20 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/config.h" 2
# 32 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2

# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 1
# 19 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/platform_defs.h" 1
# 20 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/addressmap.h" 1
# 21 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/sio.h" 1
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 34 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h" 1
# 35 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 8 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/asm_helper.S" 2


.macro regular_func x
.global \x
.type \x,%function
.thumb_func
\x:
.endm

.macro regular_func_with_section x
.section .text.\x
regular_func \x
.endm


.macro wrapper_func x
regular_func __wrap_\x
.endm

.macro __pre_init func, priority_string
.section .preinit_array.\priority_string
.align 2
.word \func
.endm
# 12 "/home/mathias/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S" 2

__pre_init __aeabi_mem_init, 00001

.macro mem_section name



.section .text.\name, "ax"

.endm

.equ MEMSET, 0
.equ MEMCPY, 4
.equ MEMSET4, 8
.equ MEMCPY4, 12
.equ MEM_FUNC_COUNT, 4

# NOTE: All code sections are placed in RAM (at the expense of some veneer cost for calls from flash) because
# otherwise code using basic c division operators will require XIP flash access.

.section .data.aeabi_mem_funcs
.global aeabi_mem_funcs, aeabi_mem_funcs_end

.align 2
aeabi_mem_funcs:
    .word (('M') | (('S') << 8))
    .word (('M') | (('C') << 8))
    .word (('S') | (('4') << 8))
    .word (('C') | (('4') << 8))
aeabi_mem_funcs_end:

.section .text
regular_func __aeabi_mem_init
    ldr r0, =aeabi_mem_funcs
    movs r1, #MEM_FUNC_COUNT
    ldr r3, =rom_funcs_lookup
    bx r3

# lump them both together because likely both to be used, in which case doing so saves 1 word
# and it only costs 1 word if not






mem_section aeabi_memset_memcpy

wrapper_func __aeabi_memset

    eors r2, r1
    eors r1, r2
    eors r2, r1
    ldr r3, =aeabi_mem_funcs
    ldr r3, [r3, #MEMSET]
    bx r3

wrapper_func __aeabi_memset4
wrapper_func __aeabi_memset8

    eors r2, r1
    eors r1, r2
    eors r2, r1
    ldr r3, =aeabi_mem_funcs
    ldr r3, [r3, #MEMSET4]
    bx r3

wrapper_func __aeabi_memcpy4
wrapper_func __aeabi_memcpy8
    ldr r3, =aeabi_mem_funcs
    ldr r3, [r3, #MEMCPY4]
    bx r3

mem_section memset

wrapper_func memset
    ldr r3, =aeabi_mem_funcs
    ldr r3, [r3, #MEMSET]
    bx r3

mem_section memcpy
wrapper_func __aeabi_memcpy
wrapper_func memcpy
    ldr r3, =aeabi_mem_funcs
    ldr r3, [r3, #MEMCPY]
    bx r3
