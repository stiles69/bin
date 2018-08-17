#!/bin/bash  
#====================================================
#
#          FILE: Start-OpenVPN-Ubuntu.sh
# 
#         USAGE: ./Start-OpenVPN-Ubuntu.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/15/18 11:41
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
CONFDIR=/etc/openvpn
#-------------------------------------
function Main ()
{
	sudo openvpn --cd $CONFDIR --daemon --config US_Chicago.ovpn
}	# end Main

Main

#===EXIT===
exit 0

