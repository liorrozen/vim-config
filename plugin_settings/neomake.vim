let g:neomake_place_signs = 1
let g:neomake_open_list = 0
let g:neomake_javascript_eslint_exe='/usr/local/lib/node_modules/eslint/bin/eslint.js'
let g:neomake_javascript_eslint_args=['-c', '/usr/local/share/eslintrc.json', '-f' , 'compact', '--color']
let g:neomake_javascript_eslint_maker = {
      \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
      \ '%W%f: line %l\, col %c\, Warning - %m'
      \ }

let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeErrorMsg'}
let g:neomake_error_sign={'text': 'X', 'texthl': 'NeomakeErrorMsg'}
let g:neomake_info_sign={'text': 'ℹ', 'texthl': 'NeomakeErrorMsg'}

" Auto run Neomake for read/write immediately
call neomake#configure#automake('rw')
