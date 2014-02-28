set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'SuperTab'

execute pathogen#infect()
filetype plugin indent on
syntax on
colorscheme solarized
set clipboard=unnamed
set showmatch
set autoindent
set smartindent
set magic
set ignorecase
set backspace=2
set mouse=a
set incsearch
set hlsearch
set shiftwidth=4
set tabstop=4
set expandtab
filetype plugin on
filetype indent on

vmap > >gv
vmap < <gv
let mapleader=";"
nmap <Leader>/ :nohl<CR>
nmap <Leader>? :let @/ = ""<CR>
