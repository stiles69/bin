#!/bin/bash  
#====================================================
#
#          FILE: Start-Urserver.sh
# 
#         USAGE: ./Start-Urserver.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 16:08
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	/opt/urserver/urserver-start --no-manager --no-notify
}	# end Main

Main

#===EXIT===
exit 0

