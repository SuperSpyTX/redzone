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
badd +61 includes/redzone.h
badd +25 includes/redzone/constants.h
badd +1 includes/redzone/internal.h
badd +153 configure
badd +27 src/init.c
badd +1 tests/sbrk.c
badd +1 term://.//4361:fish
badd +1 term://.//4242:fish
badd +28 src/zone.c
argglobal
silent! argdel *
argadd src/buckets.c
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
let s:l = 42 - ((41 * winheight(0) + 53) / 107)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
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
let s:l = 248 - ((5 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
248
normal! 058|
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
let s:l = 229 - ((13 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
229
normal! 025|
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
let s:l = 20 - ((19 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/includes/redzone.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 82 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
82
normal! 0
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
let s:l = 31 - ((24 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 026|
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
let s:l = 32 - ((30 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 055|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//4242:fish
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
let s:l = 22 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 025|
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
let s:l = 21 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
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
tabedit ~/Documents/42/malloc/tests/sbrk.c
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
let s:l = 20 - ((19 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//4361:fish
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
