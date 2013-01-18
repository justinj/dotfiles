call pathogen#infect()

set ts=2
set expandtab
set number
set incsearch
set showcmd
set scrolloff=3
syntax on

let mapleader = ","

set smartcase
set smartindent
set shiftwidth=2
set clipboard=unnamed
filetype on
filetype plugin on
filetype indent on

set directory=$HOME/.vim/tmp//,.

" Control-Z => Save
noremap <C-Z> :w<Enter>

inoremap jk <ESC>

" Splits navigation
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

let NERDTreeIgnore = ['**/*\.[od]$']
