set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'

" vim-airline
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


if !has('gui_running')
  set t_Co=256
endif

set laststatus=2
let g:airline_powerline_fonts=1
set encoding=utf-8
set number
set guifont=Roboto\ Mono\ for\ Powerline\ 12

" theme
syntax on
set background=dark
colorscheme luna
