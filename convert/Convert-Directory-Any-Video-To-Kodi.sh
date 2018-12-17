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
set -o nounset                              # Treat unset variables as an error
#== GLOBAL VARS ==
INPUTDIR="$1"
OUTPUTDIR="$2"

function CheckVars()
{
	if [ ! "$INPUTDIR" ]
	then
		echo "Proper usage Command InputDirPath OutputDirPath"
		echo "Please enter InputDirPath:"
		read INPUTDIR
	fi

	if [ ! "$OUTPUTDIR" ]
	then
		echo "Proper usage Command InputDirPath OutputDirPath"
		echo "Please enter OutputDirPath:"
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
		
		/usr/bin/ffmpeg -i "$FILENAME" -c:v libx264 -profile:v high -level 4.1 -b:v 1500k -maxrate 2500k -bufsize 5000k -threads 0 -codec:a aac -b:a 128k  "$OUTPUTDIR/$NEWNAME"
		wait
	done
}	# end function

function Main ()
{
	CheckVars
#	MakeDir
	Convert
}	# end function

Main

# == EXIT ==
exit 0
