/*
 * _XBRTIME_ALLOC_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include "xbrtime.h"
#include <inttypes.h>

/* ------------------------------------------------------ FUNCTION PROTOTYPES */
extern void __xbrtime_asm_quiet_fence();
extern uint64_t __xbrtime_get_remote_alloc( uint64_t slot, int pe);
extern uint32_t xbrtime_decode_pe( int pe );


void __xbrtime_shared_free( void *ptr ){
    uint64_t mem = (uint64_t)(ptr);
    int i = 0;
    /*
     * Walk the allocated blocks and attemp to free the allocation
     */
    for (i = 0; i < _XBRTIME_MEM_SLOTS_; i++){
        if( (mem >= __XBRTIME_CONFIG->_MMAP[i].start_addr) &&
            (mem < (__XBRTIME_CONFIG->_MMAP[i].start_addr + 
                    __XBRTIME_CONFIG->_MMAP[i].size)) ){
            /* found the allocation */
            free ( ptr );
            __XBRTIME_CONFIG->_MMAP[i].start_addr = 0x00ull;
            __XBRTIME_CONFIG->_MMAP[i].size = 0;
            return;
        }
    }
}

void *__xbrtime_shared_malloc( size_t sz ){
    void *ptr = NULL;
    int slot  = -1;
    int i     = 0;
    int done  = 0;

    /*find an open slot */
    while( (slot == -1) && (done != 1) ){
        if( __XBRTIME_CONFIG->_MMAP[i].size == 0 ){
            slot = i;
            done = 1;
        }
        i ++;
        if( i == _XBRTIME_MEM_SLOTS_ ){
            done = 1;
        }
    }

    /* no open slots */
    if ( slot == -1 ){
        return NULL;
    }

    /* attemp to create an allocation */
    ptr = malloc ( sz );
    if( ptr == NULL ){
        return NULL;
    }

    /* memory is good, register the block */
# ifdef XBGAS_DEBUG
    printf( "XBGAS_DEBUG : PE = %d; ALLOCATING MEMORY IN SLOT = %d\n", xbrtime_mype(), slot);
# endif
    __XBRTIME_CONFIG->_MMAP[slot].size = sz;
    __XBRTIME_CONFIG->_MMAP[slot].start_addr = (uint64_t)(ptr);
    return ptr;
}

void xbrtime_free( void *ptr ) {
    if( ptr == NULL ){
        return;
    }else if (__XBRTIME_CONFIG == NULL ){
        return;
    }else if (__XBRTIME_CONFIG->_MMAP == NULL){
        return;
    }
    __xbrtime_shared_free(ptr);
    __xbrtime_asm_quiet_fence();
}

void *xbrtime_malloc ( size_t sz ) {
    void *ptr = NULL;

    /* sanity check */
    if ( sz == 0 ) {
        return NULL;
    } else if ( __XBRTIME_CONFIG == NULL ) {
        return NULL;
    }

    ptr = __xbrtime_shared_malloc( sz );
    __xbrtime_asm_quiet_fence();

    return ptr;
}

uint64_t __xbrtime_ltor(uint64_t remote, int pe) {
    int i = 0;
    uint64_t base_slot = 0x00ull;
    uint64_t offset    = 0x00ull;
    uint64_t new_addr  = 0x00ull;
    
    if( xbrtime_mype() == pe ) {
        /* return the same address block */
        return remote;
    } else {
        /* perform the address translation */
#ifdef XBGAS_DEBUG
    printf("XBGAS_DEBUG : PE = %d; Translating local address at pe = %d from 0x%"PRIu64"\n", xbrtime_mype(), pe, remote);
#endif
        for( i = 0; i < _XBRTIME_MEM_SLOTS_; i++ ) {
            if ( (remote >= __XBRTIME_CONFIG->_MMAP[i].start_addr) && 
                 (remote < (__XBRTIME_CONFIG->_MMAP[i].start_addr + 
                            __XBRTIME_CONFIG->_MMAP[i].size)) ) {
                /* found our slot */
                base_slot = (uint64_t)(&__XBRTIME_CONFIG->_MMAP[i].start_addr);

                /* calculate the local offset */
                offset = remote - __XBRTIME_CONFIG->_MMAP[i].start_addr;

                new_addr = (__xbrtime_get_remote_alloc(base_slot, xbrtime_decode_pe(pe)) + offset);
#ifdef XBGAS_DEBUG
    printf("XBGAS_DEBUG : PE = %d; Remote address in slot = %d at pe = %d is 0x%"PRIu64"\n", xbrtime_mype(), i, pe, new_addr);
#endif
                return new_addr;
            }
        }
    }
    /*
    * if we reach this point, there is an error in translation
    * return 0x00ull will cause a user access violation on the
    * memory operation and raise a segmentation fault
    *
    */
    return 0x00ull;
}


/* EOF */