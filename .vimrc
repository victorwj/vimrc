set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'              " required
Plugin 'dikiaap/minimalist'             " colorscheme
Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy search
Plugin 'Valloric/YouCompleteMe'         " fuzzy complete, need setup
Plugin 'vim-syntastic/syntastic.git'    " syntax checking 

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set t_Co=256
set background=dark
colorscheme minimalist
" Needed so that terminal background color changes to colorscheme
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" Cursor highlight color
highlight CursorLine ctermbg=235
" Search highlight color, no underline
highlight Search ctermbg=75 ctermfg=0 cterm=NONE

set encoding=utf-8
set splitright				" vertical splits right
set splitbelow              " horizontal splits below
set shiftwidth=4            " >> set to 4 spaces
set tabstop=4               " number of spaces per TAB
set softtabstop=4           " number of spaces per TAB when editing
set expandtab               " TABs are spaces
set number                  " show line number
set ruler                   " show col/row
set cursorline              " highlight current line
set showmatch               " match parentheses
set incsearch               " search as typing
set hlsearch                " highlight search

" Shortcut to move between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Remove all trailing whitespace by pressing F5
nnoremap <F5> :%s/\s\+$//e <CR>
" In visual mode, # to comment and -# to uncomment
vnoremap <silent> # :s/^/#/<CR>:noh<CR>
vnoremap <silent> -# :s/^#//<CR>:noh<CR>
" Copy and paste from system clipboard
" Need +clipboard in vim, install vim-gtk or vim-gnome
vnoremap <C-I> "*y
nnoremap <C-O> "*p
set pastetoggle=<C-S-V>
" Add newline using Enter
nmap <CR> o<Esc>
" Diff between current and last saved
:command Diff w !diff % -
