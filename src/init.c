/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/05 14:19:03 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/12 19:14:18 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#define A_LARGE_INIT_HACK
#include "redzone/internal.h"

T_INIT			redzone_init(void)
{
	LOOPI(BUCKET_MAX_COUNT, i++);
	bucket_initialize(&g_buckets[i]);
	END;
}
