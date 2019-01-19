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

REMOTEDIR1=/Media/Adult
REMOTEDIR2=/Media/Documentaries
REMOTEDIR3=/Media/Movies
REMOTEDIR4=/Media/Music-Videos
REMOTEDIR5=/Media/TV-Shows

OWNER=brettsalemink
GROUP=plex
PERM=774
#-------------------------------------
function Main ()
{
	sudo chown -R $OWNER:$GROUP /media/Videos
	sudo chmod -R $PERM /media/Videos

	mega-transfers -p -d
	wait

	# Adult
	mega-sync $DIR1/ $REMOTEDIR1/
	wait
	mega-sync -d 0
	wait
	echo "Done Syncing $DIR1 to $REMOTEDIR1"

	# Documentaries
	wait
	mega-sync -d 0
	wait
	echo "Done Syncing $DIR2 to $REMOTEDIR2"

	# Movies
	mega-sync $DIR3/ $REMOTEDIR3/
	wait
	mega-sync -d 0
	wait
	echo "Done Syncing $DIR3 to $REMOTEDIR3"

	# Music-Videos
	mega-sync $DIR4/ $REMOTEDIR4/
	wait
	mega-sync -d 0
	wait
	echo "Done Syncing $DIR4 to $REMOTEDIR4"

	# Music-Videos
	mega-sync $DIR5/ $REMOTEDIR5/
	wait
	mega-sync -d 0
	wait
	echo "Done Syncing $DIR5 to $REMOTEDIR5"

	mega-transfers -r -a
}	# end Main

Main

#===EXIT===
exit 0

