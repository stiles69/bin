#!/bin/bash - 
#===============================================================================
#
#          FILE: Install-GoTTY.sh
# 
#         USAGE: ./Install-GoTTY.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 14:08
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


SOFTWAREINSTALL="GoTTY"
SCRIPTDEFINITION="This will install $SOFTWAREINSTALL. You must have GoLang installed first."
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
		;;
	esac
}	# end function

function ProceedYes ()
{
	go get github.com/yudai/gotty
	echo "GoGetty binary should now be installed."
	ls $GOPATH/bin/
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


