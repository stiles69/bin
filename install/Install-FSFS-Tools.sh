#!/bin/bash  
#====================================================
#
#          FILE: Install-FSFS-Tools.sh
# 
#         USAGE: ./Install-FSFS-Tools.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/01/2019 23:52
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo apt-get install f2fs-tools
	echo "Need to shutdown. Continue (Y/n):"
	read ANSWER

	case $ANSWER in
		Y|y)
		sudo shutdown now
		;;
		N|n)
		echo "Exiting."
		exit 0
		;;
		*)
		sudo shutdown now
		;;
	esac
}	# end Main

Main

#===EXIT===
exit 0

