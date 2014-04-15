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

" GitGutter
   nmap [h <Plug>GitGutterPrevHunk
   nmap ]h <Plug>GitGutterNextHunk

   noremap <C-N> :bnext<cr>
   noremap <C-B> :bprev<cr>

  noremap j gj
  noremap k gk
  noremap Y y$

  noremap <leader>s *N

  noremap <leader>n :next<cr>

  " clear highlights after search
  noremap <cr> :nohl<cr><cr>

  noremap <Leader>q :wa<Enter>:!./%<Enter>
  noremap <Leader>ev :vsplit $MYVIMRC<cr>
  noremap <Leader>ct :r !date +"\%A, \%B \%d, \%Y"<cr>kJyypVr-
  noremap <Leader>ra :w<cr>:Rake<cr>

  noremap <Leader>f :noremap <Leader>f:wa<cr>
augroup end
" }}}
" --- clisp --- {{{
augroup lisp
  autocmd!
  autocmd FileType lisp noremap <Leader>q :wa<cr>:!clisp %<cr>
augroup end
"
" }}}
" 
" --- ruby --- {{{
augroup ruby
  autocmd!
  autocmd FileType ruby noremap <Leader>re :wa<cr>:!rspec spec<cr>
  autocmd FileType ruby noremap <Leader>ri :wa<cr>:!rspec features<cr>
  " to specify a specific test
  autocmd FileType ruby noremap <Leader>rR :wa<cr>:!rspec . -e 
  autocmd FileType ruby noremap <Leader>ra :wa<cr>:Rake<cr>
  autocmd FileType ruby noremap <leader>t :wa<cr>:Rake test<cr>
  autocmd FileType ruby noremap <leader>y :wa<cr>:Rake features<cr>
  autocmd FileType ruby noremap <leader>q :wa<cr>:!ruby %<cr>
  autocmd FileType ruby noremap <leader>gf :vs Gemfile<cr>
augroup end

" }}}
"
" --- c --- {{{
augroup c
  autocmd!
  autocmd FileType c noremap <Leader>q :!gcc % -o output<cr>:!./output<cr>
augroup end
" }}}

" --- vim --- {{{
augroup vim
  autocmd!
  autocmd FileType vim noremap <Leader>t :wa<cr>:Rake test<cr>
augroup end
" }}}

" --- clojure --- {{{
augroup clojure
  autocmd!
  autocmd FileType clojure noremap <Leader>t :wa<Enter>:!lein test<cr>
  autocmd FileType clojure noremap <Leader>q :wa<Enter>:!time lein run<cr>
  autocmd FileType clojure noremap <Leader>e :Eval<cr>
  autocmd FileType clojure noremap <Leader>w :w<cr>:%Eval<cr>
augroup end

" }}}
" --- fugitive --- {{{
noremap <Leader>gs :Gstatus<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>gd :Gdiff<cr>

" }}}
" --- elixir --- {{{
augroup elixir
  autocmd!
  autocmd FileType elixir noremap <Leader>t :wa<cr>:Mtest<cr>
  autocmd FileType elixir noremap <Leader>q :wa<cr>:!elixir %<cr>
augroup end
" }}}

" --- Latex --- {{{
augroup latex
  autocmd!
  autocmd FileType tex noremap <Leader>m :wa<cr>:!pdflatex %&&evince %:r.pdf<cr><cr>
  autocmd FileType tex map <Leader>s ysiw$
augroup end
" }}}
" }}}

" == Basic Editing == {{{

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

colorscheme desert

set textwidth=79
set colorcolumn=80
highlight ColorColumn ctermbg=7

function! TodayTodo()
  let date=system("date +\"%b%d-%y\"")
  exec "vsplit ~/todo/".date
endfunction
noremap <leader>o :call TodayTodo()<cr>

set shell=/bin/bash

" call textobj#user#plugin('jsregex', {
" \   'around': {
" \     'pattern': '\/[^\n]*\/[gimy]*',
" \     'select': ['ae']
" \   },
" \   'in': {
" \     'pattern': '\/\zs[^\n]*\ze\/[gimy]*',
" \     'select': ['ie']
" \   }
" \ })
" 
