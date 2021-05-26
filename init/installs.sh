#!/bin/bash

[ ! -d $HOME/Downloads ] && mkdir -p $HOME/Downloads
[ ! -d $HOME/.config ] && mkdir -p $HOME/.config

downloads=$HOME/Downloads
config=$HOME/.config

# add necessary ppas
# i3-gaps
sudo add-apt-repository -y ppa:regolith-linux/stable
# alacritty
sudo add-apt-repository -y ppa:aslatter/ppa
# apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
# z
curl -fL https://raw.githubusercontent.com/rupa/z/master/z.sh --create-dirs -o $config/z/z.sh
touch $HOME/.z
# google-chrome
curl -fL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --create-dirs -o $downloads/google-chrome.deb
# lsd
curl -fL https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb --create-dirs -o $downloads/lsd.deb
# discord
curl -fL https://discordapp.com/api/download?platform=linux&format=deb --create-dirs -o $downloads/discord.deb
# vs-code
curl -fL https://go.microsoft.com/fwlink/?LinkID=760868 --create-dirs -o $downloads/vs-code.deb

# update sources
sudo apt update --fix-missing

# before downloading more packages, install and configure apt-fast
sudo DEBIAN_FRONTEND=noninteractive apt install -y apt-fast
. apt-fast/temp-bash-alias.sh

# install necessary packages
# temp -o flag -> ubuntu-20.04 doesn't support multiple rust packages installed through apt(bat, ripgrep)
sudo apt install -yf -o Dpkg::Options::="--force-overwrite" \
	python3-pip \
	i3-gaps i3status i3lock dmenu \
	xorg openbox \
	zsh \
	neovim \
	alacritty \
	tmux \
	bat \
	watchman \
	ripgrep \
	postgresql postgresql-contrib \
	xclip \
	flameshot \
	htop \
	$downloads/google-chrome.deb \
	firefox \
	$downloads/lsd.deb \
	$downloads/discord.deb \
	$downloads/vs-code.deb

# fonts
. fonts/installs.sh
# autotiling for i3
sudo pip3 install autotiling
# zsh
. shell/zsh/init.sh
# tmux
git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux/
# nvim
# coc
# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# upgrade packages
sudo apt upgrade -y
# autoremove remaining packages
sudo apt autoremove

