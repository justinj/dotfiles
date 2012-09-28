set ts=2
set expandtab
set number
set incsearch
syntax on

set smartcase
set smartindent
set shiftwidth=2
set clipboard=unnamed
filetype on
filetype indent on

" Control-R => Run current file
noremap <C-R> :w<Enter>:!./%<Enter>

" Control-A => Run tests
noremap <C-A> :w<Enter>:!rspec .<Enter>

" Control-Z => Save
noremap <C-Z> :w<Enter>


" Splits navigation
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
