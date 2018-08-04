#!/bin/bash
#=========================================================
#
#          FILE:  transmission-extract.sh
# 
#         USAGE:  ./transmission-extract.sh 
# 
#   DESCRIPTION:  This will extract rar files when done downloading.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Brett Salemink (), brett.salemink@gmail.com
#       COMPANY:  Rogue Designs
#       VERSION:  1.0
#       CREATED:  06/21/2018 11:38:11 PM CDT
#      REVISION:  ---
#=========================================================
cd /torrents

function Extract ()
{
	find /torrents -name '*.rar' -execdir unrar e ../ -o- {} \; 
	wait
}	# end function

function MoveExtracted ()
{
	find /torrents -maxdepth 1 -name "*mp4" -name "*mkv" -name "*avi" -name "*mpg" -name "*webm" -name "*.mp3" -name "*.m4a" -exec mv {} /torrents/completed \;
	wait
}	# end function

function Main ()
{
	Extract
}	# end functioin

#===EXIT===
exit 0
