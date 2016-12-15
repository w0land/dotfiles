#!/bin/bash
~/dotfiles/scripts/bspwm_xrandr_stop.sh
xrandr --output DP2-1 --auto
xrandr --output DP2-2 --mode 1920x1080 --right-of DP2-1
xrandr --output eDP1 --off

polybar work_vga1 --config=$HOME/dotfiles/lemonbuddy/thinkpad/dual -r & 
polybar work_hdmi1 --config=$HOME/dotfiles/lemonbuddy/thinkpad/dual -r & 

