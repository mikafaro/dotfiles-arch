#!/bin/bash

yay -Syu
echo "--------------------------"
echo "Done! Press Enter to exit."
read
pkill -RTMIN+8 waybar
