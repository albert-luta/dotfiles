#!/bin/bash

downloads=$HOME/Downloads

# add necessary ppas
# i3-gaps
add-apt-repository -y ppa:regolith-linux/stable
# alacritty
add-apt-repository -y ppa:aslatter/ppa
# google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $downloads/google-chrome.deb
# apt-fast
add-apt-repository -y ppa:apt-fast/stable

apt update --fix-missing
# Before downloading more packages, get apt-fast
apt install -y apt-fast
apt upgrade -y

# install necessary packages
apt install -y \
	fonts-hack-ttf \
	python3-pip \
	$downloads/google-chrome.deb \
	i3-gaps i3status i3lock dmenu \
	xorg openbox \
	alacritty

sudo -H pip3 install autotiling

