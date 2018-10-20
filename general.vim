" Behavior
" =======
set nocompatible		        " disable vi backwards compatibilty
set backspace=indent,eol,start 	  	" fixes backspace & del behavior
set timeoutlen=1000 ttimeoutlen=0 	" No delay for ESC
nmap Q <Nop> " disable ex mode prompt
nmap K <Nop> " disable lookup man page for word under cursor
if has("mouse_sgr")
    set ttymouse=sgr " fixes mouse selection beyond column 222 in xterm
else
    set ttymouse=xterm2
end
set autoread 	" Automatically reload files that have been changed outside of Vim
set confirm 	" confirm before exiting if files have not been saved
set hidden 	" Hide buffers when they are abandoned

" UI
" ===
set number				" show line numbers (disable with nonumber)
set mouse=a				" enable mouse (disble with mouse= )
set laststatus=2
set encoding=utf-8 " Necessary to show Unicode glyphs
set statusline=%f     " show relative path in status line
let g:netrw_liststyle=3       " Explore set to tree view
set completeopt=longest,menuone " doesn't select first item; insert longest common text; always show menu
set sidescroll=1
set t_Co=256 " 256 colors
set t_ut= " disable Background Color Erase
set listchars+=space:␣ " also display space characters with :set list

" Settings for GUI version of Vim
set guioptions-=T 			" Remove toolbar
set guioptions+=mbr 		" Add menubar, bottom and right side scrollbars

" first tab completed to the longest common match, or full match,
" second tab completed to show list of all matches,
" third tab starts to cycle through matches
set wildmode=longest,list,full
set wildmenu

" The following command scrolls the text so that (when possible) there are always at least
" five lines visible above the cursor, and five lines visible below the cursor.
" This option is available to all commands
set scrolloff=5

" Editing
" =======
set tabstop=2 " how many columns is a tab space
set shiftwidth=2 " indentation with the << and >> mappings
set softtabstop=2 " columns to insert when pressing tab in insert mode
set expandtab " converts tabs to spaces
" set smarttab
set nowrap " don't use word wrap
set textwidth=0 " if word wrap is enabled, this is the max character length
set indentkeys-=<:> " Don't indent after typing a colon (annoying!!!)
set nospell " Spell checker defaults to off
set spellfile=~/.vim/myspell.utf-8.add

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces() " Remove any and all trailing whitespace
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun


" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" " Keep undo history across sessions by storing it in a file
" if has('persistent_undo')
"     let myUndoDir = expand($HOME.'/.vim' . '/undodir')
"     " Create dirs
"     call system('mkdir ' . myUndoDir)
"     let &undodir = myUndoDir
"     set undofile
" endif

" Folding
" ======
set foldmethod=indent
set foldnestmax=1
set foldlevel=1

" Search
" ======
set ignorecase			        " case insensitive search
set smartcase			        " case sensitive if uppercase
set incsearch			        " move the cursor to first result
set showmatch 	" Show matching brackets.

" Backups
" =======
set nobackup
set noswapfile

" Ensure syntax highlighting & filetype detecton are turned on
syntax on
filetype plugin indent on
