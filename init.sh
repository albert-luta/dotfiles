#!/bin/bash

path=$(dirname $(readlink -f $0))

chmod +x $path/init/*.sh 

$path/init/symlinks.sh
