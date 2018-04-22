/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   constants.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 16:52:26 by jkrause           #+#    #+#             */
/*   Updated: 2018/04/19 16:59:10 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CONSTANTS_H
# define CONSTANTS_H
# include <stdlib.h>

/*
** Configurable size constants
*/

# ifndef FUNC_BLOCK_NAME
#  define FUNC_BLOCK_NAME 25
# endif

# ifndef FENCE_SIZE
#  define FENCE_SIZE 32
# endif

# ifndef FENCE_ZONE_SIZE
#  define FENCE_ZONE_SIZE 100
# endif


/*
** Size types (from @riking/libft)
*/

typedef int8_t		t_s8;
typedef int16_t		t_s16;
typedef int32_t		t_s32;

typedef	uint8_t		t_u8;
typedef uint16_t	t_u16;
typedef uint32_t	t_u32;
typedef uint64_t	t_u64;

/*
** Redzone-specific size constraints.
*/

typedef t_u16	t_
typedef t_u32	t_bsize;

#endif
