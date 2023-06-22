# 0 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
# 27 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h" 1
# 30 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_compiler.h" 1
# 153 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_compiler.h"
         
# 31 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h" 2
# 184 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/tusb_config.h" 1
# 30 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/tusb_config.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h" 1
# 17 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
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
# 18 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h" 2
# 49 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
typedef struct stdio_driver stdio_driver_t;
# 63 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"

# 63 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h" 3 4
_Bool 
# 63 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
    stdio_init_all(void);




void stdio_flush(void);







int getchar_timeout_us(uint32_t timeout_us);
# 85 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
void stdio_set_driver_enabled(stdio_driver_t *driver, 
# 85 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h" 3 4
                                                     _Bool 
# 85 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
                                                          enabled);
# 95 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
void stdio_filter_driver(stdio_driver_t *driver);
# 105 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
void stdio_set_translate_crlf(stdio_driver_t *driver, 
# 105 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h" 3 4
                                                     _Bool 
# 105 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio/include/pico/stdio.h"
                                                          translate);




int putchar_raw(int c);




int puts_raw(const char *s);







void stdio_set_chars_available_callback(void (*fn)(void*), void *param);
# 11 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h" 2
# 119 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h"
extern stdio_driver_t stdio_usb;
# 130 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h"

# 130 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h" 3 4
_Bool 
# 130 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h"
    stdio_usb_init(void);







# 137 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h" 3 4
_Bool 
# 137 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/pico/stdio_usb.h"
    stdio_usb_connected(void);
# 31 "/home/mathias/pico-sdk/src/rp2_common/pico_stdio_usb/include/tusb_config.h" 2
# 185 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h" 2


# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_mcu.h" 1
# 188 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h" 2
# 436 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb_option.h"
typedef int make_iso_compilers_happy;
# 28 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2



# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 1
# 30 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 1
# 65 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 66 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 1 "/usr/arm-none-eabi/include/string.h" 1 3
# 11 "/usr/arm-none-eabi/include/string.h" 3
# 1 "/usr/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/usr/arm-none-eabi/include/sys/reent.h" 3
# 1 "/usr/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/usr/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 15 "/usr/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/usr/arm-none-eabi/include/sys/_types.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 359 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4

# 359 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/usr/arm-none-eabi/include/sys/_types.h" 2 3


# 1 "/usr/arm-none-eabi/include/machine/_types.h" 1 3
# 28 "/usr/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/usr/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/usr/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/usr/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/usr/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef long __daddr_t;



typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/usr/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/usr/arm-none-eabi/include/sys/reent.h" 3
# 1 "/usr/arm-none-eabi/include/sys/lock.h" 1 3
# 33 "/usr/arm-none-eabi/include/sys/lock.h" 3
struct __lock;
typedef struct __lock * _LOCK_T;






extern void __retarget_lock_init(_LOCK_T *lock);

extern void __retarget_lock_init_recursive(_LOCK_T *lock);

extern void __retarget_lock_close(_LOCK_T lock);

extern void __retarget_lock_close_recursive(_LOCK_T lock);

extern void __retarget_lock_acquire(_LOCK_T lock);

extern void __retarget_lock_acquire_recursive(_LOCK_T lock);

extern int __retarget_lock_try_acquire(_LOCK_T lock);

extern int __retarget_lock_try_acquire_recursive(_LOCK_T lock);


extern void __retarget_lock_release(_LOCK_T lock);

extern void __retarget_lock_release_recursive(_LOCK_T lock);
# 35 "/usr/arm-none-eabi/include/sys/reent.h" 2 3
typedef _LOCK_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/usr/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 115 "/usr/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 152 "/usr/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 269 "/usr/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



extern __FILE __sf[3];

struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};

extern struct _glue __sglue;
# 305 "/usr/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 567 "/usr/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];




  struct __locale_t *_locale;





  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {



          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;







    } _new;







  void (**_sig_func)(int);
};
# 765 "/usr/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;





extern struct _reent _impure_data ;
# 883 "/usr/arm-none-eabi/include/sys/reent.h" 3
extern struct _atexit *__atexit;
extern struct _atexit __atexit0;

extern void (*__stdio_exit_handler) (void);

void _reclaim_reent (struct _reent *);

extern int _fwalk_sglue (struct _reent *, int (*)(struct _reent *, __FILE *),
    struct _glue *);
# 12 "/usr/arm-none-eabi/include/string.h" 2 3





# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 18 "/usr/arm-none-eabi/include/string.h" 2 3


# 1 "/usr/arm-none-eabi/include/sys/_locale.h" 1 3
# 9 "/usr/arm-none-eabi/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/usr/arm-none-eabi/include/string.h" 2 3



# 1 "/usr/arm-none-eabi/include/strings.h" 1 3
# 44 "/usr/arm-none-eabi/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/usr/arm-none-eabi/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/usr/arm-none-eabi/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/usr/arm-none-eabi/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/usr/arm-none-eabi/include/string.h" 3
# 1 "/usr/arm-none-eabi/include/sys/string.h" 1 3
# 176 "/usr/arm-none-eabi/include/string.h" 2 3


# 67 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 1 "/usr/arm-none-eabi/include/stdio.h" 1 3
# 36 "/usr/arm-none-eabi/include/stdio.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 37 "/usr/arm-none-eabi/include/stdio.h" 2 3



# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/usr/arm-none-eabi/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 63 "/usr/arm-none-eabi/include/stdio.h" 3



typedef __FILE FILE;



typedef _fpos_t fpos_t;





typedef __off_t off_t;




typedef _ssize_t ssize_t;



# 1 "/usr/arm-none-eabi/include/sys/stdio.h" 1 3
# 86 "/usr/arm-none-eabi/include/stdio.h" 2 3
# 187 "/usr/arm-none-eabi/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 263 "/usr/arm-none-eabi/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 290 "/usr/arm-none-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 345 "/usr/arm-none-eabi/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 380 "/usr/arm-none-eabi/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 402 "/usr/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);
# 583 "/usr/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 607 "/usr/arm-none-eabi/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 691 "/usr/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 745 "/usr/arm-none-eabi/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 801 "/usr/arm-none-eabi/include/stdio.h" 3

# 68 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2



# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_compiler.h" 1
# 72 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_verify.h" 1
# 73 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h" 1
# 47 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h"

# 47 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h"
typedef enum
{
  TUSB_SPEED_FULL = 0,
  TUSB_SPEED_LOW = 1,
  TUSB_SPEED_HIGH = 2,
  TUSB_SPEED_INVALID = 0xff,
}tusb_speed_t;


typedef enum
{
  TUSB_XFER_CONTROL = 0 ,
  TUSB_XFER_ISOCHRONOUS ,
  TUSB_XFER_BULK ,
  TUSB_XFER_INTERRUPT
}tusb_xfer_type_t;

typedef enum
{
  TUSB_DIR_OUT = 0,
  TUSB_DIR_IN = 1,

  TUSB_DIR_IN_MASK = 0x80
}tusb_dir_t;

enum
{
  TUSB_EPSIZE_BULK_FS = 64,
  TUSB_EPSIZE_BULK_HS= 512,

  TUSB_EPSIZE_ISO_FS_MAX = 1023,
  TUSB_EPSIZE_ISO_HS_MAX = 1024,
};


typedef enum
{
  TUSB_ISO_EP_ATT_NO_SYNC = 0x00,
  TUSB_ISO_EP_ATT_ASYNCHRONOUS = 0x04,
  TUSB_ISO_EP_ATT_ADAPTIVE = 0x08,
  TUSB_ISO_EP_ATT_SYNCHRONOUS = 0x0C,
  TUSB_ISO_EP_ATT_DATA = 0x00,
  TUSB_ISO_EP_ATT_EXPLICIT_FB = 0x10,
  TUSB_ISO_EP_ATT_IMPLICIT_FB = 0x20,
}tusb_iso_ep_attribute_t;


typedef enum
{
  TUSB_DESC_DEVICE = 0x01,
  TUSB_DESC_CONFIGURATION = 0x02,
  TUSB_DESC_STRING = 0x03,
  TUSB_DESC_INTERFACE = 0x04,
  TUSB_DESC_ENDPOINT = 0x05,
  TUSB_DESC_DEVICE_QUALIFIER = 0x06,
  TUSB_DESC_OTHER_SPEED_CONFIG = 0x07,
  TUSB_DESC_INTERFACE_POWER = 0x08,
  TUSB_DESC_OTG = 0x09,
  TUSB_DESC_DEBUG = 0x0A,
  TUSB_DESC_INTERFACE_ASSOCIATION = 0x0B,

  TUSB_DESC_BOS = 0x0F,
  TUSB_DESC_DEVICE_CAPABILITY = 0x10,

  TUSB_DESC_FUNCTIONAL = 0x21,


  TUSB_DESC_CS_DEVICE = 0x21,
  TUSB_DESC_CS_CONFIGURATION = 0x22,
  TUSB_DESC_CS_STRING = 0x23,
  TUSB_DESC_CS_INTERFACE = 0x24,
  TUSB_DESC_CS_ENDPOINT = 0x25,

  TUSB_DESC_SUPERSPEED_ENDPOINT_COMPANION = 0x30,
  TUSB_DESC_SUPERSPEED_ISO_ENDPOINT_COMPANION = 0x31
}tusb_desc_type_t;

typedef enum
{
  TUSB_REQ_GET_STATUS = 0 ,
  TUSB_REQ_CLEAR_FEATURE = 1 ,
  TUSB_REQ_RESERVED = 2 ,
  TUSB_REQ_SET_FEATURE = 3 ,
  TUSB_REQ_RESERVED2 = 4 ,
  TUSB_REQ_SET_ADDRESS = 5 ,
  TUSB_REQ_GET_DESCRIPTOR = 6 ,
  TUSB_REQ_SET_DESCRIPTOR = 7 ,
  TUSB_REQ_GET_CONFIGURATION = 8 ,
  TUSB_REQ_SET_CONFIGURATION = 9 ,
  TUSB_REQ_GET_INTERFACE = 10 ,
  TUSB_REQ_SET_INTERFACE = 11 ,
  TUSB_REQ_SYNCH_FRAME = 12
}tusb_request_code_t;

typedef enum
{
  TUSB_REQ_FEATURE_EDPT_HALT = 0,
  TUSB_REQ_FEATURE_REMOTE_WAKEUP = 1,
  TUSB_REQ_FEATURE_TEST_MODE = 2
}tusb_request_feature_selector_t;

typedef enum
{
  TUSB_REQ_TYPE_STANDARD = 0,
  TUSB_REQ_TYPE_CLASS,
  TUSB_REQ_TYPE_VENDOR,
  TUSB_REQ_TYPE_INVALID
} tusb_request_type_t;

typedef enum
{
  TUSB_REQ_RCPT_DEVICE =0,
  TUSB_REQ_RCPT_INTERFACE,
  TUSB_REQ_RCPT_ENDPOINT,
  TUSB_REQ_RCPT_OTHER
} tusb_request_recipient_t;


typedef enum
{
  TUSB_CLASS_UNSPECIFIED = 0 ,
  TUSB_CLASS_AUDIO = 1 ,
  TUSB_CLASS_CDC = 2 ,
  TUSB_CLASS_HID = 3 ,
  TUSB_CLASS_RESERVED_4 = 4 ,
  TUSB_CLASS_PHYSICAL = 5 ,
  TUSB_CLASS_IMAGE = 6 ,
  TUSB_CLASS_PRINTER = 7 ,
  TUSB_CLASS_MSC = 8 ,
  TUSB_CLASS_HUB = 9 ,
  TUSB_CLASS_CDC_DATA = 10 ,
  TUSB_CLASS_SMART_CARD = 11 ,
  TUSB_CLASS_RESERVED_12 = 12 ,
  TUSB_CLASS_CONTENT_SECURITY = 13 ,
  TUSB_CLASS_VIDEO = 14 ,
  TUSB_CLASS_PERSONAL_HEALTHCARE = 15 ,
  TUSB_CLASS_AUDIO_VIDEO = 16 ,

  TUSB_CLASS_DIAGNOSTIC = 0xDC ,
  TUSB_CLASS_WIRELESS_CONTROLLER = 0xE0 ,
  TUSB_CLASS_MISC = 0xEF ,
  TUSB_CLASS_APPLICATION_SPECIFIC = 0xFE ,
  TUSB_CLASS_VENDOR_SPECIFIC = 0xFF
}tusb_class_code_t;

typedef enum
{
  MISC_SUBCLASS_COMMON = 2
}misc_subclass_type_t;

typedef enum
{
  MISC_PROTOCOL_IAD = 1
}misc_protocol_type_t;

typedef enum
{
  APP_SUBCLASS_USBTMC = 0x03,
  APP_SUBCLASS_DFU_RUNTIME = 0x01
} app_subclass_type_t;

typedef enum
{
  DEVICE_CAPABILITY_WIRELESS_USB = 0x01,
  DEVICE_CAPABILITY_USB20_EXTENSION = 0x02,
  DEVICE_CAPABILITY_SUPERSPEED_USB = 0x03,
  DEVICE_CAPABILITY_CONTAINER_id = 0x04,
  DEVICE_CAPABILITY_PLATFORM = 0x05,
  DEVICE_CAPABILITY_POWER_DELIVERY = 0x06,
  DEVICE_CAPABILITY_BATTERY_INFO = 0x07,
  DEVICE_CAPABILITY_PD_CONSUMER_PORT = 0x08,
  DEVICE_CAPABILITY_PD_PROVIDER_PORT = 0x09,
  DEVICE_CAPABILITY_SUPERSPEED_PLUS = 0x0A,
  DEVICE_CAPABILITY_PRECESION_TIME_MEASUREMENT = 0x0B,
  DEVICE_CAPABILITY_WIRELESS_USB_EXT = 0x0C,
  DEVICE_CAPABILITY_BILLBOARD = 0x0D,
  DEVICE_CAPABILITY_AUTHENTICATION = 0x0E,
  DEVICE_CAPABILITY_BILLBOARD_EX = 0x0F,
  DEVICE_CAPABILITY_CONFIGURATION_SUMMARY = 0x10
}device_capability_type_t;

enum {
  TUSB_DESC_CONFIG_ATT_REMOTE_WAKEUP = (1UL << (5)),
  TUSB_DESC_CONFIG_ATT_SELF_POWERED = (1UL << (6)),
};



typedef enum
{
  XFER_RESULT_SUCCESS = 0,
  XFER_RESULT_FAILED,
  XFER_RESULT_STALLED,
  XFER_RESULT_TIMEOUT,
  XFER_RESULT_INVALID
}xfer_result_t;

enum
{
  DESC_OFFSET_LEN = 0,
  DESC_OFFSET_TYPE = 1
};

enum
{
  INTERFACE_INVALID_NUMBER = 0xff
};

typedef enum
{
  MS_OS_20_SET_HEADER_DESCRIPTOR = 0x00,
  MS_OS_20_SUBSET_HEADER_CONFIGURATION = 0x01,
  MS_OS_20_SUBSET_HEADER_FUNCTION = 0x02,
  MS_OS_20_FEATURE_COMPATBLE_ID = 0x03,
  MS_OS_20_FEATURE_REG_PROPERTY = 0x04,
  MS_OS_20_FEATURE_MIN_RESUME_TIME = 0x05,
  MS_OS_20_FEATURE_MODEL_ID = 0x06,
  MS_OS_20_FEATURE_CCGP_DEVICE = 0x07,
  MS_OS_20_FEATURE_VENDOR_REVISION = 0x08
} microsoft_os_20_type_t;

enum
{
  CONTROL_STAGE_IDLE,
  CONTROL_STAGE_SETUP,
  CONTROL_STAGE_DATA,
  CONTROL_STAGE_ACK
};

enum
{
  TUSB_INDEX_INVALID = 0xff
};










typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t bcdUSB ;

  uint8_t bDeviceClass ;
  uint8_t bDeviceSubClass ;
  uint8_t bDeviceProtocol ;
  uint8_t bMaxPacketSize0 ;

  uint16_t idVendor ;
  uint16_t idProduct ;
  uint16_t bcdDevice ;
  uint8_t iManufacturer ;
  uint8_t iProduct ;
  uint8_t iSerialNumber ;

  uint8_t bNumConfigurations ;
} tusb_desc_device_t;

