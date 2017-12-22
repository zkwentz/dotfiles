"==============================================
" Colors {{{
"==============================================

" Enable syntax processing
syntax enable 

" Latest awesome colorscheme
colorscheme badwolf  

" }}}
"==============================================

"==============================================
" Spaces & Tabs {{{
"==============================================

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in TAB when editing
set softtabstop=2

" TABs are spaces
set expandtab

" }}}
"==============================================

"==============================================
" UI Config {{{
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

" }}}
"==============================================

"==============================================
" Folding {{{
"==============================================

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnextmax=10

" Space open/closes folds
nnoremap <space> za

" Fold based on indent level
set foldmethod=indent

" }}}
"==============================================

"==============================================
" Searching {{{
"==============================================

" Search as I enter characters
set incsearch

" Highlight matching searches
set hlsearch

" }}}
"==============================================

"==============================================
" Movement {{{
"==============================================

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

" }}}
"==============================================

"==============================================
" Leader Shortcuts {{{
"==============================================

" Leader is comma
let mapleader=","

" jk is escape... thanks touchbar
inoremap jk <esc>
inoremap kj <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Quickly turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Open ag.vim
nnoremap <leader>a :Ag

" }}}
"==============================================

"==============================================
" CtrlP Settings {{{
"==============================================

" Order matching files from top to bottom
let g:ctrlp_match_window = 'bottom,order:ttb'

" Always open file sin new buffers
let g:ctrlp_switch_buffer = 0

" Change the working directory when we open a file
let g:ctrlp_working_path_mode = 0

" Search with silver searcher
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" }}}
"==============================================

"==============================================
" Launch Config {{{
"==============================================

" Use Pathogen
call pathogen#infect()

" Extract all vim plugins from ~/.vim/bundle
call pathogen#runtime_append_all_bundles()

" }}}
"==============================================

"==============================================
" Backups Config {{{
"==============================================

" Enable backups
set backup
set writebackup

" Change the backup director from current directory to tmp
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Don't backup in backup directories
set backupskip=/tmp/*,/private/tmp/*

" }}}
"==============================================

"==============================================
" Custom Functions {{{
"==============================================

" toggle between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction

" strip trailing whitespace at the end of files.
" this is called on buffer write in the autogroup
" below
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" }}}
"==============================================

"==============================================
" Autogroup Commands {{{
"==============================================

augroup configgroup
  autocmd!
  autocmd VimEnter * highlight clear SignColumn
  autocmd BufWritePre *.php,*.py,*.js,*.txt,*.sh,*.java,*.md,*.rb
              \:call <SID>StripTrailingWhitespaces()
  autocmd FileType ruby setlocal expandtab
  autocmd FileType ruby setlocal tabstop=2
  autocmd FileType ruby setlocal shiftwidth=2
  autocmd FileType ruby setlocal softtabstop=2
  autocmd FileType ruby setlocal commentstring=#\ %s
  autocmd BufEnter *.sh setlocal tabstop=2
  autocmd BufEnter *.sh setlocal shiftwidth=2
  autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" }}}
"==============================================

"==============================================
" Organization {{{
"==============================================

" Use special comment as file specific settings 
" for organization, this settings says, look
" only at the last line.
set modelines=1

"}}}
"==============================================

" vim:foldmethod=marker:foldlevel=0
