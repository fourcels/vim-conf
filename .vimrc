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
" has issus in xfce-terminal generate garbage character ^[[>1;2802;0c
" Plugin 'tpope/vim-fugitive'

" colorschemes
Plugin 'flazz/vim-colorschemes'

" comment
Plugin 'scrooloose/nerdcommenter'

" tree view
Plugin 'scrooloose/nerdtree'

" vim-airline
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" tagbar
" Plugin 'majutsushi/tagbar'

" auto-pairs
Plugin 'jiangmiao/auto-pairs'

" javascript
Plugin 'pangloss/vim-javascript'

" snippets
Plugin 'honza/vim-snippets'

" youcompleteme
" Plugin 'valloric/youcompleteme'

" neocomplete
" Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts=1
let mapleader=','
let g:NERDSpaceDelims = 1
set incsearch
set hlsearch
set laststatus=2
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set number

" scroll in vim
set mouse=a
" mac delete
set backspace=2

set cursorline
set ignorecase
set guifont=Roboto\ Mono\ Medium\ for\ Powerline\ 12
set tabstop=2 shiftwidth=2 expandtab
set autoindent
" set listchars=tab:▸\ ,eol:¬,space:·
" set list

" theme
syntax on
set background=dark
silent! colorscheme hybrid
" fix debian terminal remain bgcolor after exit vim
hi Normal ctermbg=None

" delete trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" map
map <C-_> <leader>c<space>
nnoremap <silent> <C-\> :NERDTreeToggle<CR>

" line wrap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
