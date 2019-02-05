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
COMMAND1="ffmpeg -i"
COMMAND2=" -c:v libvpx-vp9 -b:v 1000k -minrate 750k -maxrate 1400k -crf 10 -c:a libvorbis "
COMMAND3=" -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		 -quality good -crf 32 -c:v libvpx-vp9 -c:a libopus -pass 1 -speed 4 tos-1280x720-24-30fps.webm && \
		$(echo "$COMMAND1") "$FILENAME" -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		-quality good -crf 32 -c:v libvpx-vp9 -c:a libopus \
		-pass 2 -speed 4 -y "
EXT="webm"
#------------------------------------
function GetFile ()
{
	if [ ! -f "$FILENAME" ]
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
		$(echo "$COMMAND1") "$FILENAME" $(echo "$COMMAND3") "$OUTPUTDIR/$NEWNAME"
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
