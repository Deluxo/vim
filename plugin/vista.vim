map <F8> :Vista!!<CR>
let g:vista#renderer#enable_icon = 0
let g:vista_keep_fzf_colors = 1
let g:vista_echo_cursor_strategy = 'scroll'

autocmd FileType vista,vista_kind nnoremap <buffer> <silent> / :<c-u>call vista#finder#fzf#Run()<CR>

let g:vista_executive_for = {
			\ 'php': 'vim_lsp',
			\ }
function! NearestMethodOrFunction() abort
	let a = get(b:, 'vista_nearest_method_or_function', '')
	return empty(a) ? '' : '#'.a
endfunction
set statusline=%f\ %{NearestMethodOrFunction()}\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
