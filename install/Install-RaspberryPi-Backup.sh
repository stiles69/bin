#!/bin/bash 
#====================================================
#
#          FILE: Install-RaspberryPi-Backup.sh
# 
#         USAGE: ./Install-RaspberryPi-Backup.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 04:10
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo apt-get update -y
	sudo apt-get install dcfldd -y
	sudo apt-get install gparted -y
}	# end Main

Main

#===EXIT===
exit 0

