call pathogen#infect()

set ts=2
set expandtab
" line numbers
set number
set incsearch
set hlsearch
set ignorecase
set showcmd
" buffer between cursor and scroll
set scrolloff=3
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

" <Right> to mathematically evaluate the current line
inoremap <Right> <Esc>V:!bc -l<Enter>
noremap <Right> V:!bc -l<Enter>

" Project-specific .vimrc files.
set exrc
set secure
