# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 1
# 28 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 12 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 1
# 10 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdbool.h" 1 3 4
# 11 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 2







# 1 "/usr/arm-none-eabi/include/assert.h" 1 3
# 9 "/usr/arm-none-eabi/include/assert.h" 3
# 1 "/usr/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/usr/arm-none-eabi/include/_ansi.h" 3
# 1 "/usr/arm-none-eabi/include/newlib.h" 1 3
# 10 "/usr/arm-none-eabi/include/newlib.h" 3
# 1 "/usr/arm-none-eabi/include/_newlib_version.h" 1 3
# 11 "/usr/arm-none-eabi/include/newlib.h" 2 3
# 11 "/usr/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/usr/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/usr/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/usr/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/usr/arm-none-eabi/include/_ansi.h" 2 3
# 10 "/usr/arm-none-eabi/include/assert.h" 2 3
# 39 "/usr/arm-none-eabi/include/assert.h" 3

# 39 "/usr/arm-none-eabi/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 19 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 2
# 39 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"

# 39 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
extern void hard_assertion_failure(void);
static inline void hard_assert(
# 40 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 3 4
                              _Bool 
# 40 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
                                   condition, ...) {
    if (!condition)
        hard_assertion_failure();
}
# 13 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2

# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/usr/arm-none-eabi/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/machine/_default_types.h" 1 3 4
# 41 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/usr/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/usr/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/usr/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/usr/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/usr/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/usr/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/usr/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/usr/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 2 3 4
# 15 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2

# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 329 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 425 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
} max_align_t;
# 17 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 2


# 18 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef unsigned int uint;
# 31 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef uint64_t absolute_time_t;
# 44 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
static inline uint64_t to_us_since_boot(absolute_time_t t) {

    return t;



}
# 59 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
static inline void update_us_since_boot(absolute_time_t *t, uint64_t us_since_boot) {

    *t = us_since_boot;




}







static inline absolute_time_t from_us_since_boot(uint64_t us_since_boot) {
    absolute_time_t t;
    update_us_since_boot(&t, us_since_boot);
    return t;
}
# 93 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
typedef struct {
    int16_t year;
    int8_t month;
    int8_t day;
    int8_t dotw;
    int8_t hour;
    int8_t min;
    int8_t sec;
} datetime_t;
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
# 71 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
# 1 "/usr/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/usr/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 48 "/usr/arm-none-eabi/include/sys/cdefs.h" 2 3
# 72 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 73 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 2
# 268 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline void __breakpoint(void) {
    __asm__("bkpt #0");
}
# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 284 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static void __compiler_memory_barrier(void) {
    __asm__ volatile ("" : : : "memory");
}
# 304 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
void __attribute__((noreturn)) panic_unsupported(void);
# 315 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
void __attribute__((noreturn)) panic(const char *fmt, ...);
# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3 4
_Bool 
# 331 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
    running_on_fpga(void);






uint8_t rp2040_chip_version(void);





static inline uint8_t rp2040_rom_version(void) {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Warray-bounds"
    return *(uint8_t*)0x13;
#pragma GCC diagnostic pop
}
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static 
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
      __inline__ __attribute__((__always_inline__)) 
# 358 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
                     void tight_loop_contents(void) {}
# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"

# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 370 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static int32_t __mul_instruction(int32_t a, int32_t b) {
    asm ("mul %0, %1" : "+l" (a) : "l" (b) : );
    return a;
}
# 405 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline uint __get_current_exception(void) {
    uint exception;
    asm ("mrs %0, ipsr" : "=l" (exception));
    return exception;
}
# 432 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
static inline void busy_wait_at_least_cycles(uint32_t minimum_cycles) {
    __asm volatile (
        ".syntax unified\n"
        "1: subs %0, #3\n"
        "bcs 1b\n"
        : "+r" (minimum_cycles) : : "memory"
    );
}







# 446 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h" 3
__inline__ __attribute__((__always_inline__)) 
# 446 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
              static uint get_core_num(void) {
    return (*(uint32_t *) (0xd0000000u + 0x00000000u));
}
# 34 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h" 1
# 16 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/error.h"
enum pico_error_codes {
    PICO_OK = 0,
    PICO_ERROR_NONE = 0,
    PICO_ERROR_TIMEOUT = -1,
    PICO_ERROR_GENERIC = -2,
    PICO_ERROR_NO_DATA = -3,
    PICO_ERROR_NOT_PERMITTED = -4,
    PICO_ERROR_INVALID_ARG = -5,
    PICO_ERROR_IO = -6,
    PICO_ERROR_BADAUTH = -7,
    PICO_ERROR_CONNECT_FAILED = -8,
};
# 35 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 2
# 29 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 1
# 63 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
typedef volatile uint32_t io_rw_32;
typedef const volatile uint32_t io_ro_32;
typedef volatile uint32_t io_wo_32;
typedef volatile uint16_t io_rw_16;
typedef const volatile uint16_t io_ro_16;
typedef volatile uint16_t io_wo_16;
typedef volatile uint8_t io_rw_8;
typedef const volatile uint8_t io_ro_8;
typedef volatile uint8_t io_wo_8;

