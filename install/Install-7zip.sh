#!/bin/bash  
#====================================================
#
#          FILE: Install-7zip.sh
# 
#         USAGE: ./Install-7zip.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/10/2018 00:23
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------
. $HOME/lib/sh/funcInstall.sh
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SOFTWAREINSTALL="p7zip-full"
SCRIPTDEFINITION="This will install $SOFTWAREINSTALL"
#-------------------------------------
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
	Install $SOFTWAREINSTALL
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
}	# end Main

Main

#===EXIT===
exit 0

