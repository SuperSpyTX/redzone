/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 22:44:33 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/19 22:44:33 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>

#define PAGE_SIZE 4096

int				main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	int len = 32;
	//len = ((len+4096) & ~(4096-1));
	len = (len + (2 - len % 2));
	printf("%d: %d\n", getpagesize(), len);
}

