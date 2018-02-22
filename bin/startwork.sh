#!/bin/bash

function start() {
    nohup $@ > /dev/null 2>&1 &
}

setxkbmap pl

start pidgin
systemctl --user start mopidy
systemctl --user start gcalcli.timer
systemctl --user start getmail.timer 

out=`ps ax | grep /opt/google/chrome/chrome | grep -v grep`
if [ "$out" == "" ]; then
    google-chrome-stable --profile-directory="Profile 4" --class=chrome_priv &
else
    echo "Chrome is running"
fi

firefox & 
