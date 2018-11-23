#!/bin/bash  
#====================================================
#
#          FILE: 15-Install-All-Config-From-Boot.sh
# 
#         USAGE: ./15-Install-All-Config-From-Boot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:58
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
	
	sudo cp /boot/slave1/home/brettsalemink/config /home/brettsalemink/.ssh/
	
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
	
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wait
	sudo cp /boot/slave1/home/brettsalemink/.zshrc /home/brettsalemink/
	wait
	echo 'Oh My ZSH installed.'
	sleep 5

	echo "Do you want to check .zshrc? [Y/n]"
	read ANSWER

	case "$ANSWER" in
		Y|y)
		vim /home/brettsalemink/.zshrc
		;;
		N|n)
		exit 0
		;;
		*)
		vim /home/brettsalemink/.zshrc
		;;
	esac
}	# end Main

Main

#===EXIT===
exit 0

