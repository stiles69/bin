#!/bin/bash 
#====================================================
#
#          FILE: Start-Webcam.sh
# 
#         USAGE: ./Start-Webcam.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/28/2018 06:53
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	ffmpeg -f v4l2 -framerate 20 -video_size 320x232 -i /dev/video0 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 10000k -vf "format=yuvj422p" $HOME/Videos/output.mp4
}	# end Main

Main

#===EXIT===
exit 0

