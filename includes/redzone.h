/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/31 14:07:11 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef REDZONE_H
# define REDZONE_H

# include <stdlib.h>
# include <stdio.h>
# include <libft.h>
# include <ft_printf.h>

/*
** Redzone config build options
*/

/*
** The prime debugging features of Redzone.
*/

# ifndef REDZONE_DEBUG
#  define REDZONE_DEBUG 0
# endif

/*
** Is this being built for the Malloc correction?
** This makes minor changes (malloc.h symlink, etc) to the codebase.
*/

# ifndef REDZONE_CORRECTION
#  define REDZONE_CORRECTION 0
# endif

/*
** Minimum allocations per bucket (this is defined in the PDF)
** Best not to do this unless tuning for performance.
*/

# ifndef REDZONE_MIN_ALLOCS
#  define REDZONE_MIN_ALLOCS 100
# endif

/*
** Defines whether or not to collect extra information on
** Redzone's mmap() calls.  This is used for performance
** optimizations and does not impact performance.
*/

# ifndef REDZONE_MMAP_STATS
#  define REDZONE_MMAP_STATS REDZONE_DEBUG
# endif

/*
** End of config options.
*/

/*
** Alloc mem types.
** TODO: Implement zone-specific allocation filtering via mode & zoneidx.
**
** Allocations (default): Show all allocations.
** mmap stats: Show basic statistics on Redzone's mmap calls.
** Freed Memory: Show all freed memory regions/allocations.
*/

# define ALLOC_MODE 0
# define MMAP_STATS_MODE 1
# define FREED_MEMORY_MODE 2

# define T_EXPVOID __attribute__((visibility("default")))void

/*
** Standard functions
*/

T_EXPVOID		*malloc(size_t size);
T_EXPVOID		*realloc(void *ptr, size_t size);
T_EXPVOID		free(void *ptr);

T_EXPVOID		show_alloc_mem(void);
T_EXPVOID		show_alloc_mem_ex(int type);

/*
** POSIX standard functions
*/

T_EXPVOID		malloc_size(void *ptr);

/*
** Redzone-specific functions
*/

/*
** Redzone check
**
** Redzone checks valid malloc'd pointers by checking the current magic of where
** the page the pointer lives on.
** If the pointer is valid, check for various memory problems.
** - Checks if the fences have been written to (zone & page level)
** - Checks if the # of bytes being copied (check_bounds) is within the
** bounds of the allocated pointer.
*/

void			redzone_check(void *ptr);
int				redzone_check_bounds(void *ptr, size_t size);

/*
** Redzone probe
*/
char			*redzone_probe(void *ptr);

/*
** Redzone guard (protect memory allocations)
** Makes redzone pretend that guarded allocations do not exist,
** thus does NOP on free()/realloc() etc.
*/

/*
** Redzone libft.
*/

#endif
