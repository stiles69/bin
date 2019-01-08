#!/bin/bash  
#====================================================
#
#          FILE: Test-funcSendMessage.sh
# 
#         USAGE: ./Test-funcSendMessage.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/02/2019 01:11
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
source $HOME/lib/sh/funcSendMessage.sh
#-------------------------------------
function Main ()
{
	echo $(SendMessage "10.0.0.11" "Application Name" "Completed DVD" "Make DVD Script")
}	# end Main

Main

#===EXIT===
exit 0
