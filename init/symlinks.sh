#!/bin/bash

path=$(dirname $(dirname $(readlink -f $0)))

# xorg
ln -sf $path/xorg/.xinitrc $HOME/.xinitrc
ln -sf $path/xorg/.xprofile $HOME/.xprofile

# git
ln -sf $path/git/.gitconfig $HOME/.gitconfig

# alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p $HOME/.config/alacritty
ln -sf $path/alacritty/* $HOME/.config/alacritty/

# i3
[ ! -d $HOME/.config/i3 ] && mkdir -p $HOME/.config/i3
ln -sf $path/i3/* $HOME/.config/i3/

