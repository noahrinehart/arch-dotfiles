set nocompatible
filetype off

" Plugins
execute pathogen#infect()

syntax on
filetype plugin indent on

set modelines=0

set relativenumber
set number
set ruler
set visualbell
set encoding=utf-8

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
set mouse=

set undofile
set undodir=$HOME/.vim/undo

if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Theme
set t_Co=256
colorscheme onedark
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

hi clear SignColumn

" Keybinds
let mapleader = ","
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ; :


nnoremap <F5> :UndotreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>f :NERDTreeToggle<CR>


" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

autocmd BufNewFile,Bufread *.s set ft=nasm

" Plugin settings
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