typedef volatile uint8_t *const ioptr;
typedef ioptr const const_ioptr;
# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 93 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static uint32_t xip_alias_check_addr(const void *addr) {
    uint32_t rc = (uintptr_t)addr;
    ({if (((0 || 0) && !0)) 
# 95 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
   ((void)0)
# 95 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
   ;});
    return rc;
}
# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 121 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_set_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x2u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}








# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_clear_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x3u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}








# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_xor_bits(io_rw_32 *addr, uint32_t mask) {
    *(io_rw_32 *) ((void *)((0x1u << 12u) | ((uintptr_t)((volatile void *) addr)))) = mask;
}
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"

# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 3
__inline__ __attribute__((__always_inline__)) 
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
              static void hw_write_masked(io_rw_32 *addr, uint32_t values, uint32_t write_mask) {
    hw_xor_bits(addr, (*addr ^ values) & write_mask);
}
# 30 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/intctrl.h" 1
# 31 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/m0plus.h" 1
# 32 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 2
# 128 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
typedef void (*irq_handler_t)(void);

static inline void check_irq_param(
# 130 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3
                                  __attribute__((__unused__)) 
# 130 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                           uint num) {
    ({if (((0 || 0) && !0)) 
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3
   ((void)0)
# 131 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
   ;});
}
# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_priority(uint num, uint8_t hardware_priority);
# 161 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
uint irq_get_priority(uint num);







void irq_set_enabled(uint num, 
# 169 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                              _Bool 
# 169 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                   enabled);








# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    irq_is_enabled(uint num);







void irq_set_mask_enabled(uint32_t mask, 
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                                        _Bool 
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                                             enabled);
# 201 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_exclusive_handler(uint num, irq_handler_t handler);
# 214 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
irq_handler_t irq_get_exclusive_handler(uint num);
# 240 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_add_shared_handler(uint num, irq_handler_t handler, uint8_t order_priority);
# 258 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_remove_handler(uint num, irq_handler_t handler);








# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    irq_has_shared_handler(uint num);
# 275 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
irq_handler_t irq_get_vtable_handler(uint num);
# 286 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
static inline void irq_clear(uint int_num) {
    *((volatile uint32_t *) (0xe0000000u + 0x0000e280u)) = (1u << ((uint32_t) (int_num & 0x1F)));
}
# 297 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void irq_set_pending(uint num);






void irq_init_priorities(void);
# 318 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void user_irq_claim(uint irq_num);
# 334 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
void user_irq_unclaim(uint irq_num);
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
int user_irq_claim_unused(
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
                         _Bool 
# 349 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
                              required);
# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"

# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h" 3 4
_Bool 
# 366 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/include/hardware/irq.h"
    user_irq_is_claimed(uint irq_num);
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 2


# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/scb.h" 1
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/scb.h"
typedef struct {
   






    io_ro_32 cpuid;

   
# 44 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/scb.h"
    io_rw_32 icsr;

   


    io_rw_32 vtor;

   





    io_rw_32 aircr;

   




    io_rw_32 scr;
} armv6m_scb_t;
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 1
# 56 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
typedef volatile uint32_t spin_lock_t;
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 117 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __sev(void) {
    __asm volatile ("sev");
}








# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 127 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __wfe(void) {
    __asm volatile ("wfe");
}







# 136 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 136 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __wfi(void) {
    __asm volatile ("wfi");
}








# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 146 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __dmb(void) {
    __asm volatile ("dmb" : : : "memory");
}
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 157 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __dsb(void) {
    __asm volatile ("dsb" : : : "memory");
}
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __isb(void) {
    __asm volatile ("isb");
}





# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 175 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __mem_fence_acquire(void) {



    __dmb();





}






# 191 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 191 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void __mem_fence_release(void) {



    __dmb();





}







# 208 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 208 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint32_t save_and_disable_interrupts(void) {
    uint32_t status;
    __asm volatile ("mrs %0, PRIMASK" : "=r" (status)::);
    __asm volatile ("cpsid i");
    return status;
}







# 220 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 220 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void restore_interrupts(uint32_t status) {
    __asm volatile ("msr PRIMASK,%0"::"r" (status) : );
}








# 230 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 230 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static spin_lock_t *spin_lock_instance(uint lock_num) {
    ({if (((0 || 0) && !0)) 
# 231 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   ((void)0)
# 231 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   ;});
    return (spin_lock_t *) (0xd0000000u + 0x00000100u + lock_num * 4);
}








# 241 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 241 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint spin_lock_get_num(spin_lock_t *lock) {
    ({if (((0 || 0) && !0)) 
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   ((void)0)
# 242 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   ;})

                                                                                                       ;
    return (uint) (lock - (spin_lock_t *) (0xd0000000u + 0x00000100u));
}







# 253 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 253 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_lock_unsafe_blocking(spin_lock_t *lock) {



    while (__builtin_expect(!*lock, 0));
    __mem_fence_acquire();
}







# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 266 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_unlock_unsafe(spin_lock_t *lock) {
    __mem_fence_release();
    *lock = 0;
}
# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 279 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static uint32_t spin_lock_blocking(spin_lock_t *lock) {
    uint32_t save = save_and_disable_interrupts();
    spin_lock_unsafe_blocking(lock);
    return save;
}






