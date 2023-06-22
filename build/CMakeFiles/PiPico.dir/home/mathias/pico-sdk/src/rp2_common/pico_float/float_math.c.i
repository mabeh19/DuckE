# 0 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"






# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h" 1
# 10 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h"
# 1 "/usr/arm-none-eabi/include/math.h" 1 3




# 1 "/usr/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/usr/arm-none-eabi/include/sys/reent.h" 3
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
# 14 "/usr/arm-none-eabi/include/sys/reent.h" 2 3
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
# 15 "/usr/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/usr/arm-none-eabi/include/sys/_types.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 359 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/usr/arm-none-eabi/include/sys/_types.h" 2 3


# 1 "/usr/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/usr/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/usr/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/usr/arm-none-eabi/include/machine/_types.h" 2 3
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
# 6 "/usr/arm-none-eabi/include/math.h" 2 3
# 1 "/usr/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/usr/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stddef.h" 1 3 4
# 48 "/usr/arm-none-eabi/include/sys/cdefs.h" 2 3
# 7 "/usr/arm-none-eabi/include/math.h" 2 3
# 1 "/usr/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 8 "/usr/arm-none-eabi/include/math.h" 2 3
# 1 "/usr/arm-none-eabi/include/_ansi.h" 1 3
# 9 "/usr/arm-none-eabi/include/math.h" 2 3


# 86 "/usr/arm-none-eabi/include/math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);




extern int finite (double);
extern int finitef (float);
extern int finitel (long double);
extern int isinff (float);
extern int isnanf (float);





extern int isinf (double);




extern int isnan (double);
# 160 "/usr/arm-none-eabi/include/math.h" 3
    typedef float float_t;
    typedef double double_t;
# 223 "/usr/arm-none-eabi/include/math.h" 3
extern int __isinff (float);
extern int __isinfd (double);
extern int __isnanf (float);
extern int __isnand (double);
extern int __fpclassifyf (float);
extern int __fpclassifyd (double);
extern int __signbitf (float);
extern int __signbitd (double);
# 319 "/usr/arm-none-eabi/include/math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);
# 451 "/usr/arm-none-eabi/include/math.h" 3
extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern float nexttowardf (float, long double);
extern double nexttoward (double, long double);
extern long double nexttowardl (long double, long double);
extern long double logbl (long double);
extern long double log2l (long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 533 "/usr/arm-none-eabi/include/math.h" 3
extern double drem (double, double);
extern float dremf (float, float);



extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);



extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);



extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);
# 595 "/usr/arm-none-eabi/include/math.h" 3
extern int *__signgam (void);
# 637 "/usr/arm-none-eabi/include/math.h" 3

# 11 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h" 2
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/float.h" 1 3 4
# 12 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h" 2
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h" 1
# 24 "/home/mathias/pico-sdk/src/common/pico_base/include/pico.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h" 1
# 12 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/types.h"
# 1 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 1
# 10 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h"
# 1 "/usr/lib/gcc/arm-none-eabi/13.1.0/include/stdbool.h" 1 3 4
# 11 "/home/mathias/pico-sdk/src/common/pico_base/include/pico/assert.h" 2







# 1 "/usr/arm-none-eabi/include/assert.h" 1 3
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
# 13 "/usr/arm-none-eabi/include/stdint.h" 3 4
# 1 "/usr/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/usr/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/usr/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/usr/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/usr/arm-none-eabi/include/sys/_stdint.h" 3 4

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
# 72 "/home/mathias/pico-sdk/src/rp2_common/pico_platform/include/pico/platform.h"
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
# 13 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h" 2
# 1 "/home/mathias/pico-sdk/src/rp2_common/pico_bootrom/include/pico/bootrom/sf_table.h" 1
# 14 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h" 2
# 36 "/home/mathias/pico-sdk/src/rp2_common/pico_float/include/pico/float.h"
float fix2float(int32_t m, int e);
float ufix2float(uint32_t m, int e);
float fix642float(int64_t m, int e);
float ufix642float(uint64_t m, int e);


int32_t float2fix(float f, int e);
uint32_t float2ufix(float f, int e);
int64_t float2fix64(float f, int e);
uint64_t float2ufix64(float f, int e);
int32_t float2int(float f);
int64_t float2int64(float f);


int32_t float2int_z(float f);
int64_t float2int64_z(float f);

