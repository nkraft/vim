" Vim support file to detect file types

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

" ANTLR
au! BufNewFile,BufRead *.g,*.g3 setf antlr3

" C++
au! BufNewFile,BufRead *.ipp setf cpp

" Maven
au! BufNewFile,BufRead pom.xml,settings.xml setf maven

" Scala
au! BufNewFile,BufRead *.scala setf scala

" YAML
au! BufNewFile,BufRead *.yaml,*.yml setf yaml

augroup END