_Static_assert( sizeof(tusb_desc_device_t) == 18, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t wTotalLength ;
  uint8_t bNumDeviceCaps ;
} tusb_desc_bos_t;

_Static_assert( sizeof(tusb_desc_bos_t) == 5, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t wTotalLength ;

  uint8_t bNumInterfaces ;
  uint8_t bConfigurationValue ;
  uint8_t iConfiguration ;
  uint8_t bmAttributes ;
  uint8_t bMaxPower ;
} tusb_desc_configuration_t;

_Static_assert( sizeof(tusb_desc_configuration_t) == 9, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;

  uint8_t bInterfaceNumber ;
  uint8_t bAlternateSetting ;
  uint8_t bNumEndpoints ;
  uint8_t bInterfaceClass ;
  uint8_t bInterfaceSubClass ;
  uint8_t bInterfaceProtocol ;
  uint8_t iInterface ;
} tusb_desc_interface_t;

_Static_assert( sizeof(tusb_desc_interface_t) == 9, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;

  uint8_t bEndpointAddress ;

  struct __attribute__ ((packed)) {
    uint8_t xfer : 2;
    uint8_t sync : 2;
    uint8_t usage : 2;
    uint8_t : 2;
  } bmAttributes;

  uint16_t wMaxPacketSize ;
  uint8_t bInterval ;
} tusb_desc_endpoint_t;

_Static_assert( sizeof(tusb_desc_endpoint_t) == 7, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t wTotalLength ;

  uint8_t bNumInterfaces ;
  uint8_t bConfigurationValue ;
  uint8_t iConfiguration ;
  uint8_t bmAttributes ;
  uint8_t bMaxPower ;
} tusb_desc_other_speed_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t bcdUSB ;

  uint8_t bDeviceClass ;
  uint8_t bDeviceSubClass ;
  uint8_t bDeviceProtocol ;

  uint8_t bMaxPacketSize0 ;
  uint8_t bNumConfigurations ;
  uint8_t bReserved ;
} tusb_desc_device_qualifier_t;

_Static_assert( sizeof(tusb_desc_device_qualifier_t) == 10, "size is not correct");


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;

  uint8_t bFirstInterface ;
  uint8_t bInterfaceCount ;

  uint8_t bFunctionClass ;
  uint8_t bFunctionSubClass ;
  uint8_t bFunctionProtocol ;

  uint8_t iFunction ;
} tusb_desc_interface_assoc_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint16_t unicode_string[];
} tusb_desc_string_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength;
  uint8_t bDescriptorType ;
  uint8_t bDevCapabilityType;
  uint8_t bReserved;
  uint8_t PlatformCapabilityUUID[16];
  uint8_t CapabilityData[];
} tusb_desc_bos_platform_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength;
  uint8_t bDescriptorType;
  uint8_t bScheme;
  char url[];
} tusb_desc_webusb_url_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength;
  uint8_t bDescriptorType;

  union {
    struct __attribute__ ((packed)) {
      uint8_t bitCanDnload : 1;
      uint8_t bitCanUpload : 1;
      uint8_t bitManifestationTolerant : 1;
      uint8_t bitWillDetach : 1;
      uint8_t reserved : 4;
    } bmAttributes;

    uint8_t bAttributes;
  };

  uint16_t wDetachTimeOut;
  uint16_t wTransferSize;
  uint16_t bcdDFUVersion;
} tusb_desc_dfu_functional_t;




typedef struct __attribute__ ((packed)){
  union {
    struct __attribute__ ((packed)) {
      uint8_t recipient : 5;
      uint8_t type : 2;
      uint8_t direction : 1;
    } bmRequestType_bit;

    uint8_t bmRequestType;
  };

  uint8_t bRequest;
  uint16_t wValue;
  uint16_t wIndex;
  uint16_t wLength;
} tusb_control_request_t;

_Static_assert( sizeof(tusb_control_request_t) == 8, "size is not correct");










__attribute__ ((always_inline)) static inline tusb_dir_t tu_edpt_dir(uint8_t addr)
{
  return (addr & TUSB_DIR_IN_MASK) ? TUSB_DIR_IN : TUSB_DIR_OUT;
}


__attribute__ ((always_inline)) static inline uint8_t tu_edpt_number(uint8_t addr)
{
  return (uint8_t)(addr & (~TUSB_DIR_IN_MASK));
}

__attribute__ ((always_inline)) static inline uint8_t tu_edpt_addr(uint8_t num, uint8_t dir)
{
  return (uint8_t)(num | (dir ? TUSB_DIR_IN_MASK : 0));
}

__attribute__ ((always_inline)) static inline uint16_t tu_edpt_packet_size(tusb_desc_endpoint_t const* desc_ep)
{
  return (desc_ep->wMaxPacketSize) & ( (
# 526 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h" 3 4
                                              (0xffffffffUL) 
# 526 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h"
                                              << (0)) & (
# 526 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h" 3 4
                                              (0xffffffffUL) 
# 526 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h"
                                              >> (31 - (10))) );
}
# 548 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_types.h"
__attribute__ ((always_inline)) static inline uint8_t const * tu_desc_next(void const* desc)
{
  uint8_t const* desc8 = (uint8_t const*) desc;
  return desc8 + desc8[DESC_OFFSET_LEN];
}


__attribute__ ((always_inline)) static inline uint8_t tu_desc_type(void const* desc)
{
  return ((uint8_t const*) desc)[DESC_OFFSET_TYPE];
}


__attribute__ ((always_inline)) static inline uint8_t tu_desc_len(void const* desc)
{
  return ((uint8_t const*) desc)[DESC_OFFSET_LEN];
}


uint8_t const * tu_desc_find(uint8_t const* desc, uint8_t const* end, uint8_t byte1);


uint8_t const * tu_desc_find2(uint8_t const* desc, uint8_t const* end, uint8_t byte1, uint8_t byte2);


uint8_t const * tu_desc_find3(uint8_t const* desc, uint8_t const* end, uint8_t byte1, uint8_t byte2, uint8_t byte3);
# 74 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_debug.h" 1
# 75 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2

# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_timeout.h" 1
# 41 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_timeout.h"
typedef struct {
  uint32_t start;
  uint32_t interval;
}tu_timeout_t;
# 77 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 2
# 87 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
__attribute__ ((always_inline)) static inline uint32_t tu_u32(uint8_t b3, uint8_t b2, uint8_t b1, uint8_t b0)
{
  return ( ((uint32_t) b3) << 24) | ( ((uint32_t) b2) << 16) | ( ((uint32_t) b1) << 8) | b0;
}

__attribute__ ((always_inline)) static inline uint16_t tu_u16(uint8_t high, uint8_t low)
{
  return (uint16_t) ((((uint16_t) high) << 8) | low);
}

__attribute__ ((always_inline)) static inline uint8_t tu_u32_byte3(uint32_t ui32) { return ((uint8_t) ((((uint32_t) ui32) >> 24) & 0x000000ff)); }
__attribute__ ((always_inline)) static inline uint8_t tu_u32_byte2(uint32_t ui32) { return ((uint8_t) ((((uint32_t) ui32) >> 16) & 0x000000ff)); }
__attribute__ ((always_inline)) static inline uint8_t tu_u32_byte1(uint32_t ui32) { return ((uint8_t) ((((uint32_t) ui32) >> 8) & 0x000000ff)); }
__attribute__ ((always_inline)) static inline uint8_t tu_u32_byte0(uint32_t ui32) { return ((uint8_t) (((uint32_t) ui32) & 0x000000ff)); }

__attribute__ ((always_inline)) static inline uint16_t tu_u32_high16(uint32_t ui32) { return (uint16_t) (ui32 >> 16); }
__attribute__ ((always_inline)) static inline uint16_t tu_u32_low16 (uint32_t ui32) { return (uint16_t) (ui32 & 0x0000ffffu); }

__attribute__ ((always_inline)) static inline uint8_t tu_u16_high(uint16_t ui16) { return ((uint8_t) (((ui16) >> 8) & 0x00ff)); }
__attribute__ ((always_inline)) static inline uint8_t tu_u16_low (uint16_t ui16) { return ((uint8_t) ((ui16) & 0x00ff)); }


__attribute__ ((always_inline)) static inline uint32_t tu_bit_set (uint32_t value, uint8_t pos) { return value | (1UL << (pos)); }
__attribute__ ((always_inline)) static inline uint32_t tu_bit_clear(uint32_t value, uint8_t pos) { return value & (~(1UL << (pos))); }
__attribute__ ((always_inline)) static inline 
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 3 4
                                   _Bool 
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
                                            tu_bit_test (uint32_t value, uint8_t pos) { return (value & (1UL << (pos))) ? 
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 3 4
                                                                                                                       1 
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
                                                                                                                            : 
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 3 4
                                                                                                                              0
# 111 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
                                                                                                                                   ; }


__attribute__ ((always_inline)) static inline uint8_t tu_min8 (uint8_t x, uint8_t y ) { return (x < y) ? x : y; }
__attribute__ ((always_inline)) static inline uint16_t tu_min16 (uint16_t x, uint16_t y) { return (x < y) ? x : y; }
__attribute__ ((always_inline)) static inline uint32_t tu_min32 (uint32_t x, uint32_t y) { return (x < y) ? x : y; }


__attribute__ ((always_inline)) static inline uint8_t tu_max8 (uint8_t x, uint8_t y ) { return (x > y) ? x : y; }
__attribute__ ((always_inline)) static inline uint16_t tu_max16 (uint16_t x, uint16_t y) { return (x > y) ? x : y; }
__attribute__ ((always_inline)) static inline uint32_t tu_max32 (uint32_t x, uint32_t y) { return (x > y) ? x : y; }


__attribute__ ((always_inline)) static inline uint32_t tu_align(uint32_t value, uint32_t alignment)
{
  return value & ((uint32_t) ~(alignment-1));
}

__attribute__ ((always_inline)) static inline uint32_t tu_align16 (uint32_t value) { return (value & 0xFFFFFFF0UL); }
__attribute__ ((always_inline)) static inline uint32_t tu_align32 (uint32_t value) { return (value & 0xFFFFFFE0UL); }
__attribute__ ((always_inline)) static inline uint32_t tu_align4k (uint32_t value) { return (value & 0xFFFFF000UL); }
__attribute__ ((always_inline)) static inline uint32_t tu_offset4k(uint32_t value) { return (value & 0xFFFUL); }


__attribute__ ((always_inline)) static inline uint32_t tu_div_ceil(uint32_t v, uint32_t d) { return (v + d -1)/d; }



static inline uint8_t tu_log2(uint32_t value)
{
  uint8_t result = 0;
  while (value >>= 1) { result++; }
  return result;
}






static inline 
# 151 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 3 4
             _Bool 
# 151 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h"
                  tu_is_power_of_two(uint32_t value)
{
   return (value != 0) && ((value & (value - 1)) == 0);
}





typedef struct { uint16_t val; } __attribute__ ((packed)) tu_unaligned_uint16_t;
typedef struct { uint32_t val; } __attribute__ ((packed)) tu_unaligned_uint32_t;

__attribute__ ((always_inline)) static inline uint32_t tu_unaligned_read32(const void* mem)
{
  tu_unaligned_uint32_t const* ua32 = (tu_unaligned_uint32_t const*) mem;
  return ua32->val;
}

__attribute__ ((always_inline)) static inline void tu_unaligned_write32(void* mem, uint32_t value)
{
  tu_unaligned_uint32_t* ua32 = (tu_unaligned_uint32_t*) mem;
  ua32->val = value;
}

__attribute__ ((always_inline)) static inline uint16_t tu_unaligned_read16(const void* mem)
{
  tu_unaligned_uint16_t const* ua16 = (tu_unaligned_uint16_t const*) mem;
  return ua16->val;
}

__attribute__ ((always_inline)) static inline void tu_unaligned_write16(void* mem, uint16_t value)
{
  tu_unaligned_uint16_t* ua16 = (tu_unaligned_uint16_t*) mem;
  ua16->val = value;
}
# 31 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h" 1
# 36 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h"
typedef void (*osal_task_func_t)( void * );
# 61 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 1
# 30 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h" 1
# 11 "/home/mathias/pico-sdk/src/common/pico_time/include/pico/time.h"
# 1 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h" 1
# 11 "/home/mathias/pico-sdk/src/rp2_common/hardware_timer/include/hardware/timer.h"
# 1 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h"
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
# 13 "/home/mathias/pico-sdk/src/rp2040/hardware_structs/include/hardware/structs/timer.h" 2
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
# 31 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 1
# 10 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h" 1
# 12 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
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
# 13 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h" 2
# 53 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
struct lock_core {

    spin_lock_t *spin_lock;



};

typedef struct lock_core lock_core_t;
# 72 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/lock_core.h"
void lock_init(lock_core_t *core, uint lock_num);
# 11 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 2
# 31 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
typedef struct 
# 31 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3
              __attribute__((__packed__)) __attribute__((__aligned__(
# 31 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
              4
# 31 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3
              ))) 
# 31 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
                               semaphore {
    struct lock_core core;
    int16_t permits;
    int16_t max_permits;
} semaphore_t;
# 45 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
void sem_init(semaphore_t *sem, int16_t initial_permits, int16_t max_permits);







int sem_available(semaphore_t *sem);
# 64 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"

# 64 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3 4
_Bool 
# 64 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
    sem_release(semaphore_t *sem);
# 74 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
void sem_reset(semaphore_t *sem, int16_t permits);
# 83 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
void sem_acquire_blocking(semaphore_t *sem);
# 96 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"

# 96 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3 4
_Bool 
# 96 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
    sem_acquire_timeout_ms(semaphore_t *sem, uint32_t timeout_ms);
# 109 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"

# 109 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3 4
_Bool 
# 109 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
    sem_acquire_timeout_us(semaphore_t *sem, uint32_t timeout_us);
# 123 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"

# 123 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3 4
_Bool 
# 123 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
    sem_acquire_block_until(semaphore_t *sem, absolute_time_t until);
# 134 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"

# 134 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h" 3 4
_Bool 
# 134 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/sem.h"
    sem_try_acquire(semaphore_t *sem);
# 32 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/mutex.h" 1
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
# 33 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h" 1
# 29 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
typedef struct 
# 29 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h" 3
              __attribute__((__packed__)) __attribute__((__aligned__(
# 29 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
              4
# 29 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h" 3
              ))) 
# 29 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
                               critical_section {
    spin_lock_t *spin_lock;
    uint32_t save;
} critical_section_t;
# 44 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
void critical_section_init(critical_section_t *crit_sec);






void critical_section_init_with_lock_num(critical_section_t *crit_sec, uint lock_num);
# 61 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
static inline void critical_section_enter_blocking(critical_section_t *crit_sec) {
    crit_sec->save = spin_lock_blocking(crit_sec->spin_lock);
}






static inline void critical_section_exit(critical_section_t *crit_sec) {
    spin_unlock(crit_sec->spin_lock, crit_sec->save);
}
# 83 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
void critical_section_deinit(critical_section_t *crit_sec);







static inline 
# 91 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h" 3 4
             _Bool 
# 91 "/home/mathias/pico-sdk/src/common/pico_sync/include/pico/critical_section.h"
                  critical_section_is_initialized(critical_section_t *crit_sec) {
    return crit_sec->spin_lock != 0;
}
# 34 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 2
# 42 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
__attribute__ ((always_inline)) static inline void osal_task_delay(uint32_t msec)
{
  sleep_ms(msec);
}




typedef struct semaphore osal_semaphore_def_t, *osal_semaphore_t;

__attribute__ ((always_inline)) static inline osal_semaphore_t osal_semaphore_create(osal_semaphore_def_t* semdef)
{
  sem_init(semdef, 0, 255);
  return semdef;
}

