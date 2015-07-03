set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'

call vundle#end()
filetype plugin indent on
syntax enable
set background=light
colorscheme solarized
set showmatch
set autoindent
set smartindent
set magic
set ignorecase
set backspace=2
set mouse=a
set incsearch
set hlsearch
set shiftwidth=2
set tabstop=2
set expandtab

vmap > >gv
vmap < <gv
let mapleader=";"
nmap <Leader>d :NERDTree<CR>
nmap <Leader>s :set paste<CR>
nmap <Leader>/ :nohl<CR>
nmap <Leader>? :let @/ = ""<CR>
