#!/bin/bash  
#===============================================================================
#
#          FILE: update-upgrade.sh
# 
#         USAGE: ./update-upgrade.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/04/2018 01:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

function ProceedYes ()
{
	echo "Which system to you want to update? [1.Debian Based, 2.Arch Based]"
	read SYSTEMINFO
	case $SYSTEMINFO in
		1)
		DebUpdateUpgrade		
		;;
		2)
		ArchUpdateUpgrade		
		;;
		*)
		echo "Your entry did not match any options. Exiting"
		exit 0
		;;
	esac
}	# end function

function DebUpdateUpgrade ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
}	# end function

function ArchUpdateUpgrade ()
{
	sudo pacman -Syu
	sudo pacman -S yay
	yay -Syu
}	# end function

function Main ()
{
	ProceedYes	
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly
