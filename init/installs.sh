#!/bin/bash

downloads=$HOME/Downloads

# add necessary ppas
# i3-gaps
sudo add-apt-repository -y ppa:regolith-linux/stable
# alacritty
sudo add-apt-repository -y ppa:aslatter/ppa
# google-chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --create-dirs -o $downloads/google-chrome.deb
# apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable

# update sources
sudo apt update --fix-missing

# before downloading more packages, install and configure apt-fast
sudo DEBIAN_FRONTEND=noninteractive apt install -y apt-fast
. apt-fast/temp-bash-alias.sh

# install necessary packages
sudo apt install -y \
	fonts-hack-ttf \
	python3-pip \
	$downloads/google-chrome.deb \
	i3-gaps i3status i3lock dmenu \
	xorg openbox \
	zsh \
	neovim \
	alacritty \
	tmux \
	bat

# autotiling for i3
sudo pip3 install autotiling
# zsh
. shell/zsh/init.sh
# tmux
git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux/

# upgrade packages
sudo apt upgrade -y
# autoremove remaining packages
sudo apt autoremove

