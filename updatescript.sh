#!/bin/bash
# update packages and system regardless of distro

cd /etc

# Test if the local host is Arch-based

if [ -d /etc/pacman.d ]
then
    # Run the Arch version of the update command
    sudo pacman -Syu
fi

# Test if the local host is debian-based

if [ -d /etc/apt ]
then
    # Run the debian version of the update command
    sudo apt-get update && apt-get dist-upgrade

fi
