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
function WhichOS ()
{
	echo 'Which OS are you using 1. Debian based, 2. Arch based, 3. Gento? [1,2,3]'

	read RESULT
	case $RESULT in
		1)
		InstallGitDeb
		;;
		2)
		InstallGitArch
		;;
		3)
		InstallGitGentoo
		;;
		*)
		echo "Incorrect entry. Not installing Git."
		;;
	esac
}	# end function

function InstallGitDeb ()
{
	echo "Installing For Debian/Based."    
	sudo apt-get install git 
}	# end function


function InstallGitArch ()
{
	echo "Installing For Arch."    
	sudo pacman -S git 
}	# end function

function InstallGitGentoo ()
{
	echo "Installing For Gentoo."    
	sudo emerge git --autounmask-write
    sudo etc-update
	sudo emerge git	
}	# end function

function ConfigureGitUser ()
{
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"	
}	# end function

function Main ()
{
	WhichOS
	wait
	ConfigureGitUser
	wait
}	# end Main

Main

# == exit ==
exit 0
