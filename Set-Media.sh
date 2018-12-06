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

USERPLEX=nobody
USEREMBY=nobody
GROUPEMBY=emby
GROUPPLEX=plex
GROUPMEDIA=media

PERM=770
#-------------------------------------
function Main ()
{
	# Change all settings to group shared media. Shared by Emby, Plex, brettsalemink.
	sudo chgrp -R $GROUPMEDIA $DIR0
	sudo chmod -R $PERM $DIR0
	#sudo chgrp -R $GROUPMEDIA $DIR3
	#sudo chmod -R $PERM $DIR3
	# Emby
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR0
#	sudo chmod -R $PERM $DIR0
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR3
#	sudo chmod -R $PERM $DIR3
#	# Plex
#	sudo chown -R $USERPLEX:$GROUPPLEX $DIR1
#	sudo chmod -R $PERM $DIR1
#	sudo chown -R $USERPLEX:$GROUPPLEX $DIR2
#	sudo chmod -R $PERM $DIR2
	# Emby
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR4
#	sudo chmod -R $PERM $DIR4
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR5
#	sudo chmod -R $PERM $DIR5
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR6
#	sudo chmod -R $PERM $DIR6
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR7
#	sudo chmod -R $PERM $DIR7
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIR8
#	sudo chmod -R $PERM $DIR8	
#	sudo chown -R $USEREMBY:$GROUPEMBY $DIRSSL
#	sudo chmod -R $PERM $DIRSSL
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
