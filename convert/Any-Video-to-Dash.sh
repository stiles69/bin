#!/bin/bash  	
#====================================================
#
#          FILE: Any-Video-to-Dash.sh
# 
#         USAGE: ./Any-Video-to-Dash.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 16:49
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

	VP9_DASH_PARAMS="-tile-columns 4 -frame-parallel 1"
	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -s 160x90 -b:v 250k -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -an -f webm -dash 1 video_160x90_250k.webm

#	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -s 320x180 -b:v 500k -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -an -f webm -dash 1 video_320x180_500k.webm

#	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -s 640x360 -b:v 750k -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -an -f webm -dash 1 video_640x360_750k.webm

#	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -s 640x360 -b:v 1000k -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -an -f webm -dash 1 video_640x360_1000k.webm

	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -s 1280x720 -b:v 1500k -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -an -f webm -dash 1 video_1280x720_500k.webm


}	# end Main

Main

#===EXIT===
exit 0

