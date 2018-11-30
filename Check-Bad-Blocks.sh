#!/bin/bash  
#====================================================
#
#          FILE: Check-Bad-Blocks.sh
# 
#         USAGE: ./Check-Bad-Blocks.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/30/2018 11:46
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
HARDDRIVE="$1"
#-------------------------------------
function Main ()
{
	if [ "$#" -ne 1 ]
	then
		echo "Illegal number of parameters"
		echo "What is the path to the Hard Drive you want to get a health status from:"
		read HARDDRIVE
	fi

	sudo badblocks -v $HARDDRIVE > $HOME/badsectors.txt
	wait	
}	# end Main

Main

#===EXIT===
exit 0

