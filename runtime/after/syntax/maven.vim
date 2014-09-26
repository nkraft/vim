if exists("b:current_syntax")
  finish
endif

source $VIMRUNTIME/syntax/xml.vim

unlet b:current_syntax

let b:current_syntax = "maven"
