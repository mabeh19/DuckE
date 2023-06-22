# 0 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h"
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
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_base/include/hardware/address_mapped.h" 2
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
# 8 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 2

# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/uart.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h" 2
# 23 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
typedef struct {
   






    io_rw_32 dr;

   





    io_rw_32 rsr;

    uint32_t _pad0[4];

   
# 54 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_ro_32 fr;

    uint32_t _pad1;

   


    io_rw_32 ilpr;

   


    io_rw_32 ibrd;

   


    io_rw_32 fbrd;

   
# 82 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_rw_32 lcr_h;

   
# 98 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_rw_32 cr;

   



    io_rw_32 ifls;

   
# 119 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_rw_32 imsc;

   
# 134 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_ro_32 ris;

   
# 149 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_ro_32 mis;

   
# 164 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/uart.h"
    io_rw_32 icr;

   




    io_rw_32 dmacr;
} uart_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/dreq.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 2
# 72 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
typedef struct uart_inst uart_inst_t;
# 100 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline uint uart_get_index(uart_inst_t *uart) {
    ({if (((0 || 0) && !0)) 
# 101 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   ((void)0)
# 101 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
   ;});
    return uart == ((uart_inst_t *)((uart_hw_t *)0x40038000u)) ? 1 : 0;
}

static inline uart_inst_t *uart_get_instance(uint instance) {
    
# 106 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   _Static_assert
# 106 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                (2u == 2, "");
    ({if (((0 || 0) && !0)) 
# 107 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   ((void)0)
# 107 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
   ;});
    return instance ? ((uart_inst_t *)((uart_hw_t *)0x40038000u)) : ((uart_inst_t *)((uart_hw_t *)0x40034000u));
}

static inline uart_hw_t *uart_get_hw(uart_inst_t *uart) {
    uart_get_index(uart);
    return (uart_hw_t *)uart;
}




typedef enum {
    UART_PARITY_NONE,
    UART_PARITY_EVEN,
    UART_PARITY_ODD
} uart_parity_t;
# 141 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
uint uart_init(uart_inst_t *uart, uint baudrate);
# 151 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
void uart_deinit(uart_inst_t *uart);
# 162 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
uint uart_set_baudrate(uart_inst_t *uart, uint baudrate);
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_set_hw_flow(uart_inst_t *uart, 
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                      _Bool 
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                           cts, 
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                                _Bool 
# 171 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                                     rts) {
    hw_write_masked(&uart_get_hw(uart)->cr,
                   (((uint)!!(cts)) << 15u) | (((uint)!!(rts)) << 14u),
                   0x00004000u | 0x00008000u);
}
# 187 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_set_format(uart_inst_t *uart, uint data_bits, uint stop_bits, uart_parity_t parity) {
    ({if (((0 || 0) && !0)) 
# 188 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   ((void)0)
# 188 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
   ;});
    ({if (((0 || 0) && !0)) 
# 189 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   ((void)0)
# 189 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
   ;});
    ({if (((0 || 0) && !0)) 
# 190 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   ((void)0)
# 190 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
   ;});
    hw_write_masked(&uart_get_hw(uart)->lcr_h,
                   ((data_bits - 5u) << 5u) |
                   ((stop_bits - 1u) << 3u) |
                   (((uint)!!(parity != UART_PARITY_NONE)) << 1u) |
                   (((uint)!!(parity == UART_PARITY_EVEN)) << 2u),
                   0x00000060u |
                   0x00000008u |
                   0x00000002u |
                   0x00000004u);
}
# 212 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_set_irq_enables(uart_inst_t *uart, 
# 212 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                          _Bool 
# 212 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                               rx_has_data, 
# 212 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                                            _Bool 
# 212 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                                                 tx_needs_data) {




    uart_get_hw(uart)->imsc = (((uint)!!(tx_needs_data)) << 5u) |
                              (((uint)!!(rx_has_data)) << 4u) |
                              (((uint)!!(rx_has_data)) << 6u);
    if (rx_has_data) {

        hw_write_masked(&uart_get_hw(uart)->ifls, 0 << 3u,
                        0x00000038u);
    }
    if (tx_needs_data) {

        hw_write_masked(&uart_get_hw(uart)->ifls, 0 << 0u,
                        0x00000007u);
    }
}







