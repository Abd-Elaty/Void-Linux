#!/bin/sh

choice=$(echo "Shutdown\nReboot\nExit" | dmenu -i -fn "monospace-13" -sb "#ed1010" -p "Choose action:")

[ $choice = "Shutdown" ] && sudo poweroff
[ $choice = "Reboot"   ] && sudo reboot
[ $choice = "Exit"   ] && pkill dwm
