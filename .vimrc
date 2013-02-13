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

syntax on
filetype plugin indent on
" End Vundle configuration

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['html']
let g:vundle_default_git_proto='https'
let mapleader=","

let g:NERDTreeDirArrows=0

set t_Co=256
colorscheme jdub
set colorcolumn=81
