/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   internal.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/07 21:02:42 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef REDZONE_INTERNAL_H
# define REDZONE_INTERNAL_H

# include <sys/mman.h>
# include "../redzone.h"
# include "constants.h"

/*
** Compile-time error checking
** This prevents certain flags from compiling if correction mode is enabled.
*/

# if REDZONE_CORRECTION
#  if REDZONE_MIN_ALLOCS != 100
#   error "Redzone: Minimum # of allocations is wrong, set to 100 to fix."
#  endif
#  if !REDZONE_FORBIDDEN
#   if REDZONE_MMAP_STATS
#    error "Redzone: Redzone mmap statistics is forbidden with correction mode."
#   endif
#  else
#   warning "Redzone: Forbidden feature flag is enabled in correction mode."
#  endif
#  if DEBUG && !REDZONE_DEBUG
#   error "Redzone: Use REDZONE_DEBUG=1 to compile the debugger."
#  endif
# endif

/*
** Structures
*/

/*
** Formerly called 't_page'.
** Where this is allocated, it is aligned in the pointer table.
*/

typedef struct	s_alloc
{
# if REDZONE_DEBUG == 1

	t_fence		start_fence[FENCE_SIZE];
# else

	t_fence		start_fence[0];
# endif

	t_magic		magic;
	t_size		size;
# if REDZONE_DEBUG == 1

	char		malloc_func_name[FUNC_NAME_SIZE];
	char		free_func_name[FUNC_NAME_SIZE];
	char		probe_func_name[FUNC_NAME_SIZE];
# endif

# if REDZONE_DEBUG == 1

	t_fence		endfence[FENCE_SIZE];
# else

	t_fence		endfence[0];
# endif

}				t_alloc;

/*
** Pointer Table Model:
**
** Calculate the size of the table dynamically
** by taking the max_size and dividing by 2.
**
** The idea is that if a single zone can be allocated with max_size
** up to 100 times (PDF says they should hold at least 100 allocations),
** then dividing it by 2 would increase the capacity twofold.
**
** But instead of dividing by 2 consistently, you can simply divide
** the total allocated memory (minus zone header size) by min_size
** (in addition to alloc header size) and the result would have the
** maximum # of all that can fit in the memory space.
**
** Finding freed memory allocations after the fact is only a
** matter of searching through the pointer table array, which
** is actually relative to the position where the allocation
** is.
**
** TODO: Explain how block merges would work.
*/

/*
** Each zone is essentially an memory page.
** ptr_table is an pointer table for all allocations,
** Easier to then refer to specific memory allocations
** as necessary.
*/

typedef struct	s_zone
{
	t_index		index;
	t_size		cur_bytes;
	t_size		max_bytes;
	t_size		ptrtblsize;
	t_alloc		**ptr_tbl;
}				t_zone;

/*
** Freed pointers are part of the anti-fragmentation system.
*/

typedef struct	s_freedptr
{
	void		*addr;
	t_size		min_size;
	t_size		max_size;
	t_magic		magic;
	t_index		index;
}				t_freedptr;

/*
** Bucket holds multiple zones (in blocks of 8)
*/

typedef struct	s_bucket
{
	t_zone		**zones;
	t_freedptr	***freedptrs;
	t_count		zones_ct;
	t_count		freedptrs_ct;
	t_magic		base_magic;
	t_size		min_size;
	t_size		max_size;
	t_bool		special;
}				t_bucket;

/*
** Macros & Global Variables
*/

# define TINY_MALLOC 0x4200
# define SMALL_MALLOC 0x2100
# define LARGE_MALLOC 0x1600
# define TEST_MALLOC 0x1300

# ifdef A_LARGE_INIT_HACK

t_bucket		g_buckets[6] =
{
	{0, 0, 0, 0, TEST_MALLOC, 0, 100, 2},
	{0, 0, 0, 0, TINY_MALLOC, 0, 100, 0},
	{0, 0, 0, 0, SMALL_MALLOC, 100, 500, 0},
	{0, 0, 0, 0, LARGE_MALLOC, 500, 0, 1},
	{0, 0, 0, 0, 0, 0, 0, 0}
};

# else

extern t_bucket	g_buckets[6];
# endif

# define FREED_MALLOC_BUCKET 3

# define ALLOC_SIZE(size) (sizeof(t_alloc)+size)
# define MAX_ALLOC_SIZE(size) (ALLOC_SIZE(size) * REDZONE_MIN_ALLOCS)
# define PTI_SIZE(b) (ALLOC_SIZE(b.min_size) / MAX_ALLOC_SIZE(b.max_size))
# define PTR_SIZE(ct) (sizeof(t_zone*) * ct)

# define MAS(size) MAX_ALLOC_SIZE(size)
# define PTI(b) PTI_SIZE(b)

# define TIP0(zobj, size) zobj[size/ZONE_PTR_SIZE][size%ZONE_PTR_SIZE]
# define TIP(bucket) TIP0(bucket.zones, bucket.zones_ct - 1)

# define ALIGN0(n, pg) ((n + pg) & ~(pg-2))
# define ALIGN(n) ALIGN0(n, getpagesize())

# define ZONE_SIZE(size, b) ALIGN(sizeof(t_zone) + MAS(size) + PTI(b))
# define ZONE(bucket) ZONE_SIZE(bucket.max_size, bucket)

# define LOOPI(p1, p2) for (t_u64 i = 0; i < p1; p2) {
# define LOOPT(p1, p2, p3) for (p1; p2; p3) {
# define END }

/*
** Forbidden features.
**
** In the malloc PDF, you're only allowed two global variables:
** - One for holding all the mmap'd zones for all your allocations.
** - One for storing a pthread lock.
**
** Additional global variables are required for different features of Redzone,
** and if this is being built for a correction (REDZONE_CORRECTION=1),
** then these extra variables are not compiled in, otherwise it will violate
** the rules of the correction.
**
** You can't trust any corrector to not fail you on dumb shit like this,
** so by having this wall of text will hopefully re-inforce the idea that
** this is not compiled in during corrections, and the relevant
** features that use it are disabled.
**
** Variables are obfuscated for obvious reasons.
*/

# define M0(len) mmap(0, len, PROT_READ|PROT_WRITE, MAP_ANON|MAP_PRIVATE, -1, 0)
# define M1(obj, te, len) obj = (te)M0(len)

# if REDZONE_FORBIDDEN

/*
** Redzone mmap statistics.
*/

#  if REDZONE_MMAP_STATS

size_t			g_msz;
size_t			g_mct;

#   if REDZONE_DEBUG != 1
#    define REDZONE_MMAP(ob, ty, len) g_msz += len; g_mct++; M1(ob, ty, len)
#   else
#    define M2(o, t, l) printf("RZMMAP Alloc: %lu bytes...\n", l); M1(o, t, l)
#    define REDZONE_MMAP(ob, ty, len) g_msz += len; g_mct++; M2(ob, ty, len)
#   endif
#  endif
# else
#  define REDZONE_MMAP(obj, ty, len) M1(obj, ty, len)
# endif

/*
** End of macros & defines
*/

/*
** Internal functions
*/

int				zone_initialize(t_bucket *bucket, t_zone **ptr);

#endif
