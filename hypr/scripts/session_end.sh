#!/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout" | rofi -dmenu -i)

case "$choice" in
  "Shutdown") shutdown now ;;
  "Reboot") reboot ;;
  "Logout") hyprctl dispatch exit ;;
  *) exit ;;
esac
