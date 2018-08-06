/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   buckets.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/12 18:14:36 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/16 20:09:06 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"

t_bucket		*bucket_ptr(void *ptr)
{
	t_alloc		*alloc;
	t_bmagic	bm;

	alloc = (t_alloc*)(ptr - sizeof(t_alloc));
	bm = MAGIC_BM(alloc->magic);
	if (bm > ((BUCKET_MAX_COUNT - 1) * 2) || bm % 2 != 0)
		return (0);
	return (&g_buckets[bm / 2]);
}

void			bucket_initialize(t_bucket *bucket)
{
	REDZONE_MMAP(bucket->zones, t_zone**, PTR_SIZE(ZONE_PTR_SIZE));
	REDZONE_MMAP(bucket->freedptrs, t_freedptr**, PTR_SIZE(FREEDPTR_SIZE));
	zone_initialize(bucket, &bucket->zones[0]);
}
