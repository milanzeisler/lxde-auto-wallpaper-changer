#!/bin/bash

# @author Milan Zeisler
# @link https://github.com/LeFizzy/lxde-auto-wallpaper-changer
# 
# Version: 1.0

while true; do
    wallpaper = $(ls /home/$USER/Pictures | shuf -n 1)
    pcmanfm --set-wallpaper=/home/$USER/Pictures/$wallpaper
    sleep 5
done
