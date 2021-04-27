#!/bin/bash

path=$(dirname $(readlink -f $0))/..

# Bash
ln -sf $path/bash/.bash_profile $HOME/.bash_profile 
