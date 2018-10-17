#!/bin/bash
#====================================================
#
#          FILE:  0-Bin-Install.sh
# 
#         USAGE:  ./0-Bin-Install.sh 
# 
#   DESCRIPTION:  This installs git and clones bin.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/20/2018 08:30:04 AM CDT
#      REVISION:  ---
#====================================================

function CloneBin ()
{
	echo 'Do you wish to clone https or use ssh? [1. https, 2. SSH]'
	read GITCLONETYPE
	case $GITCLONETYPE in
		"1")
		cd $HOME
		git clone https://github.com/stiles69/bin.git
		;;
		"2")
		cd $HOME
		git clone git@github.com:stiles69/bin.git
		;;
		*)
		echo 'Invalid answer exiting...'
		exit 0
		;;
	esac
} 	# end function	

function Main ()
{
	CloneBin
}	# End Function

Main

# === Exit ===
exit 0
