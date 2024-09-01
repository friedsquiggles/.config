# neovim
alias nv="nvim"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# neovim config - general
alias nvrc="cd ~/.config/nvim/ && nv"

# neovim config - profile
alias jnv="cd ~/.config/nvim/lua/jordan/ && nv"
alias jnvrc="cd ~/.config/nvim/lua/jordan/ && nv"

# tmux
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias t="tmux"
alias ta="tmux a"
alias tl="tmux ls"
alias tlk="tmux list-keys"
alias tks="tmux kill-session"
alias trc="cd ~/.config/tmux/ && nv tmux.conf"

# lazygit and lazydocker
alias lzg="lazygit"
alias lzd="lazydocker"

# dotfiles
alias dots="cd ~/.config/ && nv"

# zsh config
alias zshrc="nv ~/.zshrc"
alias zrc="nv ~/.zshrc"

# notes
alias notes="cd ~/dev/notes/ && nv"

# clear
alias c="clear"
alias cl="clear"

# refresh zsh
alias exz="exec zsh"

# exit
alias e="exit"
alias :q="exit"

# use eza in place of ls
if [[ -f $(which eza) ]]; then
    # TODO review excess aliases and redundant options

    ##
    ## short form listings

    ### files and dirs
    alias ls='eza -1 --icons --color=always --group-directories-first'
    alias l='ls'

    ### dirs
    alias ld='eza -D1 --icons --color=always'

    ### all files and dirs
    alias la='eza -a1 --icons --color=always --group-directories-first'

    ### tree view
    alias lt='eza -T --icons --color=always --git --git-repos --level=3'

    ##
    ## long form listings

    ### files and dirs
    alias lls='eza -l --icons --color=always --group-directories-first --git --git-repos --no-user --no-permissions --time-style=relative'
    alias ll='lls'

    ### dirs
    alias lld='eza -lD --icons --color=always --git --git-repos --no-user --no-permissions --time-style=relative --total-size'

    ### all files and dirs
    alias lla='eza -al --icons --color=always --group-directories-first --git --git-repos --no-user --no-permissions --time-style=relative'

    ### tree view
    alias llt='eza -lT --icons --color=always --level=3 --git --git-repos --no-user --no-permissions --time-style=relative --total-size'

else
    alias l.=' ls -dl'
    alias ls='ls'
    alias la='ls -ha'
    alias lt='ls --tree --light'
    alias ll='ls -lA --sort-dirs'
    alias lc='ls -lA --sd'
    alias lla='ls -la --sort-dirs'
    alias lsa='ls -lA --sd'
fi

# navigation
alias ~='cd ~'
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias .7='cd ../../../../../../..'
alias .8='cd ../../../../../../../..'
alias .9='cd ../../../../../../../../..'

# git
alias gs="git status --short --branch"


# git actions
alias commit="git commit"
alias pull="git pull"
alias push="git push"
alias force="git push --force"
alias lease="git push --force-with-lease"

# git checkout
alias gco="git checkout"
alias gcom="git checkout main"

# git add
alias gaa="git add --all"
alias gap="git add --patch"

# git log
# alias gl="git log --color"

if [[ -f $(which devmoji) ]]; then
    alias gl="git l -n 16 --color | devmoji --log --color"
    # alias glo="glog --oneline --color"
    # alias glg="glog --graph --color"
else
    alias gl="git l"
    # alias glo="glog --oneline --color"
    # alias glg="glog --graph --color"
fi

# github search
alias ghsr="gh search repos --archived=false"

# github search all repos by owner username
alias ghsro= "gh search repos --owner"

# github issues
alias ghil="gh issue list"
alias ghic="gh issue create"
alias ghiv="gh issue view"
alias ghivb="gh issue view --web"
alias ghivw="gh issue view --web"

# github pull requests
alias ghprl="gh pr list"
alias ghprc="gh pr create"
alias ghprco="gh pr checkout"
alias ghprv="gh pr view"
alias ghprvw="gh pr view --web"

# local dirs
alias dl="cd ~/Downloads && ls"
alias doc="cd ~/Documents && ls"

## apps
alias generate-passowrd='openssl rand -base64 20'
