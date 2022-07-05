#!/bin/bash

# Get the absolute path of the root dir
root=$(dirname $(readlink -f $0))

# Change pwd to root
cd $root

# Run the scripts
. init/generate-ssh.sh
. init/generate-gpg.sh
. init/installs.sh
. init/symlinks.sh
. init/post-install.sh

