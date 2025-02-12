"=============================================================================
"
" Description: .vimrc for exhina
"
"=============================================================================

" Basic Setting ---------------------------------------------------------------- {{{

" Add numbers to each line on the left-hand side. "
set number

" Turn syntax highlighting on. "
syntax on

" Disable compatibility with vim which can cause unexpected issues. "
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use. "
filetype on

" Enable plugins and load plugin for detected file type. "
filetype plugin on

" Load an indent file for the detected file type. " 
filetype indent on
" Set tab/indent as width(4). "
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Highlight cursor line underneath the cursor horizontally. "
set cursorline
" Highlight cursor line underneath the cursor vertically. "
set nocursorcolumn

" Do not wrap lines. "
set nowrap

" Ignore captial letters during serach. "
set ignorecase
" Show matching words during a search. "
set showmatch
" Use highlighting when doing a search. "
set hlsearch

" Set the commands to save in history default number is 20. "
set history=1000

" Enable auto completion menu after presing TAB. "
set wildmenu
" Make wildmenu behave like similar to Bash completion. "
set wildmode=list:longest
" There are certain files that we would never want to edit with vim. "
set wildignore=*.docx,*.jpg

colorscheme molokai

" }}}


" PLUGINS ---------------------------------------------------------------- {{{
"
" Plugin code goes here.
"
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Type jj to exit insert mode quickly. "
inoremap jj <Esc>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
