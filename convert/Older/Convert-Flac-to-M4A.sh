#!/bin/bash  
#====================================================
#
#          FILE: Convert-Flac-to-M4A.sh
# 
#         USAGE: ./Convert-Flac-to-M4A.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/16/2018 21:41
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	#find . -name '*.flac' -exec sh -c 'ffmpeg -i "$1" -c:a libfdk_aac -b:a 320k "${1%.flac}.m4a"' _ {} \;

	find . -name '*.flac' -exec sh -c '/usr/bin/ffmpeg -i "$1" -c:v copy -c:a libfdk_aac -b:a 384k "${1%.flac}.m4a"' _ {} \;
}	# end Main

Main

#===EXIT===
exit 0