inline static 
# 290 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
             _Bool 
# 290 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
                  is_spin_locked(spin_lock_t *lock) {
    
# 291 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
   _Static_assert
# 291 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
   (sizeof(spin_lock_t) == (4), "hw size mismatch");
    uint lock_num = spin_lock_get_num(lock);
    return 0 != (*(io_ro_32 *) (0xd0000000u + 0x0000005cu) & (1u << lock_num));
}
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3
__inline__ __attribute__((__always_inline__)) 
# 307 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
              static void spin_unlock(spin_lock_t *lock, uint32_t saved_irq) {
    spin_unlock_unsafe(lock);
    restore_interrupts(saved_irq);
}
# 320 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
spin_lock_t *spin_lock_init(uint lock_num);




void spin_locks_reset(void);
# 342 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
uint next_striped_spin_lock_num(void);
# 353 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_claim(uint lock_num);
# 364 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_claim_mask(uint32_t lock_num_mask);
# 373 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
void spin_lock_unclaim(uint lock_num);







int spin_lock_claim_unused(
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
                          _Bool 
# 381 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
                               required);
# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"

# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h" 3 4
_Bool 
# 391 "/home/mathias/pico-sdk/src/rp2_common/hardware_sync/include/hardware/sync.h"
    spin_lock_is_claimed(uint lock_num);
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 2
# 48 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_or_assert(uint8_t *bits, uint bit_index, const char *message);
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
int hw_claim_unused_from_range(uint8_t *bits, 
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 3 4
                                             _Bool 
# 60 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
                                                  required, uint bit_lsb, uint bit_msb, const char *message);
# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"

# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h" 3 4
_Bool 
# 71 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
    hw_is_claimed(const uint8_t *bits, uint bit_index);
# 81 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_clear(uint8_t *bits, uint bit_index);
# 94 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
uint32_t hw_claim_lock(void);
# 103 "/home/mathias/pico-sdk/src/rp2_common/hardware_claim/include/hardware/claim.h"
void hw_claim_unlock(uint32_t token);
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 2

# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 1
# 10 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h" 1
# 11 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 1
# 11 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/timer.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
typedef struct {
   

    io_wo_32 timehw;

   

    io_wo_32 timelw;

   

    io_ro_32 timehr;

   

    io_ro_32 timelr;

   



    io_rw_32 alarm[4u];

   


    io_rw_32 armed;

   

    io_ro_32 timerawh;

   

    io_ro_32 timerawl;

   



    io_rw_32 dbgpause;

   


    io_rw_32 pause;

   





    io_rw_32 intr;

   





    io_rw_32 inte;

   





    io_rw_32 intf;

   





    io_ro_32 ints;
} timer_hw_t;




# 105 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 3
_Static_assert
# 105 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
            ( 4u == 4, "");
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 2
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
static inline void check_hardware_alarm_num_param(
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3
                                                 __attribute__((__unused__)) 
# 53 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                                                          uint alarm_num) {
    ({if (((0 || 0) && !0)) 
# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3
   ((void)0)
# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
   ;});
}
# 65 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
static inline uint32_t time_us_32(void) {
    return ((timer_hw_t *)0x40054000u)->timerawl;
}
# 78 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
uint64_t time_us_64(void);






void busy_wait_us_32(uint32_t delay_us);






void busy_wait_us(uint64_t delay_us);






void busy_wait_ms(uint32_t delay_ms);






void busy_wait_until(absolute_time_t t);







static inline 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
             _Bool 
# 114 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                  time_reached(absolute_time_t t) {
    uint64_t target = to_us_since_boot(t);
    uint32_t hi_target = (uint32_t)(target >> 32u);
    uint32_t hi = ((timer_hw_t *)0x40054000u)->timerawh;
    return (hi >= hi_target && (((timer_hw_t *)0x40054000u)->timerawl >= (uint32_t) target || hi != hi_target));
}







typedef void (*hardware_alarm_callback_t)(uint alarm_num);
# 137 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_claim(uint alarm_num);
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
int hardware_alarm_claim_unused(
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
                               _Bool 
# 147 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
                                    required);







void hardware_alarm_unclaim(uint alarm_num);
# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"

# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
_Bool 
# 164 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
    hardware_alarm_is_claimed(uint alarm_num);
# 182 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_set_callback(uint alarm_num, hardware_alarm_callback_t callback);
# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"

# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 3 4
_Bool 
# 194 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
    hardware_alarm_set_target(uint alarm_num, absolute_time_t t);







void hardware_alarm_cancel(uint alarm_num);
# 216 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
void hardware_alarm_force_irq(uint alarm_num);
# 12 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 2
# 61 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline absolute_time_t get_absolute_time(void) {
    absolute_time_t t;
    update_us_since_boot(&t, time_us_64());
    return t;
}

