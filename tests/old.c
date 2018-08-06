/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 22:44:33 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/15 01:51:22 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include "redzone.h"
#include "redzone/internal.h"

/*
 * Page size alignment
int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	int min = 0;
	int max = 100;
	int pgsize = getpagesize();
	int sizereq = sizeof(t_zone) + (((sizeof(t_page)) + max) * 100);
	int zsize = ALIGN(sizereq, pgsize);
	int zs2 = ALIGN(sizereq, pgsize);

	printf("Req Size: %d\n", sizereq);
	printf("With Calculated Headers: %d\n", zsize);
	printf("With previous commits I didn't realize: %d\n", zs2);
	//len = ((len+4096) & ~(4096-1));
	//len = (len + (2 - len % 2));
	//printf("%d: %d\n", getpagesize(), len);
}
*/

int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	t_u8 base = 0xDE;
	t_u8 index = 0;
	t_u16 final = 0;
	final = (((1 << 16) | base) << 8) | index;
	printf("Base: %#x\nIndex: %d\nFinal: %#.2x\n", final >> 8, (final & 0xff), final);
}

