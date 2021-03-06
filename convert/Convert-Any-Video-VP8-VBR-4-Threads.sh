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
COMMAND1="ffmpeg -i "
COMMAND2=" -c:v libvpx -quality good -cpu-used 0 -crf 5 -qmax 35 -threads 4 -c:a libopus -vbr on -b:a 64k "
EXT="webm"
#============================================
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
		NEWNAME="$NAME.$EXT"
		
		$(echo "$COMMAND1") "$FILENAME" $(echo "$COMMAND2") "$OUTPUTDIR/$NEWNAME"
		wait	
}	# end function

function SendMessage ()
{
	node /home/brettsalemink/lib/node/pushover-convert-completed index.js
}

function Main ()
{
	GetFile
	Convert
	wait
	SendMessage
}	# end function

Main

# == EXIT ==
exit 0
