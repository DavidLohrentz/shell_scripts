#!/bin/bash

read -p "Enter the path and folder: " FOLDER

if [ -d $FOLDER ]; then
    echo "The folder exists."

else
    echo "The folder doesn't exist"

fi
