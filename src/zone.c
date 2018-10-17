/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   zone.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/07 18:24:35 by jkrause           #+#    #+#             */
/*   Updated: 2018/08/22 13:02:25 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "redzone/internal.h"

int				zone_initialize(t_bucket *bucket, t_zone **ptr)
{
	if (!ptr)
		return (-1);
	REDZONE_MMAP(*ptr, t_zone*, ZONE((bucket)));
	if (!*ptr)
		return (-1);
	(*ptr)->index = bucket->zones_ct++;
	(*ptr)->bucket = bucket->base_magic;
	(*ptr)->cur_bytes = 0;
	(*ptr)->max_bytes = (t_size)MAX_ZONE_BYTES((*ptr), bucket);
	(*ptr)->ptrtblct = PTI_CT(bucket);
	(*ptr)->ptr_tbl = ((void*)*ptr + sizeof(t_zone));
	return (0);
}

t_zone			*zone_ptr(void *ptr)
{
	t_alloc		*alloc;
	t_bucket	*bucket;

	if (!(bucket = bucket_ptr(ptr)))
		return (0);
	alloc = (t_alloc*)(ptr - sizeof(t_alloc));
	if (MAGIC_ZIDX(alloc->magic) >= bucket->zones_ct)
		return (0);
	return (ZONE_PTR(bucket->zones, MAGIC_ZIDX(alloc->magic)));
}
