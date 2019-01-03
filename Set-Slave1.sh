#!/bin/bash  
#====================================================
#
#          FILE: Set-Slave3.sh
# 
#         USAGE: ./Set-Slave3.sh
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
DIR0=/torrents
DIR1=/home/brettsalemink/development/Docker/docker-deluge
USERSLAVE3=brettsalemink
GROUPDOCKER=docker
PERM=774
#-------------------------------------
function Main ()
{
	# Change all settings to group shared media. Shared by Emby, Plex, brettsalemink.
	sudo chown -R $USERSLAVE3:$GROUPDOCKER $DIR0
	sudo chmod -R $PERM $DIR0
	sudo chown -R $USERSLAVE3:$GROUPDOCKER $DIR1
	sudo chmod -R $PERM $DIR1
	# Emby
	echo "Permissions Changed for $DIR0"
	ls -l $DIR0
	ls -l $DIR1
}	# end Main

Main

#===EXIT===
exit 0