static inline uint32_t us_to_ms(uint64_t us) {
    if (us >> 32u) {
        return (uint32_t)(us / 1000u);
    } else {
        return ((uint32_t)us) / 1000u;
    }
}
# 82 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline uint32_t to_ms_since_boot(absolute_time_t t) {
    uint64_t us = to_us_since_boot(t);
    return us_to_ms(us);
}
# 94 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline absolute_time_t delayed_by_us(const absolute_time_t t, uint64_t us) {
    absolute_time_t t2;
    uint64_t base = to_us_since_boot(t);
    uint64_t delayed = base + us;
    if ((int64_t)delayed < 0) {

        delayed = 
# 100 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                 (0x7fffffffffffffffLL)
# 100 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                          ;
    }
    update_us_since_boot(&t2, delayed);
    return t2;
}
# 113 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline absolute_time_t delayed_by_ms(const absolute_time_t t, uint32_t ms) {
    absolute_time_t t2;
    uint64_t base = to_us_since_boot(t);
    uint64_t delayed = base + ms * 1000ull;
    if ((int64_t)delayed < 0) {

        delayed = 
# 119 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                 (0x7fffffffffffffffLL)
# 119 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                          ;
    }
    update_us_since_boot(&t2, delayed);
    return t2;
}







static inline absolute_time_t make_timeout_time_us(uint64_t us) {
    return delayed_by_us(get_absolute_time(), us);
}







static inline absolute_time_t make_timeout_time_ms(uint32_t ms) {
    return delayed_by_ms(get_absolute_time(), ms);
}
# 156 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline int64_t absolute_time_diff_us(absolute_time_t from, absolute_time_t to) {
    return (int64_t)(to_us_since_boot(to) - to_us_since_boot(from));
}
# 167 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline absolute_time_t absolute_time_min(absolute_time_t a, absolute_time_t b) {
    return to_us_since_boot(a) < to_us_since_boot(b) ? a : b;
}






extern const absolute_time_t at_the_end_of_time;







static inline 
# 184 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 184 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  is_at_the_end_of_time(absolute_time_t t) {
    return to_us_since_boot(t) == to_us_since_boot(at_the_end_of_time);
}




extern const absolute_time_t nil_time;







static inline 
# 199 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 199 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  is_nil_time(absolute_time_t t) {
    return !to_us_since_boot(t);
}
# 232 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
void sleep_until(absolute_time_t target);
# 242 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
void sleep_us(uint64_t us);
# 251 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
void sleep_ms(uint32_t ms);
# 286 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"

# 286 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
_Bool 
# 286 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
    best_effort_wfe_or_timeout(absolute_time_t timeout_timestamp);
# 359 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
typedef int32_t alarm_id_t;
# 370 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
typedef int64_t (*alarm_callback_t)(alarm_id_t id, void *user_data);

typedef struct alarm_pool alarm_pool_t;





void alarm_pool_init_default(void);
# 388 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
alarm_pool_t *alarm_pool_get_default(void);
# 409 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
alarm_pool_t *alarm_pool_create(uint hardware_alarm_num, uint max_timers);
# 428 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
alarm_pool_t *alarm_pool_create_with_unused_hardware_alarm(uint max_timers);







uint alarm_pool_hardware_alarm_num(alarm_pool_t *pool);







uint alarm_pool_core_num(alarm_pool_t *pool);







void alarm_pool_destroy(alarm_pool_t *pool);
# 477 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
alarm_id_t alarm_pool_add_alarm_at(alarm_pool_t *pool, absolute_time_t time, alarm_callback_t callback, void *user_data, 
# 477 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                                        _Bool 
# 477 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                                             fire_if_past);
# 496 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
alarm_id_t alarm_pool_add_alarm_at_force_in_context(alarm_pool_t *pool, absolute_time_t time, alarm_callback_t callback,
                                                    void *user_data);
# 521 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline alarm_id_t alarm_pool_add_alarm_in_us(alarm_pool_t *pool, uint64_t us, alarm_callback_t callback, void *user_data, 
# 521 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                                                _Bool 
# 521 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                                                     fire_if_past) {
    return alarm_pool_add_alarm_at(pool, delayed_by_us(get_absolute_time(), us), callback, user_data, fire_if_past);
}
# 548 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline alarm_id_t alarm_pool_add_alarm_in_ms(alarm_pool_t *pool, uint32_t ms, alarm_callback_t callback, void *user_data, 
# 548 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                                                _Bool 
# 548 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                                                     fire_if_past) {
    return alarm_pool_add_alarm_at(pool, delayed_by_ms(get_absolute_time(), ms), callback, user_data, fire_if_past);
}
# 560 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"

# 560 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
_Bool 
# 560 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
    alarm_pool_cancel_alarm(alarm_pool_t *pool, alarm_id_t alarm_id);
# 585 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline alarm_id_t add_alarm_at(absolute_time_t time, alarm_callback_t callback, void *user_data, 
# 585 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                       _Bool 
# 585 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                            fire_if_past) {
    return alarm_pool_add_alarm_at(alarm_pool_get_default(), time, callback, user_data, fire_if_past);
}
# 611 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline alarm_id_t add_alarm_in_us(uint64_t us, alarm_callback_t callback, void *user_data, 
# 611 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                 _Bool 
# 611 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                      fire_if_past) {
    return alarm_pool_add_alarm_in_us(alarm_pool_get_default(), us, callback, user_data, fire_if_past);
}
# 637 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline alarm_id_t add_alarm_in_ms(uint32_t ms, alarm_callback_t callback, void *user_data, 
# 637 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
                                                                                                 _Bool 
