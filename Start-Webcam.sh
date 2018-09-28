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
	ffmpeg -f v4l2 -framerate 25 -video_size 320x232 -i /dev/video0 $HOME/Videos/Output.mkv
}	# end Main

Main

#===EXIT===
exit 0

