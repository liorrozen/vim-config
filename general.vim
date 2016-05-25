" Behavior
" =======
set nocompatible		        " disable vi backwards compatibilty
set backspace=indent,eol,start 	  	" fixes backspace & del behavior
set timeoutlen=1000 ttimeoutlen=0 	" No delay for ESC
nmap Q <nop>				" disable ex mode prompt
set ttymouse=xterm2
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
autocmd BufWritePre * :%s/\s\+$//e " Remove any and all trailing whitespace

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Folding
" ======
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1         "this is just what i use
set foldlevelstart=100  " keep first 100 levels of folds open as default
set nofoldenable        " don't enable folds till they are interacted with

" Search
" ======
set ignorecase			        " case insensitive search
set smartcase			        " case sensitive if uppercase
set incsearch			        " move the cursor to first result
set showmatch 	" Show matching brackets.

" Ensure syntax highlighting & filetype detecton are turned on
syntax on
filetype plugin indent on
