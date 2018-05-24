/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/05/24 15:21:04 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef REDZONE_H
# define REDZONE_H

# include <stdlib.h>
# include <stdio.h>
# include "constants.h"

# ifndef DEBUG
#  define DEBUG 0
# endif

/*
** Structures
*/

/*
** Formerly called 'pages'.
** This structure is allocated within the page.
*/

typedef struct			s_alloc
{
# if DEBUG == 1

	t_fence	fence[FENCE_SIZE];
# else

	t_fence	fence[0];
# endif

	t_magic	magic;
	t_size	size;
# if DEBUG == 1

	char	malloc_func_name[FUNC_NAME_SIZE];
	char	free_func_name[FUNC_NAME_SIZE];
	char	probe_func_name[FUNC_NAME_SIZE];
	t_size	allocation_size;
	t_size	page_size;
# endif

}						t_alloc;

/*
** Each zone is essentially an memory page.
*/

typedef struct			s_zone
{
	t_index		index;
	t_size		cur_bytes;
	t_size		max_bytes;
	t_alloc		**ptrs;
}						t_zone;

typedef struct			s_bucket
{
	t_zone	*zones[BUCKET_SIZE];
	t_size	zones_ct;
	t_magic	set_magic;
	t_size	set_block_size;
	t_size	min_size;
	t_size	max_size;
}						t_bucket;

/*
** Functional macros
*/

# define ALIGN(n, pg) ((n + pg) & ~(pg-1))
# define PAGESIZE(size, ct) (sizeof(t_zone) + (((sizeof(t_page)) + size) * ct)

/*
** Include the bucket configuration here.
*/

/*
** Standard functions
*/

void					*malloc(size_t size);
void					*realloc(void *ptr, size_t size);
void					free(void *ptr);

void					show_alloc_mem(void);

/*
** Redzone-specific debugging functions
*/

# if DEBUG == 1

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
** Redzone libft.
*/
# endif

#endif
