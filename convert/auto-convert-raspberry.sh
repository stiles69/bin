#!/bin/bash  
#===============================================================================
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
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#== GLOBAL VARS ==
INPUTDIR="$1"
OUTPUTDIR="$HOME/Transcode-Emby-Completed"
COMPLETEDDIR="$HOME/Transcode-Emby-Completed"
function CheckVars()
{
	if [ ! -d "$INPUTDIR" ]
	then
		INPUTDIR="$HOME/Transcode-Emby"
	fi
}

function MakeDir ()
{
	if [ ! -d "$OUTPUTDIR/Converted" ]
	then
		mkdir "$OUTPUTDIR/Converted"
	fi

}	# end function

function MoveCompletedFile ()
{
	OLDFILENAME="$1"

	if [ ! -d "$OUTPUTDIR" ]
	then
		mkdir "$OUTPUTDIR" 
		mkdir "$OUTPUTDIR/Old"
	fi

	mv "$INPUTDIR/$FILENAME" "$HOME/Transcode-Emby-Completed/Old/$OLDFILENAME"
}

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
		MoveCompletedFile "$FILENAME"
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
