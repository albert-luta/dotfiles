#!/bin/bash

# Set dotfiles as pwd
cd $(dirname $(readlink -f $0))

scripts=./init

# Make the init scripts executable
chmod +x $scripts/*.sh 

# Run the scripts
$scripts/installs.sh
$scripts/symlinks.sh

