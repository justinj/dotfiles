" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/982189/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla"

if version >= 700
  hi CursorLine     guibg=#040700 ctermbg=16
  hi CursorColumn   guibg=#040700 ctermbg=16
  hi MatchParen     guifg=#7FFFB3 guibg=#040700 gui=bold ctermfg=121 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#FF009D ctermfg=255 ctermbg=199
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#040700 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#13160F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#333630 guibg=#1D2019 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#36051F gui=italic ctermfg=255 ctermbg=234 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#2C2F28 gui=none ctermfg=255 ctermbg=236 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#1D2019 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#040700 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#FF009D guibg=NONE	gui=bold ctermfg=199 ctermbg=NONE cterm=bold
hi Visual           guifg=#FF00EB guibg=#323232 gui=none ctermfg=200 ctermbg=236 cterm=none
hi SpecialKey       guifg=#B816A0 guibg=#13160F gui=none ctermfg=127 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4F5100 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#282A4C gui=none ctermbg=236 cterm=none
"hi DiffText         guibg=#683666 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#420500 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FF00EB gui=bold ctermfg=200 cterm=bold


" Syntax highlighting
hi Comment guifg=#FF009D gui=none ctermfg=199 cterm=none
hi Constant guifg=#B816A0 gui=none ctermfg=127 cterm=none
hi Number guifg=#B816A0 gui=none ctermfg=127 cterm=none
hi Identifier guifg=#FF579B gui=none ctermfg=204 cterm=none
hi Statement guifg=#7FFFB3 gui=none ctermfg=121 cterm=none
hi Function guifg=#B82ECF gui=none ctermfg=128 cterm=none
hi Special guifg=#AC8351 gui=none ctermfg=137 cterm=none
hi PreProc guifg=#AC8351 gui=none ctermfg=137 cterm=none
hi Keyword guifg=#7FFFB3 gui=none ctermfg=121 cterm=none
hi String guifg=#FF00EB gui=none ctermfg=200 cterm=none
hi Type guifg=#99185A gui=none ctermfg=89 cterm=none
hi pythonBuiltin guifg=#FF579B gui=none ctermfg=204 cterm=none
hi TabLineFill guifg=#68045E gui=none ctermfg=53 cterm=none

