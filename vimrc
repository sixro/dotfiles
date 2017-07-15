" ==  Commons  =========================================================

set nocompatible
set encoding=utf-8

" Avoid the need of save current buffer before switching to another
set hidden

set wildmenu

colorscheme koehler
set number numberwidth=5 relativenumber

syntax enable
filetype indent on
set autoindent
set tabstop=4
set showmatch
set hlsearch
set incsearch

" Improve performance of macros avoiding redrawing continuosly
set lazyredraw

" ==  Learning Improvement  ============================================

" Disable Arrow keys in Escape and Insert mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" ==  Windows Environment  =============================================

" Disable the fuck*** bell
set visualbell
