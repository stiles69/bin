#!/bin/bash - 
#===============================================================================
#
#          FILE: Install-Vim-Gentoo.sh
# 
#         USAGE: ./Install-Vim-Gentoo.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/01/2018 04:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

SCRIPTDEFINITION="This will install vim."

function PROCEED ()
{
	echo $SCRIPTDEFINITION
	echo "Do you want to proceed? [Y/n]"
	read $PROCEED
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
	sudo emerge vim
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly


