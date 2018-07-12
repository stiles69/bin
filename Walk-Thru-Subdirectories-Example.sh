#!/bin/bash  
#===============================================================================
#
#          FILE: Walk-Thru-Subdirectories-Example.sh
# 
#         USAGE: ./Walk-Thru-Subdirectories-Example.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), brett.salemink@gmail.com
#  ORGANIZATION: Rogue Designs
#       CREATED: 06/29/2018 01:47
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

shopt -s globstar

#. $HOME/lib/sh/funcCleanWholeDirectory.sh

#function CleanFilenames ()
#{
#	CleanWholeDirectory
#}	# End function

function Walk ()
{
for i in ./**/*
do
	if [ -f "$i" ];
	then        
		#printf "Path: %s\n" "${i%/*}" # shortest suffix removal
		#printf "Filename: %s\n" "${i##*/}" # longest prefix removal
		#printf "Extension: %s\n"  "${i##*.}"
		#printf "\n\n"
		#printf "Filesize: %s\n" "$(du -b "$i" | awk '{print $1}')"
	       	FILEEXT="${i##*.}"	
		FILENAME="${i##*/}"
		#NAME="$(echo "$FILENAME" | cut -d'.' -f1)"

		#echo "FILEXT is "$FILEEXT
		#echo "FILENAME is $FILENAME"
		#echo "NAME =  $NAME"

		if [ $FILEEXT = "mp3" ]
		then
			NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
			ffmpeg -i "$i" -c:a libfdk_aac -vn "./$NAME.m4a"
		fi
		echo "================================================="
		
	fi
done
}	# End function
	
function Main ()
{
	Walk
}	# End function

Main

#== Exit ==
exit 0
