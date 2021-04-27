#!/bin/bash

path=$(dirname $(dirname $(readlink -f $0)))

# Xorg
ln -sf $path/.xinitrc $HOME/.xinitrc
ln -sf $path/.xprofile $HOME/.xprofile

# Git
ln -sf $path/.gitconfig $HOME/.gitconfig

# Alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p $HOME/.config/alacritty
ln -sf $path/alacritty/* $HOME/.config/alacritty/

