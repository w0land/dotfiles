#!/bin/sh

kstart kmail & 
akonadictl start
kstart skype & 
kstart pidgin & 
truecrypt /dev/sda4 -p=bs8b@_@kmM & 
kstart firefox https://outlook.com/here.com &
systemctl --user start mopidy
