#!/bin/bash

[ ! -d $HOME/.config ] && mkdir -p $HOME/.config

# xorg
ln -sf $root/xorg/.xinitrc $HOME/.xinitrc
ln -sf $root/xorg/.xprofile $HOME/.xprofile

# git
ln -sf $root/git/.gitconfig $HOME/.gitconfig

# alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p $HOME/.config/alacritty
ln -sf $root/alacritty/* $HOME/.config/alacritty/

# i3
[ ! -d $HOME/.config/i3 ] && mkdir -p $HOME/.config/i3
ln -sf $root/i3/* $HOME/.config/i3/

# shell
ln -sf $root/shell/.shared_aliases $HOME/.shared_aliases
ln -sf $root/shell/.shared_commands.sh $HOME/.shared_commands.sh
# bash
ln -sf $root/shell/bash/.bashrc $HOME/.bashrc
ln -sf $root/shell/bash/.bash_aliases $HOME/.bash_aliases
ln -sf $root/shell/bash/.bash_commands.sh $HOME/.bash_commands.sh
# zsh
ln -sf $root/shell/zsh/.zshrc $HOME/.zshrc
ln -sf $root/shell/zsh/.zsh_aliases $HOME/.zsh_aliases
ln -sf $root/shell/zsh/.zsh_commands.sh $HOME/.zsh_commands.sh
[ ! -d $HOME/.zsh_functions ] && mkdir -p $HOME/.zsh_functions
ln -sf $root/shell/zsh/.zsh_functions/* $HOME/.zsh_functions/
# p10k
ln -sf $root/shell/zsh/.p10k.zsh $HOME/.p10k.zsh

# tmux
ln -sf $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $root/tmux/.tmux.conf.local $HOME/.tmux.conf.local

# nvim
[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim
nvim=$HOME/.config/nvim
# coc
coc=$root/nvim/coc
ln -sf $coc/init.vim $nvim/init.vim
ln -sf $coc/coc-settings.json $nvim/coc-settings.json 
[ ! -d $nvim/scripts ] && mkdir -p $nvim/scripts
ln -sf $coc/scripts/* $nvim/scripts/
# lua

