syntax on                       " Enable syntax highlighting
filetype plugin indent on       " Enable filetype options
set encoding=utf-8              " Set file encoding
set background=dark             " tell vim I'm using a dark background
set number                      " Enable numbers for lines
set wildmenu                    "Better command-line completion
set showcmd                     " Show partial commands in the last line of the screen
set hlsearch                    " Highlight searches
set ignorecase                  " Use case insensitive search except when using capital letters
set smartcase
set backspace=indent,eol,start  " Allow backspacing over autoindent, linebreaks, and start of insert
set confirm                     " Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" set leader key to comma
let mapleader=","               

" Activate RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Alias for Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <leader>t :TagbarOpen fj<CR>

" Set a color at the column 80 to keep lines the right length
set colorcolumn=80

" Setup for Airline
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" Cursor configuration
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Shortcut for nerdtree
map <C-n> :NERDTreeToggle<CR>   

" Shortcut for Ctrlp
map <C-p> :CtrlP<CR>            

" Allow saving of files as sudo when I forget to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

execute pathogen#infect()

