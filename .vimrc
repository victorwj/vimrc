set nocompatible                            " required
filetype off                                " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                  " required
Plugin 'dikiaap/minimalist'                 " colorscheme
Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search
"Plugin 'Valloric/YouCompleteMe'             " fuzzy complete, need setup
Plugin 'vim-syntastic/syntastic.git'        " syntax checking
Plugin 'tpope/vim-commentary.git'           " easy commenting
Plugin 'jiangmiao/auto-pairs'               " pairing of brackets, etc
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()                           " required
filetype plugin indent on                   " required

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
" Comment color
highlight Comment ctermfg=100

set fileformat=unix
set fileformats=unix,dos                    " for Windows, :help fileformats
set encoding=utf-8
set splitright                              " vertical splits right
set splitbelow                              " horizontal splits below
set shiftwidth=4                            " >> set to 4 spaces
set tabstop=4                               " number of spaces per TAB
set softtabstop=4                           " number of spaces per TAB when editing
set expandtab                               " TABs are spaces
set number                                  " show line number
set ruler                                   " show col/row
set cursorline                              " highlight current line
set showmatch                               " match parentheses
set incsearch                               " search as typing
set hlsearch                                " highlight search

" Shortcut to move between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Remove all trailing whitespace by pressing F5
nnoremap <F5> :%s/\s\+$//e<CR>
" Copy and paste from system clipboard
" Need +clipboard in vim, install vim-gtk or vim-gnome
vnoremap <C-I> "*y
nnoremap <C-O> "*p
" In normal mode, control-v to enter insert pasting mode
set pastetoggle=<C-V>
nnoremap <C-V> :set paste<CR>i
" After pasting, control-v twice to exit insert pasting mode
inoremap <C-V> <Esc>
" Add newline using Enter
nmap <CR> o<Esc>
" Diff between current and last saved
:command Diff w !diff % -
" Hotkey to fix vim syntax highlighting errors
:command Synfix :syntax sync fromstart

" Syntastic
let g:syntastic_python_checkers = ['python']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_cpp_checkers = ['cppcheck', 'cpplint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['tidy']
