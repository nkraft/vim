" Vim support file to detect file types

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

" ANTLR
au BufNewFile,BufRead *.g3 setf antlr3

" C++
au BufNewFile,BufRead *.ipp setf cpp

augroup END
