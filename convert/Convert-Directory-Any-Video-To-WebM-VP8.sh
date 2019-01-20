#!/bin/bash  
#====================================================
#
#          FILE: Convert-Directory-Any-Video-To-WebM.sh
# 
#         USAGE: ./Convert-Directory-Any-Video-To-WebM.sh 

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
		NEWNAME="$NAME.webm"
		
		/usr/bin/ffmpeg -i "$FILENAME" -c:v libvpx -quality good -cpu used 0 -crf 5 -qmax 35 -threads 4 -c:a libopus -vbr on -b:a 64k "$OUTPUTDIR/$NEWNAME"
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
