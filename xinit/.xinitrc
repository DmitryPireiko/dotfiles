#!/bin/sh

$HOME/.fehbg &
$HOME/.local/bin/dwm-bar
dunst &
picom -b
xmousepasteblock &
easyeffects --gapplication-service &
light -S 100

exec sxhkd &
exec dwm
