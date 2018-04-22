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
# ----------------- Version 1.5 --------------------- #

# ------------- Automated Configuration ------------- #
ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

REDZONE_NAME = libft_malloc_$HOSTTYPE.so
CFLAGS =  -fPIC -Wall -Werror -Wextra
CFLAGS += -I includes
REDZONE_SRC = 
REDZONE_OBJ = $(subst .c,.o, $(REDZONE_SRC))
# ------------------- Targets ----------------------- #

all: $(REDZONE_NAME)

%.o: %.c
	gcc $(CFLAGS) -c $? -o $@

$(REDZONE_NAME): $(REDZONE_OBJ)
	gcc $(REDZONE_OBJ) -o $(REDZONE_NAME)

re: clean all 
clean:
	/bin/rm -f $(REDZONE_OBJ)

fclean: clean
	/bin/rm -f $(REDZONE_NAME)
