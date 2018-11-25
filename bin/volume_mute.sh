#!/bin/bash
pactl -- set-sink-mute 0 toggle
mutestatus=`pactl list | sed -n 205p | awk '{print $2}'`
mutestatus="Mute = $mutestatus"
notify-send "$mutestatus"
exit
