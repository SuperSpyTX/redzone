let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/42/malloc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 src/redzone.c
badd +60 includes/constants.h
badd +77 includes/redzone.h
badd +24 includes/buckets.h
badd +0 term://.//17659:fish
badd +0 tests/test.c
argglobal
silent! argdel *
$argadd tests/test.c
set stal=2
edit includes/buckets.h
set splitbelow splitright
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
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 23 + 22) / 45)
exe 'vert 1resize ' . ((&columns * 83 + 88) / 177)
exe '2resize ' . ((&lines * 23 + 22) / 45)
exe 'vert 2resize ' . ((&columns * 93 + 88) / 177)
exe '3resize ' . ((&lines * 18 + 22) / 45)
exe 'vert 3resize ' . ((&columns * 83 + 88) / 177)
exe '4resize ' . ((&lines * 18 + 22) / 45)
exe 'vert 4resize ' . ((&columns * 93 + 88) / 177)
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
let s:l = 18 - ((8 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/Documents/42/malloc
wincmd w
argglobal
if bufexists('~/Documents/42/malloc/tests/test.c') | buffer ~/Documents/42/malloc/tests/test.c | else | edit ~/Documents/42/malloc/tests/test.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((19 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 037|
lcd ~/Documents/42/malloc
wincmd w
argglobal
if bufexists('~/Documents/42/malloc/includes/redzone.h') | buffer ~/Documents/42/malloc/includes/redzone.h | else | edit ~/Documents/42/malloc/includes/redzone.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 71 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 021|
lcd ~/Documents/42/malloc
wincmd w
argglobal
if bufexists('~/Documents/42/malloc/src/redzone.c') | buffer ~/Documents/42/malloc/src/redzone.c | else | edit ~/Documents/42/malloc/src/redzone.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 39 - ((17 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 0
lcd ~/Documents/42/malloc
wincmd w
exe '1resize ' . ((&lines * 23 + 22) / 45)
exe 'vert 1resize ' . ((&columns * 83 + 88) / 177)
exe '2resize ' . ((&lines * 23 + 22) / 45)
exe 'vert 2resize ' . ((&columns * 93 + 88) / 177)
exe '3resize ' . ((&lines * 18 + 22) / 45)
exe 'vert 3resize ' . ((&columns * 83 + 88) / 177)
exe '4resize ' . ((&lines * 18 + 22) / 45)
exe 'vert 4resize ' . ((&columns * 93 + 88) / 177)
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
if bufexists('term://.//17659:fish') | buffer term://.//17659:fish | else | edit term://.//17659:fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2394 - ((41 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2394
normal! 059|
lcd ~/Documents/42/malloc
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
