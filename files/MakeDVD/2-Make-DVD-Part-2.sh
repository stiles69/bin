#!/bin/bash
#===============================================================================
#
#          FILE:  Make-DVD-Part-1.sh# 
#         USAGE:  
# 
#   DESCRIPTION:  Converts Movie to DVD.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES: 
#        AUTHOR:  Brett Salemink (BS), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  12/04/2017 06:39:37 PM CST
#      REVISION:  ---
#===============================================================================
#   MAIN SCRIPT
#===============================================================================

function BuildTSFiles ()
{
	echo "What do you want to name your DVD, One word all caps:"
	read DVDTITLE
	mkdir "$DVDTITLE"

	for i in "*.mpg"
	do
		NAME="$(echo "$i" | cut -d'.' -f1)"
		dvdauthor -o "$DVDTITLE/" -t "$NAME"
	done	
}	# end BuildTSFiles

function ProceedPart3 ()
{
	echo "Do you want to automatically start the next stage or manually. [1.Auto,2.Manual]"
	read PROCEEDPART3
	case $PROCEEDPART3 in
		1)
		$HOME/bin/files/MakeDVD/3-Make-DVD-Part-3.sh
		;;
		2)
		echo "Okay the next step is 3-Make-DVD-Part-3.sh"
		exit 0
		;;
		*)
		echo "Unknown option. Exiting"
		exit 1
		;;
	esac
}	# end ProceedPart3

function Main ()
{
	BuildTSFiles
	Proceed3
}	# end Main
Main
#===EXIT===
exit 0