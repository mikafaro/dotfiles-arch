#!/bin/bash

entries="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Sleep\n󰍃 Logout"

selected=$(echo -e "$entries" | wofi --dmenu --cache-file /dev/null --location 3 --xoffset -10 --yoffset 2 --width 200 --lines 4 --prompt "Power Menu")

# Execute based on selection
case $selected in
  *Shutdown)
    hyprshutdown -t 'Shutting down ... ' -p 'shutdown -P 0' ;;
  *Reboot)
    hyprshutdown -t 'Rebooting ... ' -p 'reboot' ;;
  *Sleep)
    loginctl suspend ;;
  *Logout)
    hyprshutdown -t 'Exiting Hyprland ... ' --vt 2 ;;
esac
