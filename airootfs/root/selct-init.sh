#!/bin/bash
echo "Welcome to Freedom Distro Installation"
echo "Choose your init system:"
echo "1) OpenRC"
echo "2) runit"
read -p "Enter choice (1-2): " choice
case $choice in
1)
  INIT_SYSTEM="openrc"
  ;;
2)
  INIT_SYSTEM="runit"
  ;;
*)
  echo "Invalid choice, defaulting to OpenRC"
  INIT_SYSTEM="openrc"
  ;;
esac
echo "Selected init system: $INIT_SYSTEM"
echo "$INIT_SYSTEM" >/tmp/init_choice
