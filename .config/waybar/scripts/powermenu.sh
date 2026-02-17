#!/bin/bash

entries="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Sleep\n󰍃 Logout"

selected=$(echo -e "$entries" | wofi --dmenu --cache-file /dev/null --location 3 --xoffset -20 --yoffset 50 --width 200 --lines 4 --prompt "Power Menu")

# Execute based on selection
case $selected in
  *Shutdown)
    systemctl poweroff ;;
  *Reboot)
    systemctl reboot ;;
  *Sleep)
    systemctl suspend ;;
  *Logout)
    hyprctl dispatch exit ;;
esac
