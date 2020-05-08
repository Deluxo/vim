" Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_php_path = "/usr/bin/php"
let g:php_cs_fixer_rules = "@PSR2,@Symfony"
let g:snips_author = "Lukas Levickas @ Synergy Effect"

au FileType php noremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
au FileType php nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
au FileType php setl expandtab shiftwidth=4 softtabstop=4
au FileType php set colorcolumn=120
au FileType php nmap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
au FileType php syntax clear phpHereDoc
au FileType php syntax clear phpFloat

" TESTING
nmap <silent> tn :w<CR> :TestNearest<CR>
nmap <silent> tf :w<CR> :TestFile<CR>
nmap <silent> ts :w<CR> :TestSuite<CR>
nmap <silent> tl :w<CR> :TestLast<CR>
nmap <silent> tg :w<CR> :TestVisit<CR>
nmap <silent> tw :w<CR> :!php ./vendor/bin/codecept run wpunit %<CR>
nmap <silent> tww :w<CR> :!php ./vendor/bin/codecept run wpunit %:<cword><CR>
let test#php#codeception#options = '-f -v'
