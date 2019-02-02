#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-x264-aac.sh
# 
#         USAGE: ./Convert-Directory-x264-aac.sh 
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
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
INPUTDIR="$1"
OUTPUTDIR="$2"
#-------------------------------------
function CheckVars()
{
	if [  "$INPUTDIR" == null ]
	then
		echo "Correct cli usage is Convert-Directory-x264-aac.sh <InputDirFilePath> <OutputDirFilePath>"
		echo "Please enter the filepath of the Input Directory?"
		read INPUTDIR
	fi

	if [ "$OUTPUTDIR" == null ]
	then
		
	echo "Correct cli usage is Convert-Directory-x264-aac.sh <InputDirFilePath> <OutputDirFilePath>"
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

		/usr/bin/ffmpeg -i "$FILENAME" -c:v libx264 -crf 22 -movflags faststart -profile:v high -level 4.1 -ac 2 -c:a aac "$OUTPUTDIR/$NEWNAME"		
		wait
	done
}	# end function

function Main ()
{
	CheckVars
	Convert
}	# end Main

Main

#===EXIT===
