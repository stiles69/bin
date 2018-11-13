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
	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -f webm -dash 1 -an -vf scale=160:190 -b:v 250K -dash 1 "Output/video_160x90_250k.webm"

	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -f webm -dash 1 -an -vf scale=320:180 -b:v 500k -dash 1 "Output/video_320x180_500k.webm"

	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -f webm -dash 1 -an -vf scale=640:360 -b:v 750k -dash 1 "Output/video_640x360_750k.webm"
	
	ffmpeg -i "$SOURCE" -c:v libvpx-vp9 -keyint_min 150 -g 150 ${VP9_DASH_PARAMS} -f webm -dash 1 -an -vf scale=1280:720 -b:v 1500k -dash 1 "Output/video_1280x720_500k.webm"

	#Audio
	ffmpeg -i "$SOURCE" -vn -acodec libvorbis -ab 128k -dash 1 "Output/audio_128k.webm"
}	# end Main

function ProduceManifest ()
{
	ffmpeg -f webm_dash_manifest -i "Output/video_160x90_250k.webm" \
		-f webm_dach_manifest -i "Output/video_320x180_500.webm" \
		-f webm_dash_manifest -i "Output/video_640x360_750k.webm" \
		-f webm_dash_manifest -i "Output/video_1280x720_1500k.webm" \
		-f webm_dash_manifest -i "Output/audio_128k.webm" \
		-c copy \
		-map -map 1 -map 2 -map 3 -map 4 \
		-f webm_dash_manifest \
		-adaptation_sets "id=0,streams=0,1,2,3 id=1,streams=4" \
		"Output/manifest.mpd"


}
Main
ProduceManifest

#===EXIT===
exit 0

