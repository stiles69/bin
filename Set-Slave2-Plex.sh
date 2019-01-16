#!/bin/bash  
#====================================================
#
#          FILE: set-Slave2-Emby.sh
# 
#         USAGE: ./set-Slave2-Embt.sh
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
DIR0=/mnt/sandisk
DIR1=/media
USERPLEX=brettsalemink
GROUPMEDIA=grpmedia
GROUPPLEX=plex

PERM=774
#-------------------------------------
function Main ()
{
	# Change all settings to group shared media. Shared by Emby, Plex, brettsalemink.
	sudo chown -R $USERPLEX:$GROUPPLEX $DIR0
	sudo chmod -R $PERM $DIR0
	sudo chown -R $USERPLEX:$GROUPPLEX $DIR1
	sudo chmod -R $PERM $DIR1
	# Emby
	echo "Permissions Changed for $DIR0"
	ls -l $DIR0
	ls -l $DIR1
}	# end Main

Main

#===EXIT===
exit 0
