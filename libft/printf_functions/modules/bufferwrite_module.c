/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bufferwrite_module.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/26 16:42:25 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/18 16:23:36 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

char				g_buffer[40];
size_t				g_buffersize;

void				bufferwrite_module_write(t_input *input, char *str)
{
	size_t				size;
	size_t				iters;

	size = (size_t)input;
	if (size < 1)
		return ;
	if (g_buffersize < 1 || g_buffersize >= 40)
		g_buffersize = 0;
	iters = 0;
	while ((40 - g_buffersize) < size)
	{
		ft_memcpy(g_buffer + g_buffersize, str, ((40 - g_buffersize)));
		iters++;
		write(1, g_buffer, 40);
		size -= ((40 - g_buffersize));
		str += ((40 - g_buffersize));
		g_buffersize = 0;
	}
	ft_memcpy(g_buffer + g_buffersize, str, size);
	g_buffersize += size;
	if ((40 - g_buffersize) < 1)
		write(1, g_buffer, 40);
}

int					bufferwrite_module_flush(t_input *input, void *nil)
{
	size_t				size;

	size = 0;
	(void)input;
	if ((int)nil == -2)
		return (g_buffersize);
	if (g_buffersize >= 40)
		g_buffersize = 0;
	if ((int)nil != -1)
		write(1, g_buffer, g_buffersize);
	size = g_buffersize;
	g_buffersize = 0;
	return (size);
}