float exp10f(float x);
void sincosf(float x, float *sinx, float *cosx);
float powintf(float x, int y);
# 8 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 2



# 10 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic push

# 11 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic ignored "-Wconversion"

# 12 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic ignored "-Wsign-conversion"

typedef uint32_t ui32;
typedef int32_t i32;
# 40 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
typedef union {
    float f;
    ui32 ix;
} float_ui32;

static inline float ui322float(ui32 ix) {
    float_ui32 tmp;
    tmp.ix = ix;
    return tmp.f;
}

static inline ui32 float2ui32(float f) {
    float_ui32 tmp;
    tmp.f = f;
    return tmp.ix;
}

static inline 
# 57 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3 4
             _Bool 
# 57 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                  fisnan(float x) {
    ui32 ix=float2ui32(x);
    return ix * 2 > 0xff000000u;
}
# 70 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
static inline int fgetsignexp(float x) {
    ui32 ix=float2ui32(x);
    return (ix>>23)&0x1ff;
}

static inline int fgetexp(float x) {
    ui32 ix=float2ui32(x);
    return (ix>>23)&0xff;
}

static inline float fldexp(float x,int de) {
    ui32 ix=float2ui32(x),iy;
    int e;
    e=fgetexp(x);
    if(e==0||e==0xff) return x;
    e+=de;
    if(e<=0) iy=ix&0x80000000;
    else if(e>=0xff) iy=(ix&0x80000000)|0x7f800000ULL;
    else iy=ix+((ui32)de<<23);
    return ui322float(iy);
}

float __wrap_ldexpf(float x, int de) {
    ((void)0);
    return fldexp(x, de);
}

static inline float fcopysign(float x,float y) {
    ui32 ix=float2ui32(x),iy=float2ui32(y);
    ix=((ix&0x7fffffff)|(iy&0x80000000));
    return ui322float(ix);
}

float __wrap_copysignf(float x, float y) {
    ((void)0);
    return fcopysign(x, y);
}

static inline int fiszero(float x) { return fgetexp (x)==0; }
static inline int fispzero(float x) { return fgetsignexp(x)==0; }
static inline int fismzero(float x) { return fgetsignexp(x)==0x100; }
static inline int fisinf(float x) { return fgetexp (x)==0xff; }
static inline int fispinf(float x) { return fgetsignexp(x)==0xff; }
static inline int fisminf(float x) { return fgetsignexp(x)==0x1ff; }

static inline int fisint(float x) {
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    if(e==0) return 1;
    e-=0x7f;
    if(e<0) return 0;
    e=23-e;
    if(e<=0) return 1;
    m=(1<<e)-1;
    if(ix&m) return 0;
    return 1;
}

static inline int fisoddint(float x) {
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    e-=0x7f;
    if(e<0) return 0;
    e=23-e;
    if(e<0) return 0;
    m=(1<<e)-1;
    if(ix&m) return 0;
    if(e==23) return 1;
    return (ix>>e)&1;
}

static inline int fisstrictneg(float x) {
    ui32 ix=float2ui32(x);
    if(fiszero(x)) return 0;
    return ix>>31;
}

static inline int fisneg(float x) {
    ui32 ix=float2ui32(x);
    return ix>>31;
}

static inline float fneg(float x) {
    ui32 ix=float2ui32(x);
    ix^=0x80000000;
    return ui322float(ix);
}

static inline int fispo2(float x) {
    ui32 ix=float2ui32(x);
    if(fiszero(x)) return 0;
    if(fisinf(x)) return 0;
    ix&=0x007fffff;
    return ix==0;
}

static inline float fnan_or(float x) {



    return x;

}

float __wrap_truncf(float x) {
    ((void)0);
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    e-=0x7f;
    if(e<0) {
        ix&=0x80000000;
        return ui322float(ix);
    }
    e=23-e;
    if(e<=0) return x;
    m=(1<<e)-1;
    ix&=~m;
    return ui322float(ix);
}

float __wrap_roundf(float x) {
    ((void)0);
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    e-=0x7f;
    if(e<-1) {
        ix&=0x80000000;
        return ui322float(ix);
    }
    if(e==-1) {
        ix&=0x80000000;
        ix|=0x3f800000;
        return ui322float(ix);
    }
    e=23-e;
    if(e<=0) return x;
    m=1<<(e-1);
    ix+=m;
    m=m+m-1;
    ix&=~m;
    return ui322float(ix);
}

