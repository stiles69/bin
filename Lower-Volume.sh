#!/bin/bash  
#====================================================
#
#          FILE: Lower-Volume.sh
# 
#         USAGE: ./Lower-Volume.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/13/2018 17:07
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	amixer -D pulse sset Master 5%-
}	# end Main

Main

#===EXIT===
exit 0

