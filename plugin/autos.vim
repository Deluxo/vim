"AUTO SETTINGS"
"general"
"function! DeleteEmptyBuffers()
	"let [i, n; empty] = [1, bufnr('$')]
	"while i <= n
		"if bufexists(i) && bufname(i) == ''
			"call add(empty, i)
		"endif
		"let i += 1
	"endwhile
	"if len(empty) > 0
		"exe 'bdelete' join(empty)
	"endif
"endfunction
"au BufHidden call DeleteEmptyBuffers()

au FileType php setl expandtab shiftwidth=4 softtabstop=4
au FileType php set colorcolumn=120
au FileType go map <F9> :GoFmt<CR>
