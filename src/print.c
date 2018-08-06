/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/30 17:39:20 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/31 14:02:06 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"

void			print(char *hdr, char *msg)
{
	ft_printf("**** redzone %s: %s\n", hdr, msg);
}

void			print_mmap(size_t size)
{
	ft_printf("**** redzone mmap: %lu bytes (total: %lu, allocs: %lu)\n",
			size, g_msz, g_mct);
}

void			error_abort(char *error)
{
	print("abort", error);
	abort();
}
