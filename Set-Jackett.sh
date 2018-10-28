#!/bin/bash  
#====================================================
#
#          FILE: Set-Jackett.sh
# 
#         USAGE: ./Set-Jackett.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/28/2018 01:36
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=$HOME/development/Docker/docker-jackett-armhf
DIR2=/torrents

#-------------------------------------
function Main ()
{
	sudo chown -R brettsalemink:docker "$DIR1"
	sudo chown -R brettsalemink:docker "$DIR2"
	sudo chmod -R 774 "$DIR1"
	sudo chmod -R 774 "$DIR2"

	ll $DIR1
	ll $DIR2
}	# end Main

Main

#===EXIT===
exit 0

