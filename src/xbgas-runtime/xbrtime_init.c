/*
 * _XBRTIME_INIT_C_
 *
 * A replica of xbgas runtime library
 * 
 */

#include "xbrtime.h"
/*
 * volatile tells the compiler that the value of the variable may chage at any
 * time -- without any action being taken by the code the compiler finds nearby.
 * Three types of variables could change"
 * 1. Memory-mapped peripheral registers
 * 2. Global variables modified by an interrupt service routine
 * 3. Global variables accessed by multiple tasks within a multi-threaded 
 * applicaiton
 */
extern volatile uint64_t* barrier;
#define INIT_ADDR 0xBB00000000000000ull

/* ------------------------------------------------------ GLOBALS */
XBRTIME_DATA* __XBRTIME_CONFIG;

/* ------------------------------------------------------ FUNCTION PROTOTYPES */
// size_t __xbrtime_asm_get_memsize();
// int __xbrtime_asm_get_id();
// int __xbrtime_asm_get_npes();
// uint64_t __xbrtime_asm_get_startaddr();
// void __xbrtime_asm_fence();

/*
 * Calling a assembly function seems to require extern
 */
extern size_t __xbrtime_asm_get_memsize();
extern int __xbrtime_asm_get_id();
extern int __xbrtime_asm_get_npes();
extern uint64_t __xbrtime_asm_get_startaddr();
extern void __xbrtime_asm_fence();

int xbrtime_init(){
    /* vars */
    int i = 0;

    /* allocate the structure in the local heap */
    __XBRTIME_CONFIG = NULL;
    __XBRTIME_CONFIG = malloc( sizeof (XBRTIME_DATA) );
    if( __XBRTIME_CONFIG == NULL ){
        return -1;
    }

    __XBRTIME_CONFIG->_MMAP       = malloc( sizeof(XBRTIME_MEM_T) * _XBRTIME_MEM_SLOTS_);
    __XBRTIME_CONFIG->_ID         = __xbrtime_asm_get_id();
    __XBRTIME_CONFIG->_MEMSIZE    = __xbrtime_asm_get_memsize();
    __XBRTIME_CONFIG->_NPES       = __xbrtime_asm_get_npes();
    __XBRTIME_CONFIG->_START_ADDR = __xbrtime_asm_get_startaddr();
    __XBRTIME_CONFIG->_SENSE      = 0x01ull;
    __XBRTIME_CONFIG->_BARRIER    = barrier;

    // __XBRTIME_MAX_PE = 1024, thus, MAX_Barrier buffer space = log2^1024 = 10
    for( i = 0; i < 10; i++ ){
        __XBRTIME_CONFIG->_BARRIER[i]    = 0xfffffffffull;
        __XBRTIME_CONFIG->_BARRIER[10+i] = 0xaaaaaaaaaull;
    }
#ifdef XBGAS_INIT_DEBUG
    printf("PE:%d----BARRIER[0] = 0x%lx\n", __XBRTIME_CONFIG->_ID, __XBRTIME_CONFIG->_BARRIER[0]);
    printf("PE:%d----BARRIER[1] = 0x%lx\n", __XBRTIME_CONFIG->_ID, __XBRTIME_CONFIG->_BARRIER[1]);
#endif

    /* too many total PEs */
    if( __XBRTIME_CONFIG->_NPES > __XBRTIME_MAX_PE ){
        free( __XBRTIME_CONFIG );
        return -1;
    }

    /* init the pe mapping block */
    __XBRTIME_CONFIG->_MAP = malloc( sizeof(XBRTIME_PE_MAP) * 
                                     __XBRTIME_CONFIG->_NPES );
    if( __XBRTIME_CONFIG->_MAP == NULL ){
        free( __XBRTIME_CONFIG );
        return -1;
    }

    /* init the memory allocation slots */
    for( i = 0; i < _XBRTIME_MEM_SLOTS_; i++){
        __XBRTIME_CONFIG->_MMAP[i].start_addr = 0x00ull;
        __XBRTIME_CONFIG->_MMAP[i].size       = 0;
    }

    /* init the PE mapping structure */
    for( i = 0; i < __XBRTIME_CONFIG->_NPES; i++){
        __XBRTIME_CONFIG->_MAP[i]._LOGICAL  = i;
        __XBRTIME_CONFIG->_MAP[i]._PHYSICAL = i + 1;
    }

    int init = 1;
    *( (uint64_t *)INIT_ADDR ) = init;

    return 0;
}


int xbrtime_mype(){
    if( __XBRTIME_CONFIG == NULL ){
        return -1;
    }
    return __XBRTIME_CONFIG->_ID;
}


int xbrtime_num_pes(){
    if( __XBRTIME_CONFIG == NULL ){
        return -1;
    }
    return __XBRTIME_CONFIG->_NPES;
}


void xbrtime_close() {
    int i = 0;
    
    if( __XBRTIME_CONFIG != NULL ){
        /* hard fence */
        __xbrtime_asm_fence();

        /* free all the remaining shared blocks */
        for (i = 0; i < _XBRTIME_MEM_SLOTS_; i++ ){
            if( __XBRTIME_CONFIG->_MMAP[i].size != 0 ){
                xbrtime_free((void *)(__XBRTIME_CONFIG->_MMAP[i].start_addr));
            }
        }
    }

    if( __XBRTIME_CONFIG->_MAP != NULL ){
        free( __XBRTIME_CONFIG->_MAP );
        __XBRTIME_CONFIG->_MAP = NULL;
    }

    free( __XBRTIME_CONFIG );

}

/* EOF */