float __wrap_floorf(float x) {
    ((void)0);
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    if(e==0) {
        ix&=0x80000000;
        return ui322float(ix);
    }
    e-=0x7f;
    if(e<0) {
        if(fisneg(x)) return -1;
        return (+0.0);
    }
    e=23-e;
    if(e<=0) return x;
    m=(1<<e)-1;
    if(fisneg(x)) ix+=m;
    ix&=~m;
    return ui322float(ix);
}

float __wrap_ceilf(float x) {
    ((void)0);
    ui32 ix=float2ui32(x),m;
    int e=fgetexp(x);
    if(e==0) {
        ix&=0x80000000;
        return ui322float(ix);
    }
    e-=0x7f;
    if(e<0) {
        if(fisneg(x)) return (-0.0);
        return 1;
    }
    e=23-e;
    if(e<=0) return x;
    m=(1<<e)-1;
    if(!fisneg(x)) ix+=m;
    ix&=~m;
    return ui322float(ix);
}

float __wrap_asinf(float x) {
    ((void)0);
    float u;
    u=(1.0f-x)*(1.0f+x);
    if(fisstrictneg(u)) return fnan_or(( 
# 259 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                      (__builtin_huge_valf())
# 259 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                      ));
    return atan2f(x,sqrtf(u));
}

float __wrap_acosf(float x) {
    ((void)0);
    float u;
    u=(1.0f-x)*(1.0f+x);
    if(fisstrictneg(u)) return fnan_or(( 
# 267 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                      (__builtin_huge_valf())
# 267 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                      ));
    return atan2f(sqrtf(u),x);
}

float __wrap_atanf(float x) {
    ((void)0);
    if(fispinf(x)) return (float)( 3.14159265358979323846f/2);
    if(fisminf(x)) return (float)(-3.14159265358979323846f/2);
    return atan2f(x,1.0f);
}

float __wrap_sinhf(float x) {
    ((void)0);
    return fldexp((expf(x)-expf(fneg(x))),-1);
}

float __wrap_coshf(float x) {
    ((void)0);
    return fldexp((expf(x)+expf(fneg(x))),-1);
}

float __wrap_tanhf(float x) {
    ((void)0);
    float u;
    int e;
    e=fgetexp(x);
    if(e>=4+0x7f) {
        if(!fisneg(x)) return 1;
        else return -1;
    }
    u=expf(fldexp(x,1));
    return (u-1.0f)/(u+1.0f);
}

float __wrap_asinhf(float x) {
    ((void)0);
    int e;
    e=fgetexp(x);
    if(e>=16+0x7f) {
        if(!fisneg(x)) return logf( x )+0.69314718055994530941f;
        else return fneg(logf(fneg(x))+0.69314718055994530941f);
    }
    if(x>0) return (float)log(sqrt((double)x*(double)x+1.0)+(double)x);
    else return fneg((float)log(sqrt((double)x*(double)x+1.0)-(double)x));
}

float __wrap_acoshf(float x) {
    ((void)0);
    int e;
    if(fisneg(x)) x=fneg(x);
    e=fgetexp(x);
    if(e>=16+0x7f) return logf(x)+0.69314718055994530941f;
    return (float)log(sqrt(((double)x+1.0)*((double)x-1.0))+(double)x);
}

float __wrap_atanhf(float x) {
    ((void)0);
    return fldexp(logf((1.0f+x)/(1.0f-x)),-1);
}

float __wrap_exp2f(float x) { ((void)0); return (float)exp((double)x*0.69314718055994530941); }
float __wrap_log2f(float x) { ((void)0); return logf(x)*1.44269504088896340737f; }
float __wrap_exp10f(float x) { ((void)0); return (float)exp((double)x*2.30258509299404568401); }
float __wrap_log10f(float x) { ((void)0); return logf(x)*0.43429448190325182765f; }

float __wrap_expm1f(float x) { ((void)0); return (float)(exp((double)x)-1); }
float __wrap_log1pf(float x) { ((void)0); return (float)(log(1+(double)x)); }
float __wrap_fmaf(float x,float y,float z) {
    ((void)0);
    ((void)0);
    return (float)((double)x*(double)y+(double)z);
}


static inline float fpow_1(float x,float y) {
    return (float)exp(log((double)x)*(double)y);
}

static float fpow_int2(float x,int y) {
    float u;
    if(y==1) return x;
    u=fpow_int2(x,y/2);
    u*=u;
    if(y&1) u*=x;
    return u;
}


static inline float fpowint_1(float x,int y) {
    if(y<0) x=1.0f/x,y=-y;
    return fpow_int2(x,y);
}


static float fpowint_0(float x,int y) {
    int e;
    if(fisneg(x)) {
        if(fisoddint(y)) return fneg(fpowint_0(fneg(x),y));
        else return fpowint_0(fneg(x),y);
    }
    if(fispo2(x)) {
        e=fgetexp(x)-0x7f;
        if(y>=256) y= 255;
        if(y<-256) y=-256;
        y*=e;
        return fldexp(1,y);
    }
    if(y==0) return 1;
    if(y>=-32&&y<=32) return fpowint_1(x,y);
    return fpow_1(x,y);
}

float __wrap_powintf(float x,int y) {
    
# 380 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic push
    
# 381 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic ignored "-Wfloat-equal"
    if(x==1.0f||y==0) return 1;
    if(x==0.0f) {
        if(y>0) {
            if(y&1) return x;
            else return 0;
        }
        if((y&1)) return fcopysign(( 
# 388 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                  (__builtin_huge_valf())
# 388 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                  ),x);
        return ( 
# 389 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
              (__builtin_huge_valf())
# 389 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
              );
    }
    
# 391 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic pop
    ((void)0);
    if(fispinf(x)) {
        if(y<0) return 0;
        else return ( 
# 395 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                      (__builtin_huge_valf())
# 395 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                      );
    }
    if(fisminf(x)) {
        if(y>0) {
            if((y&1)) return (-
# 399 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                            (__builtin_huge_valf())
# 399 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                            );
            else return ( 
# 400 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                            (__builtin_huge_valf())
# 400 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                            );
        }
        if((y&1)) return (-0.0);
        else return (+0.0);
    }
    return fpowint_0(x,y);
}


static float fpow_0(float x,float y) {
    int e,p;
    if(fisneg(x)) {
        if(fisoddint(y)) return fneg(fpow_0(fneg(x),y));
        else return fpow_0(fneg(x),y);
    }
    p=(int)y;
    if(fispo2(x)) {
        e=fgetexp(x)-0x7f;
        if(p>=256) p= 255;
        if(p<-256) p=-256;
        p*=e;
        return fldexp(1,p);
    }
    if(p==0) return 1;
    if(p>=-32&&p<=32) return fpowint_1(x,p);
    return fpow_1(x,y);
}

float __wrap_powf(float x,float y) {
    
# 429 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic push
    
# 430 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic ignored "-Wfloat-equal"
    if(x==1.0f||fiszero(y)) return 1;
    ((void)0);
    if(x==-1.0f&&fisinf(y)) return 1;
    
# 434 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic pop
    if(fiszero(x)) {
        if(!fisneg(y)) {
            if(fisoddint(y)) return x;
            else return 0;
        }
        if(fisoddint(y)) return fcopysign(( 
# 440 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                         (__builtin_huge_valf())
# 440 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                         ),x);
        return ( 
# 441 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
              (__builtin_huge_valf())
# 441 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
              );
    }
    if(fispinf(x)) {
        if(fisneg(y)) return 0;
        else return ( 
# 445 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                            (__builtin_huge_valf())
# 445 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                            );
    }
    if(fisminf(x)) {
        if(!fisneg(y)) {
            if(fisoddint(y)) return (-
# 449 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                   (__builtin_huge_valf())
# 449 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                   );
            else return ( 
# 450 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                   (__builtin_huge_valf())
# 450 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                   );
        }
        if(fisoddint(y)) return (-0.0);
        else return (+0.0);
    }
    if(fispinf(y)) {
        if(fgetexp(x)<0x7f) return (+0.0);
        else return ( 
# 457 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                  (__builtin_huge_valf())
# 457 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                  );
    }
    if(fisminf(y)) {
        if(fgetexp(x)<0x7f) return ( 
# 460 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                                  (__builtin_huge_valf())
# 460 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                                  );
        else return (+0.0);
    }
    if(fisint(y)) return fpow_0(x,y);
    if(fisneg(x)) return ( 
# 464 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                        (__builtin_huge_valf())
# 464 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                        );
    return fpow_1(x,y);
}

float __wrap_hypotf(float x,float y) {
    ((void)0);
    int ex,ey;
    ex=fgetexp(x); ey=fgetexp(y);
    if(ex>=0x7f+50||ey>=0x7f+50) {
        x=fldexp(x,-70),y=fldexp(y,-70);
        return fldexp(sqrtf(x*x+y*y), 70);
    }
    else if(ex<=0x7f-50&&ey<=0x7f-50) {
        x=fldexp(x, 70),y=fldexp(y, 70);
        return fldexp(sqrtf(x*x+y*y),-70);
    }
    return sqrtf(x*x+y*y);
}

float __wrap_cbrtf(float x) {
    ((void)0);
    int e;
    if(fisneg(x)) return fneg(cbrtf(fneg(x)));
    if(fiszero(x)) return fcopysign((+0.0),x);
    e=fgetexp(x)-0x7f;
    e=(e*0x5555+0x8000)>>16;
    x=fldexp(x,-e*3);
    x=expf(logf(x)*0.33333333333333333333f);
    return fldexp(x,e);
}



static i32 frem_0(i32 mx,i32 my,int e,int*pquo) {
    int quo=0,q,r=0,s;
    if(e>0) {
        r=0xffffffffU/(ui32)(my>>7);
    }
    while(e>0) {
        s=e; if(s>12) s=12;
        q=(mx>>9)*r;
        q=((q>>(29-s))+1)>>1;
        mx=(mx<<s)-my*q;
        quo=(quo<<s)+q;
        e-=s;
    }
    if(mx>=my) mx-=my,quo++;
    if(mx>=my) mx-=my,quo++;
    if(mx<0) mx+=my,quo--;
    if(mx<0) mx+=my,quo--;
    if(pquo) *pquo=quo;
    return mx;
}

float __wrap_fmodf(float x,float y) {
    ((void)0);
    ui32 ix=float2ui32(x),iy=float2ui32(y);
    int sx,ex,ey;
    i32 mx,my;
    sx=((ix)>>31),(ex)=(((ix))>>23)&0xff,(mx)=(((ix))&0x007fffff)|0x00800000;
    ey=((iy)>>23)&0xff,my=((iy)&0x007fffff)|0x00800000;
    if(ex==0xff) {
        return fnan_or(( 
# 526 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                      (__builtin_huge_valf())
# 526 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                      ));
    }
    if(ey==0) return ( 
# 528 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                    (__builtin_huge_valf())
# 528 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                    );
    if(ex==0) {
        if(!fisneg(x)) return (+0.0);
        return (-0.0);
    }
    if(ex<ey) return x;
    mx=frem_0(mx,my,ex-ey,0);
    if(sx) mx=-mx;
    return fix2float(mx,0x7f-ey+23);
}

float __wrap_remquof(float x,float y,int*quo) {
    ((void)0);
    ui32 ix=float2ui32(x),iy=float2ui32(y);
    int sx,sy,ex,ey,q;
    i32 mx,my;
    sx=((ix)>>31),(ex)=(((ix))>>23)&0xff,(mx)=(((ix))&0x007fffff)|0x00800000;
    sy=((iy)>>31),(ey)=(((iy))>>23)&0xff,(my)=(((iy))&0x007fffff)|0x00800000;
    if(quo) *quo=0;
    if(ex==0xff) return ( 
# 547 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                       (__builtin_huge_valf())
# 547 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                       );
    if(ey==0) return ( 
# 548 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c" 3
                       (__builtin_huge_valf())
# 548 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
                       );
    if(ex==0) return (+0.0);
    if(ey==0xff) return x;
    if(ex<ey-1) return x;
    if(ex==ey-1) {
        if(mx<=my) return x;

        if(!sx) {
            mx-=my+my;
            ey--;
            q=1;
        } else {
            mx=my+my-mx;
            ey--;
            q=-1;
        }
    }
    else {
        if(sx) mx=-mx;
        mx=frem_0(mx,my,ex-ey,&q);
        if(mx+mx>my || (mx+mx==my&&(q&1)) ) {
            mx-=my;
            q++;
        }
    }
    if(sy) q=-q;
    if(quo) *quo=q;
    return fix2float(mx,0x7f-ey+23);
}

float __wrap_dremf(float x,float y) { ((void)0); return remquof(x,y,0); }

float __wrap_remainderf(float x,float y) { ((void)0); return remquof(x,y,0); }


# 582 "/home/mathias/pico-sdk/src/rp2_common/pico_float/float_math.c"
#pragma GCC diagnostic pop
