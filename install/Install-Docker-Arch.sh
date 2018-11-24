#!/bin/bash  
#====================================================
#
#          FILE: Install-Docker-Arch.sh
# 
#         USAGE: ./Install-Docker-Arch.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/24/2018 03:30
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	wget -O - https://raw.github.com/resin-io/docker-install-script/master/install.sh | sh
	wait
	sudo echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.d/40-ip-forward.conf
	wait
	sudo systemctl enable docker.service
	wait
	echo 'You must now reboot'

}	# end Main

Main

#===EXIT===
exit 0

