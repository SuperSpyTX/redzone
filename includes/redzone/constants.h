/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   constants.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/19 16:52:26 by jkrause           #+#    #+#             */
/*   Updated: 2018/10/16 16:36:52 by jkrause          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef REDZONE_CONSTANTS_H
# define REDZONE_CONSTANTS_H
# include <stdlib.h>
# include <stdint.h>

/*
** Configurable size constants
**
** Usually you would not normally have to configure these,
** unless you're doing performance tunings.
*/

# ifndef FUNC_NAME_SIZE
#  define FUNC_NAME_SIZE 25
# endif

# ifndef FENCE_SIZE
#  define FENCE_SIZE 32/sizeof(t_fence)
# endif

# ifndef ZONE_PTR_SIZE
#  define ZONE_PTR_SIZE 255
# endif

/*
** Size types (from @riking/libft)
**
** 8 - 1 byte
** 16 - 2 bytes
** 32 - 4 bytes
** 64 - 8 bytes
*/

typedef int8_t		t_s8;
typedef int16_t		t_s16;
typedef int32_t		t_s32;
typedef int64_t		t_s64;

typedef	uint8_t		t_u8;
typedef uint16_t	t_u16;
typedef uint32_t	t_u32;
typedef uint64_t	t_u64;

/*
** Redzone-specific size constraints.
*/

typedef t_u8	t_flag;
typedef t_u16	t_magic;
typedef t_u32	t_index;
typedef t_u32	t_count;
typedef t_u32	t_size;
typedef t_u64	t_fence;

/*
** Redzone-specific conventional types
*/

# define T_INIT __attribute__((constructor)) void
# define T_EXPVOID __attribute__((visibility("default")))void
# define T_EXPCHAR __attribute__((visibility("default")))char
# define T_EXPINT __attribute__((visibility("default")))int

#endif
