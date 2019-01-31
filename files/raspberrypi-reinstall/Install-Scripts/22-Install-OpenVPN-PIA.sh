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
	wait
	sudo apt-get install openvpn -y
	wait
	sudo apt-get install resolvconf -y
	sudo apt-get install openvpn-systemd-resolved -y
	wait
}	# end function

function InstallPIA ()
{
	cd /etc/openvpn
	wait
	sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
	wait
	sudo unzip openvpn.zip	
	wait
	sudo rm openvpn.zip
	wait
	sudo cp $HOME/bin/files/etc/openvpn/login.conf /etc/openvpn
	wait
	sudo cp $HOME/bin/files/etc/openvpn/chicago.conf /etc/openvpn
	wait
	sudo cp $HOME/bin/files/etc/openvpn/toronto.conf /etc/openvpn
	wait
	sudo chmod 400 login.conf
	wait
	su -c "echo 'AUTOSTART="chicago"' >> /etc/default/openvpn"
	wait
}	# end function

function StartService ()
{
	sudo systemctl start openvpn@chicago.service
	wait
}

function CheckIP ()
{
	echo "The IP address is:"
	curl ipinfo.io/ip
	wait
}

function Main ()
{
	InstallOpenVPN
	InstallPIA
	#StartService
	#CheckIP
}	# end Main

Main

#===EXIT===
exit 0

