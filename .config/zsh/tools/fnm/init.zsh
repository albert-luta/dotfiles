# add env vars and auto load .nvmrc when switching directories
eval "$(fnm env --use-on-cd)"

# add completions
source $HOME/.config/zsh/tools/fnm/_fnm
