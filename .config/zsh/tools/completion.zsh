# should be called before compinit
zmodload zsh/complist

# use CTRL+h/j/l/k in menu selection (during completion)
# doesn't work well with interactive mode
bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^j' vi-down-line-or-history
bindkey -M menuselect '^l' vi-forward-char

# standard style used by default for 'list-colors'
LS_COLORS=${LS_COLORS:-'di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'}

# load completions
autoload -U compinit
compinit
_comp_options+=(globdots) # include hidden (dot) files

# options
unsetopt BEEP # disable beeping when completion fails
unsetopt FLOW_CONTROL # disable flow control character behaviours
setopt C_BASES # use c-style hex codes (e.g. 0xFF)
setopt GLOB_DOTS # do not require '.' in front of a filename to be specified explicitly
setopt EXTENDED_GLOB # use extended globbing syntax
setopt AUTO_LIST # automatically list choices on ambiguous completion
setopt ALWAYS_TO_END # move cursor to the end of a completed word
setopt AUTO_MENU # show completion menu on a successive tab press
setopt AUTO_PARAM_SLASH # if completed parameter is a directory, add a trailing slash

# autoload -U colors && colors

# stop highlighting when pasting
zle_highlight=('paste:none')

# zstyle pattern
# :completion:<function>:<completer>:<command>:<argument>:<tag>

# colors for files and directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# use cache to generate completions based on user history
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/.zcompcache"
# Complete the alias when _expand_alias is used as a function
zstyle ':completion:*' complete true

# case-insensitive (all), partial-word, and then substring completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# dont't expand '~'
zstyle ':completion:*' keep-prefix true

# fuzzy match mistyped completions
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only

# increase the number of errors based on the length of the typed word
# but make sure to cap (at 7) the max-errors to avoid hanging
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)'

# only display some tags for the command cd
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories

# add descriptions when possible
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

# required for completion to be in good groups (named after the tags)
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# order the completion groups
zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands

# colors for different types of info
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

# allow you to select in a menu
zstyle ':completion:*' menu select

# autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true

# complete with the correct hosts
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# array completion element sorting
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# kill
zstyle ':completion:*:*:*:*:processes' command 'ps -u $LOGNAME -o pid,user,command -w'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single

# man
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

# ssh/scp/rsync
zstyle ':completion:*:(ssh|scp|rsync):*' tag-order 'hosts:-host:host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
zstyle ':completion:*:(scp|rsync):*' group-order users files all-files hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' group-order users hosts-domain hosts-host users hosts-ipaddr
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^[-[:alnum:]]##(.[-[:alnum:]]##)##' '*@*'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'
