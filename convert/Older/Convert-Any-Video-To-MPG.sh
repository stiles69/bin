#!/bin/bash  
#====================================================
#
#          FILE: Convert-Any-Video-To-MPG.sh
# 
#         USAGE: ./Convert-Any-Video-To-MPG.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/05/2018 00:41
#      REVISION:  ---
#====================================================

set -o nounset                              # Treat unset variables as an error

VIDEONAME="$1"

function Converter ()
{
	NAME="$(echo "$VIDEONAME" | cut -d'.' -f1)"
	ffmpeg -i "$VIDEONAME" -target ntsc-dvd -aspect 16:9 "$NAME.mpg"
}	# end Converter

function Main ()
{
	Converter
}	# end Main

Main

#== EXIT==
exit 0
