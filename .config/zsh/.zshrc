# if not in tmux, start tmux
#if [[ -z ${TMUX+X}${ZSH_SCRIPT+X}${ZSH_EXECUTION_STRING+X} ]]; then
#  exec tmux
#fi

# take a look into:
# - ssh-agent
# - gpg-agent
# - vi mode

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# load plugins
source $HOME/.config/zsh/tools/aliases.zsh
source $HOME/.config/zsh/tools/history.zsh
source $HOME/.config/zsh/tools/completion.zsh
source $HOME/.config/zsh/tools/fzf.zsh
source $HOME/.config/zsh/tools/fnm/init.zsh

# command suggestions based on history
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# bind CTRL+(space) to accept suggestion
bindkey '^ ' autosuggest-accept

# smarter cd - z (jump around)
eval "$(zoxide init zsh)"

# add syntax highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# add p10k prompt
source $HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/tools/.p10k.zsh
