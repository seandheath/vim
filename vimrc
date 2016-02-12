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

" todo.txt aliases
nmap <leader>a :call todo#txt#prioritize_add('A')<CR>
nmap <leader>b :call todo#txt#prioritize_add('B')<CR>
nmap <leader>c :call todo#txt#prioritize_add('C')<CR>
nmap <leader>d :call todo#txt#prioritize_add('D')<CR>
nmap <leader>w :call todo#txt#prioritize_add('W')<CR>
nmap <leader>dd A due:<Esc>:call DueDate(0)<CR>
nmap <leader>d1 A due:<Esc>:call DueDate(1)<CR>
nmap <leader>d2 A due:<Esc>:call DueDate(2)<CR>
nmap <leader>d3 A due:<Esc>:call DueDate(3)<CR>
nmap <leader>d4 A due:<Esc>:call DueDate(4)<CR>
nmap <leader>d5 A due:<Esc>:call DueDate(5)<CR>
nmap <leader>d6 A due:<Esc>:call DueDate(6)<CR>
nmap <leader>d7 A due:<Esc>:call DueDate(7)<CR>

function DueDate(duedate)
  exe ":normal a" . strftime("%F", localtime() + ((24 * 3600) * a:duedate))
endfunction

" Alias for Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <leader>t :TagbarOpen fj<CR>

" Set SuperTab completion to be sexier
set omnifunc=syntaxcomplete#Complete
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0 " Don't show scope
let OmniCpp_ShowPrototypeInAbbr = 1 " Show the prototype in the popup
let OmniCpp_ShowAccess = 1 " Show access in the popup
let OmniCpp_SelectFirstItem = 1 " Select the first item in the popup
set completeopt=menuone,menu,longest
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" " Use the Omni Completion
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

execute pathogen#infect()

