set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on     " required!

set ts=2
set expandtab
" line numbers
set number
set incsearch
set hlsearch
set ignorecase
set showcmd
" buffer between cursor and scroll
set scrolloff=10
syntax on

set smartcase
set smartindent
set shiftwidth=2
filetype on
filetype plugin on
filetype indent on



set directory=$HOME/.vim/tmp//,.

" Control-Z => Save
noremap <C-Z> :w<Enter>

" Splits navigation
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l

noremap j gj
noremap k gk


let NERDTreeIgnore = ['**/*\.{[od],pyc}$']
nnoremap <silent> + :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winwidth(0) * 2/3)<CR>

noremap <Left> <NOP>
noremap <Down> <NOP>
noremap <Up> <NOP>
noremap <Right> <NOP>

" Just an experiment

noremap h <NOP>
noremap l <NOP>

let mapleader = ","

map <Leader>r :wa<Enter>:!rspec .<Enter>
map <Leader>R :wa<Enter>:!rspec . -e 

map <Leader>l :wa<Enter>:!rspec . -e<Up><Enter>


" Project-specific .vimrc files.
set exrc
set secure
