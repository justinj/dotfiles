set nocompatible
filetype off

packadd minpac
call minpac#init()

call minpac#add('gmarik/vundle')
call minpac#add('itchyny/lightline.vim')
call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-abolish')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-projectionist')
call minpac#add('rking/ag.vim')
call minpac#add('fatih/vim-go')
call minpac#add('pangloss/vim-javascript')
call minpac#add('prettier/vim-prettier', { 'for': ['javascript'] })
call minpac#add('qpkorr/vim-renamer')

call minpac#add('mhartington/oceanic-next')
colorscheme OceanicNext

autocmd! BufWritePost ~/.vimrc so ~/.vimrc

let g:lightline = {
      \ 'active': {
      \ 'left': [ ['mode', 'paste'],
      \           [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'fugitive#head'
      \ },
      \ }

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
  noremap <C-P> :FZF<cr>
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


" --- Cockroach ---
function! s:TestLogic(args)
  let output = tempname()
  exec "silent !make testlogic TESTFLAGS=\"\" FILES=\"".a:args."\" \| tee ".output
  if match(readfile(output),"^FAIL$") >= 0
    exec "vsplit ".output
    setlocal nowrap
    setlocal nomodifiable
  endif
endfunction
command! -nargs=* TestLogic call s:TestLogic("<args>")
command! -nargs=* TL call s:TestLogic("<args>")

function! s:TestLogicRewrite(args)
  let output = tempname()
  exec "silent !make testlogic TESTFLAGS=\"-rewrite-results-in-testfiles\" FILES=\"".a:args."\" \| tee ".output
  if match(readfile(output),"^FAIL$") >= 0
    exec "vsplit ".output
    setlocal nowrap
    setlocal nomodifiable
  endif
endfunction
command! -nargs=* TLR call s:TestLogicRewrite("<args>")

let s:packages = {
      \ 'parser': 'pkg/sql/parser',
      \ 'json': 'pkg/util/json',
      \ 'cli': 'pkg/cli',
      \ 'sqlbase': 'pkg/sql/sqlbase',
      \}

function! s:CRTest(pkg, ...)
  let pkgname = s:packages[a:pkg]
  let test = (a:0 >= 1) ? a:1 : "."
  exec "silent !make test PKG=./".pkgname." TESTS=".test
endfunction
command! -nargs=* Test call s:CRTest(<f-args>)
command! -nargs=* T call s:CRTest(<f-args>)

function! s:CRBench(pkg, ...)
  let pkgname = s:packages[a:pkg]
  let test = (a:0 >= 1) ? a:1 : "."
  exec "silent !make bench PKG=./".pkgname." BENCHES=".test
endfunction
command! -nargs=* Bench call s:CRBench(<f-args>)
command! -nargs=* B call s:CRBench(<f-args>)


" == Basic Editing ==

set noshowmode
set noswapfile
set ts=2
set expandtab
" let's get wild
" set number
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
set completeopt=longest,menuone

set backspace=2
set history=10000
set diffopt=filler,vertical

set shell=/bin/bash

let g:ctrlp_custom_ignore = 'node_modules/'

let g:prettier#autoformat = 0
" autocmd BufWritePre *.js Prettier
