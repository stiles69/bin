#!/bin/bash  
#====================================================
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

function MakeDir ()
{
	mkdir "$OUTPUTDIR/Converted"

}	# end function

function Convert () 
{
	cd "$INPUTDIR"	

	for FILENAME in *
	do 
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		echo $NAME
		NEWNAME="$NAME.mp4"
		
		ffmpeg -i "$FILENAME" -vcodec libx264 -profile:v high -level 4.1 -preset fast -crf 18 -b-pyramid none -acodec ac3 -ab 1536k -scodec copy "$OUTPUTDIR/Converted/$NAME.mp4"
		wait
	done
}	# end function

function Main ()
{
	CheckVars
	MakeDir
	Convert
}	# end function

Main

# == EXIT ==
exit 0