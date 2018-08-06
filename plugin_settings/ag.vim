" Find word under cursor (Ag)
map <Leader>s :call FindText() <CR>

" Search for word object under cursor using Ag!
map <C-f> :ag <C-R><C-W><CR>

" Better searching with The Silver Searcher
if executable('ag')
  " Use ag over grep
  " set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --hidden -p ~/.agignore'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 1
endif

func! FindText()
  let v = visualmode()
  echo v
  " let cmd = 'Ag! '.v
  " execute cmd
endfunc
