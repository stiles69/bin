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


. $HOME/lib/sh/funcGenerateISOImage.sh


export VIDEO_FORMAT=NTSC

function FinalizeDVD ()
{
	dvdauthor -o "$DVDTITLE" -T
}	# end Main

function ProceedGenerateISOImage ()
{
	echo "What do you want for the title of the DVD, not the ISO. (No Special Characters or spaces.)?"
	read MYDVDNAME
	echo "Do you want to automatically generate the ISO image or manually? [1.Auto,2.Manually]"
	read PROCEEDGENERATEISOIMAGE
	case $PROCEEDGENERATEISOIMAGE in
		1)
		GenerateISOImage "$MYDVDNAME" "$DVDISOIMAGENAME" "$DVDTITLE"
		;;
		2)
		echo "You will make your own ISO image then. Exiting"
		exit 0
		;;
		*)
		echo "Unrecognized input. Exiting"
		exit 1
		;;
	esac
}


function Main ()
{
	FinalizeDVD
	ProceedGenerateISOImage
}	# end Main

Main
#=====EXIT=======
exit 0

