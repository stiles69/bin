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
	sudo su
	wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
	unzip openvpn.zip	
	rm openvpn.zip
	touch login.conf
	echo "Please enter your PIA login:"
	read PIALOGIN
	echo "Please enter your PIA password:"
	read PIAPASSWORD
	echo "$PIALOGIN" >> login.conf
	echo "$PIAPASSWORD" >> login.conf
	chmod 400 login.conf
	cp US\ Chicago.ovpn ./Chicago.conf
	cat /etc/openvpn/Chicago.conf | sed -e "s/auth-user-pass/auth-user-pass /etc/openvpn/login.conf/" > /etc/openvpn/temp_file
	mv /etc/openvpn/temp_file /etc/openvpn/Chicago.conf
	echo "To start openvpn run [sudo openvpn Chicago.conf], or to autostart create a new line under the last AUTOSTART in /etc/default/openvpn with this line [AUTOSTART=Chicago]"

}	# end Main

Main

#===EXIT===
exit 0

