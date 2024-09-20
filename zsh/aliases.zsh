# neovim
alias nv="nvim"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# clear
alias c="clear"
alias cl="clear"

# navigation
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
alias dl="cd ~/Downloads && ls"
alias doc="cd ~/Documents && ls"

# refresh zsh
alias exz="exec zsh"

# exit
alias e="exit"
alias q="exit"
alias :q="exit"

# tmux
if [[ -f $(which tmux) ]]; then
    alias tmux="tmux -f ~/.config/tmux/tmux.conf"
    alias t="tmux"
    alias ta="tmux a"
    alias tl="tmux ls"
    alias tlk="tmux list-keys"
    alias tks="tmux kill-session"
fi

# use eza in place of ls
if [[ -f $(which eza) ]]; then
    # files and dirs
    alias ls='eza -1 --icons --color=always --group-directories-first'
    alias l='ls'
    alias la='eza -a1 --icons --color=always --group-directories-first'
    ### tree view
    alias lt='eza -T --icons --color=always --git --git-repos --level=3'
    ### long form - files and dirs
    alias ll='eza -l --icons --color=always --group-directories-first --git --git-repos --no-user --no-permissions --time-style=relative'
    alias lla='eza -al --icons --color=always --group-directories-first --git --git-repos --no-user --no-permissions --time-style=relative'
    ### tree view
    alias llt='eza -lT --icons --color=always --level=3 --git --git-repos --no-user --no-permissions --time-style=relative --total-size'
    alias llta='eza -alT --icons --color=always --level=3 --git --git-repos --no-user --no-permissions --time-style=relative --total-size'
else
    # use default ls
    alias l.=' ls -dl'
    alias ls='ls'
    alias la='ls -ha'
    alias lt='ls --tree --light'
    alias ll='ls -lA --sort-dirs'
    alias lc='ls -lA --sd'
    alias lla='ls -la --sort-dirs'
    alias lsa='ls -lA --sd'
fi

# git
alias g="git"
alias gs="git status --short --branch"
alias commit="git commit"
alias pull="git pull"
alias push="git push"
alias force="git push --force"
alias lease="git push --force-with-lease"
alias gco="git checkout"
alias gcom="git checkout main"
alias gaa="git add --all"
alias gap="git add --patch"

# git log (check home dir gitconfig aliases)
if [[ -f $(which devmoji) ]]; then
    alias gl="git l -n 16 --color | devmoji --log --color"
else
    alias gl="git l"
fi

if [[ -f $(which gh) ]]; then
    # github search
    alias ghs="gh search"
    alias ghsr="gh search repos --archived=false"
    alias ghsro= "gh search repos --owner"

    # github issues
    alias ghi="gh issue"
    alias ghil="gh issue list"
    alias ghic="gh issue create"
    alias ghiv="gh issue view"
    alias ghivb="gh issue view --web" # browser
    alias ghivw="gh issue view --web"

    # github pull requests
    alias ghpr="gh pr"
    alias ghprl="gh pr list"
    alias ghprc="gh pr create"
    alias ghprco="gh pr checkout"
    alias ghprv="gh pr view"
    alias ghprvw="gh pr view --web"
    alias ghprvb="gh pr view --web" # browser
fi

# lazygit
if [[ -f $(which lazygit) ]]; then
    alias lg="lazygit"
fi

# lazydocker
if [[ -f $(which lazydocker) ]]; then
    alias ld="lazydocker"
fi

## util
alias generate-passowrd='openssl rand -base64 20'

# php - laravel
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
