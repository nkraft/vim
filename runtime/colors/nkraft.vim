" ~/.vim/colors/nkraft.vim

highlight clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "nkraft"

if &background == 'light'
  " Default Highlighting Groups {{{
  hi Normal ctermfg=Black ctermbg=White guifg=Black guibg=White
  hi ColorColumn ctermbg=LightGray guibg=LightGray
  hi Cursor ctermfg=White ctermbg=Red guifg=White guibg=Red
  hi lCursor ctermfg=White ctermbg=DarkGreen guifg=White guibg=DarkGreen
  hi DiffAdd cterm=none ctermbg=DarkBlue gui=none guibg=DarkBlue
  hi DiffChange cterm=none ctermbg=DarkMagenta gui=none guibg=DarkMagenta
  hi DiffDelete ctermfg=blue guifg=blue
  hi DiffText cterm=bold gui=bold
  hi ErrorMsg ctermfg=White ctermbg=Blue guifg=White guibg=Blue
  hi VertSplit cterm=none ctermfg=Black ctermbg=LightGray gui=none guifg=Black guibg=LightGray
  hi Folded cterm=bold ctermfg=DarkGray ctermbg=Black gui=bold guifg=DarkGray guibg=Black
  hi FoldColumn cterm=bold ctermfg=DarkGray ctermbg=Black gui=bold guifg=DarkGray guibg=Black
  hi IncSearch ctermfg=White ctermbg=DarkBlue guifg=LightGray guibg=DarkBlue
  hi LineNr cterm=none ctermfg=LightGray gui=none guifg=LightGray
  "hi MatchParen
  hi ModeMsg ctermfg=Blue guifg=Blue
  hi MoreMsg ctermfg=DarkGreen guifg=DarkGreen
  hi NonText ctermfg=DarkBlue guifg=DarkBlue
  hi Question cterm=none ctermfg=Green gui=none guifg=Green
  hi Search ctermfg=White ctermbg=DarkBlue guifg=White guibg=DarkBlue
  hi SpecialKey ctermfg=DarkCyan guifg=DarkCyan
  hi StatusLine cterm=none ctermfg=White ctermbg=DarkBlue gui=none guifg=White guibg=DarkBlue
  hi StatusLineNC cterm=none ctermfg=Black ctermbg=lightgray gui=none guifg=Black guibg=LightGray
  hi Title cterm=bold ctermfg=Magenta gui=bold guifg=Magenta
  hi Visual cterm=reverse ctermfg=Blue ctermbg=White gui=reverse guifg=Blue guibg=White
  hi VisualNOS cterm=reverse,underline ctermfg=Blue ctermbg=White  gui=reverse,underline guifg=Blue guibg=White
  hi WarningMsg ctermfg=Red guifg=Red
  hi WildMenu cterm=none ctermfg=Yellow ctermbg=Black gui=none guifg=Yellow guibg=Black
  " }}}
  " Syntax Highlighting Groups {{{
  hi Comment ctermfg=Green ctermbg=Black guifg=Black guibg=Green
  hi Constant cterm=none ctermfg=DarkCyan gui=bold guifg=Magenta
    "hi String
    "hi Character
    "hi Number
    "hi Boolean
    "hi Float
  hi Identifier cterm=bold ctermfg=Black gui=bold guifg=Black
    "hi Function
  hi Statement cterm=bold ctermfg=DarkRed gui=bold guifg=Red
    "hi Conditional
    "hi Repeat
    "hi Label
    hi Operator cterm=none ctermfg=DarkBlue gui=none guifg=DarkBlue
    "hi Keyword
    "hi Exception
  hi PreProc cterm=none ctermfg=Brown gui=bold guifg=Cyan
    "hi Include
    "hi Define
    "hi Macro
    "hi PreCondit
  hi Type cterm=bold ctermfg=Blue gui=bold guifg=Blue
    hi StorageClass cterm=bold ctermfg=DarkBlue gui=bold guifg=Blue
    hi Structure cterm=bold ctermfg=DarkRed gui=bold guifg=Red
    "hi Typedef
  hi Special
  hi Special cterm=none ctermfg=Magenta gui=bold guifg=Brown
    "hi SpecialChar
    "hi Tag
    "hi Delimiter
    "hi SpecialComment
    "hi Debug
  hi Underlined cterm=underline gui=underline
  hi Ignore cterm=none gui=none
  "hi Error
  hi Todo ctermfg=Red ctermbg=DarkBlue guifg=Red guibg=DarkBlue
  " }}}
endif