static inline 
# 238 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
             _Bool 
# 238 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                  uart_is_enabled(uart_inst_t *uart) {
    return !!(uart_get_hw(uart)->cr & 0x00000001u);
}







static inline void uart_set_fifo_enabled(uart_inst_t *uart, 
# 248 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                           _Bool 
# 248 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                                enabled) {
    hw_write_masked(&uart_get_hw(uart)->lcr_h,
                   (((uint)!!(enabled)) << 4u),
                   0x00000010u);
}
# 264 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline 
# 264 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
             _Bool 
# 264 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                  uart_is_writable(uart_inst_t *uart) {
    return !(uart_get_hw(uart)->fr & 0x00000020u);
}






static inline void uart_tx_wait_blocking(uart_inst_t *uart) {
    while (uart_get_hw(uart)->fr & 0x00000008u) tight_loop_contents();
}
# 284 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline 
# 284 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
             _Bool 
# 284 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                  uart_is_readable(uart_inst_t *uart) {

    return !(uart_get_hw(uart)->fr & 0x00000010u);
}
# 298 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_write_blocking(uart_inst_t *uart, const uint8_t *src, size_t len) {
    for (size_t i = 0; i < len; ++i) {
        while (!uart_is_writable(uart))
            tight_loop_contents();
        uart_get_hw(uart)->dr = *src++;
    }
}
# 315 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_read_blocking(uart_inst_t *uart, uint8_t *dst, size_t len) {
    for (size_t i = 0; i < len; ++i) {
        while (!uart_is_readable(uart))
            tight_loop_contents();
        *dst++ = (uint8_t) uart_get_hw(uart)->dr;
    }
}
# 334 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_putc_raw(uart_inst_t *uart, char c) {
    uart_write_blocking(uart, (const uint8_t *) &c, 1);
}
# 346 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_putc(uart_inst_t *uart, char c) {

    extern short uart_char_to_line_feed[2u];
    if (uart_char_to_line_feed[uart_get_index(uart)] == c)
        uart_putc_raw(uart, '\r');

    uart_putc_raw(uart, c);
}
# 363 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline void uart_puts(uart_inst_t *uart, const char *s) {

    
# 365 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
   _Bool 
# 365 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
        last_was_cr = 
# 365 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                      0
# 365 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                           ;
    while (*s) {

        if (last_was_cr)
            uart_putc_raw(uart, *s);
        else
            uart_putc(uart, *s);
        last_was_cr = *s++ == '\r';
    }




}
# 388 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
static inline char uart_getc(uart_inst_t *uart) {
    char c;
    uart_read_blocking(uart, (uint8_t *) &c, 1);
    return c;
}







static inline void uart_set_break(uart_inst_t *uart, 
# 400 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                    _Bool 
# 400 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                         en) {
    if (en)
        hw_set_bits(&uart_get_hw(uart)->lcr_h, 0x00000001u);
    else
        hw_clear_bits(&uart_get_hw(uart)->lcr_h, 0x00000001u);
}







