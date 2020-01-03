" Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_php_path = "/usr/bin/php"
let g:php_cs_fixer_rules = "@PSR2,@Symfony"
let g:php_manual_online_search_shortcut = "<leader><s-k>"
let g:snips_author = "Lukas Levickas @ Synergy Effect"

au FileType php noremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
au FileType php nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
au FileType php setl expandtab shiftwidth=4 softtabstop=4
au FileType php set colorcolumn=120
au FileType php nmap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
au FileType php nmap <c-]> :LspDefinition<CR>

au BufRead,BufNewFile *.php inoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-P> :call PhpDocRange()<CR>

function! NearestMethodOrFunction() abort
	let a = get(b:, 'vista_nearest_method_or_function', '')
	return empty(a) ? '' : '#'.a
endfunction

" TESTING
nmap <silent> tn :w<CR> :TestNearest<CR>
nmap <silent> tf :w<CR> :TestFile<CR>
nmap <silent> ts :w<CR> :TestSuite<CR>
nmap <silent> tl :w<CR> :TestLast<CR>
nmap <silent> tg :w<CR> :TestVisit<CR>
nmap <silent> tw :w<CR> :!php ./vendor/bin/codecept run wpunit %<CR>
nmap <silent> tww :w<CR> :!php ./vendor/bin/codecept run wpunit %:<cword><CR>
let test#php#codeception#options = '-f'
