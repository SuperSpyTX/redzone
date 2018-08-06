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
divert(-1)

# ------------- Real Configuration ------------------ #
# This is now defined in ./configure.  Please go use that. #

define(MK_NUM_OF_TARGETS, 1)
define(MK_FCLEAN_ON_RE, 0)
define(MK_DEBUG, 0)
define(MK_LIBFT_BUILD, 0)
define(MK_CORRECTION, 0)
define(MK_LITE, 0)

define(MK_REDZONE_NAME, ifelse(MK_CORRECTION, 1, libft_malloc, redzone_malloc))
define(MK_REDZONE_SYMNAME, defn(`MK_REDZONE_NAME')_$(HOSTTYPE))
define(MK_REDZONE_SUFFIX, .so)
define(MK_REDZONE_INCLUDE_DIRS, includes)
define(MK_REDZONE_SRC_DIRS, src ifelse(MK_LIBFT_BUILD, 1, libft, ifelse(MK_LITE, 1, libft-min,  )))
define(MK_REDZONE_DEBUG, 0)

# ------------ Automated Variables ------------------ #
define(MK_AUTO_ISLINUX, ifelse(esyscmd(uname -s | tr -d '\n'), `Darwin', 0, 1))
define(MK_AUTO_COMPILER,ifelse(MK_AUTO_ISLINUX, 1, clang, gcc))

define(MK_REDZONE_AUTO_SRC_DIR, patsubst(MK_REDZONE_SRC_DIRS,` ',`````,'''''))
pushdef(`MK_REDZONE_AUTO_SRC_DIR', ifelse(MK_REDZONE_SRC_DIRS,.,.,{MK_REDZONE_AUTO_SRC_DIR}))
define(MK_REDZONE_AUTO_SRC, esyscmd(bash -c 'find MK_REDZONE_AUTO_SRC_DIR -type f -name "*.c" | sed -e "s/$/ \\\/g"'))

define(MK_REDZONE_AUTO_SRC_DIR, patsubst(MK_REDZONE_SRC_DIRS,` ',```,'''))
define(MK_REDZONE_AUTO_INCLUDE_DIR, -I patsubst(MK_REDZONE_INCLUDE_DIRS,` ',``` -I '''))


divert(0)
# ------------- Automated Configuration ------------- #
ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

REDZONE_NAME = defn(`MK_REDZONE_SYMNAME')MK_REDZONE_SUFFIX
REDZONE_SYMNAME = defn(`MK_REDZONE_NAME')MK_REDZONE_SUFFIX
LFLAGS = ifelse(MK_SUFFIX, ".dylib", -dynamiclib, -shared)
CFLAGS = ifelse(MK_DEBUG, 1, -g -DREDZONE_DEBUG=1) -fPIC -Wall -Werror -Wextra ifelse(MK_CORRECTION,1, -DREDZONE_CORRECTION=1)
CFLAGS += MK_REDZONE_AUTO_INCLUDE_DIR
REDZONE_SRC = MK_REDZONE_AUTO_SRC
REDZONE_OBJ = $(subst .c,.o, $(REDZONE_SRC))
# ------------------- Targets ----------------------- #

all: $(REDZONE_NAME)
o: %.c
	MK_AUTO_COMPILER $(CFLAGS) -c $? -o $@

$(REDZONE_NAME): $(REDZONE_OBJ)
	MK_AUTO_COMPILER $(LFLAGS) $(REDZONE_OBJ) -o $(REDZONE_NAME)
	rm -f $(REDZONE_SYMNAME)
	ln -s $(REDZONE_NAME) $(REDZONE_SYMNAME)

re: ifelse(MK_FCLEAN_ON_RE, 1,f)clean all dnl

clean:
	/bin/rm -f $(REDZONE_OBJ)

fclean: clean
	/bin/rm -f $(REDZONE_NAME)
	/bin/rm -f $(REDZONE_SYMNAME)
