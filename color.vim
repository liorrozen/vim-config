if !exists('g:loaded_color')
  let g:loaded_color = 1

  set background=dark
  " Put your favorite colorscheme here
  colorscheme desert

endif


hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

" Change diff colors
hi DiffAdd    cterm=bold ctermfg=black ctermbg=10 gui=none guifg=black guibg=green
hi DiffDelete cterm=bold ctermfg=black ctermbg=9 gui=none guifg=black guibg=Red
hi DiffChange cterm=bold ctermfg=black ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffText   cterm=bold ctermfg=black ctermbg=88 gui=none guifg=bg guibg=Red

if &diff
    colorscheme github
endif

" Sets popup and selection colors
hi Pmenu ctermbg=246 ctermfg=232
hi PmenuSel ctermbg=237 ctermfg=250

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan

" Sets search match colors
hi Search cterm=NONE ctermfg=black ctermbg=yellow

" Set line number colors
hi LineNr ctermfg=248
