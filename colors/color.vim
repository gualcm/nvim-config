" ======================================================================
" Potpourri Contrast
" ======================================================================
" A Sublime Text 2 / Textmate theme.
" Copyright (c) 2014 Dayle Rees.
" Released under the MIT License <http://opensource.org/licenses/MIT>
" ======================================================================
" Find more themes at : https://github.com/daylerees/colour-schemes
" ======================================================================

set background=dark
hi clear
syntax reset

" Colors for the User Interface.

hi Cursor      guibg=#cc4455  guifg=white     ctermbg=4 ctermfg=15
hi link CursorIM Cursor
hi Normal      guifg=#F8F8F2    gui=none ctermbg=0 ctermfg=15
hi NonText       guifg=#F8F8F2   ctermbg=8 ctermfg=14
" hi Visual      guibg=#494a29  guifg=white    gui=none ctermbg=9 ctermfg=15
hi Visual      guibg=#494a29  gui=none ctermbg=9 ctermfg=15

hi Linenr             guifg=#aaaaaa  gui=none ctermbg=bg ctermfg=7

hi Directory          guifg=#FF4A80  gui=bold ctermbg=bg ctermfg=10

hi IncSearch   guibg=#0066cc  guifg=white    gui=none ctermbg=1 ctermfg=15
hi link Seach IncSearch

hi SpecialKey   guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi Titled       guifg=fg       gui=none ctermbg=bg ctermfg=fg

hi ErrorMsg     guifg=#ff0000 guibg=white   ctermbg=bg ctermfg=12
hi ModeMsg      guifg=#ffeecc  gui=none ctermbg=bg ctermfg=14
hi link  MoreMsg     ModeMsg
hi Question     guifg=#C491C4   ctermbg=bg ctermfg=10
hi link  WarningMsg  ErrorMsg

hi StatusLine     guibg=black  guifg=#ffcc99     ctermbg=14 ctermfg=0
" hi StatusLineNC   guibg=#cc4455  guifg=white    gui=none ctermbg=4  ctermfg=11
" hi VertSplit      guibg=#cc4455  guifg=white    gui=none ctermbg=4  ctermfg=11

hi DiffAdd     guibg=#446688  guifg=fg    gui=none ctermbg=1 ctermfg=fg
hi DiffChange  guibg=#558855  guifg=fg    gui=none ctermbg=2 ctermfg=fg
hi DiffDelete  guibg=#884444  guifg=fg    gui=none ctermbg=4 ctermfg=fg
hi DiffText    guibg=#884444  guifg=fg     ctermbg=4 ctermfg=fg

" Colors for Syntax Highlighting.

hi Comment    guifg=#696363  gui=none    ctermbg=8   ctermfg=7

hi Constant        guifg=white        ctermbg=8   ctermfg=15
hi String          guifg=#B866FA    ctermbg=bg  ctermfg=14
hi Character       guifg=#FF4A80      ctermbg=bg  ctermfg=14
hi Number          guifg=#C84FF0      ctermbg=1   ctermfg=15
hi Boolean         guifg=#C84FF0  gui=none    ctermbg=1   ctermfg=15
hi Float           guifg=#C84FF0      ctermbg=1   ctermfg=15

hi Identifier      guifg=#ffcc99      ctermbg=bg  ctermfg=12
" hi Identifier      guifg=#F8F8F2      ctermbg=bg  ctermfg=12
hi Function        guifg=#FF4A80      ctermbg=bg  ctermfg=12
hi Statement       guifg=#FF4A80      ctermbg=bg  ctermfg=14

hi Conditional     guifg=#FF4A80      ctermbg=bg  ctermfg=12
hi Repeat          guifg=#FF4A80      ctermbg=4   ctermfg=14
hi Label           guifg=#ffccff      ctermbg=bg   ctermfg=13
hi Operator        guifg=#FF4A80      ctermbg=6   ctermfg=15
hi Keyword         guifg=#FF4A80      ctermbg=bg  ctermfg=10
hi Exception       guifg=#FF4A80      ctermbg=bg  ctermfg=10


hi PreProc       guifg=#ffcc99   ctermbg=4  ctermfg=14
hi Include       guifg=#C491C4   ctermbg=bg ctermfg=10
hi link Define    Include
hi link Macro     Include
hi link PreCondit Include

hi Type          guifg=#C491C4      ctermbg=bg  ctermfg=12
hi StorageClass      guifg=#FF4A80      ctermbg=bg  ctermfg=10
hi Structure         guifg=#F8F8F2      ctermbg=bg  ctermfg=10
hi Typedef       guifg=#C491C4    ctermbg=bg  ctermfg=10

hi Special       guifg=#bbddff      ctermbg=1   ctermfg=15
hi SpecialChar       guifg=#bbddff      ctermbg=1   ctermfg=15
hi Tag           guifg=#bbddff      ctermbg=1   ctermfg=15
hi Delimiter         guifg=fg       ctermbg=1   ctermfg=fg
hi SpecialComment guibg=#334455  guifg=#8f8787    ctermbg=1   ctermfg=15
hi Debug         guifg=#ff9999  gui=none    ctermbg=8   ctermfg=12

hi Underlined  guifg=#99ccff gui=underline ctermbg=bg ctermfg=9 cterm=underline

hi Title      guifg=#F8F8F2        ctermbg=1   ctermfg=15
hi Ignore          guifg=#cccccc    ctermbg=bg  ctermfg=8
hi Error    guibg=#ff0000  guifg=white        ctermbg=12  ctermfg=15
hi Todo     guibg=#556677  guifg=#ff0000      ctermbg=1   ctermfg=12

hi CocFloating  guibg=#302E33
hi CocWarningHighlight guifg=#ff922b gui=underline
hi Pmenu guibg=#ffcc99 guifg=black
hi CursorLine      guibg=#363636
hi NERDTreeUp      guifg=#f7ff00

hi htmlH2  guifg=fg  ctermbg=8 ctermfg=fg
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi link htmlH5 htmlH4
hi link htmlH6 htmlH5

" And finally.

let g:colors_name = "Vaporgual"
let colors_name   = "Vaporgual"
