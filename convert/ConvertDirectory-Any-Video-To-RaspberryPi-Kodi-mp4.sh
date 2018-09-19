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

function MakeDir ()
{
	echo "What do you want to NAME the directory that the converted files will be located in? [$HOME/Kodi-Exports/????]"
	read OUTPUTDIR

	mkdir "Converted/$OUTPUTDIR"

	#if [ ! -d "$HOME/Kodi-Exports/$OUTPUTDIR" ]
	#then
	#	echo "Making Directory in $HOME/Kodi-Exports/$OUTPUTDIR"
	#	mkdir -p "$HOME/Kodi-Exports/$OUTPUTDIR"
	#fi
}	# end function

function Convert () 
{
	
	for FILENAME in *
	do 
		NAME="echo $FILENAME | cut -d'.' -f1"
		echo $NAME
		NEWNAME="$NAME.mp4"
		
		/usr/bin/ffmpeg -i "$FILENAME" -vcodec libx264 -profile:v high -level 4.1 -preset fast -crf 18 -b-pyramid none \
    -acodec ac3 -ab 1536k -scodec copy "Converted/$OUTPUTDIR/$NEWNAME"
		wait
	done
}	# end function

function Main ()
{
	MakeDir
	Convert
}	# end function

Main

# == EXIT ==
exit 0
