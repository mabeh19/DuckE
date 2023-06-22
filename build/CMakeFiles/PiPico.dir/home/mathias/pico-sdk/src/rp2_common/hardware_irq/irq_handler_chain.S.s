# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S"






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
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 1
# 9 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S" 2


.syntax unified
.cpu cortex-m0plus
.thumb

.data
.align 2

.global irq_handler_chain_slots

.global irq_handler_chain_first_slot
.global irq_handler_chain_remove_tail
# 33 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S"
irq_handler_chain_slots:
.set next_slot_number, 1
.rept 4u

    .hword 0
    .hword 0

    .hword 0


.if next_slot_number == 4u
    .byte 0xff
.else
    .byte next_slot_number
.endif

    .byte 0x00
1:

    .word 0x00000000
    .set next_slot_number, next_slot_number + 1
.endr

irq_handler_chain_first_slot:
    push {r0, lr}


    ldr r0, [r1, #4]
    adds r1, #1
    mov lr, r1
    bx r0

irq_handler_chain_remove_tail:
    mov r0, lr
    subs r0, #9
    ldr r1, =irq_add_tail_to_free_list
    blx r1
    pop {r0, pc}
