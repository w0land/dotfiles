#!/bin/sh

~/.config/bspwm/panel/panel &
sleep 2
stalonetray --dockapp-mode simple &
feh --bg-scale $WALLPAPER &
conky -c ~/dotfiles/conky/gcalcli &
conky -c ~/dotfiles/conky/panel &