__attribute__ ((always_inline)) static inline 
# 58 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 58 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_semaphore_post(osal_semaphore_t sem_hdl, 
# 58 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                                                                      _Bool 
# 58 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                                                                           in_isr)
{
  (void) in_isr;
  sem_release(sem_hdl);
  return 
# 62 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
        1
# 62 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
            ;
}

__attribute__ ((always_inline)) static inline 
# 65 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 65 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_semaphore_wait (osal_semaphore_t sem_hdl, uint32_t msec)
{
  return sem_acquire_timeout_ms(sem_hdl, msec);
}

__attribute__ ((always_inline)) static inline void osal_semaphore_reset(osal_semaphore_t sem_hdl)
{
  sem_reset(sem_hdl, 0);
}





typedef struct mutex osal_mutex_def_t, *osal_mutex_t;

__attribute__ ((always_inline)) static inline osal_mutex_t osal_mutex_create(osal_mutex_def_t* mdef)
{
  mutex_init(mdef);
  return mdef;
}

__attribute__ ((always_inline)) static inline 
# 87 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 87 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_mutex_lock (osal_mutex_t mutex_hdl, uint32_t msec)
{
  return mutex_enter_timeout_ms(mutex_hdl, msec);
}

__attribute__ ((always_inline)) static inline 
# 92 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 92 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_mutex_unlock(osal_mutex_t mutex_hdl)
{
  mutex_exit(mutex_hdl);
  return 
# 95 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
        1
# 95 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
            ;
}




# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 1
# 45 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h" 1
# 46 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 2
# 107 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
typedef struct
{
  uint8_t* buffer ;
  uint16_t depth ;

  struct __attribute__ ((packed)) {
    uint16_t item_size : 15;
    
# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
   _Bool 
# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        overwritable : 1 ;
  };

  volatile uint16_t wr_idx ;
  volatile uint16_t rd_idx ;


  osal_mutex_t mutex_wr;
  osal_mutex_t mutex_rd;


} tu_fifo_t;

typedef struct
{
  uint16_t len_lin ;
  uint16_t len_wrap ;
  void * ptr_lin ;
  void * ptr_wrap ;
} tu_fifo_buffer_info_t;
# 148 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"

# 148 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 148 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
    tu_fifo_set_overwritable(tu_fifo_t *f, 
# 148 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
                                           _Bool 
# 148 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
                                                overwritable);

# 149 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 149 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
    tu_fifo_clear(tu_fifo_t *f);

# 150 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 150 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
    tu_fifo_config(tu_fifo_t *f, void* buffer, uint16_t depth, uint16_t item_size, 
# 150 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
                                                                                   _Bool 
# 150 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
                                                                                        overwritable);


__attribute__ ((always_inline)) static inline
void tu_fifo_config_mutex(tu_fifo_t *f, osal_mutex_t wr_mutex, osal_mutex_t rd_mutex)
{
  f->mutex_wr = wr_mutex;
  f->mutex_rd = rd_mutex;
}








# 166 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 166 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_write (tu_fifo_t* f, void const * p_data);
uint16_t tu_fifo_write_n (tu_fifo_t* f, void const * p_data, uint16_t n);
uint16_t tu_fifo_write_n_const_addr_full_words (tu_fifo_t* f, const void * data, uint16_t n);


# 170 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 170 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_read (tu_fifo_t* f, void * p_buffer);
uint16_t tu_fifo_read_n (tu_fifo_t* f, void * p_buffer, uint16_t n);
uint16_t tu_fifo_read_n_const_addr_full_words (tu_fifo_t* f, void * buffer, uint16_t n);


# 174 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 174 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_peek (tu_fifo_t* f, void * p_buffer);
uint16_t tu_fifo_peek_n (tu_fifo_t* f, void * p_buffer, uint16_t n);

uint16_t tu_fifo_count (tu_fifo_t* f);
uint16_t tu_fifo_remaining (tu_fifo_t* f);

# 179 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 179 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_empty (tu_fifo_t* f);

# 180 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 180 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_full (tu_fifo_t* f);

# 181 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 3 4
_Bool 
# 181 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h"
        tu_fifo_overflowed (tu_fifo_t* f);
void tu_fifo_correct_read_pointer (tu_fifo_t* f);

__attribute__ ((always_inline)) static inline
uint16_t tu_fifo_depth(tu_fifo_t* f)
{
  return f->depth;
}



void tu_fifo_advance_write_pointer(tu_fifo_t *f, uint16_t n);
void tu_fifo_advance_read_pointer (tu_fifo_t *f, uint16_t n);




void tu_fifo_get_read_info (tu_fifo_t *f, tu_fifo_buffer_info_t *info);
void tu_fifo_get_write_info(tu_fifo_t *f, tu_fifo_buffer_info_t *info);
# 102 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 2

typedef struct
{
    tu_fifo_t ff;
    struct critical_section critsec;
} osal_queue_def_t;

typedef osal_queue_def_t* osal_queue_t;
# 119 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
__attribute__ ((always_inline)) static inline void _osal_q_lock(osal_queue_t qhdl)
{
  critical_section_enter_blocking(&qhdl->critsec);
}


__attribute__ ((always_inline)) static inline void _osal_q_unlock(osal_queue_t qhdl)
{
  critical_section_exit(&qhdl->critsec);
}

__attribute__ ((always_inline)) static inline osal_queue_t osal_queue_create(osal_queue_def_t* qdef)
{
  critical_section_init(&qdef->critsec);
  tu_fifo_clear(&qdef->ff);
  return (osal_queue_t) qdef;
}

__attribute__ ((always_inline)) static inline 
# 137 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 137 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_queue_receive(osal_queue_t qhdl, void* data, uint32_t msec)
{
  (void) msec;






  _osal_q_lock(qhdl);
  
# 147 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
 _Bool 
# 147 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
      success = tu_fifo_read(&qhdl->ff, data);
  _osal_q_unlock(qhdl);

  return success;
}

__attribute__ ((always_inline)) static inline 
# 153 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 153 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_queue_send(osal_queue_t qhdl, void const * data, 
# 153 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                                                                              _Bool 
# 153 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                                                                                   in_isr)
{




  (void) in_isr;

  _osal_q_lock(qhdl);
  
# 162 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
 _Bool 
# 162 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
      success = tu_fifo_write(&qhdl->ff, data);
  _osal_q_unlock(qhdl);

  do { if ( !(success) ) { do {} while (0); do {} while (0); return 
# 165 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
 0
# 165 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
 ; } } while(0);

  return success;
}

__attribute__ ((always_inline)) static inline 
# 170 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h" 3 4
                                   _Bool 
# 170 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal_pico.h"
                                        osal_queue_empty(osal_queue_t qhdl)
{





  return tu_fifo_empty(&qhdl->ff);
}
# 62 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h" 2
# 32 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 2
# 50 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
typedef enum
{
  DCD_EVENT_INVALID = 0,
  DCD_EVENT_BUS_RESET,
  DCD_EVENT_UNPLUGGED,
  DCD_EVENT_SOF,
  DCD_EVENT_SUSPEND,
  DCD_EVENT_RESUME,

  DCD_EVENT_SETUP_RECEIVED,
  DCD_EVENT_XFER_COMPLETE,


  USBD_EVENT_FUNC_CALL,

  DCD_EVENT_COUNT
} dcd_eventid_t;

typedef struct __attribute__ ((aligned(4)))
{
  uint8_t rhport;
  uint8_t event_id;

  union
  {

    struct {
      tusb_speed_t speed;
    } bus_reset;


    struct {
      uint32_t frame_count;
    }sof;


    tusb_control_request_t setup_received;


    struct {
      uint8_t ep_addr;
      uint8_t result;
      uint32_t len;
    }xfer_complete;


    struct {
      void (*func) (void*);
      void* param;
    }func_call;
  };
} dcd_event_t;
# 110 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
void dcd_init (uint8_t rhport);


void dcd_int_handler(uint8_t rhport);


void dcd_int_enable (uint8_t rhport);


void dcd_int_disable(uint8_t rhport);


void dcd_set_address(uint8_t rhport, uint8_t dev_addr);


void dcd_remote_wakeup(uint8_t rhport);


void dcd_connect(uint8_t rhport) __attribute__ ((weak));


void dcd_disconnect(uint8_t rhport) __attribute__ ((weak));


