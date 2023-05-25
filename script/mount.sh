#!/bin/sh

uid=$(id -u)
gid=$(id -g)

usbdev=$(ls -l /sys/dev/block/ | awk -F"/" '($7~"usb" && $15~"sd") {print "/dev/"$15}')

if [ "$usbdev" ]
then
        selected=$( \
                lsblk -rno size,name,mountpoint $usbdev | \
                awk '($1!~"M" && $1!~"K") {printf "%s%8s%12s\n",$2,$1, $3}' |\
                dmenu -l 5 -i -fn "monospace-13" -p "USB Drive: " | awk '{print $1}' \
        )
        if grep -qs $selcted /proc/mounts
        then
                sync
                sudo umount /dev/$selected
                grep -qs /mnt/$selected /proc/mounts || sudo rm -rf /mnt/$selected
        else
                [ ! -d /mnt/$selected ] && sudo mkdir /mnt/$selected
                sudo mount -o uid=$uid,gid=$gid /dev/$selected /mnt/$selected
        fi
else
        echo "No drives connected" | dmenu -i -fn "monospace-13" -p "USB Drive: "
        exit
fi



