# add env vars, auto load .nvmrc when switching directories, enable corepack when installing new node versions
eval "$(fnm env --log-level quiet --use-on-cd --corepack-enabled)"

# --use-on-cd only fires on directory changes; also apply .nvmrc/.node-version at shell start
if [[ -f .nvmrc || -f .node-version ]]; then
  fnm use --silent-if-unchanged
fi

# add completions
source $HOME/.config/zsh/tools/fnm/_fnm
