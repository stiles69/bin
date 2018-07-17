#!/bin/bash
#===============================================================================
#
#          FILE:  Install-PiVPN.sh
# 
#         USAGE:  ./Install-PiVPN.sh 
# 
#   DESCRIPTION:  Installs openVPN on RaspberryPi.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  05/06/2018 07:56:51 PM CDT
#      REVISION:  ---
#===============================================================================

function Update-Apt ()
{
	sudo apt-get update -y
}	# end function

function InstallOpenVPN ()
{
	sudo apt-get install openvpn unzip -y
}	# end function

function DownloadPIAConfigFiles ()
{
	cd /etc/openvpn
	sudo wget --no-check-certificate https://www.privateinternetaccess.com/openvpn/openvpn.zip
	sudo unzip openvpn.zip
}	end function

function Main ()
{
	Update-Apt
	InstallOpenVPN
	DownloadPIAConfigFiles
}	# end Main

Main

#==EXIT==
exit 0
