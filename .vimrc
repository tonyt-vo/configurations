"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tony Vo
" Sections:
"   - Vundle Plugin manager
"   - Personal Vim Set up
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Section: Vim Plugin Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " Vundle Path

" Include Plugins Below Here 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       " Vundle Manager
Plugin 'Valloric/YouCompleteMe'     " Autocompletion
Plugin 'sickill/vim-monokai'        " Monokai theme
Plugin 'scrooloose/nerdcommenter'   " Commenter


call vundle#end() 
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Section: Personal Vim Stuf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map Leader
let mapleader = ","

" Color Scheme options
syntax enable
set background=dark
colorscheme monokai

" Spacing Options
filetype plugin indent on
set tabstop=4                       " 4 spaces
set expandtab                       " Tabs to spaces
set autoindent                      " Auto indent
set smartindent                     " Indent to the right spot
set softtabstop=4
set shiftwidth=4

" Misc options
set number                          " Line number
set cc=80                           " Column line to 80 characters
syntax enable                       " Syntax highlighting
set hlsearch                        " Highlight search
set ignorecase                      " Ignore case when searching

