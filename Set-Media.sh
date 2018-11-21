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
USEREMBY=emby
GROUPEMBY=emby
GROUPPLEX=plex
#-------------------------------------
function Main ()
{
	# Emby
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR0
	sudo chmod -R 774 $DIR0
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR3
	sudo chmod -R 774 $DIR3
	# Plex
	sudo chown -R $USERPLEX:$GROUPPLEX $DIR1
	sudo chmod -R 774 $DIR1
	sudo chown -R $USERPLEX:$GROUPPLEX $DIR2
	sudo chmod -R 774 $DIR2
	# Emby
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR4
	sudo chmod -R 774 $DIR4
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR5
	sudo chmod -R 774 $DIR5
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR6
	sudo chmod -R 774 $DIR6
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR7
	sudo chmod -R 774 $DIR7
	sudo chown -R $USEREMBY:$GROUPEMBY $DIR8
	sudo chmod -R 774 $DIR8	
	sudo chown -R $USEREMBY:$GROUPEMBY $DIRSSL
	sudo chmod -$ 774 $DIRSSL
	# Emby
	echo "Permissions Changed for $DIR0"
	ls -l $DIR0
	# Plex
	echo "Permissions Changed for $DIR1"
	ls -l "$DIR1"
	echo "Permissions Changed for $DIR2"
	ls -l "$DIR2"
	# Emby
	echo "Permissions Changed for $DIR3"
	ls -l "$DIR3"
	echo "Permissions Changed for $DIR4"
	ls -l "$DIR4"
	echo "Permissions Changed for $DIR5"
	ls -l "$DIR5"
	echo "Permissions Changed for $DIR6"
	ls -l "$DIR6"
	echo "Permissions Changed for $DIR7"
	ls -l $DIR7
	echo "Permissions Changed for $DIR8"
	ls -l $DIR8
	echo "Permissions Changed for $DIRSSL"
	ls -l $DIRSSL

}	# end Main

Main

#===EXIT===
exit 0