void dcd_sof_enable(uint8_t rhport, 
# 134 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                   _Bool 
# 134 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                        en);







void dcd_edpt0_status_complete(uint8_t rhport, tusb_control_request_t const * request) __attribute__ ((weak));



# 145 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
_Bool 
# 145 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
    dcd_edpt_open (uint8_t rhport, tusb_desc_endpoint_t const * desc_ep);




void dcd_edpt_close_all (uint8_t rhport);



void dcd_edpt_close (uint8_t rhport, uint8_t ep_addr) __attribute__ ((weak));



# 157 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
_Bool 
# 157 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
    dcd_edpt_xfer (uint8_t rhport, uint8_t ep_addr, uint8_t * buffer, uint16_t total_bytes);




# 161 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
_Bool 
# 161 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
    dcd_edpt_xfer_fifo (uint8_t rhport, uint8_t ep_addr, tu_fifo_t * ff, uint16_t total_bytes) __attribute__ ((weak));


void dcd_edpt_stall (uint8_t rhport, uint8_t ep_addr);



void dcd_edpt_clear_stall (uint8_t rhport, uint8_t ep_addr);






extern void dcd_event_handler(dcd_event_t const * event, 
# 175 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                        _Bool 
# 175 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                             in_isr);


__attribute__ ((always_inline)) static inline void dcd_event_bus_signal (uint8_t rhport, dcd_eventid_t eid, 
# 178 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                                                                 _Bool 
# 178 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                                                                      in_isr)
{
  dcd_event_t event = { .rhport = rhport, .event_id = eid };
  dcd_event_handler(&event, in_isr);
}


__attribute__ ((always_inline)) static inline void dcd_event_bus_reset (uint8_t rhport, tusb_speed_t speed, 
# 185 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                                                                  _Bool 
# 185 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                                                                       in_isr)
{
  dcd_event_t event = { .rhport = rhport, .event_id = DCD_EVENT_BUS_RESET };
  event.bus_reset.speed = speed;
  dcd_event_handler(&event, in_isr);
}


__attribute__ ((always_inline)) static inline void dcd_event_setup_received(uint8_t rhport, uint8_t const * setup, 
# 193 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                                                                        _Bool 
# 193 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                                                                             in_isr)
{
  dcd_event_t event = { .rhport = rhport, .event_id = DCD_EVENT_SETUP_RECEIVED };
  memcpy(&event.setup_received, setup, 8);

  dcd_event_handler(&event, in_isr);
}


__attribute__ ((always_inline)) static inline void dcd_event_xfer_complete (uint8_t rhport, uint8_t ep_addr, uint32_t xferred_bytes, uint8_t result, 
# 202 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                                                                                                          _Bool 
# 202 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                                                                                                               in_isr)
{
  dcd_event_t event = { .rhport = rhport, .event_id = DCD_EVENT_XFER_COMPLETE };

  event.xfer_complete.ep_addr = ep_addr;
  event.xfer_complete.len = xferred_bytes;
  event.xfer_complete.result = result;

  dcd_event_handler(&event, in_isr);
}

static inline void dcd_event_sof(uint8_t rhport, uint32_t frame_count, 
# 213 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h" 3 4
                                                                      _Bool 
# 213 "/home/mathias/pico-sdk/lib/tinyusb/src/device/dcd.h"
                                                                           in_isr)
{
  dcd_event_t event = { .rhport = rhport, .event_id = DCD_EVENT_SOF };
  event.sof.frame_count = frame_count;
  dcd_event_handler(&event, in_isr);
}
# 32 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 1
# 37 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_common.h" 1
# 38 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/osal/osal.h" 1
# 39 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_fifo.h" 1
# 40 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2

# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h" 1
# 47 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
typedef struct __attribute__ ((packed))
{
  uint8_t bLength;
  uint8_t bDescriptorType;

  uint16_t bcdHID;
  uint8_t bCountryCode;
  uint8_t bNumDescriptors;

  uint8_t bReportType;
  uint16_t wReportLength;
} tusb_hid_descriptor_hid_t;


typedef enum
{
  HID_SUBCLASS_NONE = 0,
  HID_SUBCLASS_BOOT = 1
}hid_subclass_enum_t;


typedef enum
{
  HID_ITF_PROTOCOL_NONE = 0,
  HID_ITF_PROTOCOL_KEYBOARD = 1,
  HID_ITF_PROTOCOL_MOUSE = 2
}hid_interface_protocol_enum_t;


typedef enum
{
  HID_DESC_TYPE_HID = 0x21,
  HID_DESC_TYPE_REPORT = 0x22,
  HID_DESC_TYPE_PHYSICAL = 0x23
}hid_descriptor_enum_t;


typedef enum
{
  HID_REPORT_TYPE_INVALID = 0,
  HID_REPORT_TYPE_INPUT,
  HID_REPORT_TYPE_OUTPUT,
  HID_REPORT_TYPE_FEATURE
}hid_report_type_t;


typedef enum
{
  HID_REQ_CONTROL_GET_REPORT = 0x01,
  HID_REQ_CONTROL_GET_IDLE = 0x02,
  HID_REQ_CONTROL_GET_PROTOCOL = 0x03,
  HID_REQ_CONTROL_SET_REPORT = 0x09,
  HID_REQ_CONTROL_SET_IDLE = 0x0a,
  HID_REQ_CONTROL_SET_PROTOCOL = 0x0b
}hid_request_enum_t;


typedef enum
{
  HID_LOCAL_NotSupported = 0 ,
  HID_LOCAL_Arabic ,
  HID_LOCAL_Belgian ,
  HID_LOCAL_Canadian_Bilingual ,
  HID_LOCAL_Canadian_French ,
  HID_LOCAL_Czech_Republic ,
  HID_LOCAL_Danish ,
  HID_LOCAL_Finnish ,
  HID_LOCAL_French ,
  HID_LOCAL_German ,
  HID_LOCAL_Greek ,
  HID_LOCAL_Hebrew ,
  HID_LOCAL_Hungary ,
  HID_LOCAL_International ,
  HID_LOCAL_Italian ,
  HID_LOCAL_Japan_Katakana ,
  HID_LOCAL_Korean ,
  HID_LOCAL_Latin_American ,
  HID_LOCAL_Netherlands_Dutch ,
  HID_LOCAL_Norwegian ,
  HID_LOCAL_Persian_Farsi ,
  HID_LOCAL_Poland ,
  HID_LOCAL_Portuguese ,
  HID_LOCAL_Russia ,
  HID_LOCAL_Slovakia ,
  HID_LOCAL_Spanish ,
  HID_LOCAL_Swedish ,
  HID_LOCAL_Swiss_French ,
  HID_LOCAL_Swiss_German ,
  HID_LOCAL_Switzerland ,
  HID_LOCAL_Taiwan ,
  HID_LOCAL_Turkish_Q ,
  HID_LOCAL_UK ,
  HID_LOCAL_US ,
  HID_LOCAL_Yugoslavia ,
  HID_LOCAL_Turkish_F
} hid_local_enum_t;


typedef enum
{
  HID_PROTOCOL_BOOT = 0,
  HID_PROTOCOL_REPORT = 1
} hid_protocol_mode_enum_t;
# 195 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
typedef struct __attribute__ ((packed))
{
  int8_t x;
  int8_t y;
  int8_t z;
  int8_t rz;
  int8_t rx;
  int8_t ry;
  uint8_t hat;
  uint32_t buttons;
}hid_gamepad_report_t;


typedef enum
{
  GAMEPAD_BUTTON_0 = (1UL << (0)),
  GAMEPAD_BUTTON_1 = (1UL << (1)),
  GAMEPAD_BUTTON_2 = (1UL << (2)),
  GAMEPAD_BUTTON_3 = (1UL << (3)),
  GAMEPAD_BUTTON_4 = (1UL << (4)),
  GAMEPAD_BUTTON_5 = (1UL << (5)),
  GAMEPAD_BUTTON_6 = (1UL << (6)),
  GAMEPAD_BUTTON_7 = (1UL << (7)),
  GAMEPAD_BUTTON_8 = (1UL << (8)),
  GAMEPAD_BUTTON_9 = (1UL << (9)),
  GAMEPAD_BUTTON_10 = (1UL << (10)),
  GAMEPAD_BUTTON_11 = (1UL << (11)),
  GAMEPAD_BUTTON_12 = (1UL << (12)),
  GAMEPAD_BUTTON_13 = (1UL << (13)),
  GAMEPAD_BUTTON_14 = (1UL << (14)),
  GAMEPAD_BUTTON_15 = (1UL << (15)),
  GAMEPAD_BUTTON_16 = (1UL << (16)),
  GAMEPAD_BUTTON_17 = (1UL << (17)),
  GAMEPAD_BUTTON_18 = (1UL << (18)),
  GAMEPAD_BUTTON_19 = (1UL << (19)),
  GAMEPAD_BUTTON_20 = (1UL << (20)),
  GAMEPAD_BUTTON_21 = (1UL << (21)),
  GAMEPAD_BUTTON_22 = (1UL << (22)),
  GAMEPAD_BUTTON_23 = (1UL << (23)),
  GAMEPAD_BUTTON_24 = (1UL << (24)),
  GAMEPAD_BUTTON_25 = (1UL << (25)),
  GAMEPAD_BUTTON_26 = (1UL << (26)),
  GAMEPAD_BUTTON_27 = (1UL << (27)),
  GAMEPAD_BUTTON_28 = (1UL << (28)),
  GAMEPAD_BUTTON_29 = (1UL << (29)),
  GAMEPAD_BUTTON_30 = (1UL << (30)),
  GAMEPAD_BUTTON_31 = (1UL << (31)),
}hid_gamepad_button_bm_t;
# 272 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
typedef enum
{
  GAMEPAD_HAT_CENTERED = 0,
  GAMEPAD_HAT_UP = 1,
  GAMEPAD_HAT_UP_RIGHT = 2,
  GAMEPAD_HAT_RIGHT = 3,
  GAMEPAD_HAT_DOWN_RIGHT = 4,
  GAMEPAD_HAT_DOWN = 5,
  GAMEPAD_HAT_DOWN_LEFT = 6,
  GAMEPAD_HAT_LEFT = 7,
  GAMEPAD_HAT_UP_LEFT = 8,
}hid_gamepad_hat_t;
# 294 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
typedef struct __attribute__ ((packed))
{
  uint8_t buttons;
  int8_t x;
  int8_t y;
  int8_t wheel;
  int8_t pan;
} hid_mouse_report_t;


typedef enum
{
  MOUSE_BUTTON_LEFT = (1UL << (0)),
  MOUSE_BUTTON_RIGHT = (1UL << (1)),
  MOUSE_BUTTON_MIDDLE = (1UL << (2)),
  MOUSE_BUTTON_BACKWARD = (1UL << (3)),
  MOUSE_BUTTON_FORWARD = (1UL << (4)),
}hid_mouse_button_bm_t;
# 322 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
typedef struct __attribute__ ((packed))
{
  uint8_t modifier;
  uint8_t reserved;
  uint8_t keycode[6];
} hid_keyboard_report_t;


typedef enum
{
  KEYBOARD_MODIFIER_LEFTCTRL = (1UL << (0)),
  KEYBOARD_MODIFIER_LEFTSHIFT = (1UL << (1)),
  KEYBOARD_MODIFIER_LEFTALT = (1UL << (2)),
  KEYBOARD_MODIFIER_LEFTGUI = (1UL << (3)),
  KEYBOARD_MODIFIER_RIGHTCTRL = (1UL << (4)),
  KEYBOARD_MODIFIER_RIGHTSHIFT = (1UL << (5)),
  KEYBOARD_MODIFIER_RIGHTALT = (1UL << (6)),
  KEYBOARD_MODIFIER_RIGHTGUI = (1UL << (7))
}hid_keyboard_modifier_bm_t;

typedef enum
{
  KEYBOARD_LED_NUMLOCK = (1UL << (0)),
  KEYBOARD_LED_CAPSLOCK = (1UL << (1)),
  KEYBOARD_LED_SCROLLLOCK = (1UL << (2)),
  KEYBOARD_LED_COMPOSE = (1UL << (3)),
  KEYBOARD_LED_KANA = (1UL << (4))
}hid_keyboard_led_bm_t;
# 543 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
enum {
  RI_TYPE_MAIN = 0,
  RI_TYPE_GLOBAL = 1,
  RI_TYPE_LOCAL = 2
};




enum {
  RI_MAIN_INPUT = 8,
  RI_MAIN_OUTPUT = 9,
  RI_MAIN_COLLECTION = 10,
  RI_MAIN_FEATURE = 11,
  RI_MAIN_COLLECTION_END = 12
};
# 595 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
enum {
  HID_COLLECTION_PHYSICAL = 0,
  HID_COLLECTION_APPLICATION,
  HID_COLLECTION_LOGICAL,
  HID_COLLECTION_REPORT,
  HID_COLLECTION_NAMED_ARRAY,
  HID_COLLECTION_USAGE_SWITCH,
  HID_COLLECTION_USAGE_MODIFIER
};




enum {
  RI_GLOBAL_USAGE_PAGE = 0,
  RI_GLOBAL_LOGICAL_MIN = 1,
  RI_GLOBAL_LOGICAL_MAX = 2,
  RI_GLOBAL_PHYSICAL_MIN = 3,
  RI_GLOBAL_PHYSICAL_MAX = 4,
  RI_GLOBAL_UNIT_EXPONENT = 5,
  RI_GLOBAL_UNIT = 6,
  RI_GLOBAL_REPORT_SIZE = 7,
  RI_GLOBAL_REPORT_ID = 8,
  RI_GLOBAL_REPORT_COUNT = 9,
  RI_GLOBAL_PUSH = 10,
  RI_GLOBAL_POP = 11
};
# 658 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
enum {
  RI_LOCAL_USAGE = 0,
  RI_LOCAL_USAGE_MIN = 1,
  RI_LOCAL_USAGE_MAX = 2,
  RI_LOCAL_DESIGNATOR_INDEX = 3,
  RI_LOCAL_DESIGNATOR_MIN = 4,
  RI_LOCAL_DESIGNATOR_MAX = 5,

  RI_LOCAL_STRING_INDEX = 7,
  RI_LOCAL_STRING_MIN = 8,
  RI_LOCAL_STRING_MAX = 9,
  RI_LOCAL_DELIMITER = 10,
};
# 686 "/home/mathias/pico-sdk/lib/tinyusb/src/class/hid/hid.h"
enum {
  HID_USAGE_PAGE_DESKTOP = 0x01,
  HID_USAGE_PAGE_SIMULATE = 0x02,
  HID_USAGE_PAGE_VIRTUAL_REALITY = 0x03,
  HID_USAGE_PAGE_SPORT = 0x04,
  HID_USAGE_PAGE_GAME = 0x05,
  HID_USAGE_PAGE_GENERIC_DEVICE = 0x06,
  HID_USAGE_PAGE_KEYBOARD = 0x07,
  HID_USAGE_PAGE_LED = 0x08,
  HID_USAGE_PAGE_BUTTON = 0x09,
  HID_USAGE_PAGE_ORDINAL = 0x0a,
  HID_USAGE_PAGE_TELEPHONY = 0x0b,
  HID_USAGE_PAGE_CONSUMER = 0x0c,
  HID_USAGE_PAGE_DIGITIZER = 0x0d,
  HID_USAGE_PAGE_PID = 0x0f,
  HID_USAGE_PAGE_UNICODE = 0x10,
  HID_USAGE_PAGE_ALPHA_DISPLAY = 0x14,
  HID_USAGE_PAGE_MEDICAL = 0x40,
  HID_USAGE_PAGE_MONITOR = 0x80,
  HID_USAGE_PAGE_POWER = 0x84,
  HID_USAGE_PAGE_BARCODE_SCANNER = 0x8c,
  HID_USAGE_PAGE_SCALE = 0x8d,
  HID_USAGE_PAGE_MSR = 0x8e,
  HID_USAGE_PAGE_CAMERA = 0x90,
  HID_USAGE_PAGE_ARCADE = 0x91,
  HID_USAGE_PAGE_FIDO = 0xF1D0,
  HID_USAGE_PAGE_VENDOR = 0xFF00
};


enum {
  HID_USAGE_DESKTOP_POINTER = 0x01,
  HID_USAGE_DESKTOP_MOUSE = 0x02,
  HID_USAGE_DESKTOP_JOYSTICK = 0x04,
  HID_USAGE_DESKTOP_GAMEPAD = 0x05,
  HID_USAGE_DESKTOP_KEYBOARD = 0x06,
  HID_USAGE_DESKTOP_KEYPAD = 0x07,
  HID_USAGE_DESKTOP_MULTI_AXIS_CONTROLLER = 0x08,
  HID_USAGE_DESKTOP_TABLET_PC_SYSTEM = 0x09,
  HID_USAGE_DESKTOP_X = 0x30,
  HID_USAGE_DESKTOP_Y = 0x31,
  HID_USAGE_DESKTOP_Z = 0x32,
  HID_USAGE_DESKTOP_RX = 0x33,
  HID_USAGE_DESKTOP_RY = 0x34,
  HID_USAGE_DESKTOP_RZ = 0x35,
  HID_USAGE_DESKTOP_SLIDER = 0x36,
  HID_USAGE_DESKTOP_DIAL = 0x37,
  HID_USAGE_DESKTOP_WHEEL = 0x38,
  HID_USAGE_DESKTOP_HAT_SWITCH = 0x39,
  HID_USAGE_DESKTOP_COUNTED_BUFFER = 0x3a,
  HID_USAGE_DESKTOP_BYTE_COUNT = 0x3b,
  HID_USAGE_DESKTOP_MOTION_WAKEUP = 0x3c,
  HID_USAGE_DESKTOP_START = 0x3d,
  HID_USAGE_DESKTOP_SELECT = 0x3e,
  HID_USAGE_DESKTOP_VX = 0x40,
  HID_USAGE_DESKTOP_VY = 0x41,
  HID_USAGE_DESKTOP_VZ = 0x42,
  HID_USAGE_DESKTOP_VBRX = 0x43,
  HID_USAGE_DESKTOP_VBRY = 0x44,
  HID_USAGE_DESKTOP_VBRZ = 0x45,
  HID_USAGE_DESKTOP_VNO = 0x46,
  HID_USAGE_DESKTOP_FEATURE_NOTIFICATION = 0x47,
  HID_USAGE_DESKTOP_RESOLUTION_MULTIPLIER = 0x48,
  HID_USAGE_DESKTOP_SYSTEM_CONTROL = 0x80,
  HID_USAGE_DESKTOP_SYSTEM_POWER_DOWN = 0x81,
  HID_USAGE_DESKTOP_SYSTEM_SLEEP = 0x82,
  HID_USAGE_DESKTOP_SYSTEM_WAKE_UP = 0x83,
  HID_USAGE_DESKTOP_SYSTEM_CONTEXT_MENU = 0x84,
  HID_USAGE_DESKTOP_SYSTEM_MAIN_MENU = 0x85,
  HID_USAGE_DESKTOP_SYSTEM_APP_MENU = 0x86,
  HID_USAGE_DESKTOP_SYSTEM_MENU_HELP = 0x87,
  HID_USAGE_DESKTOP_SYSTEM_MENU_EXIT = 0x88,
  HID_USAGE_DESKTOP_SYSTEM_MENU_SELECT = 0x89,
  HID_USAGE_DESKTOP_SYSTEM_MENU_RIGHT = 0x8A,
  HID_USAGE_DESKTOP_SYSTEM_MENU_LEFT = 0x8B,
  HID_USAGE_DESKTOP_SYSTEM_MENU_UP = 0x8C,
  HID_USAGE_DESKTOP_SYSTEM_MENU_DOWN = 0x8D,
  HID_USAGE_DESKTOP_SYSTEM_COLD_RESTART = 0x8E,
  HID_USAGE_DESKTOP_SYSTEM_WARM_RESTART = 0x8F,
  HID_USAGE_DESKTOP_DPAD_UP = 0x90,
  HID_USAGE_DESKTOP_DPAD_DOWN = 0x91,
  HID_USAGE_DESKTOP_DPAD_RIGHT = 0x92,
  HID_USAGE_DESKTOP_DPAD_LEFT = 0x93,
  HID_USAGE_DESKTOP_SYSTEM_DOCK = 0xA0,
  HID_USAGE_DESKTOP_SYSTEM_UNDOCK = 0xA1,
  HID_USAGE_DESKTOP_SYSTEM_SETUP = 0xA2,
  HID_USAGE_DESKTOP_SYSTEM_BREAK = 0xA3,
  HID_USAGE_DESKTOP_SYSTEM_DEBUGGER_BREAK = 0xA4,
  HID_USAGE_DESKTOP_APPLICATION_BREAK = 0xA5,
  HID_USAGE_DESKTOP_APPLICATION_DEBUGGER_BREAK = 0xA6,
  HID_USAGE_DESKTOP_SYSTEM_SPEAKER_MUTE = 0xA7,
  HID_USAGE_DESKTOP_SYSTEM_HIBERNATE = 0xA8,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_INVERT = 0xB0,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_INTERNAL = 0xB1,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_EXTERNAL = 0xB2,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_BOTH = 0xB3,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_DUAL = 0xB4,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_TOGGLE_INT_EXT = 0xB5,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_SWAP_PRIMARY_SECONDARY = 0xB6,
  HID_USAGE_DESKTOP_SYSTEM_DISPLAY_LCD_AUTOSCALE = 0xB7
};




enum
{

  HID_USAGE_CONSUMER_CONTROL = 0x0001,


  HID_USAGE_CONSUMER_POWER = 0x0030,
  HID_USAGE_CONSUMER_RESET = 0x0031,
  HID_USAGE_CONSUMER_SLEEP = 0x0032,


  HID_USAGE_CONSUMER_BRIGHTNESS_INCREMENT = 0x006F,
  HID_USAGE_CONSUMER_BRIGHTNESS_DECREMENT = 0x0070,



  HID_USAGE_CONSUMER_WIRELESS_RADIO_CONTROLS = 0x000C,
  HID_USAGE_CONSUMER_WIRELESS_RADIO_BUTTONS = 0x00C6,
  HID_USAGE_CONSUMER_WIRELESS_RADIO_LED = 0x00C7,
  HID_USAGE_CONSUMER_WIRELESS_RADIO_SLIDER_SWITCH = 0x00C8,


  HID_USAGE_CONSUMER_PLAY_PAUSE = 0x00CD,
  HID_USAGE_CONSUMER_SCAN_NEXT = 0x00B5,
  HID_USAGE_CONSUMER_SCAN_PREVIOUS = 0x00B6,
  HID_USAGE_CONSUMER_STOP = 0x00B7,
  HID_USAGE_CONSUMER_VOLUME = 0x00E0,
  HID_USAGE_CONSUMER_MUTE = 0x00E2,
  HID_USAGE_CONSUMER_BASS = 0x00E3,
  HID_USAGE_CONSUMER_TREBLE = 0x00E4,
  HID_USAGE_CONSUMER_BASS_BOOST = 0x00E5,
  HID_USAGE_CONSUMER_VOLUME_INCREMENT = 0x00E9,
  HID_USAGE_CONSUMER_VOLUME_DECREMENT = 0x00EA,
  HID_USAGE_CONSUMER_BASS_INCREMENT = 0x0152,
  HID_USAGE_CONSUMER_BASS_DECREMENT = 0x0153,
  HID_USAGE_CONSUMER_TREBLE_INCREMENT = 0x0154,
  HID_USAGE_CONSUMER_TREBLE_DECREMENT = 0x0155,


  HID_USAGE_CONSUMER_AL_CONSUMER_CONTROL_CONFIGURATION = 0x0183,
  HID_USAGE_CONSUMER_AL_EMAIL_READER = 0x018A,
  HID_USAGE_CONSUMER_AL_CALCULATOR = 0x0192,
  HID_USAGE_CONSUMER_AL_LOCAL_BROWSER = 0x0194,


  HID_USAGE_CONSUMER_AC_SEARCH = 0x0221,
  HID_USAGE_CONSUMER_AC_HOME = 0x0223,
  HID_USAGE_CONSUMER_AC_BACK = 0x0224,
  HID_USAGE_CONSUMER_AC_FORWARD = 0x0225,
  HID_USAGE_CONSUMER_AC_STOP = 0x0226,
  HID_USAGE_CONSUMER_AC_REFRESH = 0x0227,
  HID_USAGE_CONSUMER_AC_BOOKMARKS = 0x022A,


  HID_USAGE_CONSUMER_AC_PAN = 0x0238,
};


enum
{
  HID_USAGE_FIDO_U2FHID = 0x01,
  HID_USAGE_FIDO_DATA_IN = 0x20,
  HID_USAGE_FIDO_DATA_OUT = 0x21
};
# 42 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2
# 67 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 1
# 41 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"

# 41 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 41 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_init (uint8_t rhport);



# 44 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 44 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_inited(void);




void tud_task_ext(uint32_t timeout_ms, 
# 49 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
                                      _Bool 
# 49 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
                                           in_isr);


__attribute__ ((always_inline)) static inline
void tud_task (void)
{
  tud_task_ext(
# 55 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
              (0xffffffffUL)
# 55 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
                        , 
# 55 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
                          0
# 55 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
                               );
}



# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_task_event_ready(void);
# 69 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
tusb_speed_t tud_speed_get(void);




# 73 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 73 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_connected(void);



# 76 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 76 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_mounted(void);



# 79 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 79 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_suspended(void);


__attribute__ ((always_inline)) static inline

# 83 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 83 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_ready(void)
{
  return tud_mounted() && !tud_suspended();
}



# 89 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 89 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_remote_wakeup(void);




# 93 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 93 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_disconnect(void);




# 97 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 97 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_connect(void);





# 102 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 102 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_control_xfer(uint8_t rhport, tusb_control_request_t const * request, void* buffer, uint16_t len);



# 105 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
_Bool 
# 105 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
    tud_control_status(uint8_t rhport, tusb_control_request_t const * request);







uint8_t const * tud_descriptor_device_cb(void);



uint8_t const * tud_descriptor_configuration_cb(uint8_t index);



uint16_t const* tud_descriptor_string_cb(uint8_t index, uint16_t langid);



__attribute__ ((weak)) uint8_t const * tud_descriptor_bos_cb(void);





__attribute__ ((weak)) uint8_t const* tud_descriptor_device_qualifier_cb(void);




__attribute__ ((weak)) uint8_t const* tud_descriptor_other_speed_configuration_cb(uint8_t index);


__attribute__ ((weak)) void tud_mount_cb(void);


__attribute__ ((weak)) void tud_umount_cb(void);



__attribute__ ((weak)) void tud_suspend_cb(
# 146 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
                                _Bool 
# 146 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
                                     remote_wakeup_en);


__attribute__ ((weak)) void tud_resume_cb(void);


__attribute__ ((weak)) 
# 152 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 3 4
            _Bool 
# 152 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h"
                 tud_vendor_control_xfer_cb(uint8_t rhport, uint8_t stage, tusb_control_request_t const * request);
# 68 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2






# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 1
# 30 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc.h" 1
# 49 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc.h"
typedef enum
{
  CDC_COMM_SUBCLASS_DIRECT_LINE_CONTROL_MODEL = 0x01 ,
  CDC_COMM_SUBCLASS_ABSTRACT_CONTROL_MODEL = 0x02 ,
  CDC_COMM_SUBCLASS_TELEPHONE_CONTROL_MODEL = 0x03 ,
  CDC_COMM_SUBCLASS_MULTICHANNEL_CONTROL_MODEL = 0x04 ,
  CDC_COMM_SUBCLASS_CAPI_CONTROL_MODEL = 0x05 ,
  CDC_COMM_SUBCLASS_ETHERNET_CONTROL_MODEL = 0x06 ,
  CDC_COMM_SUBCLASS_ATM_NETWORKING_CONTROL_MODEL = 0x07 ,
  CDC_COMM_SUBCLASS_WIRELESS_HANDSET_CONTROL_MODEL = 0x08 ,
  CDC_COMM_SUBCLASS_DEVICE_MANAGEMENT = 0x09 ,
  CDC_COMM_SUBCLASS_MOBILE_DIRECT_LINE_MODEL = 0x0A ,
  CDC_COMM_SUBCLASS_OBEX = 0x0B ,
  CDC_COMM_SUBCLASS_ETHERNET_EMULATION_MODEL = 0x0C ,
  CDC_COMM_SUBCLASS_NETWORK_CONTROL_MODEL = 0x0D
} cdc_comm_sublcass_type_t;


typedef enum
{
  CDC_COMM_PROTOCOL_NONE = 0x00 ,
  CDC_COMM_PROTOCOL_ATCOMMAND = 0x01 ,
  CDC_COMM_PROTOCOL_ATCOMMAND_PCCA_101 = 0x02 ,
  CDC_COMM_PROTOCOL_ATCOMMAND_PCCA_101_AND_ANNEXO = 0x03 ,
  CDC_COMM_PROTOCOL_ATCOMMAND_GSM_707 = 0x04 ,
  CDC_COMM_PROTOCOL_ATCOMMAND_3GPP_27007 = 0x05 ,
  CDC_COMM_PROTOCOL_ATCOMMAND_CDMA = 0x06 ,
  CDC_COMM_PROTOCOL_ETHERNET_EMULATION_MODEL = 0x07
} cdc_comm_protocol_type_t;



typedef enum
{
  CDC_FUNC_DESC_HEADER = 0x00 ,
  CDC_FUNC_DESC_CALL_MANAGEMENT = 0x01 ,
  CDC_FUNC_DESC_ABSTRACT_CONTROL_MANAGEMENT = 0x02 ,
  CDC_FUNC_DESC_DIRECT_LINE_MANAGEMENT = 0x03 ,
  CDC_FUNC_DESC_TELEPHONE_RINGER = 0x04 ,
  CDC_FUNC_DESC_TELEPHONE_CALL_AND_LINE_STATE_REPORTING_CAPACITY = 0x05 ,
  CDC_FUNC_DESC_UNION = 0x06 ,
  CDC_FUNC_DESC_COUNTRY_SELECTION = 0x07 ,
  CDC_FUNC_DESC_TELEPHONE_OPERATIONAL_MODES = 0x08 ,
  CDC_FUNC_DESC_USB_TERMINAL = 0x09 ,
  CDC_FUNC_DESC_NETWORK_CHANNEL_TERMINAL = 0x0A ,
  CDC_FUNC_DESC_PROTOCOL_UNIT = 0x0B ,
  CDC_FUNC_DESC_EXTENSION_UNIT = 0x0C ,
  CDC_FUNC_DESC_MULTICHANEL_MANAGEMENT = 0x0D ,
  CDC_FUNC_DESC_CAPI_CONTROL_MANAGEMENT = 0x0E ,
  CDC_FUNC_DESC_ETHERNET_NETWORKING = 0x0F ,
  CDC_FUNC_DESC_ATM_NETWORKING = 0x10 ,
  CDC_FUNC_DESC_WIRELESS_HANDSET_CONTROL_MODEL = 0x11 ,
  CDC_FUNC_DESC_MOBILE_DIRECT_LINE_MODEL = 0x12 ,
  CDC_FUNC_DESC_MOBILE_DIRECT_LINE_MODEL_DETAIL = 0x13 ,
  CDC_FUNC_DESC_DEVICE_MANAGEMENT_MODEL = 0x14 ,
  CDC_FUNC_DESC_OBEX = 0x15 ,
  CDC_FUNC_DESC_COMMAND_SET = 0x16 ,
  CDC_FUNC_DESC_COMMAND_SET_DETAIL = 0x17 ,
  CDC_FUNC_DESC_TELEPHONE_CONTROL_MODEL = 0x18 ,
  CDC_FUNC_DESC_OBEX_SERVICE_IDENTIFIER = 0x19 ,
  CDC_FUNC_DESC_NCM = 0x1A ,
}cdc_func_desc_type_t;
# 119 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc.h"
typedef enum{
  CDC_DATA_PROTOCOL_ISDN_BRI = 0x30,
  CDC_DATA_PROTOCOL_HDLC = 0x31,
  CDC_DATA_PROTOCOL_TRANSPARENT = 0x32,
  CDC_DATA_PROTOCOL_Q921_MANAGEMENT = 0x50,
  CDC_DATA_PROTOCOL_Q921_DATA_LINK = 0x51,
  CDC_DATA_PROTOCOL_Q921_TEI_MULTIPLEXOR = 0x52,
  CDC_DATA_PROTOCOL_V42BIS_DATA_COMPRESSION = 0x90,
  CDC_DATA_PROTOCOL_EURO_ISDN = 0x91,
  CDC_DATA_PROTOCOL_V24_RATE_ADAPTION_TO_ISDN = 0x92,
  CDC_DATA_PROTOCOL_CAPI_COMMAND = 0x93,
  CDC_DATA_PROTOCOL_HOST_BASED_DRIVER = 0xFD,
  CDC_DATA_PROTOCOL_IN_PROTOCOL_UNIT_FUNCTIONAL_DESCRIPTOR = 0xFE
}cdc_data_protocol_type_t;






typedef enum
{
  CDC_REQUEST_SEND_ENCAPSULATED_COMMAND = 0x00,
  CDC_REQUEST_GET_ENCAPSULATED_RESPONSE = 0x01,
  CDC_REQUEST_SET_COMM_FEATURE = 0x02,
  CDC_REQUEST_GET_COMM_FEATURE = 0x03,
  CDC_REQUEST_CLEAR_COMM_FEATURE = 0x04,

  CDC_REQUEST_SET_AUX_LINE_STATE = 0x10,
  CDC_REQUEST_SET_HOOK_STATE = 0x11,
  CDC_REQUEST_PULSE_SETUP = 0x12,
  CDC_REQUEST_SEND_PULSE = 0x13,
  CDC_REQUEST_SET_PULSE_TIME = 0x14,
  CDC_REQUEST_RING_AUX_JACK = 0x15,

  CDC_REQUEST_SET_LINE_CODING = 0x20,
  CDC_REQUEST_GET_LINE_CODING = 0x21,
  CDC_REQUEST_SET_CONTROL_LINE_STATE = 0x22,
  CDC_REQUEST_SEND_BREAK = 0x23,

  CDC_REQUEST_SET_RINGER_PARMS = 0x30,
  CDC_REQUEST_GET_RINGER_PARMS = 0x31,
  CDC_REQUEST_SET_OPERATION_PARMS = 0x32,
  CDC_REQUEST_GET_OPERATION_PARMS = 0x33,
  CDC_REQUEST_SET_LINE_PARMS = 0x34,
  CDC_REQUEST_GET_LINE_PARMS = 0x35,
  CDC_REQUEST_DIAL_DIGITS = 0x36,
  CDC_REQUEST_SET_UNIT_PARAMETER = 0x37,
  CDC_REQUEST_GET_UNIT_PARAMETER = 0x38,
  CDC_REQUEST_CLEAR_UNIT_PARAMETER = 0x39,
  CDC_REQUEST_GET_PROFILE = 0x3A,

  CDC_REQUEST_SET_ETHERNET_MULTICAST_FILTERS = 0x40,
  CDC_REQUEST_SET_ETHERNET_POWER_MANAGEMENT_PATTERN_FILTER = 0x41,
  CDC_REQUEST_GET_ETHERNET_POWER_MANAGEMENT_PATTERN_FILTER = 0x42,
  CDC_REQUEST_SET_ETHERNET_PACKET_FILTER = 0x43,
  CDC_REQUEST_GET_ETHERNET_STATISTIC = 0x44,

  CDC_REQUEST_SET_ATM_DATA_FORMAT = 0x50,
  CDC_REQUEST_GET_ATM_DEVICE_STATISTICS = 0x51,
  CDC_REQUEST_SET_ATM_DEFAULT_VC = 0x52,
  CDC_REQUEST_GET_ATM_VC_STATISTICS = 0x53,

  CDC_REQUEST_MDLM_SEMANTIC_MODEL = 0x60,
}cdc_management_request_t;

enum
{
  CDC_CONTROL_LINE_STATE_DTR = 0x01,
  CDC_CONTROL_LINE_STATE_RTS = 0x02,
};

enum
{
  CDC_LINE_CONDING_STOP_BITS_1 = 0,
  CDC_LINE_CONDING_STOP_BITS_1_5 = 1,
  CDC_LINE_CONDING_STOP_BITS_2 = 2,
};

enum
{
  CDC_LINE_CODING_PARITY_NONE = 0,
  CDC_LINE_CODING_PARITY_ODD = 1,
  CDC_LINE_CODING_PARITY_EVEN = 2,
  CDC_LINE_CODING_PARITY_MARK = 3,
  CDC_LINE_CODING_PARITY_SPACE = 4,
};






typedef enum
{
  CDC_NOTIF_NETWORK_CONNECTION = 0x00,
  CDC_NOTIF_RESPONSE_AVAILABLE = 0x01,
  CDC_NOTIF_AUX_JACK_HOOK_STATE = 0x08,
  CDC_NOTIF_RING_DETECT = 0x09,
  CDC_NOTIF_SERIAL_STATE = 0x20,
  CDC_NOTIF_CALL_STATE_CHANGE = 0x28,
  CDC_NOTIF_LINE_STATE_CHANGE = 0x29,
  CDC_NOTIF_CONNECTION_SPEED_CHANGE = 0x2A,
  CDC_NOTIF_MDLM_SEMANTIC_MODEL_NOTIFICATION = 0x40,
}cdc_notification_request_t;










typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  uint16_t bcdCDC ;
}cdc_desc_func_header_t;


typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  uint8_t bControlInterface ;
  uint8_t bSubordinateInterface ;
}cdc_desc_func_union_t;
# 262 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc.h"
typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  uint8_t iCountryCodeRelDate ;
  uint16_t wCountryCode ;
}cdc_desc_func_country_selection_t;
# 286 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc.h"
typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;

  struct {
    uint8_t handle_call : 1;
    uint8_t send_recv_call : 1;
    uint8_t reserved2 : 6;
  } bmCapabilities;

  uint8_t bDataInterface;
}cdc_desc_func_call_management_t;

typedef struct __attribute__ ((packed))
{
  uint8_t support_comm_request : 1;
  uint8_t support_line_request : 1;
  uint8_t support_send_break : 1;
  uint8_t support_notification_network_connection : 1;
  uint8_t reserved3 : 4;
}cdc_acm_capability_t;

_Static_assert(sizeof(cdc_acm_capability_t) == 1, "mostly problem with compiler");



typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  cdc_acm_capability_t bmCapabilities ;
}cdc_desc_func_acm_t;



typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  struct {
    uint8_t require_pulse_setup : 1;
    uint8_t support_aux_request : 1;
    uint8_t support_pulse_request : 1;
    uint8_t reserved4 : 5;
  } bmCapabilities;
}cdc_desc_func_direct_line_management_t;




typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  uint8_t bRingerVolSteps ;
  uint8_t bNumRingerPatterns ;
}cdc_desc_func_telephone_ringer_t;




typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  struct {
    uint8_t simple_mode : 1;
    uint8_t standalone_mode : 1;
    uint8_t computer_centric_mode : 1;
    uint8_t reserved5 : 5;
  } bmCapabilities;
}cdc_desc_func_telephone_operational_modes_t;




typedef struct __attribute__ ((packed))
{
  uint8_t bLength ;
  uint8_t bDescriptorType ;
  uint8_t bDescriptorSubType ;
  struct {
    uint32_t interrupted_dialtone : 1;
    uint32_t ringback_busy_fastbusy : 1;
    uint32_t caller_id : 1;
    uint32_t incoming_distinctive : 1;
    uint32_t dual_tone_multi_freq : 1;
    uint32_t line_state_change : 1;
    uint32_t reserved6 : 26;
  } bmCapabilities;
}cdc_desc_func_telephone_call_state_reporting_capabilities_t;


static inline uint8_t cdc_functional_desc_typeof(uint8_t const * p_desc)
{
  return p_desc[2];
}




typedef struct __attribute__ ((packed))
{
  uint32_t bit_rate;
  uint8_t stop_bits;
  uint8_t parity;
  uint8_t data_bits;
} cdc_line_coding_t;

