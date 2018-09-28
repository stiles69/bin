#!/bin/bash 
#====================================================
#
#          FILE: Start-Test.sh
# 
#         USAGE: ./Start-Test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/28/2018 07:11
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	ffmpeg -f v4l2 -i /dev/video0 \
		-f alsa -i hw:0 \	
		-map 0:0 \
		-c:v libvpx-vp9 \ 
		-s 640x360 -keyint_min 30 -g 30 \
		-f webm_chunk \
		-header webm_live_video_360.hdr \
		-chunk_start_index 1 \ 
		webm_live_video_360_%d.chk \
		-map 1:0 \
		-c:a libvorbis \
		-b:a 128k \
		-f webm_chunk \
		-header webm_live_audio_128.hdr \
		-chunk_start_index 1 \
		-audio_chunk_duration 1000 \
		webm_live_audio_128_%d.chk n
}
Main

#===EXIT===
exit 0

