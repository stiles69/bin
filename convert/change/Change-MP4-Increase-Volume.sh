#!/bin/bash  
#====================================================
#
#          FILE: Change-MP4-Increase-Volume.sh
# 
#         USAGE: ./CChange-MP4-Increase-Volume.sh
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
	
	mkdir "$OUTPUTDIR/Converted/"

}	# end function

function Convert () 
{
	cd $INPUTDIR	
	for FILENAME in *
	do 
		NAME=`echo "$FILENAME" | cut -d'.' -f1`
		NEWNAME="$NAME.mp4"
		/usr/bin/ffmpeg -i "$NEWNAME" -af "volume=11dB" -c:v copy -strict -2 -c:a aac -b:a 192k "$OUTPUTDIR/$NEWNAME"
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
