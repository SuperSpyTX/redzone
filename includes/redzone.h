/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/05/14 19:26:27 by jkrause          ###   ########.fr       */
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
	t_s8	magic;
	t_u8	index;
	t_u32	size;
	char	malloc_func_name[FUNC_BLOCK_NAME];
	char	free_func_name[FUNC_BLOCK_NAME];
	char	probe_func_name[FUNC_BLOCK_NAME];
	t_u32	allocation_size;
	t_u32	page_size;
	t_u8	fence[FENCE_SIZE];
}						t_page;

/*
** TODO: Determine if we need the locked variable.
** TODO: Determine allocations and shit.
*/

typedef struct			s_zone
{
	t_u8	index;
	t_u8	locked;
	t_u32	current;
	t_u32	max;
}						t_zone;

typedef struct			s_bucket
{
	t_zone	*zones[BUCKET_SIZE];
	t_u32	count;
	t_s8	set_magic;
	t_u32	set_block_size;
	t_u32	min_size;
	t_u32	max_size;
}						t_bucket;

t_bucket **g_buckets = {0};

/*
** Standard functions
*/

void					*malloc(size_t size);
void					*realloc(void *ptr, size_t size);
void					free(void *ptr);

void					show_alloc_mem(void);

/*
** Redzone-specific functions
*/

#endif
