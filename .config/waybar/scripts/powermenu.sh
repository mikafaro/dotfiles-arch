#!/bin/bash

options="󰐥 Power Off\n󰜉 Reboot\n󰤄 Suspend\n󰈆 Logout"

chosen=$(echo -e "$options" | walker --dmenu --maxheight 320 | awk '{print $2}')

case $chosen in
    "Power")
        hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0' ;;
    "Reboot")
        hyprshutdown -t 'Restarting...' --post-cmd 'reboot' ;;
    "Suspend")
        systemctl suspend ;;
    "Logout")
        hyprshutdown -t 'Exiting...' --vt 2 ;;
    *)
        exit 1 ;;
esac
