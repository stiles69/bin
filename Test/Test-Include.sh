#!/bin/bash  
#====================================================
#
#          FILE: Test-Include.sh
# 
#         USAGE: ./Test-Include.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/05/2019 01:57
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED --------------
#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{

	node /home/brettsalemink/lib/node/pushover-convert-completed index.js
}	# end Main

Main

#===EXIT===
exit 0

