"------------------------------------
" Vundle options
"------------------------------------
set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" PLUGINS DEFINED HERE
Plugin 'scrooloose/nerdtree'
Plugin 'micha/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------------------------------------
" Indentation options
"------------------------------------
set number
set shiftwidth=4
set softtabstop=4
set expandtab

"------------------------------------
" Colour options
"------------------------------------
set background=dark
colorscheme solarized
syntax enable

"------------------------------------
" JavaScript options
"------------------------------------
let g:javascript_plugin_jsdoc = 1

"------------------------------------
" Startup options
"------------------------------------
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
