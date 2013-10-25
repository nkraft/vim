" ~/.gvimrc

set columns=81
if has('gui_gtk2')
  set guifont=DejaVu\ Sans\ Mono\ Book\ 12
elseif has('gui_macvim')
  set guifont=Consolas:h14
endif
set guioptions-=a
set guioptions+=e
set guioptions+=i
set guioptions-=m
set guioptions+=r
set guioptions-=T
set guioptions-=L
set icon
set lines=1000
set mousehide
set showtabline=2

set background=light
syntax on
colorscheme nkraft
