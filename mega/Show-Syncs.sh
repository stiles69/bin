#!/bin/bash  
#====================================================
#
#          FILE: Show-Syncs.sh
# 
#         USAGE: ./Show-Syncs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 10:21
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SYNCFROMDIR=/media/TV-Shows/
SYNCTODIR=/Media/TV-Shows/
#-------------------------------------
function Main ()
{
	mega-transfers --show-syncs --path-display-size=50 --limit=3

}	# end Main

Main

#===EXIT===
exit 0

