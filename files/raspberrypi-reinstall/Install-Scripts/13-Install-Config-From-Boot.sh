#!/bin/bash  
#====================================================
#
#          FILE: 13-Install-config-From-root.sh
# 
#         USAGE: ./13-Install-config-From-root.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/22/2018 23:43
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo cp /boot/slave1/home/brettsalemink/config /home/brettsalemink/.ssh/
}	# end Main

Main

#===EXIT===
exit 0

