/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 22:44:33 by jkrause           #+#    #+#             */
/*   Updated: 2018/05/24 09:27:57 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include "redzone.h"

#define ALIGN(n, pg) ((n + pg) & ~(pg-1))

int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	int min = 0;
	int max = 100;
	int pgsize = getpagesize();
	int sizereq = sizeof(t_zone) + (((sizeof(t_page)) + max) * 100);
	int zsize = ALIGN4(sizereq, pgsize);
	int zs2 = ALIGN4(sizereq, pgsize);

	printf("Req Size: %d\n", sizereq);
	printf("With Calculated Headers: %d\n", zsize);
	printf("With previous commits I didn't realize: %d\n", zs2);
	//len = ((len+4096) & ~(4096-1));
	//len = (len + (2 - len % 2));
	//printf("%d: %d\n", getpagesize(), len);
}

