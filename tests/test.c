/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/18 16:20:34 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/21 19:40:46 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone.h"

int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;

	printf("%d - %d\n", PAGESIZE(100), ALIGN(PAGESIZE(100), 4096));

	//show_alloc_mem();
}

