/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 22:44:33 by jkrause           #+#    #+#             */
/*   Updated: 2018/05/14 19:59:34 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include "redzone.h"

#define PAGE_SIZE sysconf(_SC_PAGESIZE)
#define ALIGN(n) ((n + PAGE_SIZE) - (n - PAGE_SIZE-1))
#define ALIGN2(n) ((n + PAGE_SIZE) & ~(PAGE_SIZE-1))

int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	int min = 0;
	int max = 100;
	int pgsize = getpagesize();
	int zsize = ALIGN((sizeof(t_zone) + ((sizeof(t_page) * max) * 100));

	printf("PG Size: %d\n", pgsize);
	printf("With Calculated Headers: %d\n", zsize);
	//len = ((len+4096) & ~(4096-1));
	//len = (len + (2 - len % 2));
	//printf("%d: %d\n", getpagesize(), len);
}

