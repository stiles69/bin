#!/bin/bash  
#====================================================
#
#          FILE: Set-RPI-Docker-Permissions.sh
# 
#         USAGE: ./Set-RPI-Docker-Permissions.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/21/2018 03:20
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=$HOME/development/Docker
DIR2=/torrents
GROUPER=docker
USERER=brettsalemink
#-------------------------------------
function Main ()
{
	sudo chown -R $USERER:$GROUPER "$DIR1"
	sudo chmod -R 774 "$DIR1"
	sudo chown -R $USERER:$GROUPER "$DIR2"
	sudo chmod -R 774 "$DIR2"
	ls -l "$DIR1"
	ls -l "$DIR2"

}	# end Main

Main

#===EXIT===
exit 0

