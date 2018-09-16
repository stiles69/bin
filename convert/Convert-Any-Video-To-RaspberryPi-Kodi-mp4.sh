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
CURRENTDIR="$PWD"
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
	if [ ! -d "$HOME/Kodi-Exports/$CURRENTDIR" ]
	then
		echo "Making Directory in $HOME/Kodi-Exports/$CURRENTDIR"
		mkdir -p "$HOME/Kodi-Exports/$CURRENTDIR"
	fi
}	# end function

function Convert () 
{
		name=`echo "$FILENAME" | cut -d'.' -f1`
		echo $name
		#ffmpeg -i "$i" -c:a libfdk_aac -vn "./Converted/$name.m4a"
		ffmpeg -i "$FILENAME" -vcodec h264 -profile:v high -level 4.1 "HOME/Kodi-Exports/$CURRENTDIR/$name.mp4"
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
