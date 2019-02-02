#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-VP9.sh
# 
#         USAGE: ./Convert-Directory-VP9.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/02/2019 08:40
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------
									  
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR="$1"
OUTPUTDIR="$2"
COMMAND1="ffmpeg -i $FILENAME"
COMMAND2=" -c:v libvpx-vp9 -b:v 1000k -minrate 750k -maxrate 1400k -crf 10 -c:a libvorbis "
COMMAND3=" -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		 -quality good -crf 32 -c:v libvpx-vp9 -c:a libopus -pass 1 -speed 4 tos-1280x720-24-30fps.webm && \
		$(echo "$COMMAND1") -vf scale=1280x720 -b:v 1024k -minrate 512k -maxrate 1485k -tile-columns 2 -g 240 -threads 8 \
		-quality good -crf 32 -c:v libvpx-vp9 -c:a libopus \
		-pass 2 -speed 4 -y "
#-------------------------------------

function CheckVars()
{
	if [ "$INPUTDIR" == null ]
	then
		echo "Correct cli usage is Convert-Directory-Template.sh <InputDirFilePath> <OutputDirFilePath>"
		echo "Please enter the filepath of the Input Directory?"
		read INPUTDIR
	fi

	if [ "$OUTPUTDIR" == null ]
	then		
		echo "Correct cli usage is Convert-Directory-Template.sh <InputDirFilePath> <OutputDirFilePath>"
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
		$(echo "$COMMAND1") $(echo "$COMMAND2") "$OUTPUTDIR/$NEWNAME"
		$(echo "$COMMAND1") $(echo "$COMMAND3") "$OUTPUTDIR/$NEWNAME"

		wait
	done
}	# end function

function Main ()
{
	CheckVars
	Convert
}	# end function

Main

# == EXIT ==
exit 0

