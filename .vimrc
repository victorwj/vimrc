set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'   " required
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set encoding=utf-8
set tabstop=4				" number of spaces per TAB
set softtabstop=4			" number of spaces per TAB when editing
set expandtab				" TABs are spaces
set number					" show line number
set ruler                   " show col/row
set cursorline				" highlight current line
set showmatch				" match parentheses
