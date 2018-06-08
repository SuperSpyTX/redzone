/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/05 14:19:03 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/07 20:36:54 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#define A_LARGE_INIT_HACK
#include "redzone/internal.h"

void			redzone_init_bucket(t_bucket *bucket)
{
	REDZONE_MMAP(bucket->zones, t_zone**, PTR_SIZE(ZONE_PTR_SIZE));
	REDZONE_MMAP(bucket->freedptrs, t_freedptr***, PTR_SIZE(FREEDPTR_SIZE));
	printf("zones: %p\n", bucket->zones);
	printf("freeptr: %p\n", bucket->freedptrs);
}

T_INIT			redzone_init(void)
{
	LOOPI((sizeof(g_buckets) / sizeof(t_bucket)), i++);
	if (g_buckets[i].base_magic && g_buckets[i].special == 2)
		redzone_init_bucket(&g_buckets[i]);
	END;
	printf("%x\n", g_buckets[0].base_magic);
	zone_initialize(&g_buckets[0], &g_buckets[0].zones[0]);
	printf("g_msz: %lu\ng_mct: %lu\n", g_msz, g_mct);
}
