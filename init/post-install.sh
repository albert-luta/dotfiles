#!/bin/bash

# Switch dotfiles repo connection from https to ssh
git remote set-url origin git@github.com:lutaalbert/dotfiles.git 
yes | git push -u origin master

# Reload zsh to install the remaining packages
. $HOME/.bashrc # Wsl
# . $HOME/.zshrc # Native Ubuntu

