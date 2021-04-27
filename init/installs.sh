#!/bin/bash

# add necessary ppas
add-apt-repository -y \
	ppa:regolith-linux/stable `#i3-gaps` \
	ppa:aslatter/ppa `#alacritty`

apt update
apt upgrade -y

# install necessary packages
apt install -y \
	python3-pip \
	i3-gaps i3status i3lock dmenu \
	alacritty

pip3 install autotiling

