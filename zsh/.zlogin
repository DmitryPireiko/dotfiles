# Auto start graphical session
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && Hyprland
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
