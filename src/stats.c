/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stats.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/31 14:12:45 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/31 14:33:06 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"
#include "redzone.h"

void			show_alloc_mem(void)
{

}

void			show_alloc_mem_ex(int type)
{
	if (type & MMAP_STATS_MODE)
		print_mmap(g_msz);

}

