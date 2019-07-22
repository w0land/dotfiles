#!/bin/bash

icon="$HOME/dotfiles/lock.png"
#tmpbg='/tmp/screenshot.png'

if pgrep -x "swaylock" > /dev/null
then
    exit 1
fi

mpc_status="$(mpc status | grep playing | awk '{print $1}')"

function revert() {
    echo "$(date) reverting"
    #rm $tmpbg
    if [ "$mpc_status" == "[playing]" ]; then
        mpc play
    fi
}

trap revert HUP INT TERM

if [ "$mpc_status" == "[playing]" ]; then
    mpc pause
fi

#grim $tmpbg
tmpbg=~/dotfiles/walls/trees.jpg
convert -composite $tmpbg $HOME/dotfiles/rick.png -gravity South -geometry -20x1200 $tmpbg
swaylock $tmpbg --image ~/dotfiles/walls/trees.jpg

echo "FINISHED"

revert