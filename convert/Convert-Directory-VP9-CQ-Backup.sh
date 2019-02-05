#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-VP9-CQ.sh
# 
#         USAGE: ./Convert-Directory-VP9-CQ.sh 

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

#== GLOBAL VARS ==
INPUTDIR="$1"
OUTPUTDIR="$2"

function CheckVars()
{
	if [ ! -d "$INPUTDIR" ]
	then
		echo "Correct cli usage is Convert-Directory-Any-Video-To-Kodi-Handbrake.sh InputDirFilePath OutputDirFilePath"
		echo "Please enter the filepath of the Input Directory?"
		read INPUTDIR
	fi

	if [ ! -d "$OUTPUTDIR" ]
	then
		
		echo "Correct cli usage is Convert-Directory-Any-Video-To-Kodi-Handbrake.sh InputDirFilePath OutputDirFilePath"
		echo "Please enter the filepath of the Output Directory?"
		read OUTPUTDIR
	fi	
}

function Convert () 
{
	cd "$INPUTDIR"	

	for FILENAME in *
	do 
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo $NAME
		NEWNAME="$NAME.webm"
		
		ffmpeg -i "$FILENAME" -c:v libvpx-vp9 -b:v 1000k -minrate 750k -maxrate 1400k -crf 10 -c:a libvorbis "$OUTPUTDIR/$NEWNAME"	
		ffmpeg -i "$FILENAME" -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		 -quality good -crf 32 -c:v libvpx-vp9 -c:a libopus -pass 1 -speed 4 tos-1280x720-24-30fps.webm && \
		ffmpeg -i "$FILENAME" -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		-quality good -crf 32 -c:v libvpx-vp9 -c:a libopus \
		-pass 2 -speed 4 -y "$OUTPUTDIR/$NEWNAME"
		wait
	done
}	# end function

function SendMessage ()
{
	node /home/brettsalemink/lib/node/pushover-convert-completed index.js
}

function Main ()
{
	CheckVars
	Convert
	wait
	SendMessage
}	# end function

Main

# == EXIT ==
exit 0
