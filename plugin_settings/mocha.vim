let g:mocha_js_command = "!$(npm bin)/mocha --recursive --no-colors {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
