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
DIR1=$HOME/development/Docker/rpi-docker-transmission-open-vpn
DIR2=/torrents
DIR4=$HOME/development/Docker/docker-duplicati-armhf
#-------------------------------------
function Main ()
{
	sudo chown -R brettsalemink:users "$DIR1"
	sudo chmod -R 774 "$DIR1"
	sudo chown -R brettsalemink:users "$DIR2"
	sudo chmod -R 774 "$DIR2"
	sudo chown -R brettsalemink:users "$DIR4"
	sudo chmod -R 774 "$DIR4"
	ls -l "$DIR1"
	ls -l "$DIR2"
	ls -l "$DIR4"

}	# end Main

Main

#===EXIT===
exit 0

