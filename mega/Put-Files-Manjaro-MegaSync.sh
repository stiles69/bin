#!/bin/bash  
#====================================================
#
#          FILE: Put-Files-Manjaro-MegaSync.sh
# 
#         USAGE: ./Put-Files-Manjaro-MegaSync.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/19/2019 09:13
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
OWNER=brettsalemink
GROUP=plex
PERM=774

DIR1=/media/Videos/Adult

REMOTEDIR1=/Media/Adult
#-------------------------------------
fuction ChangePermissions ()
{
	sudo chown -R $OWNER:$GROUP /media/Videos
	sudo chmod -R $PERM /media/Videos
	echo "Changed permission on /media/Videos to:"
	ls -l /media/Videos
}

function PutDirectory ()
{
	local SUBDIRECTORY
	for file in $SUBDIRECTORY
	mega-put $SUBDIRECTORY/$file $REMOTEDIR
	wait

}


function Main ()
{
	ChangePermissions ()

	PutDirectory $DIR1
}	# end Main

Main

#===EXIT===
exit 0

