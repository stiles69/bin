#!/bin/bash  
#====================================================
#
#          FILE: Show-OS.sh
# 
#         USAGE: ./Show-OS.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/15/2018 20:30
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------

#---------- GLOBAL VARIABLES ---------
OS="$(lsb_release -si)"

#-------------------------------------
function Main ()
{
	case "$OS" in
		ManjaroLinux)
		ManjaroLinuxAction
		;;

	esac
}	# end Main

function ManjaroLinuxAction ()
{
	echo "The Distro is Manjaro"
}	# end

Main

#===EXIT===
exit 0

