" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
set nocompatible
filetype plugin indent on
syntax on

runtime macros/matchit.vim

" General settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.
set relativenumber

" Tab navigation
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kalekundert/vim-coiled-snake'
Plugin 'benmills/vimux'

call vundle#end()            " required

set hlsearch

" Python specific
" Add PEP8 compatible indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
