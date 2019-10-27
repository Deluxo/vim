syntax on
filetype plugin indent on

"CUSTOM MAPPINGS"
"editing"
let mapleader = '`'
nnoremap <c-_> :let @/ = ""<CR>
"inoremap <space><space> <C-[> \| :wa<CR>
"vnoremap <space><space> <C-[> \| :wa<CR>

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
noremap WW :w<CR>

" Fold everything except current line
nnoremap <leader>zv :normal mazMzv`a<CR><bar>:normal zO<CR>

"window management"
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
map <F3> :set scb!<CR>
map QQ :bd<CR>

nnoremap <silent> <Leader>wk :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>wj :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>wl :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>wh :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

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
set redrawtime=10000
set wrap
set linebreak
set foldmethod=indent
set foldlevel=0
"set nofoldenable
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
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set termguicolors
"let ayucolor="mirage" " for mirage version of theme
"color ayu
color gruvbox-material

"VIM-Plug
call plug#begin('/home/lukas/.vim/plugged')
Plug 'airblade/vim-gitgutter' | Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" LSP & ASYNCOMPLETE
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-flow.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'prabirshrestha/asyncomplete-gocode.vim'
Plug 'runoshun/tscompletejob'

" SNIPPETS
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" PHP
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php', 'do': 'composer install'}
Plug 'felixfbecker/php-language-server', {'for': 'php_i_dont_want_it_to_run', 'do': 'composer install --do-dev'}
Plug 'alvan/vim-php-manual', {'for': 'php'}
Plug 'janko/vim-test', {'for': 'php'}

" MARKDOWN
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" COLOR
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'

call plug#end()
