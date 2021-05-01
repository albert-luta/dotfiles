#!/bin/bash

# Start ssh-agent in the background
eval "$(ssh-agent -s)"

# Generate
ssh-keygen -q -t ed25519 -N "" -C "luta.albert100@gmail.com" -f $HOME/.ssh/id_ed25519
# Save
ssh-add $HOME/.ssh/id_ed25519

