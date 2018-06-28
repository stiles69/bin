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


function Proceed ()
{

echo 'Do you want to pull down bin and lib/sh from repo? (Y/n)'
read PROCEED

case $PROCEED in
	
	"Y" | "y")
	CloneBin
	CloneSH
	;;

	"N" | "n")
	exit 0
	;;

	*)
	CloneBin
	CloneSH
	;;

esac
}	# End Function

function CloneBin ()
{
	cd ~/
	git clone git://github.com/stiles69/bin.git
	echo '~/bin directory installed.'
}	# End Function

function CloneSH ()
{
	cd ~/lib	
	git clone git@github.com:stiles69/sh.git
	echo '~/lib/sh installed'
}	# End Function

function Main ()
{
	Proceed
}	# End Function

Main

exit 0

