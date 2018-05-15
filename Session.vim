let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/42/malloc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +47 Makefile.m4
badd +37 src/redzone.c
badd +41 includes/redzone.h
badd +1 term://.//44159:fish
badd +1 includes/get_next_line.h
badd +1 includes/constants.h
badd +1 includes/commontypes.h
badd +23 test.c
badd +0 term://.//59408:fish
argglobal
silent! argdel *
argadd test.c
set stal=2
edit includes/constants.h
set splitbelow splitright
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
exe '1resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe '2resize ' . ((&lines * 32 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 100 + 101) / 202)
exe '3resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 101 + 101) / 202)
exe '4resize ' . ((&lines * 32 + 35) / 70)
exe 'vert 4resize ' . ((&columns * 101 + 101) / 202)
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
let s:l = 32 - ((19 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
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
let s:l = 80 - ((31 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
80
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit ~/Documents/42/malloc/Makefile.m4
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((11 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 042|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//44159:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 57 - ((8 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 027|
wincmd w
exe '1resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe '2resize ' . ((&lines * 32 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 100 + 101) / 202)
exe '3resize ' . ((&lines * 34 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 101 + 101) / 202)
exe '4resize ' . ((&lines * 32 + 35) / 70)
exe 'vert 4resize ' . ((&columns * 101 + 101) / 202)
tabedit ~/Documents/42/malloc/test.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 33 + 35) / 70)
exe '2resize ' . ((&lines * 33 + 35) / 70)
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
let s:l = 18 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 054|
lcd ~/Documents/42/malloc
wincmd w
argglobal
edit term://.//59408:fish
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 824 - ((32 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
824
normal! 043|
lcd ~/Documents/42/malloc
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 33 + 35) / 70)
exe '2resize ' . ((&lines * 33 + 35) / 70)
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
