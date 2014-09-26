" Vim support file to detect file types

if exists("did_load_filetypes_userafter")
  finish
endif
let did_load_filetypes_userafter = 1

augroup filetypedetect

augroup END
