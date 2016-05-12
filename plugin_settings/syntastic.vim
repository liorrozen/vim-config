" Syntastic

" Perform syntax checking/linting
nnoremap <Leader>sc :SyntasticCheck<CR>
" Toggle syntastic mode
nnoremap <Leader>ss :SyntasticToggleMode<CR>
" Toggle syntastic mode
nnoremap <Leader>si :SyntasticInfo<CR>

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_args='-c "Path_To_Rubocop_File.yml"'

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E251,E201,E202,E203,E127,E128,E261'
" let g:syntastic_python_checker_args='--ignore=F401'

let g:syntastic_javascript_checkers = [ 'eslint' ]
let g:syntastic_javascript_checker_args='--config ~/dev/color/.eslintrc.js'

let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
