let g:UltiSnipsExpandTrigger="<NUL>"
let g:UltiSnipsJumpForwardTrigger="<NUL>"
let g:UltiSnipsJumpBackwardTrigger="<Up>"

call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
			\ 'name': 'omni',
			\ 'whitelist': ['*'],
			\ 'blacklist': ['html'],
			\ 'completor': function('asyncomplete#sources#omni#completor')
			\  }))

call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
			\ 'name': 'ultisnips',
			\ 'whitelist': ['*'],
			\ 'completor': function('asyncomplete#sources#ultisnips#completor'),
			\ }))
