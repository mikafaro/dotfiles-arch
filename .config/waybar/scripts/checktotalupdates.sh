#!/bin/bash

# Check official pacman updates
official=$(checkupdates 2>/dev/null | wc -l)

# Check AUR updates 
if command -v yay &> /dev/null; then
    aur=$(yay -Qua 2>/dev/null | wc -l)
else
    aur=0
fi

total=$((official + aur))

# Output logic for Waybar
if [ "$total" -gt 0 ]; then
    echo "󰚰 $total"
else
    echo "󰄬"
fi
