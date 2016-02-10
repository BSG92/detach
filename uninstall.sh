#!/bin/bash

#Change LOCATION & FILENAME to reflect the changes you made when installing the script
LOCATION="/usr/sbin"
FILENAME="detach"

if [ ! $UID = 0 ]; then
	echo -e '\E[31m'"You need to be root to remove \"detach\"\033[0m"
else
	if [ -f "$LOCATION/$FILENAME" ]; then
		rm -f $LOCATION/$FILENAME
        if [ $? = 0 ]; then  
        	echo "\"Detach\" script successfully removed"
        	exit 0
        else
        	echo "Couldn't remove the script.."
        	exit 1
        fi
    else
        echo "\"detach script not found\""
	fi
fi
