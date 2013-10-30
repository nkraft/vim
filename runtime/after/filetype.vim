" Vim support file to detect file types

augroup filetypedetect

" ANTLR
au! BufNewFile,BufRead *.g setf antlr3

" Maven
au BufNewFile,BufRead pom.xml setf maven

augroup END
