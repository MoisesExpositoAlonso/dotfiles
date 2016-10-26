" Basic Settings
"

execute pathogen#infect()

set backupdir=~/.vim-backups " create a different backup file directory
set directory=~/.vim-backups

set nocompatible
syntax enable
set number
set hidden " allow hidden buffers
set hlsearch
set wildmenu
set wildmode=longest,list,full
"set cursorline
set autochdir




" vundle
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Plugin 'scrooloose/nerdtree'
let vimrplugin_assign = 0


" General tabs and indents
set tabstop=2
set shiftwidth=2
set softtabstop=2
filetype plugin indent on
set expandtab
"set autoindent

" linebreaks and wrapping
set wrap linebreak nolist

" Visual Settings
set ruler
set title
set background=dark
"set background=light
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized


"putting these last seems to help solve issues (silly Vim).
filetype off
filetype on

