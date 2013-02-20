" PLUGINS
" session - save the actual session including the nerdtree
" zencoding 
" nerdtree
" nerdcommenter
" ragtag
" surround
" snipmate - snippets
" tagbar - no working

""""""""""""""""""""""""""""""""

" Always use comma as the leader
let mapleader=","

" enable mouse usage
set mouse=a

" indent a new line as the previous one.
set cindent

" set number line
set number

"find is no case-sentitive
set ignorecase

colorscheme jellybeans

"the terminal title
set title

syntax on

" show underline for jellybeans theme
hi CursorLine term=underline cterm=underline ctermbg=none

" show matching parenthesis when closing
set showmatch

" increase command memory
set history=100


""""""""""""""""""""""""""""""""""""""""""
" SEARCHING  

"highlights as you type an expression"
set incsearch 

" Make searches case-sensitive except when you include upper-case characters 
" (foo matches FOO and fOo, but /FOO only matches the former) 
set ignorecase 
set smartcase

set hlsearch
:nmap \q :nohlsearch<CR>

"Menu con los archivos existentes en el directorio actual.
set wildmenu

" ESC is now jj 
imap jj <ESC>

"Poner un tab a 2 espacios
set tabstop=2

"The width of a tab is set to 2 spaces
set tabstop=2

"indents will have  a width of 4
set shiftwidth=2

"Expand TABS to spaces 
set expandtab

"
let &titleold=getcwd()

""""""""""""""""""""""""""""""""""""""""""
" MAPS 
" Switch between tabs
map <tab>h <C-w>h
map <tab>l <C-w>l
map <tab>k <C-w>k
map <tab>j <C-w>j
map <S-j> gT
map <S-l> gt

"Close all tabs and save the session 
noremap qa :wall<return>:mksession! vimsesion<return>:wqall<return>

"Toggles paste mode
:nmap \o :set paste! <CR>

nmap <silent> <leader>s :set nolist!<CR>

nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""

" Comments in C
set fo=croq

"Set the cursor line
set cursorline

filetype plugin on

"put all swap files together in one place
set directory^=$HOME/.vim_swap//

"increase the view port moving
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" visual line, character position
set ruler

" turn-off the bell
set visualbell

set listchars=tab:>-,trail:·,eol:$

call pathogen#infect()
