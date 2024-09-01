source $HOME/.config/zsh/environment.zsh
source $ZSH_CONFIG/aliases.zsh
source $ZSH_CONFIG/prompt.zsh

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH_CONFIG/fzfrc.zsh

# dir navigation
eval "$(zoxide init zsh)"
alias cd="z"

# run custom prompt
eval "$(starship init zsh)"
