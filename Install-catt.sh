#!/bin/bash  
#===============================================================================
#
#          FILE: Install-catt.sh
# 
#         USAGE: ./Install-catt.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/06/2018 21:08
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


SOFTWAREINSTALL="catt"


function InstallerDeb ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get install $SOFTWAREINSTALL
}	# End Function

function InstallerArch ()
{
	yaourt $SOFTWAREINSTALL
}	# End Function

function InstallerGentoo ()
{
	sudo emerge $SOFTWAREINSTALL --autounmask-write
	sudo etc-update
	sudo emerge $SOFTWAREINSTALL
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

function Main ()
{
	Proceed
}	# End Function

Main

#=== Exit ===
exit 0
# == EXIT ==
exit 0

