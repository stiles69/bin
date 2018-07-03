#!/bin/bash
#===============================================================================
#
#          FILE:  Install-FFMPEG.sh
# 
#         USAGE:  ./Install-FFMPEG.sh
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
	echo $SCRIPTDEFINITION
	echo "Do you want to proceed? [Y/n]"
	read PROCEED
	case $PROCEED in
		"Y"|"y")
		ProceedYes
		;;
		"N"|"n")
		ProceedNo
		;;
		*)
		ProceedYes
	esac
}	# end function

function ProceedYes ()
{
	sudo chown -R brettsalemink:users ~/bin
	sudo chmod -R 774 ~/bin
	sudo chown -R brettsalemink:users $HOME/lib
	sudo chmod -R 774 $HOME/lib
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	ProceedYes
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly

