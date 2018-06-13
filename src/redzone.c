/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:11 by jkrause           #+#    #+#             */
/*   Updated: 2018/06/12 20:15:35 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"

void			*malloc(size_t size)
{
	void		*ptr;

	ptr = allocate(size);
	return (ptr);
}

void			*realloc(void *ptr, size_t size)
{
	(void)ptr;
	(void)size;
	return (0);
}

void			free(void *ptr)
{
	(void)ptr;
}

void			show_alloc_mem(void)
{
}
