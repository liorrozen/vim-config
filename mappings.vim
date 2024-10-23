" ========
" Mappings
" ========

nnoremap <leader>h :History<cr>

nnoremap <c-=> <C-a>
nnoremap <c--> <C-x>

" Select entire line excluding new lines
nnoremap <leader>v 0vg_

" Select entire file
nnoremap <leader>a ggVG

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
imap [e <Esc>:m+<CR>==gi
vmap [e :m'>+<CR>gv=`<my`>mzgv`yo`z

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

nmap t :tabnext<cr>
nmap T :tabprevious<cr>
