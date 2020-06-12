syntax on
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set incsearch

syntax enable
colorscheme darcula


" show statusbar" show statusbar" show statusbar
set laststatus=2

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/goyo.vim'

call vundle#end()         
filetype plugin indent on

" lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" NERDTree config
:set mouse=a
let NERDTreeMouseMode=3

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

