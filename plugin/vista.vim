map <F8> :Vista!!<CR>
let g:vista#renderer#enable_icon = 0
let g:vista_keep_fzf_colors = 1
let g:vista_echo_cursor_strategy = 'scroll'

autocmd FileType vista,vista_kind nnoremap <buffer> <silent> / :<c-u>call vista#finder#fzf#Run()<CR>
