/*
 * _XBRTIME_UTIL_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include "xbrtime.h"

int xbrtime_addr_accessible( const void *addr, int pe){
    if( pe > (__XBRTIME_CONFIG->_NPES-1) ){
        return 0;
    }

    if( ((uint64_t)(addr) > 
        (__XBRTIME_CONFIG->_START_ADDR + __XBRTIME_CONFIG->_MEMSIZE)) ||
        ((uint64_t)(addr) < (__XBRTIME_CONFIG->_START_ADDR)) ){
            return 0;
    }

    return 1;
}

uint32_t xbrtime_decode_pe( int pe ){
    uint32_t raw_pe = 0;
    int i = 0;

    if( __XBRTIME_CONFIG == NULL ){
        return raw_pe;
    }

    for( i = 0; i < __XBRTIME_CONFIG->_NPES; i++ ){
        if(__XBRTIME_CONFIG->_MAP[i]._LOGICAL == pe){
            return __XBRTIME_CONFIG->_MAP[i]._PHYSICAL;
        }
    }
    
    return raw_pe;
}