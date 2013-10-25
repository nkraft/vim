setlocal expandtab
setlocal shiftwidth=2
setlocal smarttab
setlocal softtabstop=2
setlocal tabstop=2

iab #d #define
iab #i #include

" 'mc e' to comment out blocks of C/C++ code
map e mz'cO<Esc>i#if 0<Esc>'zo<esc>i#endif<Esc>
