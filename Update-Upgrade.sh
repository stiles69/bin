#!/bin/bash

SCRIPTDEFINITION="This will install update the Arch repositories."
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
	echo "Which system to you want to update? [1.Debian Based, 2.Arch Based]"
	read SYSTEMINFO
	case $SYSTEMINFO in
		1)
		DebUpdateUpgrade
		;;
		2)
		ArchUpdateUpgrade
		;;
		*)
		exit 0
		::
	esac
}	# end function

function ProceedNo ()
{
	exit 0 # default action is exit for no
}	# end function

function DebUpdateUpgrade ()
{
	sudo apt-get update -y && sudo apt-get upgrade -y
}	# end function

function ArchUpdateUpgrade ()
{
	sudo pacman -Syu
}	# end function
function Main ()
{
	Proceed
	$HOME/lib/sh/funcReboot.sh
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly
