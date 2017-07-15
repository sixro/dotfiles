" ==  Commons  =========================================================

set nocompatible
syntax enable
filetype plugin on
filetype indent on

set encoding=utf-8

let mapleader=","

" Avoid the need of save current buffer before switching to another
set hidden

set wildmenu

colorscheme koehler
set number numberwidth=5 relativenumber

set autoindent
set tabstop=4
set showmatch

" Search
set hlsearch
set incsearch
nnoremap <Leader><Space> :nohlsearch<CR>

" Improve performance of macros avoiding redrawing continuosly
set lazyredraw

set foldenable


" ==  Learning Improvement  ============================================

" Disable Arrow keys in Escape and Insert mode
map <Up>    <Nop>
map <Down>  <Nop>
map <Left>  <Nop>
map <Right> <Nop>
imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>


" ==  Windows Environment  =============================================

" Disable the fuck*** bell
set visualbell


" ==  Development  =====================================================

set path=$PWD/**
