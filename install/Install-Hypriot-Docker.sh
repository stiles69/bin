#!/bin/bash 
#====================================================
#
#          FILE: Install-Hypriot-Docker.sh
# 
#         USAGE: ./Install-Hypriot-Docker.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 03:26
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cd $HOME/Downloads
	curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | sudo bash
	sudo apt-get install docker-hypriot=1.11.1-1

}	# end Main

Main

#===EXIT===
exit 0

