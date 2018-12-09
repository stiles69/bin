#!/bin/bash 
#====================================================
#
#          FILE: *-Install-Raspberry-Pi.sh
# 
#         USAGE: ./*-Install-Raspberry-Pi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/08/2018 22:17
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo pacman -Syu
	wait
	yay -Syu
	wait
	sudo pacman -S zsh
	wait
	./2-Create-User-brettsalemink.sh
	wait
	sudo chsh -s /bin/zsh brettsalemink
	wait	
	echo "Now reboot and run second script *-Install.sh"
}	# end Main

Main

#===EXIT===
exit 0

