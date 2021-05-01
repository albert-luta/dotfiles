#!/bin/bash

bash_aliases=$HOME/.bash_aliases
alias="alias apt='apt-fast'"

# Append the apt-fast alias to .bash_aliases
[ ! -f $bash_aliases ] && touch $bash_aliases
if ! grep -q $bash_aliases -e "$alias"; then
	echo $alias >> $bash_aliases
fi

# Reload .bash_aliases
. $bash_aliases

