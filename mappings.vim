" ========
" Mappings
" ========

" Always open tselect buffer if there is more than one matching tag
map <C-]> g<C-]>

" navigate quickfix locations
nmap ]q :lne<cr>
nmap [q :lp<cr>

" toggle last buffer
nmap <LEADER>b :b# <CR>

" Vimrc editing mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Navigate splits with CTRL+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move Lines [e and ]e (ALL MODES)
" up
nmap ]e mz:m-2<cr>`z==
imap ]e <esc>:m-2<cr>==gi
vmap ]e :m'<-2<cr>gv=`>my`<mzgv`yo`z

" down
nmap [e mz:m+<CR>`z==
vmap [e :m'>+<CR>gv=`<my`>mzgv`yo`z
imap [e <Esc>:m+<CR>==gi

" Faster saves
nnoremap ,s :w<CR>
nnoremap ,w :w<CR>
" Faster closing of buffers
noremap Q :q<cr>

" Map save to Ctrl+S (old habbits die hard)
map <c-s> :call CustomSave()<CR>
map! <c-s> <ESC>:call CustomSave()<CR>
fun! CustomSave()
    if &readonly
        execute ":call SudoSave()"
    else
        execute ":w! "
    endif
    if (&ft == "php.html.js.css")
        execute ":! php -l %"
    endif
endfunction
fun! SudoSave()
    let doSave=input("sudo save? [y/n]: ")
    if (doSave == "y")
        execute ":w !sudo tee >/dev/null %"
    endif
endfunction

" Show cursor location (guidelines)
nnoremap <Leader>g :set cursorline! cursorcolumn!<CR>
