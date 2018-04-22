/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:11 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/18 16:04:51 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone.h"

void			*malloc(size_t size)
{
	(void)size;
	return (0);
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
#if DEBUG == 1
	printf("You are in debug mode!");
#endif
}

