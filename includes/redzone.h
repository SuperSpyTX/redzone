/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redzone.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/17 15:48:23 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/19 16:52:00 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef REDZONE_H
# define REDZONE_H

# include <stdlib.h>
# include <stdio.h>
# include "constants.h"

# ifndef DEBUG
#  define DEBUG 0
# endif

/*
** Structures
*/

typedef struct			s_page
{
	t_s8				magic;
	t_u8				index;
	t_u32				size;
# if DEBUG == 1
	char				mallo
}						t_page;

typedef struct			s_zone
{
	
}						t_zone;

typedef struct			s_bucket
{
	
}						t_bucket;

/*
** Standard functions
*/

void			*malloc(size_t size);
void			*realloc(void *ptr, size_t size);
void			free(void *ptr);

void			show_alloc_mem(void);

/*
** Redzone-specific functions
*/

#endif
