#!/bin/bash  
#====================================================
#
#          FILE: 20-Install-SSHPass.sh
# 
#         USAGE: ./20-Install-SSHPass.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/16/2019 01:34
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo pacman --noconfirm sshpass
	wait
}	# end Main

Main

#===EXIT===
exit 0

