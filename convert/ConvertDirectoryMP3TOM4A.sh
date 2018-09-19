#!/bin/bash  
#===========================================================================
#
#          FILE: Convert-Dircectory-To-M4A.sh
# 
#         USAGE: ./Convert-Dircectory-To-M4A.sh
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
#===========================================================================

set -o nounset                              # Treat unset variables as an error

shopt -s globstar

function Walk ()
{
	for i in ./**/*		
	do
		FILEEXT="${i##*.}"	
		FILENAME="${i##*/}"
		PATHER="${i%/*}"
		
		mkdir "./Converted"
		if [ -d "Converted" ]
		then
			if [ -f "$i" ]
			then        
				NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
				echo "The name is $NAME"
				NEWNAME="$NAME.m4a"
				/usr/bin/ffmpeg -n -i "$i" -c:a libfdk_aac -vn "./Converted/$NEWNAME"
				wait
			fi
		else
			mkdir ./Converted
			if [ -f "$i" ]
			then        
				NAME="$(echo "$FILENAME" | cut -d'.' -f1)"
				echo "The name is $NAME"
				NEWNAME="$NAME.m4a"
				/usr/bin/ffmpeg -n -i "$i" -c:a libfdk_aac -vn "./Converted/$NEWNAME"
				wait
			fi
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
