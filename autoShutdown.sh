#!/bin/bash

#/sbin/echo erster >> /home/m3admin/hue
#idletime=$((60*60))
#idletime=$((1000*60*60*2)) # 2 hours in milliseconds
idletime=$((1000*60*60)) 1 h

while true; do
    idle=`xprintidle`
    echo $idle
    if (( $idle > $idletime )); then
        #/sbin/date >> /home/m3admin/hue
        sudo systemctl poweroff
        #sudo shutdown -h now
        #dbus-send --system --print-reply --est=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.PowerOff" 
boolean:true$
    fi
    sleep 1
done

