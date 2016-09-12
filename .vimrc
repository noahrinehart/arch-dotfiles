set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start
set hidden
set incsearch
set laststatus=2
set ruler
set exrc
set secure
set mouse=a

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END



