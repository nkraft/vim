" ~/.vimrc

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" General Options {{{

set nocompatible

set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set nobackup
set nowritebackup
if has('balloon_eval')
  set noballooneval
endif
if exists('+colorcolumn')
  set colorcolumn=81
endif
set dictionary+=/usr/share/dict/words
set encoding=utf-8
set noerrorbells
set noicon
set fileformats=unix,dos,mac
if has('folding')
  set foldmethod=marker
endif
set laststatus=2
set lazyredraw
set list
if (&encoding ==# 'utf-8')
  let &listchars="tab:\u00BB\u00B7,trail:\u2423"
else
  set listchars=tab:>\ ,trail:-
endif
set modeline
set modelines=5
set mouse=a
set mousemodel=popup
set number
set ruler
set scrolloff=1
set shortmess=finxoOtTAI
set noshowcmd
set showmode
if exists('+spelllang')
  set spelllang=en_us
endif
set splitbelow
set splitright
set nostartofline
set noswapfile
set tabpagemax=100
set title
if has('mouse')
    set ttymouse=xterm2
endif
"if exists('+undofile')
  "set undofile
"endif
if has('viminfo')
  set viminfo='25,/25,:25,<100,h,n~/.viminfo
endif
set virtualedit=block
set visualbell t_vb=
set winaltkeys=no

" }}}
" Search Options {{{

if has('extra_search')
  set hlsearch
  set incsearch
endif
set ignorecase  " Use case-insensitive search for lowercase letters
set smartcase   " Use case-sensitive search for uppercase letters
set matchpairs=(:),{:},[:],<:>
set showmatch

" }}}
" Tab Options {{{

set expandtab     " Use spaces instead of a tab
set shiftwidth=4  " Number of spaces to (auto)indent
set smarttab      " Backspace deletes shiftwidth spaces
set softtabstop=4 " Number of spaces to use instead of a tab
set tabstop=4     " Number of spaces per tab

" }}}
" Print Options {{{

" :argdo ha > %.ps

function PrintFile(fname)
    call system('open -a Preview ' . a:fname)
    call delete(a:fname)
    return v:shell_error
endfunction

function TotalPages()
    let lpp = 70
    return ( (line('$') / lpp) + ((line('$') % lpp) != 0) )
endfunction

" 1 point is 1/72 of an inch
set printheader="%<%f%h%m%=Page %N"
set printheader=%<%f%h%m%=Page\ %N\ of\ %{TotalPages()}
set printoptions=left:36pt,top:36pt,right:36pt,bottom:36pt,header:2,syntax:y,number:n,paper:letter
set printexpr=PrintFile(v:fname_in)

" }}}
" Commands {{{

nmap <F1> <nop>
"map<F1> <Esc>
"imap<F1> <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" }}}
" Autocommands {{{

if has('autocmd')
  if exists('+filetype')
    filetype plugin indent on
  endif

  function! RestoreCursor()
    if line("'\"") <= line("$")
      normal! g`"
      return 1
    endif
  endfunction

  augroup restore_cursor
    autocmd!
    autocmd BufWinEnter * call RestoreCursor()
  augroup END

  " augroup ColorcolumnOnlyInInsertMode
  "   autocmd!
  "   autocmd InsertEnter * setlocal colorcolumn=80
  "   autocmd InsertLeave * setlocal colorcolumn=0
  " augroup END
endif

" }}}
" Visual {{{

set background=light
if (&t_Co > 2) && has('syntax')
  syntax on
  colorscheme nkraft
endif

" }}}
