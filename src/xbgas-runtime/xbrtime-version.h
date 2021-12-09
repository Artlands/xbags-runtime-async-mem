/*
 * _XBRTIME_VERSION_H_
 *
 * A replica of xbgas runtime library
 * 
 */
#ifndef _XBRTIME_VERSION_H_
#define _XBRTIME_VERSION_H_

#ifdef __cplusplus
    extern "C" {
#endif

#define _XBRTIME_MAJOR_VERSION_ 0
#define _XBRTIME_MINOR_VERSION_ 1
#define _XBRTIME_PATCH_VERSION_ 0

#if !defined __riscv
#error XBGAS-RUNTIME IS ONLY SUPPORTED UNDER RISCV
#endif

#if (__riscv_xlen !=64 )
#error XBGAS-RUNTIME ONLY SUPPORT 64 BIT COMPLICATION
#endif

#ifdef __cplusplus
    }
#endif /* extern "C" */

#endif /* _XBRTIME_VERSION_H_ */

/* EOF */