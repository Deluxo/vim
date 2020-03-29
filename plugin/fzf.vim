nnoremap <c-f> :Files<CR>
nnoremap <c-b> :Buffers<CR>
nnoremap <leader>bt :BTags<CR>
nnoremap <c-g> :Ag! <c-r><c-w>

let g:fzf_history_dir = '~/.local/share/fzf-history'
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }

"command! -bang -nargs=* Ag
"  \ call fzf#vim#ag(<q-args>,
"  \                 <bang>0 ? fzf#vim#with_preview('up:80%')
"  \                         : fzf#vim#with_preview('up:80%:hidden', '?'),
"  \                 <bang>0)
