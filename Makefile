#* ************************************************************************** */
#*                                                                            */
#*                                                        :::      ::::::::   */
#*   Makefile                                           :+:      :+:    :+:   */
#*                                                    +:+ +:+         +:+     */
#*   By: jkrause <jkrause@student.42.us.org>        +#+  +:+       +#+        */
#*                                                +#+#+#+#+#+   +#+           */
#*   Created: 2017/04/18 03:42:42 by jkrause           #+#    #+#             */
#*   Updated: 2017/06/11 02:45:14 by jkrause          ###   ########.fr       */
#*                                                                            */
#* ************************************************************************** */
# ----------------- Version 1.7 --------------------- #

# ------------- Automated Configuration ------------- #
ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

REDZONE_NAME = redzone_malloc_$(HOSTTYPE).so
REDZONE_SYMNAME = redzone_malloc.so
LFLAGS = -shared
CFLAGS =  -fPIC -Wall -Werror -Wextra 
CFLAGS += -I includes
REDZONE_SRC = src/buckets.c \
src/redzone.c \
src/init.c \
src/alloc.c \
src/zone.c \
libft-min/ft_strcmp.c \
libft-min/ft_memcpy.c \
libft-min/ft_ltostr_base.c \
libft-min/ft_printf.c \
libft-min/ft_isdigit.c \
libft-min/parse_module.c \
libft-min/module_manager.c \
libft-min/expand_write.c \
libft-min/expand_pad.c \
libft-min/ft_putstr_fd.c \
libft-min/ft_lstdelone.c \
libft-min/ft_strdup.c \
libft-min/ft_putnbr_fd.c \
libft-min/ft_putendl_fd.c \
libft-min/ft_memdel.c \
libft-min/string_module.c \
libft-min/bufferwrite_module.c \
libft-min/ft_putchar.c \
libft-min/ft_strlen.c \
libft-min/ft_strsub.c \
libft-min/ft_strnew.c \
libft-min/ft_memalloc.c \
libft-min/asterisks_module.c \
libft-min/ft_strnchr.c \
libft-min/integer_module.c \
libft-min/ft_strncmp.c \
libft-min/format_module.c \
libft-min/ft_putchar_fd.c \
libft-min/get_next_line.c \
libft-min/ft_memset.c \
libft-min/ft_isalpha.c \
libft-min/ft_itoa_base.c \
libft-min/ft_strcat.c \
libft-min/bufferstring_module.c \
libft-min/ft_strchr.c \
libft-min/memorywrite_module.c \

REDZONE_OBJ = $(subst .c,.o, $(REDZONE_SRC))
# ------------------- Targets ----------------------- #

all: $(REDZONE_NAME)
o: %.c
	gcc $(CFLAGS) -c $? -o $@

$(REDZONE_NAME): $(REDZONE_OBJ)
	gcc $(LFLAGS) $(REDZONE_OBJ) -o $(REDZONE_NAME)
	rm -f $(REDZONE_SYMNAME)
	ln -s $(REDZONE_NAME) $(REDZONE_SYMNAME)

re: clean all 
clean:
	/bin/rm -f $(REDZONE_OBJ)

fclean: clean
	/bin/rm -f $(REDZONE_NAME)
	/bin/rm -f $(REDZONE_SYMNAME)
