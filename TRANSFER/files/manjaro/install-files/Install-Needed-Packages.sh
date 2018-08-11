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
set -e
#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
LINE=' '

#-------------------------------------
function Proceed ()
{
	echo "This will install the Native and Aur saved packages lists."
	sleep 6
	echo $(cat $HOME/files/manjaro/Aur-Package-List.txt)
	echo "Do you want to continue? [Y/n]"
	read PROCEED
	case $PROCEED in
		Y|y)
		Main
		;;
		N|n)
		exit 0
		;;
		*)
		Main
		;;
	esac
}	# end function

function Main ()
{
	sudo pacman -S --needed $(< $HOME/bin/files/manjaro/Native-Package-List.txt)
	yaourt -S --needed --noconfirm $(< $HOME/bin/files/manjaro/Aur-Package-List.txt)
}	# end Main

Proceed

#===EXIT===
exit 0

