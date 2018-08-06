" General colors
colorscheme desert    " use this color scheme
set background=dark   " adapt colors for background

hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

" Change diff colors
hi DiffAdd    cterm=bold ctermfg=black ctermbg=10 gui=none guifg=black guibg=green
hi DiffDelete cterm=bold ctermfg=black ctermbg=9 gui=none guifg=black guibg=Red
hi DiffChange cterm=bold ctermfg=black ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffText   cterm=bold ctermfg=black ctermbg=88 gui=none guifg=bg guibg=Red

" Sets popup and selection colors
hi Pmenu ctermbg=246 ctermfg=232
hi PmenuSel ctermbg=237 ctermfg=250

" Indicate max line length my coloring the 80th column
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Sets search match colors
hi Search cterm=NONE ctermfg=black ctermbg=yellow

hi NeomakeError ctermfg=black ctermbg=yellow
hi NeomakeWarning ctermfg=black ctermbg=red
