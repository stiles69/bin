#!/bin/bash  
#====================================================
#
#          FILE: Show-Transfers.sh
# 
#         USAGE: ./Show-Transfers.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/15/2018 07:59
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	mega-transfers --path-display-size=40
}	# end Main

Main

#===EXIT===
exit 0

