#!/bin/bash  
#===============================================================================
#
#          FILE: Install-Tmux.sh
# 
#         USAGE: ./Install-Tmux.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/07/18 12:25
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

SOFTWAREINSTALL="tmux"
SCRIPTDEFINITION="This will install "$SOFTWAREINSTALL

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
	sudo emerge $SOFTWAREINSTALL
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
	~/bin/Reboot.sh
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly

