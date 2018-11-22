#!/bin/bash  
#===============================================================================
#
#          FILE: Test-Walk2.sh
# 
#         USAGE: ./Test-Walk2.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/12/2018 06:42
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

OUTPUTDIR=$HOME/Kodi-Export
FILENAME="$1"
function GetFile ()
{
	if [ "$FILENAME" = null ]
	then
		echo "Please select the filename. Make sure you spell it exactly and it is in the same path as the $PWD. [ You can also select the filename as a commandline parameter ]"
		read FILENAME	
	fi
}

function MakeDir ()
{
	echo "What directory do you want to output the converted files to?"
	read OUTPUTDIR
	cd "$OUTPUTDIR"
	mkdir "Converted"
	cd "$OUTPUTDIR/Converted"	
	
}	# end function

function Convert () 
{
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo "$NAME"
		NEWNAME="$NAME.mp4"
	
		HandBrakeCLI -Z "Fast 720p30" -O -i "$FILENAME" -o "$NEWNAME"	
		wait	
}	# end function

function Main ()
{
	GetFile
	MakeDir
	Convert
}	# end function

Main

# == EXIT ==
exit 0
