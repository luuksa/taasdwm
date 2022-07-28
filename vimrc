let mapleader = ","
set nocompatible
filetype plugin on

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'chrisbra/colorizer'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'sainnhe/everforest'
Plug 'vimwiki/vimwiki'

call plug#end()

set title
set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" Goyo plugin makes text more readable when writing prose:
 	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
 	map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
 	map <leader>p :!opout <c-r>%<CR><CR>

let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

syntax on
set number relativenumber
set wildmode=longest,list,full

