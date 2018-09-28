#!/bin/bash  
#======================================================
#
#          FILE: Install-OpenVPN-PIA.sh
# 
#         USAGE: ./Install-OpenVPN-PIA.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/14/18 21:07
#      REVISION:  ---
#======================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function InstallOpenVPN ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get install openvpn
}	# end function

function InstallPIA ()
{
	cd /etc/openvpn
	sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
	sudo unzip openvpn.zip	
	echo "Please enter your PIA login:"
	read PIALOGIN
	echo "Please enter your PIA password:"
	read PIAPASSWORD
	sudo echo $PIALOGIN > login.conf
	sudo echo $PIAPASSWORD >> login.conf
	sudo chmod 400 login.conf
	sudo cp US\ Chicago.ovpn ./Chicago.conf
	sudo cat /etc/openvpn/Chicago.conf | sed -e "s/auth-user-pass/auth-user-pass /etc/openvpn/login.conf/" > /etc/openvpn/temp_file
	sudo mv /etc/openvpn/temp_file /etc/openvpn/Chicago.conf
	echo "To start openvpn run [sudo openvpn Chicago.conf], or to autostart create a new line under the last AUTOSTART in /etc/default/openvpn with this line [AUTOSTART=Chicago]"
	
}	# end function

function Main ()
{
	InstallOpenVPN
	InstallPIA
}	# end Main

Main

#===EXIT===
exit 0

