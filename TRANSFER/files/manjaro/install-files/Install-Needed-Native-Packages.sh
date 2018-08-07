#!/bin/bash  
#=========================================================
#
#          FILE: Install-Needed-Native-Packages.sh
# 
#         USAGE: ./Install-Needed-Native-Packages.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 08/06/2018 18:41
#      REVISION:  ---
#=========================================================
set -o nounset                              # Treat unset variables as an error

#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
LINE=' '

#-------------------------------------
function Main ()
{
	sudo pacman -S --needed $(< $HOME/bin/files/manjaro/Native-Package-List.txt)
	yaourt -S --needed --noconfirm $(< $HOME/bin/files/manjaro/Aur-Package-List.txt)
}	# end Main

Main

#===EXIT===
exit 0

