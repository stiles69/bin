#!/bin/bash  
#====================================================
#
#          FILE: UnMute.sh
# 
#         USAGE: ./UnMute.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/13/2018 17:10
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	amixer -D pulse sset Master unmute
}	# end Main

Main

#===EXIT===
exit 0

