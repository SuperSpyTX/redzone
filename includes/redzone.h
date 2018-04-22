/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/19 16:52:00 by jkrause          ###   ########.fr       */
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

typedef struct			s_page
{
	t_magic				magic;
	t_index				index;
	t_size				size;
# if DEBUG == 1
	char				malloc_func_name[FUNC_NAME_SIZE];
	char				free_func_name[FUNC_NAME_SIZE];
	char				probe_func_name[FUNC_NAME_SIZE];
	t_size				allocation_size;
	t_size				page_size;
	t_fence				fence[FENCE_SIZE];
# endif
}						t_page;

typedef struct			s_zone
{
	t_index				index;
	t_bool				locked;
	t_size				cur_bytes;
	t_size				max_bytes;
	t_smsize			quota;
	t_smsize			current;
# if DEBUG == 1
	t_fence				fence[FENCE_ZONE_SIZE];
# endif
}						t_zone;

typedef struct			s_bucket
{
	t_zone				*zones[BUCKET_SIZE];
	t_size				zones_ct;
	t_magic				set_magic;
	t_size				set_block_size;
	t_size				min_size;
	t_size				max_size;
}						t_bucket;

/*
** Functional macros
*/

# define ALIGN(n, len) n + (len % n)
# define PAGESIZE(n) n*(sizeof(t_page))

/*
** Include the bucket configuration here.
*/

# include "buckets.h"

/*
** Standard functions
*/

void			*malloc(size_t size);
void			*realloc(void *ptr, size_t size);
void			free(void *ptr);

void			show_alloc_mem(void);

/*
** Redzone-specific debugging functions
*/

# if DEBUG == 1

/*
** Redzone check
**
** Redzone checks valid malloc'd pointers by checking the current magic of where the page the pointer lives on.
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
