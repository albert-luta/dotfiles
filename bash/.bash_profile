#!/bin/bash

scripts=$(dirname $(readlink -f $0))/scripts

chmod +x $scripts/*.sh

$scripts/open-ssh-agent.sh
