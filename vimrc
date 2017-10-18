set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

autocmd! BufWritePost ~/.vimrc so ~/.vimrc
source ~/.vim/bundles.vim


" == Mapping == {{{
let mapleader = ","


" --- general --- {{{
augroup general
  autocmd!

  noremap j gj
  noremap k gk
  noremap Y y$
  noremap <cr> :nohl<cr><cr>

  noremap <Leader>ev :vsplit $MYVIMRC<cr>
augroup end
" }}}
"

" --- fugitive --- {{{
noremap <Leader>gs :Gstatus<cr>
" }}}

" --- Latex --- {{{
augroup latex
  autocmd!
  autocmd FileType tex noremap <Leader>m :wa<cr>:!pdflatex %&&open %:r.pdf<cr><cr>
augroup end
" }}}

" --- Go --- {{{
augroup go
  autocmd!
  autocmd FileType go noremap <Leader><Leader>t :GoInfo<cr>
augroup end
" }}}



" == Basic Editing == {{{

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
" }}}

set backspace=2
set history=10000
set diffopt=filler,vertical

set shell=/bin/bash

let g:ctrlp_custom_ignore = 'node_modules/'
