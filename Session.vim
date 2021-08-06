let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/git/ps_env
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd test.cpp
edit test.cpp
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 124) / 249)
exe '2resize ' . ((&lines * 30 + 54) / 109)
exe 'vert 2resize ' . ((&columns * 134 + 124) / 249)
exe '3resize ' . ((&lines * 30 + 54) / 109)
exe 'vert 3resize ' . ((&columns * 134 + 124) / 249)
exe '4resize ' . ((&lines * 45 + 54) / 109)
exe 'vert 4resize ' . ((&columns * 134 + 124) / 249)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999999
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
31
normal! zo
40
normal! zo
42
normal! zo
40
normal! zo
90
normal! zo
102
normal! zo
104
normal! zo
129
normal! zo
140
normal! zo
141
normal! zo
144
normal! zo
147
normal! zo
158
normal! zo
154
normal! zo
161
normal! zo
160
normal! zo
let s:l = 37 - ((36 * winheight(0) + 53) / 107)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 05|
wincmd w
argglobal
if bufexists("input.txt") | buffer input.txt | else | edit input.txt | endif
balt test.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999999
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 011|
wincmd w
argglobal
if bufexists("output.txt") | buffer output.txt | else | edit output.txt | endif
balt test.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999999
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("~/.vimrc") | buffer ~/.vimrc | else | edit ~/.vimrc | endif
balt .vimrc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999999
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 174 - ((9 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 174
normal! 024|
wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 124) / 249)
exe '2resize ' . ((&lines * 30 + 54) / 109)
exe 'vert 2resize ' . ((&columns * 134 + 124) / 249)
exe '3resize ' . ((&lines * 30 + 54) / 109)
exe 'vert 3resize ' . ((&columns * 134 + 124) / 249)
exe '4resize ' . ((&lines * 45 + 54) / 109)
exe 'vert 4resize ' . ((&columns * 134 + 124) / 249)
tabnext 1
badd +1 test.cpp
badd +1 input.txt
badd +1 output.txt
badd +205 ~/.vimrc
badd +3 .vimrc
badd +1 note.txt
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
