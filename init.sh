#!/bin/bash

scripts=$(dirname $(readlink -f $0))/init

# Make the init scripts executable
chmod +x $scripts/*.sh 

$scripts/installs.sh
$scripts/symlinks.sh
