#!/bin/sh

$HOME/.fehbg &
$HOME/.local/bin/dwm-bar
dunst &
#nm-applet &
picom -b
#polybar top &
#polybar bottom &
xmousepasteblock &
flameshot &
#$HOME/Build/dwm/sbar.sh &
#easyeffects --gapplication-service &
light -S 90

exec sxhkd &
#exec bspwm
exec dwm
