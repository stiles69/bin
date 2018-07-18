#!/bin/bash
#===============================================================================
#
#          FILE: Run-Complete-DVD.sh
# 
#         USAGE: ./Run-Complete-DVD.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/18/2018 03:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
VIDEONAME="$1"

function ConvertVideo ()
{

	USAGE="This take one paramter a video file and converts to mpg with ffmpeg it can made into a DVD. 1-Make-DVD-Part-1.sh [FILETOCONVERT]"

	echo "What do want to have for the ISO image. It needs to be all capitals and no special characters?"
	read ISONAME

	OUTPUTDIR="OUTPUTDIR"
	if [ ! -d "./OUTPUTDIR" ]
	then 
		mkdir ./"$OUTPUTDIR"
	fi

	if [ "$#" -lt1 ]
	then
		echo "$USAGE"
		ls
		echo "Please enter the filename you want to make into a dvd. [Mymovie.mp4]"
		read VIDEONAME
		Converter
	else
		Converter
	fi
}	# end ConvertVideo

function Converter ()
{
	NAME="$(echo "$VIDEONAME" | cut -d'.' -f1)"
	ffmpeg -i "$VIDEONAME" -target ntsc-dvd -aspect 16:9 "$NAME.mpg"
}	# end Converter

function BuildTSFiles ()
{
	for i in *.mpg
	do
		NAME="$(echo "$i" | cut -d'.' -f1)"
		echo "$NAME"
		dvdauthor -o ./OUTPUTDIR -t "$NAME.mpg"
	done	
}	# end BuildTSFiles


function FinalizeDVD ()
{
	dvdauthor -o ,/OUTPUTDIR -T
}	# end Main

function Generate ()
{
	genisoimage -dvd-video -o "$ISONAME".iso ./OUTPUTDIR
}	# end Generate

function Main ()
{
	ConvertVideo
	BuildTSFiles	
	FinalizeDVD
	Generate 
}	# end Main

Main
#=====EXIT=======
exit 0

