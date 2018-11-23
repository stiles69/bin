#!/bin/bash  
#====================================================
#
#          FILE: Install-Etc-From-Root-Slave1.sh
# 
#         USAGE: ./Install-Etc-From-Root-Slave1.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:46
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
set -e # Needed for sleep
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo "Installing dhcpcd.conf"
	sleep 3
	sudo cp /boot/slave1/etc/dhcpcd.conf /etc/
	wait

	echo "Installing hostname"
	sleep 3
	sudo cp /boot/slave1/etc/hostname /etc/
	wait

	echo "Installing hosts"
	sleep 3
	sudo cp /boot/slave1/etc/hosts /etc/
	wait

	echo "Installing sshd_config"
	sleep 3
	sudo cp /boot/slave1/etc/ssh/sshd_config /etc/ssh/
	wait
}	# end Main

Main

#===EXIT===
exit 0

