#!/bin/sh
## tar7z.sh for tar7z in /home/regisb/Documents/projets/github/tar7Z-autoscript
## 
## Made by Régis Berthelot
## Login   <regis.berthelot@epitech.eu>
## 
## Started on  Sat Jun  3 07:35:03 2017 Régis Berthelot
## Last update Sun Jun  4 10:15:50 2017 Régis Berthelot
##
#

TMPNAME="/tmp/autoscript_archive.tar"
DATE=`date -Iminutes`
RC=0

if test "$1"
then
    tar cfv "$TMPNAME" "$@"
    RC=$?
    if test "$RC" -eq 0
    then
	7z a "$DATE".tar.7z "$TMPNAME"
	RC=$?
	rm "$TMPNAME"
	if test "$RC" -eq 0
	then
	    echo "\nDo you want to rename the archive (extension will be appended automatically)?\nPress Enter to leave default name\nDefault name: $DATE.tar.7z"
	    read NEWNAME
	    if test "$NEWNAME"
	       then
		   mv "$DATE".tar.7z "$NEWNAME".tar.7z
	    fi
	fi
    fi
fi
