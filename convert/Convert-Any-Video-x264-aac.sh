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
OUTPUTDIR="$2"

function GetFile ()
{
	if [ "$FILENAME" = null ]
	then
		echo "Please select the filename. Make sure you spell it exactly and it is in the same path as the $PWD. [ You can also select the filename as a commandline parameter ]"
		read FILENAME	
	fi
}

function Convert () 
{
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo "$NAME"
		NEWNAME="$NAME.mp4"

		ffmpeg -i "$FILENAME" -c:v libx264 -crf 22 -movflags faststart -profile:v high -level 4.1 -ac 2 -c:a aac "$OUTPUTDIR/$NEWNAME"	
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
