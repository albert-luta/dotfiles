# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Nvm
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

# Plugins
plugins=(
	zsh-nvm
	ssh-agent
	git
	npm
	colored-man-pages
	command-not-found
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# Aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
# Commands
if [ -f ~/.zsh_commands.sh ]; then
    . ~/.zsh_commands.sh
fi

fpath+=${ZDOTDIR:-~}/.zsh_functions

# Auto suggestions plugin widgets
bindkey '^ ' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Z
. ~/.config/z/z.sh

