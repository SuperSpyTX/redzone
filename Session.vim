let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/42/malloc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Makefile.m4
badd +13 src/redzone.c
badd +1 includes/redzone.h
badd +25 includes/redzone/constants.h
badd +1 includes/redzone/internal.h
badd +153 configure
badd +17 src/init.c
badd +1 term://.//74992:fish
badd +1 term://.//74078:fish
badd +42 src/zone.c
badd +21 tests/pti.c
badd +1 tests/old.c
badd +32 src/buckets.c
badd +30 src/alloc.c
badd +29 term://.//88892:fish
badd +1 includes/ft_printf.h
badd +1 libft/printf_functions/ft_printf.c
badd +1 libft/printf_functions/ft_snprintf.c
badd +1 libft/printf_functions/module_manager.c
badd +1 libft/printf_functions/modules/directbuffer_module.c
badd +1 libft/printf_functions/modules/bufferwrite_module.c
badd +1 libft/printf_functions/modules/bufferstring_module.c
badd +1 libft/printf_functions/modules/formati_module.c
badd +1 libft/printf_functions/modules/integer_module.c
badd +1 libft/printf_functions/modules/string_module.c
badd +1 libft/standard_functions/ft_ltostr_base.c
badd +1 term://.//74826:fish
badd +0 tests/printf_malloc.c
badd +397 ~/.config/nvim/init_user.vim
argglobal
silent! argdel *
argadd ~/.config/nvim/init_user.vim
set stal=2
edit Makefile.m4
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 181 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 38 - ((30 * winheight(0) + 43) / 86)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 0118|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/configure
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 41 - ((32 * winheight(0) + 43) / 86)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 0
lcd ~/Documents/42/malloc
wincmd w
exe 'vert 1resize ' . ((&columns * 181 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 364)
tabedit ~/Documents/42/malloc/includes/redzone/internal.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
exe '7resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 121 + 182) / 364)
exe '8resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 120 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 259 - ((13 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
259
normal! 022|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/tests/pti.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((10 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/redzone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((3 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/includes/redzone/internal.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 304 - ((26 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
304
normal! 025|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/includes/redzone/constants.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 38 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/alloc.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((19 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 013|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//74078:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((17 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/buckets.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/zone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((25 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 09|
lcd ~/Documents/42/malloc
wincmd w
exe '1resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
exe '7resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 121 + 182) / 364)
exe '8resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 28 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 120 + 182) / 364)
tabedit ~/Documents/42/malloc/includes/ft_printf.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe '2resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe '3resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 90 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
exe '5resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 90 + 182) / 364)
exe '6resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 90 + 182) / 364)
exe '7resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 91 + 182) / 364)
exe '8resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 91 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 90 + 182) / 364)
exe '10resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 10resize ' . ((&columns * 90 + 182) / 364)
exe '11resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 11resize ' . ((&columns * 90 + 182) / 364)
exe '12resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 12resize ' . ((&columns * 90 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/directbuffer_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/bufferwrite_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/bufferstring_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/integer_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 43 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 025|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/string_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/tests/printf_malloc.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/standard_functions/ft_ltostr_base.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 58 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 05|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/ft_printf.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/formati_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/integer_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/libft/printf_functions/modules/string_module.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/42/malloc
wincmd w
exe '1resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe '2resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe '3resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 90 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
exe '5resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 90 + 182) / 364)
exe '6resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 90 + 182) / 364)
exe '7resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 91 + 182) / 364)
exe '8resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 91 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 90 + 182) / 364)
exe '10resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 10resize ' . ((&columns * 90 + 182) / 364)
exe '11resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 11resize ' . ((&columns * 90 + 182) / 364)
exe '12resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 12resize ' . ((&columns * 90 + 182) / 364)
tabedit ~/Documents/42/malloc/includes/redzone.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 91 + 182) / 364)
exe '2resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 91 + 182) / 364)
exe '3resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 91 + 182) / 364)
exe '5resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 90 + 182) / 364)
exe '6resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 90 + 182) / 364)
exe '7resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 90 + 182) / 364)
exe '8resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 90 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 90 + 182) / 364)
exe '10resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 10resize ' . ((&columns * 90 + 182) / 364)
exe '11resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 11resize ' . ((&columns * 90 + 182) / 364)
exe '12resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 12resize ' . ((&columns * 90 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 101 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
101
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/includes/redzone/internal.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 161 - ((8 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
161
normal! 041|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/includes/redzone/constants.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/redzone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/alloc.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 46 - ((38 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/redzone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((39 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/zone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 42 - ((41 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/alloc.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((20 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/buckets.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/init.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((20 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/src/redzone.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//74826:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((17 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/Documents/42/malloc
wincmd w
8wincmd w
exe '1resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 1resize ' . ((&columns * 91 + 182) / 364)
exe '2resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 91 + 182) / 364)
exe '3resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 4resize ' . ((&columns * 91 + 182) / 364)
exe '5resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 5resize ' . ((&columns * 90 + 182) / 364)
exe '6resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 6resize ' . ((&columns * 90 + 182) / 364)
exe '7resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 7resize ' . ((&columns * 90 + 182) / 364)
exe '8resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 8resize ' . ((&columns * 90 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 9resize ' . ((&columns * 90 + 182) / 364)
exe '10resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 10resize ' . ((&columns * 90 + 182) / 364)
exe '11resize ' . ((&lines * 21 + 44) / 89)
exe 'vert 11resize ' . ((&columns * 90 + 182) / 364)
exe '12resize ' . ((&lines * 20 + 44) / 89)
exe 'vert 12resize ' . ((&columns * 90 + 182) / 364)
tabedit ~/Documents/42/malloc/tests/old.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 34 + 44) / 89)
exe '2resize ' . ((&lines * 51 + 44) / 89)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((12 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//74992:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((14 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/Documents/42/malloc
wincmd w
exe '1resize ' . ((&lines * 34 + 44) / 89)
exe '2resize ' . ((&lines * 51 + 44) / 89)
tabnext 4
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 winminheight=1 winminwidth=1 shortmess=aoO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