# 637 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                                                                                                      fire_if_past) {
    return alarm_pool_add_alarm_in_ms(alarm_pool_get_default(), ms, callback, user_data, fire_if_past);
}







static inline 
# 647 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 647 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  cancel_alarm(alarm_id_t alarm_id) {
    return alarm_pool_cancel_alarm(alarm_pool_get_default(), alarm_id);
}
# 663 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
typedef struct repeating_timer repeating_timer_t;







typedef 
# 671 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
       _Bool 
# 671 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
            (*repeating_timer_callback_t)(repeating_timer_t *rt);






struct repeating_timer {
    int64_t delay_us;
    alarm_pool_t *pool;
    alarm_id_t alarm_id;
    repeating_timer_callback_t callback;
    void *user_data;
};
# 704 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"

# 704 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
_Bool 
# 704 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
    alarm_pool_add_repeating_timer_us(alarm_pool_t *pool, int64_t delay_us, repeating_timer_callback_t callback, void *user_data, repeating_timer_t *out);
# 724 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline 
# 724 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 724 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  alarm_pool_add_repeating_timer_ms(alarm_pool_t *pool, int32_t delay_ms, repeating_timer_callback_t callback, void *user_data, repeating_timer_t *out) {
    return alarm_pool_add_repeating_timer_us(pool, delay_ms * (int64_t)1000, callback, user_data, out);
}
# 746 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline 
# 746 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 746 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  add_repeating_timer_us(int64_t delay_us, repeating_timer_callback_t callback, void *user_data, repeating_timer_t *out) {
    return alarm_pool_add_repeating_timer_us(alarm_pool_get_default(), delay_us, callback, user_data, out);
}
# 767 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
static inline 
# 767 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
             _Bool 
# 767 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
                  add_repeating_timer_ms(int32_t delay_ms, repeating_timer_callback_t callback, void *user_data, repeating_timer_t *out) {
    return alarm_pool_add_repeating_timer_us(alarm_pool_get_default(), delay_ms * (int64_t)1000, callback, user_data, out);
}
# 779 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"

# 779 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 3 4
_Bool 
# 779 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
    cancel_repeating_timer(repeating_timer_t *timer);
# 12 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h" 2
# 53 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
struct lock_core {

    spin_lock_t *spin_lock;



};

typedef struct lock_core lock_core_t;
# 72 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
void lock_init(lock_core_t *core, uint lock_num);
# 11 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 2
# 47 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
typedef struct 
# 47 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3
              __attribute__((__packed__)) __attribute__((__aligned__(
# 47 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
              4
# 47 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3
              ))) 
# 47 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
                                {
    lock_core_t core;
    int8_t owner;
    uint8_t enter_count;



} recursive_mutex_t;





typedef struct 
# 60 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3
              __attribute__((__packed__)) __attribute__((__aligned__(
# 60 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
              4
# 60 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3
              ))) 
# 60 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
                               mutex {
    lock_core_t core;
    int8_t owner;
} mutex_t;
# 73 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
void mutex_init(mutex_t *mtx);
# 82 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
void recursive_mutex_init(recursive_mutex_t *mtx);
# 92 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
void mutex_enter_blocking(mutex_t *mtx);
# 102 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
void recursive_mutex_enter_blocking(recursive_mutex_t *mtx);
# 115 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 115 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 115 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    mutex_try_enter(mutex_t *mtx, uint32_t *owner_out);
# 129 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 129 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 129 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    mutex_try_enter_block_until(mutex_t *mtx, absolute_time_t until);
# 143 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 143 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 143 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    recursive_mutex_try_enter(recursive_mutex_t *mtx, uint32_t *owner_out);
# 156 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 156 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 156 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    mutex_enter_timeout_ms(mutex_t *mtx, uint32_t timeout_ms);
# 170 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 170 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 170 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    recursive_mutex_enter_timeout_ms(recursive_mutex_t *mtx, uint32_t timeout_ms);
# 184 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 184 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 184 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    mutex_enter_timeout_us(mutex_t *mtx, uint32_t timeout_us);
# 198 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 198 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 198 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    recursive_mutex_enter_timeout_us(recursive_mutex_t *mtx, uint32_t timeout_us);
# 212 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 212 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 212 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    mutex_enter_block_until(mutex_t *mtx, absolute_time_t until);
# 226 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"

# 226 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
_Bool 
# 226 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
    recursive_mutex_enter_block_until(recursive_mutex_t *mtx, absolute_time_t until);






void mutex_exit(mutex_t *mtx);






void recursive_mutex_exit(recursive_mutex_t *mtx);







static inline 
# 248 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
             _Bool 
# 248 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
                  mutex_is_initialized(mutex_t *mtx) {
    return mtx->core.spin_lock != 0;
}







static inline 
# 258 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 3 4
             _Bool 
# 258 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h"
                  recursive_mutex_is_initialized(recursive_mutex_t *mtx) {
    return mtx->core.spin_lock != 0;
}
# 14 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 2


