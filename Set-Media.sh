#!/bin/bash  
#====================================================
#
#          FILE: set-Media.sh
# 
#         USAGE: ./set-Media.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 12:56
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
# Emby
DIR0=/media
DIR3=/mnt/Media

# Plex
DIR1=/media/Adult
DIR2=/mnt/Media/Adult

# Emby
DIR4=/mnt/Media/Movies
DIR5=/mnt/Media/TV-Shows
DIR6=/media/Movies
DIR7=/media/TV-Shows
DIR8=/media/Music
DIRSSL=/media/ssl

USERPLEX=plex
USEREMBY=brettsalemink
GROUPEMBY=emby
GROUPPLEX=brettsalemink
GROUPMEDIA=plex
PERM=774
#-------------------------------------
function Main ()
{
	# Plex
	sudo chgrp -R $GROUPMEDIA $DIR0
	sudo chmod -R $PERM $DIR0
	# Plex
	echo "Permissions Changed for $DIR0"
	ls -l "$DIR0"
}	# end Main

Main

#===EXIT===
exit 0
