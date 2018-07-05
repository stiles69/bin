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


SOFTWAREINSTALL="git"

function InstallerDeb ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get install $SOFTWAREINSTALL
	InstallExtra
}	# End Function

function InstallerArch ()
{
	sudo pacman -S $SOFTWAREINSTALL
	InstallExtra
}	# End Function

function InstallerGentoo ()
{
	sudo emerge $SOFTWAREINSTALL --autounmask-write
	sudo etc-update
	sudo emerge $SOFTWAREINSTALL
	InstallExtra
}	# End Function

function Proceed ()
{
	echo "This will install "$SOFTWAREINSTALL
	echo "Do you want to proceed? [Y/n]"
	read PROCEED

	case $PROCEED in
		"Y"|"y")
		WhichDistro
		;;
		"N"|"n")
		exit 0
		;;
		*)
		WhichDistro
		;;
	esac
}	# End Function

function WhichDistro ()
{
	echo "Which Distro are you installing to? [1.Debian 2.Arch 3.Gentoo 4.Exit]"
	read DISTRO
	case $DISTRO in
		1)
		InstallerDeb
		;;
		2)
		InstallerArch
		;;
		3)
		InstallerGentoo
		;;
		4)
		exit 0
		;;
		*)
		echo "You need to pick one of the 3 distros. Option [1,2,3]"
		WhichDistro
		;;
	esac
}	# End Function

function InstallExtra ()
{
	git config --global user.name "stiles69"
	git config --global user.email "brett.salemink@gmail.com"
	git config --global core.editor "vim"
	cd ~/
	echo "Installing bin directory"
	git clone https://github.com/stiles69/bin.git
	echo "Installing lib/sh directory"
	mkdir ~/lib
	cd ~/lib
	git clone git@github.com:stiles69/sh.git
	echo "Finished cloning directories"
}	# end function
function Main ()
{
	Proceed
}	# End Function

Main

#=== Exit ===
exit 0
