/*
 * _XBRTIME_H
 *
 * A replica of xbgas runtime library
 * 
 */

#ifndef _XBRTIME_H_
#define _XBRTIME_H_

#ifdef __cplusplus
    extern "C" {
#endif

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/* ------------------------------------------------------ REQUIRED HEADERS */
#include "xbrtime-types.h"
#include "xbrtime-macros.h"
#include "xbrtime-alloc.h"
#include "xbrtime-api.h"
#include "xbrtime-version.h"

/* ------------------------------------------------------ FUNCTION PROTOTYPES */

/*! \fn int xbrtime_init()
    \brief Initializes the XBAGS Runtime environment
    \return 0 on success, nonzero otherwies
*/
extern int xbrtime_init();

/*! \fn int xbrtime_close()
    \brief Closes the XBAGS Runtime environment
    \return void
*/
extern void xbrtime_close();

/*! \fn ini xbrtime_free( void *ptr )
    \brief Free's a target memory block starting at prt
    \param *prt is a valid base pointer to an allocated block
    \return Void
*/
extern void xbrtime_free( void *prt );

/*! \fn int xbrtime_mype()
    \brief Returns the logical PE number of the calling entity
    \return Logical PE on success, nonzero otherwies
*/
extern int xbrtime_mype();

/*! \fn int xbrtime_num_pes()
    \brief Returens the total number of configured PEs
    \return Total PEs on success, nonzero otherwies
*/
extern int xbrtime_num_pes();

/*! \fn void *xbrtime_malloc( size_t sz )
    \brief Allocates a block of contiguous shared memory of minimum size, 'sz'
    \return Valid pointer on success, NULL otherwise
*/
extern void *xbrtime_malloc( size_t sz );

/*! \fn void xbrtime_barrier();
    \brief Performs a global barrier operation of all configured PEs
    \return Void
*/
extern void xbrtime_barrier();

#ifdef __cplusplus
    }
#endif /* extern "C" */

#endif /* _XBRTIME_H_*/

/* EOF */