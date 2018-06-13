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
badd +101 includes/redzone.h
badd +25 includes/redzone/constants.h
badd +290 includes/redzone/internal.h
badd +153 configure
badd +17 src/init.c
badd +1 term://.//87631:fish
badd +1 term://.//87544:fish
badd +42 src/zone.c
badd +21 tests/pti.c
badd +35 tests/old.c
badd +32 src/buckets.c
badd +30 src/alloc.c
argglobal
silent! argdel *
argadd src/alloc.c
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
let s:l = 38 - ((37 * winheight(0) + 53) / 107)
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
let s:l = 41 - ((40 * winheight(0) + 53) / 107)
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
exe '1resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
exe '7resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 7resize ' . ((&columns * 121 + 182) / 364)
exe '8resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 35 + 55) / 110)
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
let s:l = 259 - ((16 * winheight(0) + 17) / 35)
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
let s:l = 37 - ((33 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 073|
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
let s:l = 19 - ((11 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 011|
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
let s:l = 304 - ((32 * winheight(0) + 17) / 35)
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
let s:l = 60 - ((18 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
60
normal! 08|
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
let s:l = 59 - ((28 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 023|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//87544:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1035 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1035
normal! 045|
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
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 41 - ((33 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 013|
lcd ~/Documents/42/malloc
wincmd w
7wincmd w
exe '1resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
exe '7resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 7resize ' . ((&columns * 121 + 182) / 364)
exe '8resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 35 + 55) / 110)
exe 'vert 9resize ' . ((&columns * 120 + 182) / 364)
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
exe '1resize ' . ((&lines * 43 + 55) / 110)
exe '2resize ' . ((&lines * 63 + 55) / 110)
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
let s:l = 47 - ((15 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//87631:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
lcd ~/Documents/42/malloc
wincmd w
exe '1resize ' . ((&lines * 43 + 55) / 110)
exe '2resize ' . ((&lines * 63 + 55) / 110)
tabnext 2
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
