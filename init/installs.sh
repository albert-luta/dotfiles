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
echo $0
chmod +x ./apt-fast/temp-bash-alias.sh
./apt-fast/temp-bash-alias.sh

# install necessary packages
apt install -y \
	fonts-hack-ttf \
	python3-pip \
	$downloads/google-chrome.deb \
	i3-gaps i3status i3lock dmenu \
	xorg openbox \
	alacritty

sudo -H pip3 install autotiling

# upgrade packages
apt upgrade -y