extern void __unhandled_user_irq(void);







static uint8_t user_irq_claimed;
static inline uint8_t *user_irq_claimed_ptr(void) {
    return &user_irq_claimed;
}


static inline irq_handler_t *get_vtable(void) {
    return (irq_handler_t *) ((armv6m_scb_t *)(0xe0000000u + 0x0000ed00u))->vtor;
}

static inline void *add_thumb_bit(void *addr) {
    return (void *) (((uintptr_t) addr) | 0x1);
}

static inline void *remove_thumb_bit(void *addr) {
    return (void *) (((uintptr_t) addr) & (uint)~0x1);
}

static void set_raw_irq_handler_and_unlock(uint num, irq_handler_t handler, uint32_t save) {

    get_vtable()[16 + num] = handler;
    __dmb();
    spin_unlock(spin_lock_instance(9), save);
}

void irq_set_enabled(uint num, 
# 49 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                              _Bool 
# 49 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                   enabled) {
    check_irq_param(num);
    irq_set_mask_enabled(1u << num, enabled);
}


# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
_Bool 
# 54 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
    irq_is_enabled(uint num) {
    check_irq_param(num);
    return 0 != ((1u << num) & *((io_rw_32 *) (0xe0000000u + 0x0000e100u)));
}

void irq_set_mask_enabled(uint32_t mask, 
# 59 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                                        _Bool 
# 59 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                             enabled) {
    if (enabled) {


        *((io_rw_32 *) (0xe0000000u + 0x0000e280u)) = mask;
        *((io_rw_32 *) (0xe0000000u + 0x0000e100u)) = mask;
    } else {
        *((io_rw_32 *) (0xe0000000u + 0x0000e180u)) = mask;
    }
}

void irq_set_pending(uint num) {
    check_irq_param(num);
    *((io_rw_32 *) (0xe0000000u + 0x0000e200u)) = 1u << num;
}




# 77 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
_Static_assert
# 77 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
            (4u >= 1 && 4u < 0x7f, "");


extern void irq_handler_chain_first_slot(void);
extern void irq_handler_chain_remove_tail(void);

extern struct irq_handler_chain_slot {


    uint16_t inst1;
    uint16_t inst2;
    uint16_t inst3;
    union {




        struct {
            int8_t link;
            uint8_t priority;
        };
        uint16_t inst4;
    };
    irq_handler_t handler;
} irq_handler_chain_slots[4u];

static int8_t irq_hander_chain_free_slot_head;

static inline 
# 105 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
             _Bool 
# 105 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                  is_shared_irq_raw_handler(irq_handler_t raw_handler) {
    return (uintptr_t)raw_handler - (uintptr_t)irq_handler_chain_slots < sizeof(irq_handler_chain_slots);
}


# 109 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
_Bool 
# 109 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
    irq_has_shared_handler(uint irq_num) {
    check_irq_param(irq_num);
    irq_handler_t handler = irq_get_vtable_handler(irq_num);
    return handler && is_shared_irq_raw_handler(handler);
}
# 123 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
irq_handler_t irq_get_vtable_handler(uint num) {
    check_irq_param(num);
    return get_vtable()[16 + num];
}

void irq_set_exclusive_handler(uint num, irq_handler_t handler) {
    check_irq_param(num);

    spin_lock_t *lock = spin_lock_instance(9);
    uint32_t save = spin_lock_blocking(lock);
    
# 133 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   __attribute__((__unused__)) 
# 133 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
            irq_handler_t current = irq_get_vtable_handler(num);
    hard_assert(current == __unhandled_user_irq || current == handler);
    set_raw_irq_handler_and_unlock(num, handler, save);



}

irq_handler_t irq_get_exclusive_handler(uint num) {
    check_irq_param(num);

    spin_lock_t *lock = spin_lock_instance(9);
    uint32_t save = spin_lock_blocking(lock);
    irq_handler_t current = irq_get_vtable_handler(num);
    spin_unlock(lock, save);
    if (current == __unhandled_user_irq || is_shared_irq_raw_handler(current)) {
        return 
# 149 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
              ((void *)0)
# 149 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                  ;
    }
    return current;



}



static uint16_t make_branch(uint16_t *from, void *to) {
    uint32_t ui_from = (uint32_t)from;
    uint32_t ui_to = (uint32_t)to;
    int32_t delta = (int32_t)(ui_to - ui_from - 4);
    
# 163 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 163 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                                          ;
    return (uint16_t)(0xe000 | ((delta >> 1) & 0x7ff));
}

static void insert_branch_and_link(uint16_t *from, void *to) {
    uint32_t ui_from = (uint32_t)from;
    uint32_t ui_to = (uint32_t)to;
    uint32_t delta = (ui_to - ui_from - 4) / 2;
    
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                          ;
    from[0] = (uint16_t)(0xf000 | ((delta >> 11u) & 0x7ffu));
    from[1] = (uint16_t)(0xf800 | (delta & 0x7ffu));
}

static inline void *resolve_branch(uint16_t *inst) {
    
# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 177 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                               ;
    int32_t i_addr = (*inst) << 21u;
    i_addr /= (int32_t)(1u<<21u);
    return inst + 2 + i_addr;
}


