if &compatible
  set nocompatible
endif

filetype off

" plugins
execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader=","

set modelines=0

set relativenumber
set number
set ruler
set visualbell
set encoding=utf-8
set noswapfile

set wrap
set formatoptions=tcqrn1
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

nnoremap j gj
nnoremap k gk
nnoremap ; :

set hidden
set ttyfast
set laststatus=2

set showmode
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set undodir=$HOME/.vim/undo
set undofile

hi clear SignColumn
set termguicolors

set t_Co=256
set background=dark
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
colorscheme onedark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
