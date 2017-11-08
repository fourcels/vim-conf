set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" colorschemes
Plugin 'w0ng/vim-hybrid'

" comment
Plugin 'scrooloose/nerdcommenter'

" vim-airline
Plugin 'vim-airline/vim-airline'

" auto-pairs
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Nginx section
autocmd BufRead,BufNewFile /etc/nginx/* setfiletype nginx
autocmd BufRead,BufNewFile /usr/local/etc/nginx/* setfiletype nginx

let g:airline_powerline_fonts=1
let mapleader=' '
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

set cms=#%s
set incsearch
" set hlsearch
set laststatus=2
set encoding=utf-8
set t_Co=256
set termencoding=utf-8
set number
" fix issue esc delay
set ttimeoutlen=50

" mac delete
set backspace=2

set cursorline
set ignorecase
set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h14
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent
set pastetoggle=<F2>
" set listchars=tab:▸\ ,eol:¬,space:·
" set list

" theme
syntax on
set background=dark
silent! colorscheme hybrid
" fix debian terminal remain bgcolor after exit vim
" hi Normal ctermbg=None

" delete trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

" map
map <C-_> <plug>NERDCommenterToggle
imap <C-_> <plug>NERDCommenterInsert

nnoremap <silent> <C-\> :NERDTreeToggle<CR>
nnoremap <leader>n :nohl<CR>
nnoremap <leader>w :w<CR>

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
