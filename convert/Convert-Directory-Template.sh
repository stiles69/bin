#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-Template.sh
# 
#         USAGE: ./Convert-Directory-Template.sh 
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
#------------ SOURCED ----------------
									  
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR="$1"
OUTPUTDIR="$2"
COMMAND1="ffmpeg -i "
COMMAND2=" -c:v libx264 -crf 22 -maxrate 1M -bufsize 1M -movflags faststart -profile:v high -level 4.0 -ac 2 -c:a aac "
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
		NEWNAME="$NAME.mp4"		
		$(echo "$COMMAND1") "$FILENAME" $(echo "$COMMAND2") "$OUTPUTDIR/$NEWNAME"
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
