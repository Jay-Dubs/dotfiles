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
Bundle 'git@github.com:mileszs/ack.vim'
Bundle 'git@github.com:kien/ctrlp.vim'
Bundle 'git@github.com:scrooloose/nerdtree'
Bundle 'git@github.com:scrooloose/syntastic'
Bundle 'git@github.com:ervandew/supertab'
Bundle 'git@github.com:Lokaltog/vim-powerline'
Bundle 'git@github.com:tpope/vim-surround'

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
