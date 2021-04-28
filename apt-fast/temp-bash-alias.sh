#!/bin/bash

[ ! -d $HOME/.bash_aliases ] && touch $HOME/.bash_aliases
echo "alias apt='apt-fast'" >> $HOME/.bash_aliases

