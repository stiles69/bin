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
DIR0=/media

DIR1=/media/Adult
DIR2=/mnt/Media


DIR3=/mnt/Media/Movies
DIR4=/mnt/Media/TV-Shows
DIR5=/media/Movies
DIR6=/media/TV-Shows
DIR7=/media/Music

DIRSSL=/media/ssl

USERPLEX=plex
USEREMBY=emby
GROUP=brettsalemink
#-------------------------------------
function Main ()
{
	sudo chown -R $USEREMBY:$GROUP $DIR0
	sudo chmod -R 774 $DIR0

	sudo chown -R $USERPLEX:$GROUP $DIR1
	sudo chmod -R 774 $DIR1
	sudo chown -R $USERPLEX:$GROUP $DIR2
	sudo chmod -R 774 $DIR2
	sudo chown -R $USEREMBY:$GROUP $DIR3
	sudo chmod -R 774 $DIR3

	sudo chown -R $USEREMBY:$GROUP $DIR4
	sudo chmod -R 774 $DIR4
	sudo chown -R $USEREMBY:$GROUP $DIR5
	sudo chmod -R 774 $DIR5
	sudo chown -R $USEREMBY:$GROUP $DIR6
	sudo chmod -R 774 $DIR6
	sudo chown -R $USEREMBY:$GROUP $DIR7
	sudo chmod -R 774 $DIR7
	
	sudo chown -R $USEREMBY:$GROUP $DIRSSL
	sudo chmod -$ 774 $DIRSSL

	echo "Permissions Changed for $DIR0"
	ls -l $DIR0

	echo "Permissions Changed for $DIR1"
	ls -l "$DIR1"
	echo "Permissions Changed for $DIR2"
	ls -l "$DIR2"
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

	echo "Permissions Changed for $DIRSSL"
	ls -l $DIRSSL

}	# end Main

Main

#===EXIT===
exit 0
