" ======================================================================
"  sixro vimrc
" ======================================================================


" =  Common Stuff  =====================================================

set mouse=a

set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set ts=4 sw=4
set softtabstop=4
set autoindent
set smartindent

set number!

set showmode
set ruler
set visualbell " no beeps
set wildmenu
" set cursorline "Hilight cursorline

set hidden


" =  Show column marker at 78  =========================================

nnoremap <Leader>c :set colorcolumn=78<cr>
nnoremap <Leader>nc :set colorcolumn-=78<cr>


" =  Theme  ============================================================

"set termguicolors
set background=light
colorscheme morning
hi Normal ctermbg=15 ctermfg=239
hi LineNr ctermfg=251
hi ColorColumn ctermbg=255
hi Number ctermfg=12
hi String ctermfg=5
hi Character ctermfg=13
hi Comment ctermfg=245
hi Todo ctermfg=6 ctermbg=15 cterm=bold
hi Keyword ctermfg=232 cterm=bold
hi Conditional ctermfg=232 cterm=bold
hi Repeat ctermfg=232 cterm=bold
hi Type ctermfg=232 cterm=bold
hi Statement ctermfg=232
hi PreProc ctermfg=232 cterm=bold
hi Constant ctermfg=232 ctermbg=15
hi Include ctermfg=232 cterm=bold
hi Define ctermfg=232

" Invisible character colors 
highlight NonText ctermfg=251 ctermbg=15
highlight SpecialKey ctermfg=251 ctermbg=15


" =  Invisible characters  =============================================

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>


" =  Netrw Setup  ======================================================

let g:netrw_banner = 0
let g:netrw_keepdir = 0
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_localcopydircmd = 'cp -r'
hi! link netrwMarkFile Search
nmap ` :Lexplore<CR>


" =  Debugger  =========================================================

" packadd termdebug


" =  C Programming  ====================================================

let sdk_path = system('xcrun --show-sdk-path | tr -d "\n"')
execute 'set path+=' . sdk_path . '/usr/include'
set path+=.
set path+=./include
set suffixesadd+=.h,.hpp,.c,.cpp


nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
