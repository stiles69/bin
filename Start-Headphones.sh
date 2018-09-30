#!/bin/bash 
#====================================================
#
#          FILE: Start-Headphones.sh
# 
#         USAGE: ./Start-Headphones.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/30/2018 16:28
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	python /opt/headphones/Headphones.py
}	# end Main

Main

#===EXIT===
exit 0

