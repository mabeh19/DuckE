# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"







# 1 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info.h" 1
# 23 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/defs.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/structure.h" 1
# 18 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/structure.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/usr/arm-none-eabi/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/usr/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/usr/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/usr/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/usr/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/usr/arm-none-eabi/include/machine/_default_types.h" 2 3 4
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
# 19 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/structure.h" 2






# 24 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/structure.h"
typedef struct _binary_info_core binary_info_t;
# 64 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/structure.h"
typedef struct __attribute__((packed)) _binary_info_core {
        uint16_t type;
        uint16_t tag;
} binary_info_core_t;

typedef struct __attribute__((packed)) _binary_info_raw_data {
        struct _binary_info_core core;
        uint8_t bytes[1];
} binary_info_raw_data_t;

typedef struct __attribute__((packed)) _binary_info_sized_data {
        struct _binary_info_core core;
        uint32_t length;
        uint8_t bytes[1];
} binary_info_sized_data_t;

typedef struct __attribute__((packed)) _binary_info_list_zero_terminated {
        struct _binary_info_core core;
        binary_info_t * list;
} binary_info_list_zero_terminated_t;

typedef struct __attribute__((packed)) _binary_info_id_and_int {
        struct _binary_info_core core;
        uint32_t id;
        int32_t value;
} binary_info_id_and_int_t;

typedef struct __attribute__((packed)) _binary_info_id_and_string {
        struct _binary_info_core core;
        uint32_t id;
        const char * value;
} binary_info_id_and_string_t;

typedef struct __attribute__((packed)) _binary_info_block_device {
        struct _binary_info_core core;
        const char * name;
        uint32_t address;
        uint32_t size;
        binary_info_t * extra;
        uint16_t flags;
} binary_info_block_device_t;




typedef struct __attribute__((packed)) _binary_info_pins_with_func {
    struct _binary_info_core core;


    uint32_t pin_encoding;
} binary_info_pins_with_func_t;

typedef struct __attribute__((packed)) _binary_info_pins_with_name {
    struct _binary_info_core core;
    uint32_t pin_mask;
    const char * label;
} binary_info_pins_with_name_t;






typedef struct __attribute__((packed)) _binary_info_named_group {
    struct _binary_info_core core;
    uint32_t parent_id;
    uint16_t flags;
    uint16_t group_tag;
    uint32_t group_id;
    const char * label;
} binary_info_named_group_t;

enum {
    BINARY_INFO_BLOCK_DEV_FLAG_READ =
    1 << 0,
    BINARY_INFO_BLOCK_DEV_FLAG_WRITE = 1 << 1,
    BINARY_INFO_BLOCK_DEV_FLAG_REFORMAT = 1 << 2,

    BINARY_INFO_BLOCK_DEV_FLAG_PT_UNKNOWN = 0 << 4,
    BINARY_INFO_BLOCK_DEV_FLAG_PT_MBR = 1 << 4,
    BINARY_INFO_BLOCK_DEV_FLAG_PT_GPT = 2 << 4,
    BINARY_INFO_BLOCK_DEV_FLAG_PT_NONE = 3 << 4,
};
# 25 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info.h" 2



# 1 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/code.h" 1
# 13 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/code.h"
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
# 11 "/usr/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/usr/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/usr/arm-none-eabi/include/sys/config.h" 2 3
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



# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4

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
# 14 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info/code.h" 2
# 29 "/home/mathias/pico-sdk/src/common/pico_binary_info/include/pico/binary_info.h" 2
# 9 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 2


# 1 "/home/mathias/pico-sdk/src/rp2_common/boot_stage2/include/boot_stage2/config.h" 1
# 12 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 2
# 21 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
extern char __flash_binary_end;
static const 
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_22=0; __attribute__((section(".reset"))) static const struct _binary_info_id_and_int __bi_22 = { .core = { .type = (5 + _error_bi_is_missing_enclosing_decl_22), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x68f465de, .value = (intptr_t)&__flash_binary_end };; static const 
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 22 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr22"))) struct _binary_info_core *__bi_ptr22 = &__bi_22.core;







static const 
# 30 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 30 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_30=0; __attribute__((section(".reset"))) static const struct _binary_info_id_and_string __bi_30 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_30), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x9da22254, .value = "Jun 18 2023", }; static const 
# 30 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 30 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr30"))) struct _binary_info_core *__bi_ptr30 = &__bi_30.core;;







static const 
# 38 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 38 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_38=0; __attribute__((section(".reset"))) static const struct _binary_info_id_and_string __bi_38 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_38), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x02031c86, .value = "PiPico", }; static const 
# 38 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 38 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr38"))) struct _binary_info_core *__bi_ptr38 = &__bi_38.core;





static const 
# 44 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 44 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_44=0; static const struct _binary_info_id_and_string __bi_44 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_44), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0xb63cffbb, .value = "pico_w", }; static const 
# 44 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 44 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr44"))) struct _binary_info_core *__bi_ptr44 = &__bi_44.core;





static const 
# 50 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 50 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_50=0; __attribute__((section(".reset"))) static const struct _binary_info_id_and_string __bi_50 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_50), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x5360b3ab, .value = "1.5.0", }; static const 
# 50 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 50 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr50"))) struct _binary_info_core *__bi_ptr50 = &__bi_50.core;
# 75 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
static const 
# 75 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 75 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_75=0; static const struct _binary_info_id_and_string __bi_75 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_75), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x7f8882e1, .value = "boot2_w25q080", }; static const 
# 75 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 75 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr75"))) struct _binary_info_core *__bi_ptr75 = &__bi_75.core;





static const 
# 81 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__unused__)) 
# 81 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
int _error_bi_is_missing_enclosing_decl_81=0; static const struct _binary_info_id_and_string __bi_81 = { .core = { .type = (6 + _error_bi_is_missing_enclosing_decl_81), .tag = ((((uint)'P'&0xffu)<<8u)|((uint)'R'&0xffu)), }, .id = 0x4275f0d3, .value = "Release", }; static const 
# 81 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" 3
__attribute__((__used__)) 
# 81 "/home/mathias/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c"
__attribute__((section(".binary_info.keep." "__bi_ptr81"))) struct _binary_info_core *__bi_ptr81 = &__bi_81.core;
