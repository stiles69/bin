#!/bin/bash  
#====================================================
#
#          FILE: Read-Transmission-Status.sh
# 
#         USAGE: ./Read-Transmission-Status.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 05:38
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	cat /torrents/Transmission-Status.txt
	rm /torrents/Extraction-Status.txt
}	# end Main

Main

#===EXIT===
exit 0

