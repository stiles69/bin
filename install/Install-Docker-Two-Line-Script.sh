#!/bin/bash  
#====================================================
#
#          FILE: Install-Docker-Two-Line-Script.sh
# 
#         USAGE: ./Install-Docker-Two-Line-Script.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/06/2018 13:40
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
	wait
}	# end Main

Main

#===EXIT===
exit 0

