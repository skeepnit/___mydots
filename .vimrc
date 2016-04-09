syntax on
set number

filetype off " required by vundle

call vundle#rc()

" Spaces are better than a tab char
set expandtab
set smarttab
" No super long char tab
set shiftwidth=3
set softtabstop=3

" Highlight search results
set hlsearch

" When tab is closed remove buffer
set nohidden

" show line number on status bar
set ruler

" highlighting of the current line
"set cursorline
" adjusting color
" hi CursorLine term=none cterm=none ctermbg=3

set scrolloff=5 " keep at least 5 lines above/below

" remapping commandline mode : and ;
nore ; :
nore , ;

set nocompatible " be iMproved
filetype on
filetype plugin indent on " required by vundle
set title
set mouse=a
set modeline
set modelines=5
set background=dark
set hidden     " for quick buffer switching
set confirm    " ask instead of just printing errors
set showmode   " i really need to see it
set laststatus=2  " always show status