static inline int8_t slot_diff(struct irq_handler_chain_slot *to, struct irq_handler_chain_slot *from) {
    
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   _Static_assert
# 185 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                (sizeof(struct irq_handler_chain_slot) == 12, "");
    int32_t result = 0xaaaa;


    asm (".syntax unified\n"
         "subs %1, %2\n"
         "adcs %1, %1\n"
         "muls %0, %1\n"
         "lsrs %0, 20\n"
         : "+l" (result), "+l" (to)
         : "l" (from)
         :
         );
    return (int8_t)result;
}

static inline int8_t get_slot_index(struct irq_handler_chain_slot *slot) {
    return slot_diff(slot, irq_handler_chain_slots);
}


void irq_add_shared_handler(uint num, irq_handler_t handler, uint8_t order_priority) {
    check_irq_param(num);





    spin_lock_t *lock = spin_lock_instance(9);
    uint32_t save = spin_lock_blocking(lock);
    hard_assert(irq_hander_chain_free_slot_head >= 0);
    struct irq_handler_chain_slot *slot = &irq_handler_chain_slots[irq_hander_chain_free_slot_head];
    int8_t slot_index = irq_hander_chain_free_slot_head;
    irq_hander_chain_free_slot_head = slot->link;
    irq_handler_t vtable_handler = get_vtable()[16 + num];
    if (!is_shared_irq_raw_handler(vtable_handler)) {

        hard_assert(vtable_handler == __unhandled_user_irq);
        struct irq_handler_chain_slot slot_data = {
                .inst1 = 0xa100,
                .inst2 = make_branch(&slot->inst2, irq_handler_chain_first_slot),
                .inst3 = 0xbd01,
                .link = -1,
                .priority = order_priority,
                .handler = handler
        };
        *slot = slot_data;
        vtable_handler = (irq_handler_t)add_thumb_bit(slot);
    } else {
        
# 234 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
       ((void)0)
# 234 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                                                                                                                ;
        struct irq_handler_chain_slot *prev_slot = 
# 235 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                                                  ((void *)0)
# 235 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                                      ;
        struct irq_handler_chain_slot *existing_vtable_slot = remove_thumb_bit(vtable_handler);
        struct irq_handler_chain_slot *cur_slot = existing_vtable_slot;
        while (cur_slot->priority > order_priority) {
            prev_slot = cur_slot;
            if (cur_slot->link < 0) break;
            cur_slot = &irq_handler_chain_slots[cur_slot->link];
        }
        if (prev_slot) {

            struct irq_handler_chain_slot slot_data = {
                    .inst1 = 0x4801,
                    .inst2 = 0x4780,
                    .inst3 = prev_slot->link >= 0 ?
                            make_branch(&slot->inst3, resolve_branch(&prev_slot->inst3)) :
                            0xbd01,
                    .link = prev_slot->link,
                    .priority = order_priority,
                    .handler = handler
            };

            prev_slot->inst3 = make_branch(&prev_slot->inst3, slot),
            prev_slot->link = slot_index;
            *slot = slot_data;
        } else {

            struct irq_handler_chain_slot slot_data = {
                    .inst1 = 0xa100,
                    .inst2 = make_branch(&slot->inst2, irq_handler_chain_first_slot),
                    .inst3 = make_branch(&slot->inst3, existing_vtable_slot),
                    .link = get_slot_index(existing_vtable_slot),
                    .priority = order_priority,
                    .handler = handler
            };
            *slot = slot_data;

            existing_vtable_slot->inst1 = 0x4801;
            existing_vtable_slot->inst2 = 0x4780;
            vtable_handler = (irq_handler_t)add_thumb_bit(slot);
        }
    }
    set_raw_irq_handler_and_unlock(num, vtable_handler, save);

}

