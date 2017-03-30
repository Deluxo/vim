syntax on
filetype plugin indent on
filetype indent on

"CUSTOM MAPPINGS"
"editing"
let mapleader = '`'
nnoremap <c-_> :let @/ = ""<CR>
nnoremap <leader>s :%sno/<c-r><c-w>//g<Left><Left>
vnoremap <leader>s :sno///g<Left><Left><Left>
vnoremap <s-j> :m '>+1<CR>gv=gv
vnoremap <s-k> :m '<-2<CR>gv=gv
nnoremap <Backspace> :w<CR>
nnoremap dD V$%d
nnoremap yY V$%y
"window management"
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
map <F3> :set scb!<CR>
map <F2> :Ack ""<Left>
map <leader><F2> :Ack "<c-r><c-w>"
map QQ :bd<CR>
"usability"
nnoremap Q <Nop>
map <F11> : !ctags
map <Insert> :Gpush<CR>
map <Delete> :Gpull<CR>
map <PageUp> :Obsession! ~/.vim/session.vim<CR>
map <PageDown> :source ~/.vim/session.vim<CR>

"SETTINGS"
"search"
set lazyredraw
set ignorecase
set smartcase
set incsearch
set hlsearch
"usability"
set viminfo+=n/tmp/viminfo
set noswapfile
set scrolloff=10
set relativenumber
set fileencodings=utf-8
set encoding=utf-8
set clipboard=unnamedplus
set mouse=a
set autoread
set autoindent
set smartindent
"presentability"
set wrap
set linebreak
set foldmethod=indent
set foldlevel=0
set nofoldenable
set list
set listchars=tab:│\ ,trail:•,eol:¬
set ttyfast
set cursorline
set synmaxcol=500
set t_Co=256
set wildmode=full
set wildmenu
set background=dark
set tabstop=4
set shiftwidth=4
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

"let g:kolor_italic=0
"let g:kolor_bold=1
"let g:kolor_underlined=1
"let g:kolor_alternative_matchparen=0
"colorscheme kolor

color delek
hi FoldColumn ctermbg=none
hi CursorLine cterm=none ctermbg=16
hi StatusLine ctermbg=0
hi StatusLineNC none ctermbg=0
hi VertSplit term=standout ctermfg=0
hi Tabline none
hi TablineSel ctermfg=15
hi TablineFill none
hi SpecialKey ctermfg=237
hi NonText ctermfg=239
hi ColorColumn ctermbg=237
hi DiffAdd ctermbg=2
hi DiffAdd ctermfg=0
hi DiffDelete ctermbg=1
hi DiffDelete ctermfg=0
hi DiffChange ctermbg=3
hi DiffChange ctermfg=0

"PATHOGEN"
execute pathogen#infect()
