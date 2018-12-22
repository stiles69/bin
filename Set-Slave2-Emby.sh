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
USEREMBY=nobody
GROUPMEDIA=emby

PERM=774
#-------------------------------------
function Main ()
{
	# Change all settings to group shared media. Shared by Emby, Plex, brettsalemink.
	sudo chgrp -R $GROUPMEDIA $DIR0
	sudo chmod -R $PERM $DIR0
	# Emby
	echo "Permissions Changed for $DIR0"
	ls -l $DIR0
}	# end Main

Main

#===EXIT===
exit 0
