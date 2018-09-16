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

FILENAME="$1"
function GetFile ()
{
	if [ "$FILENAME" = null ]
	then
		echo "Please select the filename. Make sure you spell it exactly and it is in the same path as the $PWD. [ You can also select the filename as a commandline parameter ]"
		read FILENAME	
	fi
}

function MakeDir ()
{
	echo "What do you want to name the directory that the converted files will be located in? [$HOME/Kodi-Exports/????]"
	read OUTPUTDIR

	mkdir -p "Converted/$OUTPUTDIR"
	
	#if [ ! -d "$HOME/Kodi-Exports/$OUTPUTDIR" ]
	#then
	#	echo "Making Directory in $HOME/Kodi-Exports/$OUTPUTDIR"
	#	mkdir -p "$HOME/Kodi-Exports/$OUTPUTDIR"
	#fi
}	# end function

function Convert () 
{
		name=`echo "$FILENAME" | cut -d'.' -f1`
		echo $name
		#ffmpeg -i "$i" -c:a libfdk_aac -vn "./Converted/$name.m4a"
		/usr/bin/ffmpeg -i "$FILENAME" -vcodec libx264 -profile:v high -level 4.1 -preset fast -crf 18 -b-pyramid none 
    -acodec ac3 -ab 1536k -scodec copy "Converted/$OUTPUTDIR/$name.mp4"
		wait	
}	# end function

function Main ()
{
	GetFile
	MakeDir
	Convert
}	# end function

Main

# == EXIT ==
exit 0