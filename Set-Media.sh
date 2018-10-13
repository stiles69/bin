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
DIR1=/mnt/Media
DIR2=$HOME/Media
#-------------------------------------
function Main ()
{
	sudo chown -R plex:brettsalemink $DIR1
	sudo chmod -R 774 $DIR1
	sudo chown -R plex:brettsalemink $DIR2
	sudo chmod -R 774 $DIR2

	echo 'Permissions Changed for $DIR1'
	ls -l /mnt/Media
	echo 'Persmissions Changed for $DIR2'
	ls -l $HOME/Media
}	# end Main

Main

#===EXIT===
exit 0
