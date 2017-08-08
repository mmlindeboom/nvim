let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Development/solutions/engage
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 term://.//96601:bash
badd +0 term://.//96663:bash
badd +0 term://.//96724:bash
argglobal
silent! argdel *
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 122) / 244)
exe '2resize ' . ((&lines * 66 + 40) / 81)
exe 'vert 2resize ' . ((&columns * 212 + 122) / 244)
exe '3resize ' . ((&lines * 6 + 40) / 81)
exe 'vert 3resize ' . ((&columns * 105 + 122) / 244)
exe '4resize ' . ((&lines * 5 + 40) / 81)
exe 'vert 4resize ' . ((&columns * 105 + 122) / 244)
exe '5resize ' . ((&lines * 12 + 40) / 81)
exe 'vert 5resize ' . ((&columns * 106 + 122) / 244)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
edit term://.//96601:bash
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
edit term://.//96724:bash
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit term://.//96663:bash
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 122) / 244)
exe '2resize ' . ((&lines * 66 + 40) / 81)
exe 'vert 2resize ' . ((&columns * 212 + 122) / 244)
exe '3resize ' . ((&lines * 6 + 40) / 81)
exe 'vert 3resize ' . ((&columns * 105 + 122) / 244)
exe '4resize ' . ((&lines * 5 + 40) / 81)
exe 'vert 4resize ' . ((&columns * 105 + 122) / 244)
exe '5resize ' . ((&lines * 12 + 40) / 81)
exe 'vert 5resize ' . ((&columns * 106 + 122) / 244)
tabnext 1
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
