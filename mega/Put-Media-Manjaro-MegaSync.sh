#!/bin/bash  
#====================================================
#
#          FILE: Sync-Media-Manjaro-MegaSync.sh
# 
#         USAGE: ./Sync-Media-Manjaro-MegaSync.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/19/2019 07:23
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=/media/Videos/Adult
DIR2=/media/Videos/Documentaries
DIR3=/media/Videos/Movies
DIR4=/media/Videos/Music-Videos
DIR4=/media/Videos/TV-Shows

OWNER=brettsalemink
GROUP=plex
PERM=774
#-------------------------------------
function Main ()
{
	sudo chown -R $OWNER:$GROUP /media/Videos
	sudo chmod -R $PERM /media/Videos

	mega-put -c $DIR2/ /Media/Documentaries/
	wait
	echo "Done Syncing Documentaries to MegaSync"
}	# end Main

Main

#===EXIT===
exit 0

