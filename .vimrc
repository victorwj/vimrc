set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'   " required
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'lifepillar/vim-solarized8'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
syntax enable
colorscheme solarized8_dark_low
set encoding=utf-8
set laststatus=2
set tabstop=4				" number of spaces per TAB
set softtabstop=4			" number of spaces per TAB when editing
set expandtab				" TABs are spaces
set number					" show line number
set ruler                   " show col/row
set cursorline				" highlight current line
set showmatch				" match parentheses
" font: sudo apt-get install fonts-inconsolata
