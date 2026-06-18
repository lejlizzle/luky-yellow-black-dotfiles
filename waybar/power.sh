#!/bin/bash

while true; do
  clear

  sleep 0.5
  fastfetch
  echo "Press S to shutdown"
  echo "Press R to reboot"
  echo "Press N to cancel"

  read -n 1 choice
  echo ""

  case "$choice" in
    s|S)
      poweroff
      ;;
    r|R)
      reboot
      ;;
    n|N)
      exit 0
      ;;
    *)
      echo "Invalid option"
      sleep 1
      ;;
  esac
done
