call plug#begin('~/.config/nvim/plugged')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Prisma syntax highlighting
Plug 'pantharshit00/vim-prisma'
" Dev icons
Plug 'ryanoasis/vim-devicons'
" Better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Theme
Plug 'joshdick/onedark.vim'
" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git inside Vim
Plug 'tpope/vim-fugitive'
" Utils
" Comment selection
Plug 'tpope/vim-commentary'
" Html/Jsx auto-close tags
Plug 'alvan/vim-closetag'

call plug#end()

