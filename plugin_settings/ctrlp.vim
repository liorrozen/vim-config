" CtrlP
map <C-b> :CtrlPBuffer<CR>

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\.(jpg|png|svg|gif|exe|so|dll)$'
"
let g:ctrlp_show_hidden = 1
let g:ctrlp_buffer_func = { 'enter': 'CtrlPDeleteBuffer' }
let g:ctrlp_max_height = 50

func! CtrlPDeleteBuffer()
    nnoremap <buffer> <silent> <c-q> :call <sid>DeleteBuffer()<cr>
endfunc
func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
        \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc
