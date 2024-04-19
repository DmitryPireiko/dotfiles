# Auto xorg start Hyprland.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && Hyprland
