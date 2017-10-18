set nocompatible
filetype off

packadd minpac
call minpac#init()

call minpac#add('gmarik/vundle')
call minpac#add('bling/vim-airline')
call minpac#add('kien/ctrlp.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-abolish')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-projectionist')
call minpac#add('rking/ag.vim')
call minpac#add('fatih/vim-go')

autocmd! BufWritePost ~/.vimrc so ~/.vimrc


" == Mapping == {{{
let mapleader = ","


" --- general ---
augroup general
  autocmd!

  noremap j gj
  noremap k gk
  noremap Y y$
  noremap <cr> :nohl<cr><cr>

  noremap <Leader>ev :vsplit $MYVIMRC<cr>
augroup end

" --- fugitive ---
noremap <Leader>gs :Gstatus<cr>

" --- Latex ---
augroup latex
  autocmd!
  autocmd FileType tex noremap <Leader>m :wa<cr>:!pdflatex %&&open %:r.pdf<cr><cr>
augroup end

" --- Go ---
augroup go
  autocmd!
  autocmd FileType go noremap <Leader><Leader>t :GoInfo<cr>
augroup end



" == Basic Editing ==

set noswapfile
set ts=2
set expandtab
set number
set incsearch
set hlsearch
set ignorecase
set scrolloff=10
set foldmethod=marker
syntax on
set hidden
set smartcase
set smartindent
set shiftwidth=2
set laststatus=2
filetype on
filetype plugin on
filetype indent on
set completeopt=longest,menuopt

set backspace=2
set history=10000
set diffopt=filler,vertical

set shell=/bin/bash

let g:ctrlp_custom_ignore = 'node_modules/'
