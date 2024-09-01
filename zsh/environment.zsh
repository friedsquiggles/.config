
# xdg base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# zsh directories
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
mkdir -p $ZSH_CACHE

# tmux
export ZSH_TMUX_CONFIG="$HOME/.config/tmux/tmux.conf"

# homebrew
export HOMEBREW_NO_ANALYTICS=1

# executable search path
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# eza theme
EZA_COLORS="$(vivid generate catppuccin-frappe)" # default styles
export EZA_COLORS="${EZA_COLORS}:da=0;38;2;140;170;238" # file's date
export EZA_COLORS="${EZA_COLORS}:uu=0;38;2;229;200;144" # a user that's you
export EZA_COLORS="${EZA_COLORS}:uR=0;38;2;231;130;132" # a user that's root
export EZA_COLORS="${EZA_COLORS}:sn=0;38;2;166;209;137" # file size
export EZA_COLORS="${EZA_COLORS}:sb=0;38;2;160;202;131" # file size units
export EZA_COLORS="${EZA_COLORS}:ur=0;38;2;229;200;144" # user's read permission
export EZA_COLORS="${EZA_COLORS}:uw=0;38;2;229;200;144" # user's write permission
export EZA_COLORS="${EZA_COLORS}:ux=0;38;2;229;200;144" # user's execute permission
