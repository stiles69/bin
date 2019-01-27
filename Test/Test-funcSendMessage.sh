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
	echo $(SendMessage "Summary" "The Body" "/usr/share/icons/roguedesigns/64x64/Slave-Icon.svg")
}	# end Main

Main

#===EXIT===
exit 0
