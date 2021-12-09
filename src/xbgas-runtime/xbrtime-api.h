/*
 * _XBRTIME_API_H_
 *
 * A replica of xbgas runtime library
 * 
 */

#ifndef _XBRTIME_API_H_
#define _XBRTIME_API_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <stdint.h>

/*
 * xbrtime_TYPE_MEMOP(TYPE *dest, TYPE *src, size_t nelems, int stride, int pe)
 *
 */

#define XBGAS_API_DECL_PUTGET(_memop, _opname, _type)       \
    void xbrtime_##_opname##_##_memop( _type *dest,         \
                                       const _type *src,    \
                                       size_t nelems,       \
                                       int stride,          \
                                       int pe);             
XBGAS_API_DECL_PUTGET(get, ulonglong, unsigned long long)

#undef XBGAS_API_DECL_PUTGET

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /*_XBRTIME_API_H_*/