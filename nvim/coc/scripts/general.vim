let mapleader=" "
let maplocalleader=" "
syntax on
set nocompatible
filetype plugin indent on

" Prevent space from moving cursor forward in normal mode
nnoremap <SPACE> <Nop>

set completeopt=menuone,noinsert,noselect
" Tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Indent
set smartindent
set termguicolors
set ignorecase
set smartcase
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set colorcolumn=80
set number relativenumber
set backspace=indent,eol,start
set wildmode=longest,list,full
set splitbelow splitright
set scrolloff=8
set clipboard=unnamedplus
set cursorline