_Static_assert(sizeof(cdc_line_coding_t) == 7, "size is not correct");

typedef struct __attribute__ ((packed))
{
  uint16_t dtr : 1;
  uint16_t rts : 1;
  uint16_t : 14;
} cdc_line_control_state_t;

_Static_assert(sizeof(cdc_line_control_state_t) == 2, "size is not correct");



# 31 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 2
# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"

# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
_Bool 
# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
        tud_cdc_n_connected (uint8_t itf);


uint8_t tud_cdc_n_get_line_state (uint8_t itf);


void tud_cdc_n_get_line_coding (uint8_t itf, cdc_line_coding_t* coding);


void tud_cdc_n_set_wanted_char (uint8_t itf, char wanted);


uint32_t tud_cdc_n_available (uint8_t itf);


uint32_t tud_cdc_n_read (uint8_t itf, void* buffer, uint32_t bufsize);


static inline
int32_t tud_cdc_n_read_char (uint8_t itf);


void tud_cdc_n_read_flush (uint8_t itf);



# 84 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
_Bool 
# 84 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
        tud_cdc_n_peek (uint8_t itf, uint8_t* ui8);


uint32_t tud_cdc_n_write (uint8_t itf, void const* buffer, uint32_t bufsize);


static inline
uint32_t tud_cdc_n_write_char (uint8_t itf, char ch);


static inline
uint32_t tud_cdc_n_write_str (uint8_t itf, char const* str);


uint32_t tud_cdc_n_write_flush (uint8_t itf);


uint32_t tud_cdc_n_write_available (uint8_t itf);



# 104 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
_Bool 
# 104 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
    tud_cdc_n_write_clear (uint8_t itf);




static inline 
# 109 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 109 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                      tud_cdc_connected (void);
static inline uint8_t tud_cdc_get_line_state (void);
static inline void tud_cdc_get_line_coding (cdc_line_coding_t* coding);
static inline void tud_cdc_set_wanted_char (char wanted);

static inline uint32_t tud_cdc_available (void);
static inline int32_t tud_cdc_read_char (void);
static inline uint32_t tud_cdc_read (void* buffer, uint32_t bufsize);
static inline void tud_cdc_read_flush (void);
static inline 
# 118 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 118 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                      tud_cdc_peek (uint8_t* ui8);

static inline uint32_t tud_cdc_write_char (char ch);
static inline uint32_t tud_cdc_write (void const* buffer, uint32_t bufsize);
static inline uint32_t tud_cdc_write_str (char const* str);
static inline uint32_t tud_cdc_write_flush (void);
static inline uint32_t tud_cdc_write_available (void);
static inline 
# 125 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 125 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                      tud_cdc_write_clear (void);






__attribute__ ((weak)) void tud_cdc_rx_cb(uint8_t itf);


__attribute__ ((weak)) void tud_cdc_rx_wanted_cb(uint8_t itf, char wanted_char);


__attribute__ ((weak)) void tud_cdc_tx_complete_cb(uint8_t itf);


__attribute__ ((weak)) void tud_cdc_line_state_cb(uint8_t itf, 
# 141 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
                                                    _Bool 
# 141 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                                                         dtr, 
# 141 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
                                                              _Bool 
# 141 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                                                                   rts);


__attribute__ ((weak)) void tud_cdc_line_coding_cb(uint8_t itf, cdc_line_coding_t const* p_line_coding);


__attribute__ ((weak)) void tud_cdc_send_break_cb(uint8_t itf, uint16_t duration_ms);




static inline int32_t tud_cdc_n_read_char (uint8_t itf)
{
  uint8_t ch;
  return tud_cdc_n_read(itf, &ch, 1) ? (int32_t) ch : -1;
}

static inline uint32_t tud_cdc_n_write_char(uint8_t itf, char ch)
{
  return tud_cdc_n_write(itf, &ch, 1);
}

static inline uint32_t tud_cdc_n_write_str (uint8_t itf, char const* str)
{
  return tud_cdc_n_write(itf, str, strlen(str));
}

static inline 
# 168 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 168 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                  tud_cdc_connected (void)
{
  return tud_cdc_n_connected(0);
}

static inline uint8_t tud_cdc_get_line_state (void)
{
  return tud_cdc_n_get_line_state(0);
}

static inline void tud_cdc_get_line_coding (cdc_line_coding_t* coding)
{
  tud_cdc_n_get_line_coding(0, coding);
}

static inline void tud_cdc_set_wanted_char (char wanted)
{
  tud_cdc_n_set_wanted_char(0, wanted);
}

static inline uint32_t tud_cdc_available (void)
{
  return tud_cdc_n_available(0);
}

static inline int32_t tud_cdc_read_char (void)
{
  return tud_cdc_n_read_char(0);
}

static inline uint32_t tud_cdc_read (void* buffer, uint32_t bufsize)
{
  return tud_cdc_n_read(0, buffer, bufsize);
}

static inline void tud_cdc_read_flush (void)
{
  tud_cdc_n_read_flush(0);
}

static inline 
# 208 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 208 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                  tud_cdc_peek (uint8_t* ui8)
{
  return tud_cdc_n_peek(0, ui8);
}

static inline uint32_t tud_cdc_write_char (char ch)
{
  return tud_cdc_n_write_char(0, ch);
}

static inline uint32_t tud_cdc_write (void const* buffer, uint32_t bufsize)
{
  return tud_cdc_n_write(0, buffer, bufsize);
}

static inline uint32_t tud_cdc_write_str (char const* str)
{
  return tud_cdc_n_write_str(0, str);
}

static inline uint32_t tud_cdc_write_flush (void)
{
  return tud_cdc_n_write_flush(0);
}

static inline uint32_t tud_cdc_write_available(void)
{
  return tud_cdc_n_write_available(0);
}

static inline 
# 238 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
             _Bool 
# 238 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
                  tud_cdc_write_clear(void)
{
  return tud_cdc_n_write_clear(0);
}







void cdcd_init (void);
void cdcd_reset (uint8_t rhport);
uint16_t cdcd_open (uint8_t rhport, tusb_desc_interface_t const * itf_desc, uint16_t max_len);

# 252 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
_Bool 
# 252 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
        cdcd_control_xfer_cb (uint8_t rhport, uint8_t stage, tusb_control_request_t const * request);

# 253 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h" 3 4
_Bool 
# 253 "/home/mathias/pico-sdk/lib/tinyusb/src/class/cdc/cdc_device.h"
        cdcd_xfer_cb (uint8_t rhport, uint8_t ep_addr, xfer_result_t result, uint32_t xferred_bytes);
# 75 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 2
# 126 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h"

# 126 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 3 4
_Bool 
# 126 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h"
    tusb_init(void);



# 129 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h" 3 4
_Bool 
# 129 "/home/mathias/pico-sdk/lib/tinyusb/src/tusb.h"
    tusb_inited(void);
# 33 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 1
# 37 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
typedef struct __attribute__ ((packed))
{
  volatile uint8_t busy : 1;
  volatile uint8_t stalled : 1;
  volatile uint8_t claimed : 1;
}tu_edpt_state_t;

typedef struct {
  
# 45 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
 _Bool 
# 45 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
      is_host;
  union {
      uint8_t daddr;
      uint8_t rhport;
      uint8_t hwid;
  };
  uint8_t ep_addr;
  uint8_t ep_speed;

  uint16_t ep_packetsize;
  uint16_t ep_bufsize;


  uint8_t* ep_buf;

  tu_fifo_t ff;


  osal_mutex_def_t ff_mutex;

}tu_edpt_stream_t;







# 72 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 72 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_validate(tusb_desc_endpoint_t const * desc_ep, tusb_speed_t speed);


void tu_edpt_bind_driver(uint8_t ep2drv[][2], tusb_desc_interface_t const* p_desc, uint16_t desc_len, uint8_t driver_id);


uint16_t tu_desc_get_interface_total_len(tusb_desc_interface_t const* desc_itf, uint8_t itf_count, uint16_t max_len);



# 81 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 81 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_claim(tu_edpt_state_t* ep_state, osal_mutex_t mutex);



# 84 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 84 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_release(tu_edpt_state_t* ep_state, osal_mutex_t mutex);







# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_stream_init(tu_edpt_stream_t* s, 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
                                             _Bool 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
                                                  is_host, 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
                                                           _Bool 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
                                                                is_tx, 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
                                                                       _Bool 
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
                                                                            overwritable,
                         void* ff_buf, uint16_t ff_bufsize, uint8_t* ep_buf, uint16_t ep_bufsize);



__attribute__ ((always_inline)) static inline
void tu_edpt_stream_open(tu_edpt_stream_t* s, uint8_t hwid, tusb_desc_endpoint_t const *desc_ep)
{
  tu_fifo_clear(&s->ff);
  s->hwid = hwid;
  s->ep_addr = desc_ep->bEndpointAddress;
  s->ep_packetsize = tu_edpt_packet_size(desc_ep);
}

__attribute__ ((always_inline)) static inline
void tu_edpt_stream_close(tu_edpt_stream_t* s)
{
  s->hwid = 0;
  s->ep_addr = 0;
}


__attribute__ ((always_inline)) static inline

# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_stream_clear(tu_edpt_stream_t* s)
{
  return tu_fifo_clear(&s->ff);
}






uint32_t tu_edpt_stream_write(tu_edpt_stream_t* s, void const *buffer, uint32_t bufsize);


uint32_t tu_edpt_stream_write_xfer(tu_edpt_stream_t* s);



# 130 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 130 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_stream_write_zlp_if_needed(tu_edpt_stream_t* s, uint32_t last_xferred_bytes);


__attribute__ ((always_inline)) static inline
uint32_t tu_edpt_stream_write_available(tu_edpt_stream_t* s)
{
  return (uint32_t) tu_fifo_remaining(&s->ff);
}






uint32_t tu_edpt_stream_read(tu_edpt_stream_t* s, void* buffer, uint32_t bufsize);


uint32_t tu_edpt_stream_read_xfer(tu_edpt_stream_t* s);


__attribute__ ((always_inline)) static inline
void tu_edpt_stream_read_xfer_complete(tu_edpt_stream_t* s, uint32_t xferred_bytes)
{
  tu_fifo_write_n(&s->ff, s->ep_buf, (uint16_t) xferred_bytes);
}


__attribute__ ((always_inline)) static inline
uint32_t tu_edpt_stream_read_available(tu_edpt_stream_t* s)
{
  return (uint32_t) tu_fifo_count(&s->ff);
}

__attribute__ ((always_inline)) static inline

# 164 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h" 3 4
_Bool 
# 164 "/home/mathias/pico-sdk/lib/tinyusb/src/common/tusb_private.h"
    tu_edpt_stream_peek(tu_edpt_stream_t* s, uint8_t* ch)
{
  return tu_fifo_peek(&s->ff, ch);
}
# 34 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2

# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.h" 1
# 36 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2
# 1 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 1
# 40 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
typedef struct
{




  void (* init ) (void);
  void (* reset ) (uint8_t rhport);
  uint16_t (* open ) (uint8_t rhport, tusb_desc_interface_t const * desc_intf, uint16_t max_len);
  
# 49 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
 _Bool 
# 49 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
          (* control_xfer_cb ) (uint8_t rhport, uint8_t stage, tusb_control_request_t const * request);
  
# 50 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
 _Bool 
# 50 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
          (* xfer_cb ) (uint8_t rhport, uint8_t ep_addr, xfer_result_t result, uint32_t xferred_bytes);
  void (* sof ) (uint8_t rhport, uint32_t frame_count);
} usbd_class_driver_t;




usbd_class_driver_t const* usbd_app_driver_get_cb(uint8_t* driver_count) __attribute__ ((weak));

typedef 
# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
       _Bool 
# 59 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
            (*usbd_control_xfer_cb_t)(uint8_t rhport, uint8_t stage, tusb_control_request_t const * request);

void usbd_int_set(
# 61 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
                 _Bool 
# 61 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
                      enabled);








# 69 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 69 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_open(uint8_t rhport, tusb_desc_endpoint_t const * desc_ep);


void usbd_edpt_close(uint8_t rhport, uint8_t ep_addr);



# 75 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 75 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_xfer(uint8_t rhport, uint8_t ep_addr, uint8_t * buffer, uint16_t total_bytes);



# 78 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 78 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_xfer_fifo(uint8_t rhport, uint8_t ep_addr, tu_fifo_t * ff, uint16_t total_bytes);




# 82 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 82 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_claim(uint8_t rhport, uint8_t ep_addr);



# 85 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 85 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_release(uint8_t rhport, uint8_t ep_addr);



# 88 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 88 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_busy(uint8_t rhport, uint8_t ep_addr);


void usbd_edpt_stall(uint8_t rhport, uint8_t ep_addr);


void usbd_edpt_clear_stall(uint8_t rhport, uint8_t ep_addr);



# 97 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 97 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_stalled(uint8_t rhport, uint8_t ep_addr);


__attribute__ ((always_inline)) static inline

# 101 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 101 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_edpt_ready(uint8_t rhport, uint8_t ep_addr)
{
  return !usbd_edpt_busy(rhport, ep_addr) && !usbd_edpt_stalled(rhport, ep_addr);
}


void usbd_sof_enable(uint8_t rhport, 
# 107 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
                                    _Bool 
# 107 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
                                         en);






# 113 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
_Bool 
# 113 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
    usbd_open_edpt_pair(uint8_t rhport, uint8_t const* p_desc, uint8_t ep_count, uint8_t xfer_type, uint8_t* ep_out, uint8_t* ep_in);
void usbd_defer_func( osal_task_func_t func, void* param, 
# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h" 3 4
                                                         _Bool 
# 114 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd_pvt.h"
                                                              in_isr );
# 37 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 2
# 54 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
enum { DRVID_INVALID = 0xFFu };

typedef struct
{
  struct __attribute__ ((packed))
  {
    volatile uint8_t connected : 1;
    volatile uint8_t addressed : 1;
    volatile uint8_t suspended : 1;

    uint8_t remote_wakeup_en : 1;
    uint8_t remote_wakeup_support : 1;
    uint8_t self_powered : 1;
  };

  volatile uint8_t cfg_num;
  uint8_t speed;

  uint8_t itf2drv[16];
  uint8_t ep2drv[16][2];

  tu_edpt_state_t ep_status[16][2];

}usbd_device_t;

