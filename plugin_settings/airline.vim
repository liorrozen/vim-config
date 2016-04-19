" Airline
let g:airline_theme='wombat'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇  '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''
let g:airline_mode_map = {
            \ 'n'  : 'N',
            \ 'i'  : 'I',
            \ 'R'  : 'R',
            \ 'v'  : 'V',
            \ 'V'  : 'V',
            \ }
let g:airline_section_x =       ''
let g:airline_section_b =       ''
let g:airline_section_y =       ''
let g:airline_section_warning = ''
