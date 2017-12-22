"==============================================
" Colors
"==============================================

" Enable syntax processing
syntax enable 

" Latest awesome colorscheme
colorscheme badwolf  

"==============================================


"==============================================
" Spaces & Tabs
"==============================================

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in TAB when editing
set softtabstop=2

" TABs are spaces
set expandtab

"==============================================

"==============================================
" UI Config
"==============================================

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Load filetype-specific indent files. This turns
" filetype detection on and loads language-specific
" inedentation files based on that detection. For 
" example, I have a ruby identation file that lives 
" at ~/.vim/indent/ruby.vim which is loaded every
" tyime I open a *.rb file.
filetype indent on

" Stop vim from redrawing when it doesn't need to
" for example in the middle of a macro.
set lazyredraw

" Show matching [{()}] when editing
set showmatch

"==============================================

"==============================================
" Searching
"==============================================

" Search as I enter characters
set incsearch

" Highlight matching searches
set hlsearch

" Quickly turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

"==============================================

"==============================================
" Movement
"==============================================

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

"==============================================


"==============================================
" Leader Shortcuts
"==============================================

" Leader is comma
let mapleader=","

" jk is escape... thanks touchbar
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"==============================================
