#!/bin/bash  
#====================================================
#
#          FILE: Convert-Any-Video-To-Emby.sh
# 
#         USAGE: ./Convert-Any-Video-To-Emby.sh
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
#====================================================
set -o nounset                              # Treat unset variables as an error

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
	echo "What What directory do you want to save the coverted file:"
	read OUTPUTDIR

	mkdir -p "$OUTPUTDIR"	
	
}	# end function

function Convert () 
{
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo "$NAME"
		NEWNAME="$NAME.webm"

		/usr/bin/ffmpeg -i "$FILENAME" -acodec libvorbis -c:v libvpx -b:v 2000K -vf scale=1280:720 -threads 4 -quality good -lag-in-frames 16 -f webm -y "$OUTPUTDIR/$NEWNAME"
		wait	
}	# end function

function Main ()
{
	GetFile
	Convert
}	# end function

Main

# == EXIT ==
exit 0
