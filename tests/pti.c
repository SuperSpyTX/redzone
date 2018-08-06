/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pti.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/11 15:00:43 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/15 01:51:20 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "redzone/internal.h"
#include "libft.h"

/*
** Example of using pti + zone memory space.
*/

void			*pti_test(t_bucket *bucket, size_t size)
{
	return (alloc_initialize(bucket, TIP(bucket), size));
}

int				main(void)
{
	printf("test: %x\n", g_buckets[0].base_magic);
	char *test = allocate(500);
	char *test2 = allocate(40);
	char *test3 = allocate(20);

	ft_strcpy(test, "Hello world!");
	ft_strcpy(test2, "Yay buffer overflows please!");
	ft_strcpy(test3, "rip");
	printf("%s\n%s\n%s\n", test, test2, test3);
	printf("Debug me\n");
	printf("Used mmap bytes: %zu\n# of mmap calls: %zu\n", g_msz, g_mct);
}
