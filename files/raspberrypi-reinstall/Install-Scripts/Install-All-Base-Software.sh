#!/bin/bash  
#====================================================
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
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/24/2018 08:38
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

SOFTWAREINSTALL="tmux docker vim mosh zsh"
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
		;;
	esac
}	# end function

function ProceedYes ()
{
	sudo apt-get update
	wait
	../0-Install-Git.sh
	wait
	sudo apt-get install $SOFTWAREINSTALL
	wait
	../5-Install-Oh-My-Zsh.sh
	wait
	../../../clone/Clone-Bin-Sh.sh
	wait
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