static usbd_device_t _usbd_dev;
# 91 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
static usbd_class_driver_t const _usbd_driver[] =
{

  {
   
    .init = cdcd_init,
    .reset = cdcd_reset,
    .open = cdcd_open,
    .control_xfer_cb = cdcd_control_xfer_cb,
    .xfer_cb = cdcd_xfer_cb,
    .sof = 
# 101 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                       ((void *)0)
  
# 102 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 },
# 236 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
};

enum { BUILTIN_DRIVER_COUNT = ( sizeof(_usbd_driver) / sizeof(_usbd_driver[0]) ) };


static usbd_class_driver_t const * _app_driver = 
# 241 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                ((void *)0)
# 241 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                    ;
static uint8_t _app_driver_count = 0;



static inline usbd_class_driver_t const * get_driver(uint8_t drvid)
{

  if ( usbd_app_driver_get_cb )
  {
    if ( drvid < _app_driver_count ) return &_app_driver[drvid];
    drvid -= _app_driver_count;
  }


  if (drvid < BUILTIN_DRIVER_COUNT) return &_usbd_driver[drvid];

  return 
# 258 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        ((void *)0)
# 258 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}







enum { RHPORT_INVALID = 0xFFu };
static uint8_t _usbd_rhport = RHPORT_INVALID;



uint8_t _usbd_qdef_buf[16*sizeof(dcd_event_t)]; osal_queue_def_t _usbd_qdef = { .ff = { .buffer = _usbd_qdef_buf, .depth = 16, .item_size = sizeof(dcd_event_t), .overwritable = 
# 272 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
0
# 272 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
, } };
static osal_queue_t _usbd_q;



  static osal_mutex_def_t _ubsd_mutexdef;
  static osal_mutex_t _usbd_mutex;
# 287 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
static 
# 287 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 287 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_control_request(uint8_t rhport, tusb_control_request_t const * p_request);
static 
# 288 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 288 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_set_config(uint8_t rhport, uint8_t cfg_num);
static 
# 289 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 289 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_get_descriptor(uint8_t rhport, tusb_control_request_t const * p_request);


void usbd_control_reset(void);
void usbd_control_set_request(tusb_control_request_t const *request);
void usbd_control_set_complete_callback( usbd_control_xfer_cb_t fp );

# 295 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 295 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_control_xfer_cb (uint8_t rhport, uint8_t ep_addr, xfer_result_t event, uint32_t xferred_bytes);
# 334 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
tusb_speed_t tud_speed_get(void)
{
  return (tusb_speed_t) _usbd_dev.speed;
}


# 339 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 339 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_connected(void)
{
  return _usbd_dev.connected;
}


# 344 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 344 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_mounted(void)
{
  return _usbd_dev.cfg_num ? 
# 346 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                            1 
# 346 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                 : 
# 346 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                   0
# 346 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                        ;
}


# 349 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 349 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_suspended(void)
{
  return _usbd_dev.suspended;
}


# 354 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 354 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_remote_wakeup(void)
{

  do { if ( !(_usbd_dev.suspended && _usbd_dev.remote_wakeup_support && _usbd_dev.remote_wakeup_en) ) { ; return 
# 357 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 357 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);
  dcd_remote_wakeup(_usbd_rhport);
  return 
# 359 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 359 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}


# 362 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 362 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_disconnect(void)
{
  do { if ( !(dcd_disconnect) ) { ; return 
# 364 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 364 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);
  dcd_disconnect(_usbd_rhport);
  return 
# 366 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 366 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}


# 369 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 369 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_connect(void)
{
  do { if ( !(dcd_connect) ) { ; return 
# 371 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 371 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);
  dcd_connect(_usbd_rhport);
  return 
# 373 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 373 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}





# 379 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 379 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_inited(void)
{
  return _usbd_rhport != RHPORT_INVALID;
}


# 384 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 384 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_init (uint8_t rhport)
{

  if ( tud_inited() ) return 
# 387 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                            1
# 387 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                ;

  ;
  ;
  ;
  ;

  memset((&_usbd_dev), 0, (sizeof(*(&_usbd_dev))));



  _usbd_mutex = osal_mutex_create(&_ubsd_mutexdef);
  do { if ( !(_usbd_mutex) ) { do {} while (0); do {} while (0); return 
# 399 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 399 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);



  _usbd_q = osal_queue_create(&_usbd_qdef);
  do { if ( !(_usbd_q) ) { do {} while (0); do {} while (0); return 
# 404 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 404 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);


  if ( usbd_app_driver_get_cb )
  {
    _app_driver = usbd_app_driver_get_cb(&_app_driver_count);
  }


  for (uint8_t i = 0; i < (_app_driver_count + BUILTIN_DRIVER_COUNT); i++)
  {
    usbd_class_driver_t const * driver = get_driver(i);
    do { if ( !(driver) ) { do {} while (0); do {} while (0); return 
# 416 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 416 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);
    ;
    driver->init();
  }

  _usbd_rhport = rhport;


  dcd_init(rhport);
  dcd_int_enable(rhport);

  return 
# 427 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 427 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}

static void configuration_reset(uint8_t rhport)
{
  for ( uint8_t i = 0; i < (_app_driver_count + BUILTIN_DRIVER_COUNT); i++ )
  {
    usbd_class_driver_t const * driver = get_driver(i);
    do { if ( !(driver) ) { do {} while (0); do {} while (0); return ; } } while(0);
    driver->reset(rhport);
  }

  memset((&_usbd_dev), 0, (sizeof(*(&_usbd_dev))));
  memset(_usbd_dev.itf2drv, DRVID_INVALID, sizeof(_usbd_dev.itf2drv));
  memset(_usbd_dev.ep2drv , DRVID_INVALID, sizeof(_usbd_dev.ep2drv ));
}

static void usbd_reset(uint8_t rhport)
{
  configuration_reset(rhport);
  usbd_control_reset();
}


# 450 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 450 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    tud_task_event_ready(void)
{

  if ( !tusb_inited() ) return 
# 453 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                              0
# 453 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                   ;

  return !osal_queue_empty(_usbd_q);
}
# 476 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
void tud_task_ext(uint32_t timeout_ms, 
# 476 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                      _Bool 
# 476 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                           in_isr)
{
  (void) in_isr;


  if ( !tusb_inited() ) return;


  while (1)
  {
    dcd_event_t event;
    if ( !osal_queue_receive(_usbd_q, &event, timeout_ms) ) return;






    switch ( event.event_id )
    {
      case DCD_EVENT_BUS_RESET:
        ;
        usbd_reset(event.rhport);
        _usbd_dev.speed = event.bus_reset.speed;
      break;

      case DCD_EVENT_UNPLUGGED:
        ;
        usbd_reset(event.rhport);


        if (tud_umount_cb) tud_umount_cb();
      break;

      case DCD_EVENT_SETUP_RECEIVED:
        ;
        ;



        _usbd_dev.connected = 1;


        _usbd_dev.ep_status[0][TUSB_DIR_OUT].busy = 
# 519 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                   0
# 519 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                        ;
        _usbd_dev.ep_status[0][TUSB_DIR_OUT].claimed = 0;
        _usbd_dev.ep_status[0][TUSB_DIR_IN ].busy = 
# 521 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                   0
# 521 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                        ;
        _usbd_dev.ep_status[0][TUSB_DIR_IN ].claimed = 0;


        if ( !process_control_request(event.rhport, &event.setup_received) )
        {
          ;

          dcd_edpt_stall(event.rhport, 0);
          dcd_edpt_stall(event.rhport, 0 | TUSB_DIR_IN_MASK);
        }
      break;

      case DCD_EVENT_XFER_COMPLETE:
      {

        uint8_t const ep_addr = event.xfer_complete.ep_addr;
        uint8_t const epnum = tu_edpt_number(ep_addr);
        uint8_t const ep_dir = tu_edpt_dir(ep_addr);

        ;

        _usbd_dev.ep_status[epnum][ep_dir].busy = 
# 543 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                 0
# 543 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                      ;
        _usbd_dev.ep_status[epnum][ep_dir].claimed = 0;

        if ( 0 == epnum )
        {
          usbd_control_xfer_cb(event.rhport, ep_addr, (xfer_result_t)event.xfer_complete.result, event.xfer_complete.len);
        }
        else
        {
          usbd_class_driver_t const * driver = get_driver( _usbd_dev.ep2drv[epnum][ep_dir] );
          do { if ( !(driver) ) { do {} while (0); do {} while (0); return ; } } while(0);

          ;
          driver->xfer_cb(event.rhport, ep_addr, (xfer_result_t)event.xfer_complete.result, event.xfer_complete.len);
        }
      }
      break;

      case DCD_EVENT_SUSPEND:



        if ( _usbd_dev.connected )
        {
          ;
          if (tud_suspend_cb) tud_suspend_cb(_usbd_dev.remote_wakeup_en);
        }else
        {
          ;
        }
      break;

      case DCD_EVENT_RESUME:
        if ( _usbd_dev.connected )
        {
          ;
          if (tud_resume_cb) tud_resume_cb();
        }else
        {
          ;
        }
      break;

      case USBD_EVENT_FUNC_CALL:
        ;
        if ( event.func_call.func ) event.func_call.func(event.func_call.param);
      break;

      case DCD_EVENT_SOF:
      default:
        do {} while (0);
      break;
    }





  }
}






static 
# 609 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 609 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           invoke_class_control(uint8_t rhport, usbd_class_driver_t const * driver, tusb_control_request_t const * request)
{
  usbd_control_set_complete_callback(driver->control_xfer_cb);
  ;
  return driver->control_xfer_cb(rhport, CONTROL_STAGE_SETUP, request);
}



static 
# 618 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 618 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_control_request(uint8_t rhport, tusb_control_request_t const * p_request)
{
  usbd_control_set_complete_callback(
# 620 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                    ((void *)0)
# 620 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                        );

  do { if ( !(p_request->bmRequestType_bit.type < TUSB_REQ_TYPE_INVALID) ) { do {} while (0); do {} while (0); return 
# 622 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 622 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);


  if ( p_request->bmRequestType_bit.type == TUSB_REQ_TYPE_VENDOR )
  {
    do { if ( !(tud_vendor_control_xfer_cb) ) { ; return 
# 627 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 627 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);

    usbd_control_set_complete_callback(tud_vendor_control_xfer_cb);
    return tud_vendor_control_xfer_cb(rhport, CONTROL_STAGE_SETUP, p_request);
  }
# 641 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
  switch ( p_request->bmRequestType_bit.recipient )
  {

    case TUSB_REQ_RCPT_DEVICE:
      if ( TUSB_REQ_TYPE_CLASS == p_request->bmRequestType_bit.type )
      {
        uint8_t const itf = tu_u16_low(p_request->wIndex);
        do { if ( !(itf < ( sizeof(_usbd_dev.itf2drv) / sizeof(_usbd_dev.itf2drv[0]) )) ) { ; return 
# 648 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
       0
# 648 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
       ; } } while(0);

        usbd_class_driver_t const * driver = get_driver(_usbd_dev.itf2drv[itf]);
        do { if ( !(driver) ) { ; return 
# 651 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
       0
# 651 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
       ; } } while(0);


        return invoke_class_control(rhport, driver, p_request);
      }

      if ( TUSB_REQ_TYPE_STANDARD != p_request->bmRequestType_bit.type )
      {

        do {} while (0);
        return 
# 661 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
              0
# 661 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                   ;
      }

      switch ( p_request->bRequest )
      {
        case TUSB_REQ_SET_ADDRESS:



          usbd_control_set_request(p_request);
          dcd_set_address(rhport, (uint8_t) p_request->wValue);

          _usbd_dev.addressed = 1;
        break;

        case TUSB_REQ_GET_CONFIGURATION:
        {
          uint8_t cfg_num = _usbd_dev.cfg_num;
          tud_control_xfer(rhport, p_request, &cfg_num, 1);
        }
        break;

        case TUSB_REQ_SET_CONFIGURATION:
        {
          uint8_t const cfg_num = (uint8_t) p_request->wValue;


          if (_usbd_dev.cfg_num != cfg_num)
          {
            if ( _usbd_dev.cfg_num )
            {

              ;


              dcd_edpt_close_all(rhport);


              uint8_t const speed = _usbd_dev.speed;
              configuration_reset(rhport);

              _usbd_dev.speed = speed;
            }


            if ( cfg_num ) do { if ( !(process_set_config(rhport, cfg_num)) ) { do {} while (0); do {} while (0); return 
# 706 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                          0
# 706 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                          ; } } while(0);
          }

          _usbd_dev.cfg_num = cfg_num;
          tud_control_status(rhport, p_request);
        }
        break;

        case TUSB_REQ_GET_DESCRIPTOR:
          do { if ( !(process_get_descriptor(rhport, p_request)) ) { ; return 
# 715 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
         0
# 715 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
         ; } } while(0);
        break;

        case TUSB_REQ_SET_FEATURE:

          do { if ( !(TUSB_REQ_FEATURE_REMOTE_WAKEUP == p_request->wValue) ) { ; return 
# 720 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
         0
# 720 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
         ; } } while(0);

          ;


          _usbd_dev.remote_wakeup_en = 
# 725 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                      1
# 725 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                          ;
          tud_control_status(rhport, p_request);
        break;

        case TUSB_REQ_CLEAR_FEATURE:

          do { if ( !(TUSB_REQ_FEATURE_REMOTE_WAKEUP == p_request->wValue) ) { ; return 
# 731 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
         0
# 731 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
         ; } } while(0);

          ;


          _usbd_dev.remote_wakeup_en = 
# 736 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                      0
# 736 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                           ;
          tud_control_status(rhport, p_request);
        break;

        case TUSB_REQ_GET_STATUS:
        {



          uint16_t status = (uint16_t) ((_usbd_dev.self_powered ? 1u : 0u) | (_usbd_dev.remote_wakeup_en ? 2u : 0u));
          tud_control_xfer(rhport, p_request, &status, 2);
        }
        break;


        default: do {} while (0); return 
# 751 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                        0
# 751 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                             ;
      }
    break;


    case TUSB_REQ_RCPT_INTERFACE:
    {
      uint8_t const itf = tu_u16_low(p_request->wIndex);
      do { if ( !(itf < ( sizeof(_usbd_dev.itf2drv) / sizeof(_usbd_dev.itf2drv[0]) )) ) { ; return 
# 759 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 759 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);

      usbd_class_driver_t const * driver = get_driver(_usbd_dev.itf2drv[itf]);
      do { if ( !(driver) ) { ; return 
# 762 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 762 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);



      if ( !invoke_class_control(rhport, driver, p_request) )
      {


        do { if ( !(TUSB_REQ_TYPE_STANDARD == p_request->bmRequestType_bit.type) ) { ; return 
# 770 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
       0
# 770 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
       ; } } while(0);

        switch(p_request->bRequest)
        {
          case TUSB_REQ_GET_INTERFACE:
          case TUSB_REQ_SET_INTERFACE:

            usbd_control_set_complete_callback(
# 777 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                              ((void *)0)
# 777 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                  );

            if (TUSB_REQ_GET_INTERFACE == p_request->bRequest)
            {
              uint8_t alternate = 0;
              tud_control_xfer(rhport, p_request, &alternate, 1);
            }else
            {
              tud_control_status(rhport, p_request);
            }
          break;

          default: return 
# 789 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                         0
# 789 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                              ;
        }
      }
    }
    break;


    case TUSB_REQ_RCPT_ENDPOINT:
    {
      uint8_t const ep_addr = tu_u16_low(p_request->wIndex);
      uint8_t const ep_num = tu_edpt_number(ep_addr);
      uint8_t const ep_dir = tu_edpt_dir(ep_addr);

      do { if ( !(ep_num < ( sizeof(_usbd_dev.ep2drv) / sizeof(_usbd_dev.ep2drv[0]) )) ) { do {} while (0); do {} while (0); return 
# 802 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 802 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);

      usbd_class_driver_t const * driver = get_driver(_usbd_dev.ep2drv[ep_num][ep_dir]);

      if ( TUSB_REQ_TYPE_STANDARD != p_request->bmRequestType_bit.type )
      {

        do { if ( !(driver) ) { ; return 
# 809 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
       0
# 809 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
       ; } } while(0);
        return invoke_class_control(rhport, driver, p_request);
      }
      else
      {

        switch ( p_request->bRequest )
        {
          case TUSB_REQ_GET_STATUS:
          {
            uint16_t status = usbd_edpt_stalled(rhport, ep_addr) ? 0x0001 : 0x0000;
            tud_control_xfer(rhport, p_request, &status, 2);
          }
          break;

          case TUSB_REQ_CLEAR_FEATURE:
          case TUSB_REQ_SET_FEATURE:
          {
            if ( TUSB_REQ_FEATURE_EDPT_HALT == p_request->wValue )
            {
              if ( TUSB_REQ_CLEAR_FEATURE == p_request->bRequest )
              {
                usbd_edpt_clear_stall(rhport, ep_addr);
              }else
              {
                usbd_edpt_stall(rhport, ep_addr);
              }
            }

            if (driver)
            {





              (void) invoke_class_control(rhport, driver, p_request);
              usbd_control_set_complete_callback(
# 846 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                ((void *)0)
# 846 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                    );


              if ( !_usbd_dev.ep_status[0][TUSB_DIR_IN].busy ) tud_control_status(rhport, p_request);
            }
          }
          break;


          default: do {} while (0); return 
# 855 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                          0
# 855 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                               ;
        }
      }
    }
    break;


    default: do {} while (0); return 
# 862 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                    0
# 862 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                         ;
  }

  return 
# 865 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 865 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}



static 
# 870 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 870 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_set_config(uint8_t rhport, uint8_t cfg_num)
{

  tusb_desc_configuration_t const * desc_cfg = (tusb_desc_configuration_t const *) tud_descriptor_configuration_cb(cfg_num-1);
  do { if ( !(desc_cfg != 
# 874 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 ((void *)0) 
# 874 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 && desc_cfg->bDescriptorType == TUSB_DESC_CONFIGURATION) ) { do {} while (0); do {} while (0); return 
# 874 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 874 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);


  _usbd_dev.remote_wakeup_support = (desc_cfg->bmAttributes & TUSB_DESC_CONFIG_ATT_REMOTE_WAKEUP) ? 1u : 0u;
  _usbd_dev.self_powered = (desc_cfg->bmAttributes & TUSB_DESC_CONFIG_ATT_SELF_POWERED ) ? 1u : 0u;


  uint8_t const * p_desc = ((uint8_t const*) desc_cfg) + sizeof(tusb_desc_configuration_t);
  uint8_t const * desc_end = ((uint8_t const*) desc_cfg) + (desc_cfg->wTotalLength);

  while( p_desc < desc_end )
  {
    uint8_t assoc_itf_count = 1;


    if ( TUSB_DESC_INTERFACE_ASSOCIATION == tu_desc_type(p_desc) )
    {
      tusb_desc_interface_assoc_t const * desc_iad = (tusb_desc_interface_assoc_t const *) p_desc;
      assoc_itf_count = desc_iad->bInterfaceCount;

      p_desc = tu_desc_next(p_desc);




    }

    do { if ( !(TUSB_DESC_INTERFACE == tu_desc_type(p_desc)) ) { do {} while (0); do {} while (0); return 
# 901 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 901 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);
    tusb_desc_interface_t const * desc_itf = (tusb_desc_interface_t const*) p_desc;


    uint16_t const remaining_len = (uint16_t) (desc_end-p_desc);
    uint8_t drv_id;
    for (drv_id = 0; drv_id < (_app_driver_count + BUILTIN_DRIVER_COUNT); drv_id++)
    {
      usbd_class_driver_t const *driver = get_driver(drv_id);
      do { if ( !(driver) ) { do {} while (0); do {} while (0); return 
# 910 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 910 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);
      uint16_t const drv_len = driver->open(rhport, desc_itf, remaining_len);

      if ( (sizeof(tusb_desc_interface_t) <= drv_len) && (drv_len <= remaining_len) )
      {

        ;



        if ( assoc_itf_count == 1)
        {

          if ( driver->open == cdcd_open ) assoc_itf_count = 2;
# 933 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
        }


        for(uint8_t i=0; i<assoc_itf_count; i++)
        {
          uint8_t const itf_num = desc_itf->bInterfaceNumber+i;


          do { if ( !(DRVID_INVALID == _usbd_dev.itf2drv[itf_num]) ) { do {} while (0); do {} while (0); return 
# 941 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
         0
# 941 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
         ; } } while(0);
          _usbd_dev.itf2drv[itf_num] = drv_id;
        }


        tu_edpt_bind_driver(_usbd_dev.ep2drv, desc_itf, drv_len, drv_id);


        p_desc += drv_len;

        break;
      }
    }


    do { if ( !(drv_id < (_app_driver_count + BUILTIN_DRIVER_COUNT)) ) { do {} while (0); do {} while (0); return 
# 956 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 956 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);
  }


  if (tud_mount_cb) tud_mount_cb();

  return 
# 962 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 962 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}


static 
# 966 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
      _Bool 
# 966 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
           process_get_descriptor(uint8_t rhport, tusb_control_request_t const * p_request)
{
  tusb_desc_type_t const desc_type = (tusb_desc_type_t) tu_u16_high(p_request->wValue);
  uint8_t const desc_index = tu_u16_low( p_request->wValue );

  switch(desc_type)
  {
    case TUSB_DESC_DEVICE:
    {
      ;

      void* desc_device = (void*) (uintptr_t) tud_descriptor_device_cb();



      if ((64 < sizeof(tusb_desc_device_t)) && !_usbd_dev.addressed &&
          ((tusb_control_request_t const*) p_request)->wLength > sizeof(tusb_desc_device_t))
      {


        tusb_control_request_t mod_request = *p_request;
        mod_request.wLength = 64;

        return tud_control_xfer(rhport, &mod_request, desc_device, 64);
      }else
      {
        return tud_control_xfer(rhport, p_request, desc_device, sizeof(tusb_desc_device_t));
      }
    }


    case TUSB_DESC_BOS:
    {
      ;


      if (!tud_descriptor_bos_cb) return 
# 1002 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                        0
# 1002 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                             ;

      uintptr_t desc_bos = (uintptr_t) tud_descriptor_bos_cb();
      do { if ( !(desc_bos) ) { do {} while (0); do {} while (0); return 
# 1005 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 1005 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);


      uint16_t const total_len = (tu_unaligned_read16((const void*) (desc_bos + 
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                __builtin_offsetof (
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                tusb_desc_bos_t
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                , 
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                wTotalLength
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                )
# 1008 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                )));

      return tud_control_xfer(rhport, p_request, (void*) desc_bos, total_len);
    }


    case TUSB_DESC_CONFIGURATION:
    case TUSB_DESC_OTHER_SPEED_CONFIG:
    {
      uintptr_t desc_config;

      if ( desc_type == TUSB_DESC_CONFIGURATION )
      {
        ;
        desc_config = (uintptr_t) tud_descriptor_configuration_cb(desc_index);
      }else
      {

        ;
        do { if ( !(tud_descriptor_other_speed_configuration_cb) ) { ; return 
# 1027 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
       0
# 1027 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
       ; } } while(0);
        desc_config = (uintptr_t) tud_descriptor_other_speed_configuration_cb(desc_index);
      }

      do { if ( !(desc_config) ) { do {} while (0); do {} while (0); return 
# 1031 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 1031 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);


      uint16_t const total_len = (tu_unaligned_read16((const void*) (desc_config + 
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                __builtin_offsetof (
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                tusb_desc_configuration_t
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                , 
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                wTotalLength
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                )
# 1034 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                )));

      return tud_control_xfer(rhport, p_request, (void*) desc_config, total_len);
    }


    case TUSB_DESC_STRING:
    {
      ;


      uint8_t const* desc_str = (uint8_t const*) tud_descriptor_string_cb(desc_index, (p_request->wIndex));
      do { if ( !(desc_str) ) { ; return 
# 1046 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 1046 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);


      return tud_control_xfer(rhport, p_request, (void*) (uintptr_t) desc_str, tu_desc_len(desc_str));
    }


    case TUSB_DESC_DEVICE_QUALIFIER:
    {
      ;

      do { if ( !(tud_descriptor_device_qualifier_cb) ) { ; return 
# 1057 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 1057 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);

      uint8_t const* desc_qualifier = tud_descriptor_device_qualifier_cb();
      do { if ( !(desc_qualifier) ) { ; return 
# 1060 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
     0
# 1060 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
     ; } } while(0);


      return tud_control_xfer(rhport, p_request, (void*) (uintptr_t) desc_qualifier, tu_desc_len(desc_qualifier));
    }


    default: return 
# 1067 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                   0
# 1067 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                        ;
  }
}




__attribute__((section(".time_critical.tinyusb"))) void dcd_event_handler(dcd_event_t const * event, 
# 1074 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                                   _Bool 
# 1074 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                                        in_isr)
{
  switch (event->event_id)
  {
    case DCD_EVENT_UNPLUGGED:
      _usbd_dev.connected = 0;
      _usbd_dev.addressed = 0;
      _usbd_dev.cfg_num = 0;
      _usbd_dev.suspended = 0;
      osal_queue_send(_usbd_q, event, in_isr);
    break;

    case DCD_EVENT_SUSPEND:




      if ( _usbd_dev.connected )
      {
        _usbd_dev.suspended = 1;
        osal_queue_send(_usbd_q, event, in_isr);
      }
    break;

    case DCD_EVENT_RESUME:

      if ( _usbd_dev.connected )
      {
        _usbd_dev.suspended = 0;
        osal_queue_send(_usbd_q, event, in_isr);
      }
    break;

    case DCD_EVENT_SOF:

      for (uint8_t i = 0; i < (_app_driver_count + BUILTIN_DRIVER_COUNT); i++)
      {
        usbd_class_driver_t const * driver = get_driver(i);
        if (driver && driver->sof)
        {
          driver->sof(event->rhport, event->sof.frame_count);
        }
      }



      if ( _usbd_dev.suspended )
      {
        _usbd_dev.suspended = 0;

        dcd_event_t const event_resume = { .rhport = event->rhport, .event_id = DCD_EVENT_RESUME };
        osal_queue_send(_usbd_q, &event_resume, in_isr);
      }


    break;

    default:
      osal_queue_send(_usbd_q, event, in_isr);
    break;
  }
}





void usbd_int_set(
# 1141 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                 _Bool 
# 1141 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                      enabled)
{
  if (enabled)
  {
    dcd_int_enable(_usbd_rhport);
  }else
  {
    dcd_int_disable(_usbd_rhport);
  }
}



# 1153 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1153 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_open_edpt_pair(uint8_t rhport, uint8_t const* p_desc, uint8_t ep_count, uint8_t xfer_type, uint8_t* ep_out, uint8_t* ep_in)
{
  for(int i=0; i<ep_count; i++)
  {
    tusb_desc_endpoint_t const * desc_ep = (tusb_desc_endpoint_t const *) p_desc;

    do { if ( !(TUSB_DESC_ENDPOINT == desc_ep->bDescriptorType && xfer_type == desc_ep->bmAttributes.xfer) ) { do {} while (0); do {} while (0); return 
# 1159 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 1159 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);
    do { if ( !(usbd_edpt_open(rhport, desc_ep)) ) { do {} while (0); do {} while (0); return 
# 1160 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
   0
# 1160 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
   ; } } while(0);

    if ( tu_edpt_dir(desc_ep->bEndpointAddress) == TUSB_DIR_IN )
    {
      (*ep_in) = desc_ep->bEndpointAddress;
    }else
    {
      (*ep_out) = desc_ep->bEndpointAddress;
    }

    p_desc = tu_desc_next(p_desc);
  }

  return 
# 1173 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
        1
# 1173 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
            ;
}


void usbd_defer_func(osal_task_func_t func, void* param, 
# 1177 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                                        _Bool 
# 1177 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                             in_isr)
{
  dcd_event_t event =
  {
      .rhport = 0,
      .event_id = USBD_EVENT_FUNC_CALL,
  };

  event.func_call.func = func;
  event.func_call.param = param;

  dcd_event_handler(&event, in_isr);
}






# 1195 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1195 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_open(uint8_t rhport, tusb_desc_endpoint_t const * desc_ep)
{
  rhport = _usbd_rhport;

  do { if ( !(tu_edpt_number(desc_ep->bEndpointAddress) < 16) ) { do {} while (0); do {} while (0); return 
# 1199 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 1199 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);
  do { if ( !(tu_edpt_validate(desc_ep, (tusb_speed_t) _usbd_dev.speed)) ) { do {} while (0); do {} while (0); return 
# 1200 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 1200 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);

  return dcd_edpt_open(rhport, desc_ep);
}


# 1205 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1205 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_claim(uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;




  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);
  tu_edpt_state_t* ep_state = &_usbd_dev.ep_status[epnum][dir];

  return tu_edpt_claim(ep_state, _usbd_mutex);
}


# 1219 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1219 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_release(uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);
  tu_edpt_state_t* ep_state = &_usbd_dev.ep_status[epnum][dir];

  return tu_edpt_release(ep_state, _usbd_mutex);
}


# 1230 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1230 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_xfer(uint8_t rhport, uint8_t ep_addr, uint8_t * buffer, uint16_t total_bytes)
{
  rhport = _usbd_rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);




  ;


  do { if ( !(_usbd_dev.ep_status[epnum][dir].busy == 0) ) { do {} while (0); do {} while (0); return 
# 1243 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 1243 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);



  _usbd_dev.ep_status[epnum][dir].busy = 
# 1247 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                        1
# 1247 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                            ;

  if ( dcd_edpt_xfer(rhport, ep_addr, buffer, total_bytes) )
  {
    return 
# 1251 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
          1
# 1251 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
              ;
  }else
  {

    _usbd_dev.ep_status[epnum][dir].busy = 
# 1255 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                          0
# 1255 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                               ;
    _usbd_dev.ep_status[epnum][dir].claimed = 0;
    ;
    do {} while (0);
    return 
# 1259 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
          0
# 1259 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
               ;
  }
}






# 1267 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1267 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_xfer_fifo(uint8_t rhport, uint8_t ep_addr, tu_fifo_t * ff, uint16_t total_bytes)
{
  rhport = _usbd_rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);

  ;


  do { if ( !(_usbd_dev.ep_status[epnum][dir].busy == 0) ) { do {} while (0); do {} while (0); return 
# 1277 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
 0
# 1277 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
 ; } } while(0);



  _usbd_dev.ep_status[epnum][dir].busy = 
# 1281 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                        1
# 1281 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                            ;

  if (dcd_edpt_xfer_fifo(rhport, ep_addr, ff, total_bytes))
  {
    ;
    return 
# 1286 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
          1
# 1286 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
              ;
  }else
  {

    _usbd_dev.ep_status[epnum][dir].busy = 
# 1290 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                          0
# 1290 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                               ;
    _usbd_dev.ep_status[epnum][dir].claimed = 0;
    ;
    do {} while (0);
    return 
# 1294 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
          0
# 1294 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
               ;
  }
}


# 1298 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1298 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_busy(uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);

  return _usbd_dev.ep_status[epnum][dir].busy;
}

void usbd_edpt_stall(uint8_t rhport, uint8_t ep_addr)
{
  rhport = _usbd_rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);


  if ( !_usbd_dev.ep_status[epnum][dir].stalled )
  {
    ;
    dcd_edpt_stall(rhport, ep_addr);
    _usbd_dev.ep_status[epnum][dir].stalled = 
# 1320 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                             1
# 1320 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                 ;
    _usbd_dev.ep_status[epnum][dir].busy = 
# 1321 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                          1
# 1321 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                              ;
  }
}

void usbd_edpt_clear_stall(uint8_t rhport, uint8_t ep_addr)
{
  rhport = _usbd_rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);


  if ( _usbd_dev.ep_status[epnum][dir].stalled )
  {
    ;
    dcd_edpt_clear_stall(rhport, ep_addr);
    _usbd_dev.ep_status[epnum][dir].stalled = 
# 1337 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                             0
# 1337 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                  ;
    _usbd_dev.ep_status[epnum][dir].busy = 
# 1338 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                          0
# 1338 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                               ;
  }
}


# 1342 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
_Bool 
# 1342 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
    usbd_edpt_stalled(uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);

  return _usbd_dev.ep_status[epnum][dir].stalled;
}







void usbd_edpt_close(uint8_t rhport, uint8_t ep_addr)
{
  rhport = _usbd_rhport;

  do { if ( !(dcd_edpt_close) ) { do {} while (0); do {} while (0); return ; } } while(0);
  ;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  uint8_t const dir = tu_edpt_dir(ep_addr);

  dcd_edpt_close(rhport, ep_addr);
  _usbd_dev.ep_status[epnum][dir].stalled = 
# 1369 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                           0
# 1369 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                ;
  _usbd_dev.ep_status[epnum][dir].busy = 
# 1370 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                        0
# 1370 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                             ;
  _usbd_dev.ep_status[epnum][dir].claimed = 
# 1371 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                           0
# 1371 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                                ;

  return;
}

void usbd_sof_enable(uint8_t rhport, 
# 1376 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c" 3 4
                                    _Bool 
# 1376 "/home/mathias/pico-sdk/lib/tinyusb/src/device/usbd.c"
                                         en)
{
  rhport = _usbd_rhport;



  dcd_sof_enable(rhport, en);
}
