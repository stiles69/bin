#!/bin/bash
#===============================================================================
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
#===============================================================================

function CloneSH ()
{
	echo 'Do you wish to clone https or use ssh? [1. https, 2. SSH]'
	read GITCLONETYPE2
	case $GITCLONETYPE2 in
		1)
		mkdir $HOME/lib
		cd $HOME/lib
		git clone https://github.com/stiles69/sh.git
		;;
		2)
		mkdir $HOME/lib
		cd $HOME/lib
		git clone git@github.com:stiles69/sh.git
		;;
		*)
		mkdir $HOME/lib
		cd $HOME/lib
		git clone https://github.com/stiles69/sh.git
		;;
	esac
}	# End Function

function Main ()
{
	CloneSH
}	# End Function

Main

# === Exit ===
exit 0
