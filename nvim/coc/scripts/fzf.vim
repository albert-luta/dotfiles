let g:fzf_layout={'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,.next/*,dist/*,build/*}"'
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_action = {
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \ }

