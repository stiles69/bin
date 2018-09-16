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
	
	for i in *
	do 
		name=`echo $i | cut -d'.' -f1`
		echo $name
		#ffmpeg -i "$i" -c:a libfdk_aac -vn "./Converted/$name.m4a"
		ffmpeg -i "$i" -vcodec libx264 -profile:v high -preset fast -crf 18 -b-pyramid none -acodec ac3 -ab 1536k -scodec copy "HOME/Kodi-Exports/$CURRENTDIR/$name.mp4"
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
