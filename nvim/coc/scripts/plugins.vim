call plug#begin('~/.config/nvim/plugged')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Prisma syntax highlighting
Plug 'pantharshit00/vim-prisma'
" Better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Theme
Plug 'joshdick/onedark.vim'
" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git inside Vim
Plug 'tpope/vim-fugitive'
" Git line symbols
Plug 'airblade/vim-gitgutter'
" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Utils
" Comment selection
Plug 'tpope/vim-commentary'
" Html/Jsx auto-close tags
Plug 'alvan/vim-closetag'
" Surround
Plug 'tpope/vim-surround'
" Auto-rename html-jsx tags
Plug 'AndrewRadev/tagalong.vim'
" Dev icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

