#!/bin/bash

options="🇺🇸 English (US)\n🇳🇴 Norwegian (NO)"

choice=$(echo -e "$options" | walker --dmenu --maxheight 320 -p "Select Layout:")

case "$choice" in
    *"English"*)
        hyprctl switchxkblayout all 0
        ;;
    *"Norwegian"*)
        hyprctl switchxkblayout all 1
        ;;
esac
