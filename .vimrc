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
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256                
syntax enable
set background=dark
colorscheme solarized8_dark_low
let python_highlight_all = 1

set encoding=utf-8          
set laststatus=2            " powerline always on
set tabstop=4				" number of spaces per TAB
set softtabstop=4			" number of spaces per TAB when editing
set expandtab				" TABs are spaces
set number					" show line number
set ruler                   " show col/row
set cursorline				" highlight current line
set showmatch				" match parentheses
set incsearch               " search as typing
set hlsearch                " highlight search

noremap <Up> 5k
noremap <Down> 5j

" font: sudo apt-get install fonts-inconsolata
