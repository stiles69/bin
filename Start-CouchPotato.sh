#!/bin/bash 
#====================================================
#
#          FILE: Start-CouchPotato.sh
# 
#         USAGE: ./Start-CouchPotato.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/30/2018 15:35
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	python /opt/CouchPotato/CouchPotato.py --daemon
}	# end Main

Main

#===EXIT===
exit 0

