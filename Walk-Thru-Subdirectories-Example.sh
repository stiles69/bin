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
. $HOME/lib/sh/funcClean.sh

function CleanFilenames ()
{
	Clean
}	# End function

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
		NAME="$(echo "$FILENAME" | cut -d'.' -f1)"

		#echo "FILEXT is "$FILEEXT
		echo "FILENAME is $FILENAME"
		echo "NAME =  $NAME"

		#if [ $FILEEXT = "mp3" ]
		#then
		#	NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
		#	ffmpeg -i "$i" -c:a libfdk_aac -vn "$NAME.m4a"
		#	rm "$NAME.mp3"
		#fi
		echo "================================================="
	fi
done
}	# End function
	
function Main ()
{
	CleanFilenames
	Walk
}	# End function

Main

#== Exit ==
exit 0

#===============================================================================
#   MAIN SCRIPT
#===============================================================================
mkdir ./Converted

#function DeleteOldFiles ()
#{
#
#	find . -maxdepth 1 -name "*.mp3" -delete
#}	# end function
#
#
#function CleanUp ()
#{
#	DeleteOldFiles
#	rsync -rvz --progress ./Converted/ ./
#	wait
#	sudo rm -r "./Converted"
#}	# end function
#
#function Convert () 
#{
#	for i in *.mp3
#	do 
#		name=`echo $i | cut -d'.' -f1`
#		ffmpeg -i "$i" -c:a libfdk_aac -vn "./Converted/$name.m4a"
#		echo "$name"
#	done
#}	# end function
#
#function Main ()
#{
#	Convert
#	CleanUp
#}	# end main
#
#Main
##===============================================================================
##   STATISTICS / CLEANUP
##===============================================================================
#exit 0
