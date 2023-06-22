# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S"






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
# 12 "/home/mathias/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S" 2

__pre_init __aeabi_bits_init, 00010

.macro bits_section name



.section .text.\name, "ax"

.endm

.section .data.aeabi_bits_funcs
.global aeabi_bits_funcs, aeabi_bits_funcs_end
.equ BITS_FUNC_COUNT, 4
.align 4
aeabi_bits_funcs:
    .word (('P') | (('3') << 8))
    .word (('L') | (('3') << 8))
    .word (('T') | (('3') << 8))
    .word (('R') | (('3') << 8))
aeabi_bits_funcs_end:

.section .text
.thumb_func
__aeabi_bits_init:
    ldr r0, =aeabi_bits_funcs
    movs r1, #BITS_FUNC_COUNT
    ldr r3, =rom_funcs_lookup
    bx r3

.equ POPCOUNT32, 0
.equ CLZ32, 4
.equ CTZ32, 8
.equ REVERSE32, 12

bits_section clzsi
wrapper_func __clz
wrapper_func __clzl
wrapper_func __clzsi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #CLZ32]
    bx r3

bits_section ctzsi
wrapper_func __ctzsi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #CTZ32]
    bx r3

bits_section popcountsi
wrapper_func __popcountsi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #POPCOUNT32]
    bx r3

bits_section clzdi
wrapper_func __clzll
wrapper_func __clzdi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #CLZ32]
    cmp r1, #0
    bne 1f
    push {lr}
    blx r3
    adds r0, #32
    pop {pc}
1:
    mov r0, r1
    bx r3

bits_section ctzdi
wrapper_func __ctzdi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #CTZ32]
    cmp r0, #0
    beq 1f
    bx r3
1:
    push {lr}
    mov r0, r1
    blx r3
    adds r0, #32
    pop {pc}

bits_section popcountdi
wrapper_func __popcountdi2
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #POPCOUNT32]
    push {r1, r3, lr}
    blx r3
    mov ip, r0
    pop {r0, r3}
    blx r3
    mov r1, ip
    add r0, r1
    pop {pc}

bits_section reverse32
regular_func reverse32
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #REVERSE32]
    bx r3

bits_section __rev
regular_func __rev
regular_func __revl
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #REVERSE32]
    bx r3

bits_section __revll
regular_func __revll
    push {lr}
    ldr r3, =aeabi_bits_funcs
    ldr r3, [r3, #REVERSE32]
    push {r1, r3}
    blx r3
    mov ip, r0
    pop {r0, r3}
    blx r3
    mov r1, ip
    pop {pc}
