#!/bin/bash  
#====================================================
#
#          FILE: Install-Tmux.sh
# 
#         USAGE: ./Install-Tmux.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:38
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error


#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo pacman -S tmux
}	# end Main

Main

#===EXIT===
exit 0
