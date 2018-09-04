#!/bin/bash  
#===============================================================================
#
#          FILE: Youtube-Download-Simple.sh
# 
#         USAGE: ./Youtube-Download-Simple.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 07/04/2018 23:48
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
#===Variables===
CONFIG="-o %(title)s.%(ext)s"
DOWNLOADER="--external-downloader wget"
EXTRACTAUDIO="--extract-audio --audio-format m4a"
EMBEDTHUMBNAIL="--embed-thumbnail"
REENCODEVIDEO="--recode-video mp4"
FORMAT="-f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"
AUDIOFORMAT="m4a"
EXTRACTAUDIO="--extract-audio"
LOGIN="--username brett.salemink@gmail.com --password Samsung#2013"
function GetVideoAudio ()
{
	echo "Do you want to download [1. audio, 2. video]"
	read DOWNLOADFORMAT

	case $DOWNLOADFORMAT in
		1)
		AUDIOONLY='Y'
		;;
		2)
		AUDIOONLY='N'
		;;
		*)
		echo "Invalid Selection exiting.."
		exit 0
		;;
	esac
}	# end function

function GetLink ()
{
	echo "Please put the url of the Playlist or Video or Song you want to download: [ex. https://youtu.be/cvoMxsqcLAc or FILE for local file with URL list.]"
	read URL

}	# end function

function DownloadLink ()
{
	if [ $URL = "FILE" ]
	then
		DownloadList
	fi

	if [ $FORMAT = 'bestaudio' ]
	then	
		CONVERTFORMAT='m4a'
	else
		CONVERTFORMAT=$FORMAT
	fi	

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING=""$LOGIN" "$FORMAT" "$EXTRACTAUDIO" "$DOWNLOADER" "$EMBEDTHUMNAIL" "$CONFIG"  "$(echo $URL)""
	else
		COMMANDSTRING=""$LOGIN" "$FORMAT" "$REENCODEVIDEO" "$EMBEDTHUMBNAIL" "$DOWNLOADER" "$CONFIG" "$(echo $URL)""
	fi

	echo $COMMANDSTRING
	youtube-dl $COMMANDSTRING
} # end function

function DownloadList ()
{
	echo "Please enter the complete path including the name of the file containing the list. [ex. ~/List.txt]"
	read LIST

	if [ $FORMAT = 'bestaudio' ]
	then	
		CONVERTFORMAT='m4a'
	else
		CONVERTFORMAT='m4a'
	fi	

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING="-a $(echo $LIST) "$FORMAT" "$EXTRACTAUDIO" --audio-format $CONVERTFORMAT"
	else
		COMMANDSTRING="-a "$(echo $LIST)" $FORMAT "$REENCODEVIDEO" "$EMBEDTHUMBNAIL" "$CONFIG""
	fi

	echo $COMMANDSTRING
	youtube-dl $COMMANDSTRING
	exit 0
}	# end function

function Main ()
{
	GetVideoAudio
	GetLink
	DownloadLink
}	# end Main

Main # Call Main

# == Exit ==
exit 0	# Always exit properly


