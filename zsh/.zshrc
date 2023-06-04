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

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/home/sadnessits/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/home/sadnessits/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/home/sadnessits/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/home/sadnessits/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/home/sadnessits/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
