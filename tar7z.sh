#!/bin/sh
## tar7z.sh for tar7z in /home/regisb/Documents/projets/github/tar7Z-autoscript
## 
## Made by Régis Berthelot
## Login   <regis.berthelot@epitech.eu>
## 
## Started on  Sat Jun  3 07:35:03 2017 Régis Berthelot
## Last update Sat Jun 10 11:33:34 2017 Régis Berthelot
##
#

TMPNAME="/tmp/autoscript_archive.tar"
DATE=`date -Iminutes`

if test "$1"
then
    tar cfv "$TMPNAME" "$@" && 7z a "$DATE".tar.7z "$TMPNAME"
    if test "$?" -eq 0
    then
	echo "\nDo you want to rename the archive? (DO NOT add extension)"
	echo "Press Enter to leave default name\nDefault name: $DATE.tar.7z"
	read NEWNAME
	if test "$NEWNAME"
	then
	    mv "$DATE".tar.7z "$NEWNAME".tar.7z
	fi
    fi
    rm -f "$TMPNAME"
fi
