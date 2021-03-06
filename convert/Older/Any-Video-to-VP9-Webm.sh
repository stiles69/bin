#!/bin/bash  
#====================================================
#
#          FILE: Any-Video-to-VP9-Webm.sh
# 
#         USAGE: ./Any-Video-to-VP9-Webm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 12:20
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SOURCE="$1"
#-------------------------------------
function Main ()
{
	if [ ! -d Output ]
	then
		mkdir Output	
	fi

	#Pass 1
	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -pass 1 -b:v 1000K -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null
	
#Pass2
	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -pass 2 -b:v 1000K -threads 8 -speed 1 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 64k -f webm "Output/$SOURCE.webm"

}	# end Main

Main

#===EXIT===
exit 0

