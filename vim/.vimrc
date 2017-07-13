if &compatible
    set nocompatible
endif

filetype off

" Plugins
execute pathogen#infect()

syntax on

filetype plugin indent on


let mapleader = ","

set modelines=0

set relativenumber
set number
set ruler
set visualbell
set encoding=utf-8

set wrap
" set textwidth=79
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

hi clear SignColumn

if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif

set t_Co=256
colorscheme base16-eighties
set background=dark

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


" Nerd tree
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>


" syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
 " let g:syntastic_c_include_dirs = ['.../include', '../include', 'include']
autocmd BufNewFile,BufRead *.asm set filetype=nasm

" delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
    au Filetype python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" superman
noremap K :SuperMan <cword><CR>

" tags
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctabs_warning = 1
nmap <silent> <leader>b :TagbarToggle<CR>


" base16
let base16colorspace=256


 " JsBeutify
map <c-f> :call JsBeautify()<cr>


" python
let python_highlight_all = 1
" let g:pymode_python = 'python3'

" better navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
