set mouse=a
set ts=2
set backspace=2
set expandtab
set shiftwidth=2
set smarttab
set autoindent
set number
set hlsearch
set incsearch
set showmatch
set nocompatible

syntax on

" Vundle configuration
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle packages
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'

filetype plugin indent on
" End Vundle configuration

let mapleader=","
let g:NERDTreeDirArrows=0

set t_Co=256
colorscheme jdub
set colorcolumn=81
