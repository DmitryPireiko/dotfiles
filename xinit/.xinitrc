#!/bin/sh

$HOME/.fehbg &
nm-applet &
#picom &
polybar top &
polybar bottom &
xmousepasteblock &
flameshot &
#$HOME/Build/dwm/sbar.sh &
easyeffects --gapplication-service &
light -S 90

exec sxhkd &
exec bspwm
