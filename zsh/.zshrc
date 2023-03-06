# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme (default: robbyrussell):
#ZSH_THEME="fox"
ZSH_THEME="simple"

# SSH fix for kitty
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias scss='sass --watch \#source/scss:css'
alias v='nvim'
alias rg='ranger'
alias ds4='bluetoothctl power on && bluetoothctl connect D0:BC:C1:AE:59:8C'

# PATH UPD
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"

# Python virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh
