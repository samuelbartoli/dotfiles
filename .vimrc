" PLUGINS
" session - save the actual session including the nerdtree
" zencoding 
" nerdtree
" nerdcommenter
" ragtag
" surround
" snipmate - snippets
" tagbar - no working

"""""""""""""""""
nmap <F8> :TagbarToggle<CR>

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

nohlsearch

"jumps to search word as you type
set incsearch 

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

"tamano de linea igual a 80 caracteres
set textwidth=80
let &titleold=getcwd()

"Maps para switch entre los splits. Util!
map <tab>h <C-w>h
map <tab>l <C-w>l
map <tab>k <C-w>k
map <tab>j <C-w>j
map <S-j> gT
map <S-l> gt
noremap qa :wall<return>:mksession! vimsesion<return>:wqall<return>

"Para los comentarios en C
set fo=croq

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
nmap <silent> <leader>s :set nolist!<CR>
