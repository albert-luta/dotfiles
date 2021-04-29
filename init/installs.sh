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
	alacritty

# install autotiling for i3
sudo -H pip3 install autotiling

# make zsh the default shell
chsh -s $(which zsh)
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
chown -R $SUDO_USER:$SUDO_USER $HOME/.cache

# upgrade packages
apt upgrade -y

