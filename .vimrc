" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
set nocompatible
filetype plugin indent on
syntax on

runtime macros/matchit.vim

set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.
set relativenumber

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle'

call vundle#end()            " required

set hlsearch
