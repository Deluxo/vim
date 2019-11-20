" LSP GENERALs
"let g:lsp_log_verbose = 1
"let g:lsp_log_file = expand('~/vim-lsp.log')
let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_fold_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
let g:lsp_signs_hint = {'text': '#'}
let g:lsp_highlight_references_enabled = 1
let g:lsp_highlights_enabled = 1
let g:lsp_textprop_enabled = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_popup_delay = 500

" LANGUAGES

"https://github.com/prabirshrestha/vim-lsp/wiki/Servers-PHP
"au User lsp_setup call lsp#register_server({
"			\ 'name': 'intelephense',
"			\ 'cmd': {server_info->['node', expand('/home/lukas/.config/yarn/global/node_modules/intelephense/lib/intelephense.js'), '--stdio']},
"			\ 'initialization_options': {"storagePath": "/tmp/intelephense"},
"			\ 'whitelist': ['php'],
"			\ })

" Plug 'https://github.com/felixfbecker/php-language-server'
au User lsp_setup call lsp#register_server({
			\ 'name': 'phpLanguageServer',
			\ 'cmd': {server_info->['php', '/home/lukas/.vim/plugged/tenkawa-php-language-server/bin/tenkawa.php']},
			\ 'whitelist': ['php'],
			\ })

" Plug 'https://github.com/felixfbecker/php-language-server'
"au User lsp_setup call lsp#register_server({
"			\ 'name': 'phpLanguageServer',
"			\ 'cmd': {server_info->['php', '/home/lukas/.vim/plugged/php-language-server/bin/php-language-server.php']},
"			\ 'whitelist': ['php'],
"			\ })

" Plug 'prabirshrestha/asyncomplete-flow.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
			\ 'name': 'flow',
			\ 'whitelist': ['javascript'],
			\ 'completor': function('asyncomplete#sources#flow#completor'),
			\ 'config': {
			\    'prefer_local': 1,
			\    'show_typeinfo': 1
			\  },
			\ }))

" Plug 'prabirshrestha/asyncomplete-file.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
			\ 'name': 'file',
			\ 'whitelist': ['*'],
			\ 'priority': 10,
			\ 'completor': function('asyncomplete#sources#file#completor')
			\ }))

" Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
			\ 'name': 'tscompletejob',
			\ 'whitelist': ['typescript', 'javascript'],
			\ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
			\ }))

" Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
			\ 'name': 'ultisnips',
			\ 'whitelist': ['*'],
			\ 'completor': function('asyncomplete#sources#ultisnips#completor'),
			\ }))

" Plug 'prabirshrestha/asyncomplete-gocode.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
			\ 'name': 'gocode',
			\ 'whitelist': ['go'],
			\ 'completor': function('asyncomplete#sources#gocode#completor'),
			\ }))

" https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Docker
if executable('docker-langserver')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'docker-langserver',
				\ 'cmd': {server_info->[&shell, &shellcmdflag, 'docker-langserver --stdio']},
				\ 'whitelist': ['dockerfile'],
				\ })
endif

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"autocmd CursorHold *.php,*.twig,*.js,*.ts silent! LspHover

nnoremap <leader><space> :silent! LspHover<CR>
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

set completeopt+=preview
set updatetime=1000

"set foldmethod=expr
			"\ foldexpr=lsp#ui#vim#folding#foldexpr()
			"\ foldtext=lsp#ui#vim#folding#foldtext()
