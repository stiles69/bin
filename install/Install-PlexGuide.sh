#!/bin/bash  
#====================================================
#
#          FILE: Install-PlexGuide.sh
# 
#         USAGE: ./Install-PlexGuide.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/16/2018 10:25
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo wget -N https://plexguide.com/install.sh && sudo bash ./install.sh

}	# end Main

Main

#===EXIT===
exit 0

