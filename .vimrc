set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" git
Plugin 'tpope/vim-fugitive'

" colorschemes
Plugin 'flazz/vim-colorschemes'

" comment
Plugin 'scrooloose/nerdcommenter'

" tree view
Plugin 'scrooloose/nerdtree'

" vim-airline
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts=1
let mapleader=','
let g:NERDSpaceDelims = 1
set laststatus=2
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set number
set backspace=2
set guifont=Roboto\ Mono\ for\ Powerline\ 12

" theme
syntax on
set background=dark
colorscheme luna


" map
map <C-\> :NERDTreeToggle<CR>
map <C-_> <leader>c<space>
