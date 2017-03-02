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

" fix xterm colors
if &term == "xterm"
  set term=xterm-256color
endif

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" set leader key to comma
let mapleader=","               
let maplocalleader="\\"

" Allow to insert line without entering insert mode, using enter and shift ent
nmap <S-Enter> O<Esc>
nmap <Enter> o<Esc>

" Activate RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Alias for Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <leader>t :TagbarOpen fj<CR>

" Set SuperTab completion to be sexier
"
set omnifunc=syntaxcomplete#Complete
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 1 " Don't show scope
let OmniCpp_ShowPrototypeInAbbr = 1 " Show the prototype in the popup
let OmniCpp_ShowAccess = 1 " Show access in the popup
let OmniCpp_SelectFirstItem = 1 " Select the first item in the popup
set completeopt=menuone,menu,longest
let g:SuperTabDefaultCompletionType = "context" " Use the Omni Completion
let g:SuperTabContextDefaultCompletionType = "<c-n>"
highlight clear
highlight Pmenu ctermfg=0 ctermbg=2
highlight PmenuSel ctermfg=0 ctermbg=7
highlight PmenuSbar ctermfg=7 ctermbg=0
highlight PmenuThumb ctermfg=0 ctermbg=7


" Set a color at the column 80 to keep lines the right length
set colorcolumn=80

" Setup for Airline
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" Shortcut for nerdtree
map <C-n> :NERDTreeToggle<CR>   

" Shortcut for Ctrlp
map <C-p> :CtrlP<CR>            

" Allow saving of files as sudo when I forget to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" This is where I add all my plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'
Plug '/szw/vim-tags'
call plug#end()
