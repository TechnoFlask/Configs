#!/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout" | rofi -dmenu -i)

case "$choice" in
  "Shutdown") shutdown now ;;
  "Reboot") reboot ;;
  "Logout") kill -9 -1 ;;
  *) exit ;;
esac
