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
map QQ :bd<CR>

nnoremap <silent> <Leader>wk :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>wj :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>wl :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>wh :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

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

set termguicolors
let test#enabled_runners = ["php#codeception", "php#phpunit"]
set background=dark
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_palette = 'original'
let ayucolor="mirage"
let g:edge_transparent_background = 1
let g:forest_night_transparent_background = 1

let g:dracula_colorterm = 0
let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_underline = 1
let g:dracula_undercurl = 1
let g:dracula_inverse = 1
let base16colorspace=256


let g:coc_global_extensions = [
      \'coc-css',
      \'coc-cssmodules',
      \'coc-docker',
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
      \'coc-tailwindcss',
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

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" SNIPPETS
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" PHP
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php', 'do': 'composer install'}

" COLOR
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'altercation/vim-colors-solarized'
Plug 'artanikin/vim-synthwave84'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/edge'
Plug 'sainnhe/forest-night'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'

" MARKDOWN
Plug 'godlygeek/tabular'

call plug#end()

color base16-dracula

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" Wayland clipboard workaround
vmap y y<CR>:call system("wl-copy", @")<CR>
