#!/bin/bash
# update packages and system in debian and arch-based distros

cd /etc

# Test if the local host is Arch-based

if [ -d /etc/pacman.d ]
then
    # Run the Arch version of the update command
    sudo pacman -Syu


# Test if the local host is debian-based

elif [ -d /etc/apt ]
then
    # Run the debian version of the update command
    sudo apt-get update && apt-get dist-upgrade

# Test if the local host is Alpine-based

elif [ -d /etc/apk ]
then
    # Run the Alpine version of the update command
    apk update && apk upgrade

else
    echo "No upgrades performed"

fi
