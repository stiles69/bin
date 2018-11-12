#!/bin/bash  
#====================================================
#
#          FILE: Create-Custom-Sync.sh
# 
#         USAGE: ./Create-Custom-Sync.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 11:05
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo "What is the full path of the SYNCFROMDIR?"
	read SYNCFROMDIR
	echo "What is the full path of the SYNCTODIR on Mega?"
	read SYNCTODIR
	mega-sync "$SYNCFROMDIR" "$SYNCTODIR"
	
}	# end Main

Main

#===EXIT===
exit 0

