let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['buffer', 'tag', 'line', 'dir']
let g:ctrlp_open_multiple_files = 'v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/*,temp,temp/*
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
map <c-b> :CtrlPLastMode <CR>
