#!/bin/bash

#Install "detach" to /usr/sbin. Change this as you like
LOCATION="/usr/sbin"
FILENAME="detach"

if [ ! $UID -eq 0 ]; then
    echo -e '\E[31m'"Please run this as root\033[0m"
else
    if [ -f "$LOCATION/$FILENAME" ]; then
        echo -e '\E[33m'"\"detach\" script already installed"
        exit 0
    else
        install detach -t $LOCATION/
        chmod u+x $LOCATION/$FILENAME
        exit 0
    fi
fi
