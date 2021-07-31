#!/bin/sh

if [[ $1 == "docked" ]]
then
    xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --mode 1920x1080 --pos 1920x0 --rotate normal
    sleep 1
    xrandr --output eDP-1 --off
    sleep 1
    notify-send 'Monitor Status' 'Using desk monitors.'

elif [[ $1 == "undocked" ]]
then
    xrandr --output eDP-1 --primary --mode 1600x900 --pos 0x0 --rotate normal
    sleep 1
    xrandr --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off
    sleep 1
    notify-send 'Monitor Status' 'Using laptop monitor'

else
    notify-send 'Monitor Status' 'Please select a valid option.'
fi
