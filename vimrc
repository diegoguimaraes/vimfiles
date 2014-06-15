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
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'pangloss/vim-javascript'
Plugin 'endel/vim-github-colorscheme'
Plugin 'nvie/vim-flake8'
Plugin 'suan/vim-instant-markdown'
"
call vundle#end()         " required by vundle
filetype plugin indent on " required by vundle

set backupdir=/tmp/
set directory=/tmp/

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
"set cindent

" moving tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" moving lines
imap <S-down> <Esc> ddpi
imap <S-up> <Esc> ddkPi

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

" hack to get Solirized working
syntax on
set t_Co=16
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" Show path/file name on the bottom of the window
set ls=2

" Enable folding
set foldmethod=manual

"autocmd VimEnter,BufNewFile,BufReadPost *.html set ft=htmldjango

" utf8
set encoding=utf-8
set fileencoding=utf8

" ctrl-p plugin
"set runtimepath^=~/.vim/bundle/ctrlp.vim

" disable arrow navigation keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
nnoremap <expr> <Up> ((bufname("%") is# "[Command Line]")?("\<Up>"):(""))

" Add colorscheme for Kivy files
"au BufRead,BufNewFile *.kv set filetype=kivy
"au! Syntax kivy source $HOME/.vim/colors/kivy.vim

" Instant markdown
set shell=bash\ -i

"powerline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