void uart_set_translate_crlf(uart_inst_t *uart, 
# 413 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                               _Bool 
# 413 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                    translate);




static inline void uart_default_tx_wait_blocking(void) {

    uart_tx_wait_blocking((((uart_inst_t *)((uart_hw_t *)0x40034000u))));



}
# 433 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"

# 433 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
_Bool 
# 433 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
    uart_is_readable_within_us(uart_inst_t *uart, uint32_t us);







static inline uint uart_get_dreq(uart_inst_t *uart, 
# 441 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3 4
                                                   _Bool 
# 441 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                                                        is_tx) {
    
# 442 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   _Static_assert
# 442 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                (0x15 == 0x14 + 1, "");
    
# 443 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   _Static_assert
# 443 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                (0x17 == 0x16 + 1, "");
    
# 444 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h" 3
   _Static_assert
# 444 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/include/hardware/uart.h"
                (0x16 == 0x14 + 2, "");
    return 0x14 + uart_get_index(uart) * 2 + !is_tx;
}
# 10 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 2


# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_resets/include/hardware/resets.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_resets/include/hardware/resets.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/resets.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h" 2
# 24 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h"
typedef struct {
   
# 52 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h"
    io_rw_32 reset;

   
# 81 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h"
    io_rw_32 wdsel;

   
# 110 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/resets.h"
    io_ro_32 reset_done;
} resets_hw_t;
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_resets/include/hardware/resets.h" 2
# 70 "/home/mathias/pico-sdk/src/rp2_common/hardware_resets/include/hardware/resets.h"
static inline void reset_block(uint32_t bits) {
    hw_set_bits(&((resets_hw_t *)0x4000c000u)->reset, bits);
}






static inline void unreset_block(uint32_t bits) {
    hw_clear_bits(&((resets_hw_t *)0x4000c000u)->reset, bits);
}






static inline void unreset_block_wait(uint32_t bits) {
    hw_clear_bits(&((resets_hw_t *)0x4000c000u)->reset, bits);
    while (~((resets_hw_t *)0x4000c000u)->reset_done & bits)
        tight_loop_contents();
}
# 13 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 1
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_regs/include/hardware/regs/clocks.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 2
# 27 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
enum clock_index {
    clk_gpout0 = 0,
    clk_gpout1,
    clk_gpout2,
    clk_gpout3,
    clk_ref,
    clk_sys,
    clk_peri,
    clk_usb,
    clk_adc,
    clk_rtc,
    CLK_COUNT
};



typedef struct {
   







    io_rw_32 ctrl;

   



    io_rw_32 div;

   

    io_ro_32 selected;
} clock_hw_t;


typedef struct {
   




    io_rw_32 ctrl;

   

    io_ro_32 status;
} clock_resus_hw_t;

typedef struct {
   


    io_rw_32 ref_khz;

   


    io_rw_32 min_khz;

   


    io_rw_32 max_khz;

   


    io_rw_32 delay;

   


    io_rw_32 interval;

   


    io_rw_32 src;

   
# 120 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 status;

   



    io_ro_32 result;
} fc_hw_t;

typedef struct {
    clock_hw_t clk[CLK_COUNT];

    clock_resus_hw_t resus;

    fc_hw_t fc0;

   
# 170 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 wake_en0;

   
# 189 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 wake_en1;

   
# 225 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 sleep_en0;

   
# 244 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_rw_32 sleep_en1;

   
# 280 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 enabled0;

   
# 299 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
    io_ro_32 enabled1;

   


    io_ro_32 intr;

   


    io_rw_32 inte;

   


    io_rw_32 intf;

   


    io_ro_32 ints;
} clocks_hw_t;




# 324 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h" 3
_Static_assert
# 324 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/clocks.h"
            ( CLK_COUNT == 10, "");
# 12 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 2
# 102 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clocks_init(void);
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"

# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 3 4
_Bool 
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
    clock_configure(enum clock_index clk_index, uint32_t src, uint32_t auxsrc, uint32_t src_freq, uint32_t freq);






void clock_stop(enum clock_index clk_index);







uint32_t clock_get_hz(enum clock_index clk_index);







uint32_t frequency_count_khz(uint src);






void clock_set_reported_hz(enum clock_index clk_index, uint hz);


static inline float frequency_count_mhz(uint src) {
    return ((float) (frequency_count_khz(src))) / 1000;
}







typedef void (*resus_callback_t)(void);
# 168 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clocks_enable_resus(resus_callback_t resus_callback);
# 178 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
void clock_gpio_init_int_frac(uint gpio, uint src, uint32_t div_int, uint8_t div_frac);
# 187 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
static inline void clock_gpio_init(uint gpio, uint src, float div)
{
    uint div_int = (uint)div;
    uint8_t frac = (uint8_t)((div - (float)div_int) * (1u << 8u));
    clock_gpio_init_int_frac(gpio, src, div_int, frac);
}
# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"

# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h" 3 4
_Bool 
# 202 "/home/mathias/pico-sdk/src/rp2_common/hardware_clocks/include/hardware/clocks.h"
    clock_configure_gpin(enum clock_index clk_index, uint gpio, uint32_t src_freq, uint32_t freq);
# 14 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 2
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
# 15 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 2





# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
_Static_assert
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
(
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
__builtin_offsetof (
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
uart_hw_t
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
, 
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
fr
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
) 
# 19 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
== (0x00000018u), "hw offset mismatch");

# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
_Static_assert
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
(
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
__builtin_offsetof (
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
uart_hw_t
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
, 
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
dmacr
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
) 
# 20 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
== (0x00000048u), "hw offset mismatch");


short uart_char_to_line_feed[2u];



static inline void uart_reset(uart_inst_t *uart) {
    ({if (((0 || 0) && !0)) 
# 28 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
   ((void)0)
# 28 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
   ;});
    reset_block(uart_get_index(uart) ? 0x00800000u : 0x00400000u);
}

static inline void uart_unreset(uart_inst_t *uart) {
    ({if (((0 || 0) && !0)) 
# 33 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
   ((void)0)
# 33 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
   ;});
    unreset_block_wait(uart_get_index(uart) ? 0x00800000u : 0x00400000u);
}



uint uart_init(uart_inst_t *uart, uint baudrate) {
    ({if (((0 || 0) && !0)) 
# 40 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
   ((void)0)
# 40 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
   ;});

    if (clock_get_hz(clk_peri) == 0)
        return 0;

    uart_reset(uart);
    uart_unreset(uart);


    uart_set_translate_crlf(uart, 0);



    uint baud = uart_set_baudrate(uart, baudrate);
    uart_set_format(uart, 8, 1, UART_PARITY_NONE);


    uart_get_hw(uart)->cr = 0x00000001u | 0x00000100u | 0x00000200u;

    hw_set_bits(&uart_get_hw(uart)->lcr_h, 0x00000010u);

    uart_get_hw(uart)->dmacr = 0x00000002u | 0x00000001u;

    return baud;
}


void uart_deinit(uart_inst_t *uart) {
    ({if (((0 || 0) && !0)) 
# 68 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
   ((void)0)
# 68 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
   ;});
    uart_reset(uart);
}


uint uart_set_baudrate(uart_inst_t *uart, uint baudrate) {
    ({if (((0 || 0) && !0)) 
# 74 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3
   ((void)0)
# 74 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
   ;});
    uint32_t baud_rate_div = (8 * clock_get_hz(clk_peri) / baudrate);
    uint32_t baud_ibrd = baud_rate_div >> 7;
    uint32_t baud_fbrd;

    if (baud_ibrd == 0) {
        baud_ibrd = 1;
        baud_fbrd = 0;
    } else if (baud_ibrd >= 65535) {
        baud_ibrd = 65535;
        baud_fbrd = 0;
    } else {
        baud_fbrd = ((baud_rate_div & 0x7f) + 1) / 2;
    }


    uart_get_hw(uart)->ibrd = baud_ibrd;
    uart_get_hw(uart)->fbrd = baud_fbrd;



    hw_set_bits(&uart_get_hw(uart)->lcr_h, 0);


    return (4 * clock_get_hz(clk_peri)) / (64 * baud_ibrd + baud_fbrd);
}


void uart_set_translate_crlf(uart_inst_t *uart, 
# 102 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
                                               _Bool 
# 102 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
                                                    crlf) {

    uart_char_to_line_feed[uart_get_index(uart)] = crlf ? '\n' : 0x100;



}


# 110 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
_Bool 
# 110 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
    uart_is_readable_within_us(uart_inst_t *uart, uint32_t us) {
    uint32_t t = time_us_32();
    do {
        if (uart_is_readable(uart)) return 
# 113 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
                                          1
# 113 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
                                              ;
    } while ((time_us_32() - t) <= us);
    return 
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c" 3 4
          0
# 115 "/home/mathias/pico-sdk/src/rp2_common/hardware_uart/uart.c"
               ;
}
