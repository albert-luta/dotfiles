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
" Editor config
Plug 'editorconfig/editorconfig-vim'
" LaTeX
Plug 'lervag/vimtex'

call plug#end()

" New plugin update is broken
" Rollback to previous version
" 1. Comment out Plug 'neoclide/coc.nvim'
" 2. Run :source % (or reload vim)
" 3. Run :PlugClean and remove the coc.nvim install
" 4. Uncomment out the Plug line with the commit hash that you want (e.g., Plug 'neoclide/coc.nvim', {'commit': '153fdc4223594f8079e4025e919605fffd75f6a4'})
" 5. Run :PlugInstall

