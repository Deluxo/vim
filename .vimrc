syntax on
filetype plugin indent on
let g:loaded_matchparen = 1


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
map <F2> :set wrap!<CR>
map QQ :bd<CR>

nnoremap <silent> <Leader>wk :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>wj :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>wl :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>wh :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

"quickfix
nnoremap cn :cnext<CR>
nnoremap cN :cprevious<CR>

"usability"
nnoremap Q <Nop>
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
set sidescroll=1
set sidescrolloff=40
set relativenumber
set fileencodings=utf-8
set encoding=utf-8
set clipboard=unnamedplus
set mouse=a
set autoread
set autoindent
set smartindent

"presentability"
set redrawtime=2000
syntax sync fromstart
set wrap!
set linebreak
set foldmethod=indent
set foldlevel=10
"set nofoldenable
set list
set listchars=tab:│\ ,trail:•,eol:¬
set fillchars+=vert:│
set ttyfast
"set cursorline
set synmaxcol=500
set t_Co=256
set wildmode=full
set wildmenu
set tabstop=4
set shiftwidth=4
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set background=dark
set termguicolors

let ayucolor="mirage"
let g:fzf_session_path = $HOME . '/.vim/session'
let test#enabled_runners = ["php#codeception", "php#phpunit"]
let g:palenight_terminal_italics=1

if !exists('g:vdebug_options')
	let g:vdebug_options = {}
endif

let g:vdebug_options.port = 9002

let g:coc_global_extensions = [
      \'coc-css',
      \'coc-cssmodules',
      \'coc-docker',
      \'coc-explorer',
      \'coc-flow',
      \'coc-git',
      \'coc-highlight',
      \'coc-html',
      \'coc-json',
      \'coc-markdownlint',
      \'coc-phpls',
      \'coc-spell-checker',
      \'coc-cspell-dicts',
      \'coc-svg',
      \'coc-tsserver',
      \'coc-ultisnips',
      \'coc-vetur',
      \'coc-yaml'
      \]

"VIM-Plug
call plug#begin('/home/lukas/.vim/plugged')

Plug 'airblade/vim-gitgutter' | Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'janko/vim-test'
Plug 'dominickng/fzf-session.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}


" SNIPPETS
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" PHP
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php', 'do': 'composer install'}
Plug 'vim-vdebug/vdebug', {'for': 'php'}

" COLOR
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

" MARKDOWN
Plug 'godlygeek/tabular'

call plug#end()

colorscheme palenight

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
hi SignColumn ctermbg=none guibg=NONE
hi Normal ctermbg=none guibg=NONE

" Wayland clipboard workaround
vmap <silent> <leader>y y:call system("wl-copy", @@)<CR>
