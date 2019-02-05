#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-Any-Video-To-WebM-VP9.sh
# 
#         USAGE: ./Convert-Directory-Any-Video-To-WebM-VP9.sh 

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
COMMAND1="ffmpeg -i"
COMMAND2=" -c:v libvpx-vp9 -crf 30 -b:v 0 -c:a libopus -vbr on -b:a 64k "
EXT="webm"
#---------------------------------------
function CheckVars()
{
	if [ "$INPUTDIR" == null ]
	then
		echo "Correct cli usage is Convert-Directory-Any-Video-To-WebM-VP9 <InputDirFilePath> <OutputDirFilePath>"
		echo "Please enter the filepath of the Input Directory?"
		read INPUTDIR
	fi

	if [ "$OUTPUTDIR" == null ]
	then
		echo "Correct cli usage is Convert-Directory-Any-Video-To-WebM-VP9 <InputDirFilePath> <OutputDirFilePath>"
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
		NEWNAME="$NAME.$EXT"
		$(echo "$COMMAND1") "$FILENAME" $(echo "$COMMAND2") "$OUTPUTDIR/$NEWNAME"		
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
