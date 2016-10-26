set nocompatible              " be iMproved, required
filetype off                  " required by vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'endel/vim-github-colorscheme'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'benmills/vimux'
"
call vundle#end() " required by vundle
filetype plugin indent on " required by vundle

set backupdir=~/vimfiles/tmpfiles
set directory=~/vimfiles/tmpfiles

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4


"make "tab" insert indents insted of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" auto indent
set autoindent

" utf8
set encoding=utf-8
set fileencoding=utf8


" moving tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" moving lines
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" smart home
noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>

" others
map <F2> :echo 'Current time is ' . strftime('%c') <Esc>

" line numbers
set number

" highlight search matches and incremental search
set hlsearch
set incsearch

map <Tab> :tabnext<CR>
map <S-Tab> :tabpreviou<CR>

"Colorscheme
set t_Co=256
let g:gruvbox_termcolors=256
syntax enable
set background=dark
colorscheme gruvbox

" Show path/file name on the bottom of the window
set ls=2

" Enable folding
set foldmethod=manual
set foldlevel=20

" ctrl-p plugin
let g:ctrlp_working_path_mode = 'ra'

" disable arrow navigation keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
nnoremap <expr> <Up> ((bufname("%") is# "[Command Line]")?("\<Up>"):(""))

" Instant markdown (enable to work with markdown)
" set shell=bash\ -i

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1

" workaround to read alt key press on gnome-terminal
set ttimeout ttimeoutlen=50

" Python syntax
let python_highlight_all = 1

" Specific filetypes ident
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Mac
set clipboard=unnamed

" Mac backspace
set backspace=indent,eol,start

" leader key
let mapleader = ","

" Leader Mappings
nmap <leader>z :call VimuxRunCommand("make test")<cr>
nmap <leader>r :call VimuxRunCommand("make run")<cr>
nmap <leader>p :call VimuxRunCommand("make pep8")<cr>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\venv$|\venv$\',
            \ 'file': '\.exe$\|\.so$'
            \ }
let g:ctrlp_show_hidden = 1
