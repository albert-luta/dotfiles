#!/bin/bash

# Get the absolute path of the root dir
root=$(dirname $(readlink -f $0))

# Change pwd to root
cd $root

# Run the scripts
. init/installs.sh
. init/symlinks.sh

