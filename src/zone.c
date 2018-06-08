/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   zone.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/07 18:24:35 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/07 20:49:44 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "redzone/internal.h"

int				zone_initialize(t_bucket *bucket, t_zone **ptr)
{
	printf("zi: %p\n", ptr);
	if (!ptr)
		return (-1);
	printf("sizeof(t_alloc): %lu\n", sizeof(t_alloc));
	printf("sizeof(t_zone): %lu\n", sizeof(t_zone));
	printf("PTI_SIZE: %lu\n", PTI_SIZE((*bucket)));
	REDZONE_MMAP(*ptr, t_zone*, ZONE((*bucket)));
	if (!*ptr)
		return (-1);
	(*ptr)->index = bucket->zones_ct++;
	(*ptr)->cur_bytes = 0;
	(*ptr)->max_bytes = MAX_ALLOC_SIZE(bucket->max_size);
	(*ptr)->ptrtblsize = PTI_SIZE((*bucket));
	(*ptr)->ptr_tbl = ((void*)*ptr + sizeof(t_zone));
	return (0);
}
