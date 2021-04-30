#!/bin/bash

downloads=$HOME/Downloads

# add necessary ppas
# i3-gaps
add-apt-repository -y ppa:regolith-linux/stable
# alacritty
add-apt-repository -y ppa:aslatter/ppa
# google-chrome
sudo -u $SUDO_USER curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --create-dirs -o $downloads/google-chrome.deb
# apt-fast
add-apt-repository -y ppa:apt-fast/stable

# update sources
apt update --fix-missing

# before downloading more packages, install and configure apt-fast
DEBIAN_FRONTEND=noninteractive apt install -y apt-fast
. apt-fast/temp-bash-alias.sh

# install necessary packages
apt install -y \
	fonts-hack-ttf \
	python3-pip \
	$downloads/google-chrome.deb \
	i3-gaps i3status i3lock dmenu \
	xorg openbox \
	zsh \
	neovim \
	alacritty \
	tmux

# autotiling for i3
sudo -H pip3 install autotiling

# zsh
. shell/zsh/init.sh
# tmux
git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux/

# upgrade packages
apt upgrade -y

