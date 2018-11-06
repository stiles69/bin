#!/bin/bash  
#====================================================
#
#          FILE: Install-Docker-113.sh
# 
#         USAGE: ./Install-Docker-113.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/06/2018 05:31
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	curl -sSL https://get.docker.com | sh
	wait
	sudo usermod -aG docker brettsalemink
	wait 
	sudo apt-get install docker-compose
	wait
	echo 'Install done'
	echo 'Possible Kernel Features Required'

	curl -L https://raw.githubusercontent.com/docker/docker/master/contrib/check-config.sh | sh
	wait
}	# end Main

Main

#===EXIT===
exit 0

