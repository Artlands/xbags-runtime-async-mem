/*
 * _XBRTIME_API_C_
 *
 * A replica of xbgas runtime library
 * 
 */

 #include "xbrtime.h"
 #include <inttypes.h>

/* ------------------------------------------------------ FUNCTION PROTOTYPES */
extern void __xbrtime_asm_fence();
extern void __xbrtime_asm_quiet_fence();
extern void __xbrtime_get_u8_seq(uint64_t base_src, uint64_t base_dest, 
                                 uint32_t pe, uint32_t nelems, uint32_t stride);
extern void __xbrtime_get_u8_agg(uint64_t base_src, uint64_t base_dest, 
                                 uint32_t pe, uint32_t nelems, uint32_t stride);

extern uint32_t xbrtime_decode_pe( int pe);
extern uint64_t __xbrtime_ltor( uint64_t remote, int pe);

void xbrtime_ulonglong_get(unsigned long long *dest, 
                           const unsigned long long *src,
                           size_t nelems,
                           int stride,
                           int pe){
    if( nelems == 0 ) {
        return;
    } else if( (stride != 1) || (nelems == 1)) {
        /* sequential execution */
        __xbrtime_get_u8_seq( __xbrtime_ltor((uint64_t)(src), pe),
                              (uint64_t)(dest),
                              xbrtime_decode_pe(pe),
                              (uint32_t)(nelems),
                              (uint32_t)(stride * sizeof( unsigned long long)));
    } else {
        /* aggregate requests */
        __xbrtime_get_u8_agg( __xbrtime_ltor((uint64_t)(src), pe),
                              (uint64_t)(dest),
                              xbrtime_decode_pe(pe),
                              (uint32_t)(nelems),
                              (uint32_t)(stride * sizeof( unsigned long long)));
    }
    __xbrtime_asm_fence();
}
