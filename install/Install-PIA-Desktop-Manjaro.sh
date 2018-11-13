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
	sudo pacman -S openvpn
	cd $HOME/Downloads
	mkdir OpenVPN-setup-PIA
	cd OpenVPN-setup-PIA
	wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
	unzip openvpn.zip
	cat $HOME/files/pia-instructions.txt
	
		
}	# end Main

Main

#===EXIT===
exit 0


