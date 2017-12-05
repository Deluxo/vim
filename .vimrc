syntax on filetype plugin indent on
filetype indent on

"CUSTOM MAPPINGS"
"editing"
let mapleader = '`'
nnoremap <c-_> :let @/ = ""<CR>

" Search & replace
nnoremap <leader>s :%sno/<c-r><c-w>//gc<Left><Left><Left>
vnoremap <leader>s :sno///g<Left><Left><Left>

" Copy dir path
map <leader>cp :let @+ = expand("%:p")
map <leader>cn :let @+ = expand("%:t")

" Move lines
vnoremap <s-j> :m '>+1<CR>gv=gv
vnoremap <s-k> :m '<-2<CR>gv=gv

" Save
nnoremap WW :wa<CR>

"window management"
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
map <F3> :set scb!<CR>
map QQ :bd<CR>

"usability"
nnoremap Q <Nop>
map <F11> : !ctags
map <Insert> :Gpush<CR>
map <Delete> :Gpull<CR>

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

set termguicolors

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

color ayu

"VIM-Plug
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'airblade/vim-gitgutter' | Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', {'for' : 'go'}
Plug 'Quramy/tsuquyomi', {'for': ['typescript', 'javascript']}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Quramy/vim-js-pretty-template', {'for': ['typescript', 'javascript']}
Plug 'jason0x43/vim-js-indent', {'for': ['typescript', 'javascript']}
call plug#end()