void irq_remove_handler(uint num, irq_handler_t handler) {

    spin_lock_t *lock = spin_lock_instance(9);
    uint32_t save = spin_lock_blocking(lock);
    irq_handler_t vtable_handler = get_vtable()[16 + num];
    if (vtable_handler != __unhandled_user_irq && vtable_handler != handler) {

        if (is_shared_irq_raw_handler(vtable_handler)) {




            
# 292 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
           _Bool 
# 292 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                was_enabled = irq_is_enabled(num);
            irq_set_enabled(num, 
# 293 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                                0
# 293 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                     );
            __dmb();
# 308 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
            uint exception = __get_current_exception();
            hard_assert(!exception || exception == num + 16);

            struct irq_handler_chain_slot *prev_slot = 
# 311 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                                                      ((void *)0)
# 311 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                                          ;
            struct irq_handler_chain_slot *existing_vtable_slot = remove_thumb_bit(vtable_handler);
            struct irq_handler_chain_slot *to_free_slot = existing_vtable_slot;
            while (to_free_slot->handler != handler) {
                prev_slot = to_free_slot;
                if (to_free_slot->link < 0) break;
                to_free_slot = &irq_handler_chain_slots[to_free_slot->link];
            }
            if (to_free_slot->handler == handler) {
                int8_t next_slot_index = to_free_slot->link;
                if (next_slot_index >= 0) {




                    struct irq_handler_chain_slot *next_slot = &irq_handler_chain_slots[next_slot_index];
                    to_free_slot->handler = next_slot->handler;
                    to_free_slot->priority = next_slot->priority;
                    to_free_slot->link = next_slot->link;
                    to_free_slot->inst3 = next_slot->link >= 0 ?
                            make_branch(&to_free_slot->inst3, resolve_branch(&next_slot->inst3)) :
                            0xbd01;


                    next_slot->link = irq_hander_chain_free_slot_head;
                    irq_hander_chain_free_slot_head = next_slot_index;
                } else {

                    if (!exception) {

                        if (prev_slot) {

                            prev_slot->link = -1;
                            prev_slot->inst3 = 0xbd01;
                        } else {

                            vtable_handler = __unhandled_user_irq;
                        }

                        to_free_slot->link = irq_hander_chain_free_slot_head;
                        irq_hander_chain_free_slot_head = get_slot_index(to_free_slot);
                    } else {




                        insert_branch_and_link(&to_free_slot->inst3, irq_handler_chain_remove_tail);
                    }
                }
            } else {
                
# 361 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
               ((void)0)
# 361 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                            ;
            }
            irq_set_enabled(num, was_enabled);
        }



    } else {
        vtable_handler = __unhandled_user_irq;
    }
    set_raw_irq_handler_and_unlock(num, vtable_handler, save);



}

void irq_set_priority(uint num, uint8_t hardware_priority) {
    check_irq_param(num);


    io_rw_32 *p = (io_rw_32 *)((0xe0000000u + 0x0000e400u) + (num & ~3u));
    *p = (*p & ~(0xffu << (8 * (num & 3u)))) | (((uint32_t) hardware_priority) << (8 * (num & 3u)));
}

uint irq_get_priority(uint num) {
    check_irq_param(num);


    io_rw_32 *p = (io_rw_32 *)((0xe0000000u + 0x0000e400u) + (num & ~3u));
    return (uint8_t)(*p >> (8 * (num & 3u)));
}




void irq_add_tail_to_free_list(struct irq_handler_chain_slot *slot) {
    irq_handler_t slot_handler = (irq_handler_t) add_thumb_bit(slot);
    
# 398 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 398 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                                  ;

    uint exception = __get_current_exception();
    
# 401 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 401 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                    ;
    spin_lock_t *lock = spin_lock_instance(9);
    uint32_t save = spin_lock_blocking(lock);
    int8_t slot_index = get_slot_index(slot);
    if (slot_handler == get_vtable()[exception]) {
        get_vtable()[exception] = __unhandled_user_irq;
    } else {
        
# 408 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
       _Bool __attribute__((__unused__)) 
# 408 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                     found = 
# 408 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                             0
# 408 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                                  ;

        for(uint i=0;i<(sizeof(irq_handler_chain_slots)/sizeof((irq_handler_chain_slots)[0]));i++) {
            if (irq_handler_chain_slots[i].link == slot_index) {
                irq_handler_chain_slots[i].link = -1;
                irq_handler_chain_slots[i].inst3 = 0xbd01;
                found = 
# 414 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                       1
# 414 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                           ;
                break;
            }
        }
        
# 418 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
       ((void)0)
# 418 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                    ;
    }

    slot->link = irq_hander_chain_free_slot_head;
    irq_hander_chain_free_slot_head = slot_index;
    spin_unlock(lock, save);
}


void irq_init_priorities() {

    
# 429 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   _Static_assert
# 429 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                (!(32u & 3), "");
    uint32_t prio4 = (0x80 & 0xff) * 0x1010101u;
    io_rw_32 * p = (io_rw_32 *)(0xe0000000u + 0x0000e400u);
    for (uint i = 0; i < 32u / 4; i++) {
        *p++ = prio4;
    }

}

static uint get_user_irq_claim_index(uint irq_num) {
    ({if (((0 || 0) && !0)) 
# 439 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   ((void)0)
# 439 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
   ;});

    
# 441 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3
   _Static_assert
# 441 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                (32u - (32u - 6u) <= 8, "");
    return 32u - irq_num - 1u;
}

void user_irq_claim(uint irq_num) {
    hw_claim_or_assert(user_irq_claimed_ptr(), get_user_irq_claim_index(irq_num), "User IRQ is already claimed");
}

void user_irq_unclaim(uint irq_num) {
    hw_claim_clear(user_irq_claimed_ptr(), get_user_irq_claim_index(irq_num));
}

int user_irq_claim_unused(
# 453 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
                         _Bool 
# 453 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
                              required) {
    int bit = hw_claim_unused_from_range(user_irq_claimed_ptr(), required, 0, 6u - 1, "No user IRQs are available");
    if (bit >= 0) bit = (int)32u - bit - 1;
    return bit;
}


# 459 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c" 3 4
_Bool 
# 459 "/home/mathias/pico-sdk/src/rp2_common/hardware_irq/irq.c"
    user_irq_is_claimed(uint irq_num) {
    return hw_is_claimed(user_irq_claimed_ptr(), get_user_irq_claim_index(irq_num));
}
