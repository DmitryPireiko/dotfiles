# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme (default: robbyrussell):
#ZSH_THEME="fox"
ZSH_THEME="simple"

# SSH fix for kitty
#[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Temp aliases
if [ ! -f $BIN/zshaliases.sh ]; then
    touch $BIN/zshaliases.sh
    chmod +x $BIN/zshaliases.sh
    echo "#!/bin/zsh" > $BIN/zshaliases.sh
fi

source $BIN/zshaliases.sh

# Aliases
alias scss='sass --watch \#source/scss:css'
alias v='nvim'
alias rg='ranger'
alias po='poweroff'
alias re='reboot'
alias ss='systemctl suspend'
alias aliases='$EDITOR $HOME/.local/bin/zshaliases.sh'
