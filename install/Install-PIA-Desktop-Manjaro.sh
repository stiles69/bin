#!/bin/bash  
#====================================================
#
#          FILE: Install-PIA-Desktop-Manjaro.sh
# 
#         USAGE: ./Install-PIA-Desktop-Manjaro.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 19:32
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
	wget https://www.privateinternetaccess.com/installer/pia.nm.sh
	wait
	echo "Preparing to install PIA in 5 seconds. Hit Ctrl-C to terminate install."
	echo "5"
	sleep 1
	echo "4"
	sleep 1
	echo "3"
	sleep 1
	echo "2"
	sleep 1
	echo "1"
	sleep 1
	sudo bash pis-nm.sh
	
}	# end Main

Main

#===EXIT===
exit 0


