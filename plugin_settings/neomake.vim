let g:neomake_place_signs = 1
let g:neomake_open_list = 0
let g:neomake_javascript_eslint_exe='/Users/liorr/dev/panoply/node_modules/.bin/eslint'
let g:neomake_javascript_eslint_maker = {
      \ 'args': ['-c', 'panoplyio', '-f', 'compact', '--color'],
      \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
      \ '%W%f: line %l\, col %c\, Warning - %m'
      \ }

highlight NeomakeErrorMsg ctermfg=227 ctermbg=237
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeErrorMsg'}
let g:neomake_error_sign={'text': 'X', 'texthl': 'NeomakeErrorMsg'}

" Auto run neomake for javascript files
autocmd! BufWritePost * Neomake


