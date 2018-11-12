#!/bin/bash
#====================================================
#
#          FILE: Stop-Sync.sh
# 
#         USAGE: ./Stop-Sync.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 10:32
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	mega-sync
	echo "Which sync do you want to stop?"

}	# end Main

Main

#===EXIT===
exit 0

