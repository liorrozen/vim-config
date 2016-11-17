" ========
" Mappings
" ========

" Select entire line excluding new lines
nnoremap <leader>v 0vg_

" Select entire file
nnoremap <leader>a ggVG

" When autocomplete popup is open, enter just inserts selected item
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Always open tselect buffer if there is more than one matching tag
map <C-]> g<C-]>

" navigate quickfix locations
nmap ]q :lnext<cr>
nmap [q :lprevious<cr>

" navigate location list
nmap ]w :cnext<cr>
nmap [w :cprevious<cr>

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

" Toggle spell checker with <LEADER>sp
function! g:ToggleSpell()
  if &spell == 0
    " turn spell on
    set spell spelllang=en_us
  else
    " turn spell off
    set nospell
  endif
endfunction
nnoremap <silent><LEADER>sp :call g:ToggleSpell()<cr>

" use Shift+L to toggle relative/normal line numbering
function! g:ToggleNuMode()
  if &nu == 1
    " relative line numbers on
    set rnu
    set nonu
  else
    set nu
    " relative line numbers off
    set nornu
  endif
endfunction
nnoremap <silent><S-L> :call g:ToggleNuMode()<cr>

" Show cursor location (guidelines)
nnoremap <Leader>g :set cursorline! cursorcolumn!<CR>

" Jump list mappings
" go back in jump list
map ,o <C-o>
" go forwards in jump list
map ,i <C-i>

" Sync syntax highlighting
noremap <F5> <Esc>:syntax sync fromstart<CR>
inoremap <F5> <C-o>:syntax sync fromstart<CR>

" Insert newline between comma seperated values
nmap <LEADER>j :s/,/,\r/g
