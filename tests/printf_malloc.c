/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_malloc.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/05 17:33:22 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/18 16:11:24 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int				main(void)
{
	char		buffer[400];
	char		buffer2[400];
	char		*othello = "----------";

	//ft_printf("test");
	ft_bzero(&buffer, 400);
	ft_bzero(&buffer2, 400);
	/*
	int details = ft_snprintf(buffer, 21, "test(%10.3s)\n", othello);
	//write(1, buffer, details);
	printf("{%d - %ld\n%s\n}g", details, ft_strlen(buffer), buffer);
	write(1, buffer2, ft_snprintf((char*)&buffer2, 400, "[%d - %ld\nSTR: %s]", details, ft_strlen(buffer), buffer));*/
	//write(1, buffer, ft_snprintf(buffer, 400, "Cock still standing! test(%10.3s)\n", othello));
	//write(1, "\n", 1);
	//ft_printf("Test \'%d\'\n", 20); // testing. -- until default module changes.
	//write(1, buffer, 20);
/*	write(1, buffer, ft_snprintf(buffer, 400, "FTSNPRINTF: test(%10.3s)\n", othello));
	write(1, buffer2, snprintf(buffer2, 400, "  SNPRINTF: test(%10.3s)\n", othello));
	write(1, buffer, ft_snprintf(buffer, 400, "FTSNPRINTF: %p %d %x %u %llu \n%0d %0d\n", &buffer, 13379001, 0xDEADBEEF, -1, -1L, INT_MAX, INT_MIN));
	write(1, buffer2, snprintf(buffer2, 400, "  SNPRINTF: %p %d %x %u %llu \n%0d %0d\n", &buffer2, 13379001, 0xDEADBEEF, -1, -1L, INT_MAX, INT_MIN));*/
	// The real test.
	ft_printf("FTPRINTF: Hello I will crash your program because you fucked with malloc!\n");
	printf("  PRINTF: Hello I won't crash your program because I don't use malloc!\n");
}
