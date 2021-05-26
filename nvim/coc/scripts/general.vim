let mapleader=" "
syntax on
set nocompatible
filetype plugin indent on

" Prevent space from moving cursor forward in normal mode
nnoremap <SPACE> <Nop>

set completeopt=menuone,noinsert,noselect
" Tabs
set tabstop=4
set shiftwidth=4
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
highlight colorcolumn ctermbg=0 guibg=lightgrey
set clipboard=unnamedplus

