" Enable syntax highlighting
syntax on

" tell vim I'm using a dark background
set background=dark

"Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, linebreaks, and start of insert
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" remaps escape to jk
inoremap jk <ESC>

" set leader key to comma
let mapleader=","

filetype plugin indent on
set encoding=utf-8

" Shortcut for nerdtree
map <C-n> :NERDTreeToggle<CR>

" Shortcut for Ctrlp
map <C-p> :CtrlP<CR>

execute pathogen#infect()

