set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'ayu',
    \ 'active': {
    \   'left': [['mode'], ['readonly', 'filename', 'modified'], ['tagbar', 'gutentags']],
    \   'right': [['lineinfo'], ['filetype']]
    \ },
    \ 'inactive': {
    \   'left': [['absolutepath']],
    \   'right': [['lineinfo'], ['filetype']]
    \ },
    \ 'component': {
    \   'lineinfo': '%l\%L [%p%%], %c, %n',
    \   'tagbar': '%{tagbar#currenttag("[%s]", "", "f")}',
    \   'gutentags': '%{gutentags#statusline("[Generating...]")}',
    \ },
    \ }
