" ========
" Mappings
" ========

nnoremap <c-=> <C-a>
nnoremap <c--> <C-x>

" Select entire line excluding new lines
nnoremap t gt
nnoremap T gT

" Select entire line excluding new lines
nnoremap <leader>v 0vg_

" Select entire file
nnoremap <leader>a ggVG

" " When autocomplete popup is open, enter just inserts selected item
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
nnoremap <leader>ev :e $MYVIMRC<cr>
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
nnoremap ,a :wa<CR>
nnoremap ,, :w<CR>
nnoremap ,w :w<CR>
" Faster closing of buffers
noremap Q :q<cr>

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

" Toggle paste mode with F3 (turns off auto indent)
set pastetoggle=<F3>
