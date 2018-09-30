#!/bin/bash 
#====================================================
#
#          FILE: Config-OpenVPN-PIA.sh
# 
#         USAGE: ./Config-OpenVPN-PIA.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/29/2018 21:25
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cd /etc/openvpn
	sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
	sudo unzip openvpn.zip	
	sudo rm openvpn.zip
	sudo touch login.conf
	sudo echo "Please enter your PIA login:"
	sudo read PIALOGIN
	sudo echo "Please enter your PIA password:"
	sudo read PIAPASSWORD
	sudo echo "$PIALOGIN" >> login.conf
	sudo echo "$PIAPASSWORD" >> login.conf
	sudo chmod 400 login.conf
	sudo touch /etc/openvpn/temp_file
	sudo cp US\ Chicago.ovpn ./Chicago.conf
	sudo cat /etc/openvpn/Chicago.conf | sed -e "s/auth-user-pass/auth-user-pass /etc/openvpn/login.conf/" > /etc/openvpn/temp_file
	sudo mv /etc/openvpn/temp_file /etc/openvpn/Chicago.conf
	echo "To start openvpn run [sudo openvpn Chicago.conf], or to autostart create a new line under the last AUTOSTART in /etc/default/openvpn with this line [AUTOSTART=Chicago]"

}	# end Main

Main

#===EXIT===
exit 0

