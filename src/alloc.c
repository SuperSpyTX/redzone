/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   alloc.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/12 18:51:07 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/12 20:27:55 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"
#include <stdio.h>

void			*alloc_initialize(t_bucket *b, t_zone *z, size_t sz)
{
	t_alloc		*alloc;

	alloc = (t_alloc*)ALLOC_PTR(z, z->cur_bytes);
	if (ALLOC_SIZE(sz) >= (z->max_bytes - z->cur_bytes)
			|| z->ptr_tbl[PT_IDX(z->cur_bytes, b)] != 0
			|| sz < b->min_size || (sz > b->max_size && b->max_size != 0))
		return (0);
	z->ptr_tbl[PT_IDX(z->cur_bytes, b)] = alloc;
	z->cur_bytes += ALLOC_SIZE(sz);
	alloc->magic = MAGIC(b->base_magic, z->index);
	alloc->size = sz;
	return (alloc + sizeof(t_alloc));
}

/*
** TODO: Move the zone reallocation code to another function.
** TODO: Handle custom sized allocations.
*/

void			*bucket_allocate(t_bucket *b, size_t size)
{
	void		*ptr;

	if (!(ptr = alloc_initialize(b, TIP(b), size)))
	{
		zone_initialize(b, &b->zones[b->zones_ct]);
		if (!(ptr = alloc_initialize(b, TIP(b), size)))
			return (0);
	}
	return (ptr);
}

void			*allocate(size_t size)
{
	void		*ptr;

	LOOPI(BUCKET_MAX_COUNT, i++);
	if (size >= g_buckets[i].min_size
			&& (size <= g_buckets[i].max_size && g_buckets[i].max_size > 0))
	{
		if ((ptr = bucket_allocate(&g_buckets[i], size)) == 0)
			return (0);
		return (ptr);
	}
	END;
	return (0);
}
