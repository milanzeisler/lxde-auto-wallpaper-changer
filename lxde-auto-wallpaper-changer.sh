#!/bin/bash

# @author Milan Zeisler
# @link https://github.com/LeFizzy/lxde-auto-wallpaper-changer
# 
# Version: 1.3

interval=300
folder="Pictures"

while getopts ":h:i:f:" opt; do
  case $opt in
    i) interval="$OPTARG"
    ;;
    f) folder="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

while true; do
    wallpaper=$(ls /home/$USER/$folder | shuf -n 1)
    pcmanfm --set-wallpaper=/home/$USER/$folder/$wallpaper
    sleep $interval
done
