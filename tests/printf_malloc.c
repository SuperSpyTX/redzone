/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_malloc.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/05 17:33:22 by jkrause           #+#    #+#             */
/*   Updated: 2018/07/05 22:51:20 by jkrause          ###   ########.fr       */
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
	int details = ft_snprintf(buffer, 21, "test(%10.3s)\n", othello);
	//write(1, buffer2, ft_snprintf(buffer2, 400, "%d - %d\n", details, ft_strlen(buffer)));
	//write(1, buffer, details);
	printf("%d - %ld\n%s", details, ft_strlen(buffer), buffer);
	//write(1, "\n", 1);
	//ft_printf("Test \'%d\'\n", 20); // testing. -- until default module changes.
	//write(1, buffer, 20);
}
