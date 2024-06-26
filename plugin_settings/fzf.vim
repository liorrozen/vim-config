map <C-b> :Buffers<CR>
map <Leader>] :FZFMru<CR>
map <C-p> :FZF<CR>
nmap <C-d> <Plug>(fzf_tags)

"map <C-p> :call fzf#run({'source': 'git ls-files', 'sink': 'e'})<CR>
" map <C-p> :call fzf#run({'source': 'gl', 'sink': 'e'})<CR>

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'


command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction
