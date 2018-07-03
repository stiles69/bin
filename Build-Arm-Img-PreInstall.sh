#!/bin/bash - 
#===============================================================================
#
#          FILE: Build-Arm-Img-PreInstall.sh
# 
#         USAGE: ./Build-Arm-Img-PreInstall.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/02/2018 19:47
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


SOFTWAREINSTALL="manjaro-tools-base qemu parted qemu-user-static benfmt-support-git binfmt-qemu-static"
SCRIPTDEFINITION="This will install "$SOFTWAREINSTALL
echo "This will do the preinstall in preperation to make a Arm-Img."
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
	sudo pacman -S manjaro-tools-base
	sudo pacman -S qemu
	sudo pacman -S parted
	sudo pacman -S qemu-user-static
	sudo pacman -S binfmt-support-git
	sudo pacman -S binfmt-qemu-static
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function Main ()
{
	Proceed
	. ~/lib/sh/funcReboot.sh
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly


