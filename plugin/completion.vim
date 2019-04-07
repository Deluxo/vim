let g:UltiSnipsExpandTrigger="<NUL>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
"let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"let g:SuperTabDefaultCompletionType = "context"

let g:ycm_semantic_triggers =  {
			\   'c': ['->', '.'],
			\   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
			\            're!\[.*\]\s'],
			\   'ocaml': ['.', '#'],
			\   'cpp,cuda,objcpp': ['->', '.', '::'],
			\   'perl': ['->'],
			\   'php': ['->', '::'],
			\   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
			\   'ruby,rust': ['.', '::'],
			\   'lua': ['.', ':'],
			\   'erlang': [':'],
			\ }
