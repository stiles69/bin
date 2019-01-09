#!/bin/bash  
#====================================================
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
#====================================================
set -o nounset                              # Treat unset variables as an error
#===Variables===
SUBTITLE="--write-sub"
THUMBNAIL="--write-thumbnail"
CONFIG="-o %(title)s.%(ext)s"
DOWNLOADER="--external-downloader axel"
DOWNLOADEROPTIONS=" --external-downloader-args --num-connections=6"
EXTRACTAUDIO="--extract-audio"
AUDIOFORMATM4A="--audio-format m4a"
AUDIOFORMATWAV="--audio-format wav"
EMBEDTHUMBNAIL="--embed-thumbnail"
REENCODEVIDEO="--recode-video"
VIDEOFORMATMP4="mp4"
FORMAT="-f bestvideo"
BESTAUDIOFORMAT="-f bestaudio[ext=m4a]"
EXTRACTAUDIO="--extract-audio"
LOGIN="--username 'brett.salemink@gmail.com' --password 'Samsung#2013'"
CONVERTFORMAT="m4a"
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

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING="--netrc "$BESTAUDIOFORMAT" "$DOWNLOADER" "$DOWNLOADEROPTIONS" "$THUMBNAIL" "$CONFIG" "$EXTRACTAUDIO" "$AUDIOFORMATWAV" "$(echo $URL)""
	else
		COMMANDSTRING="--netrc "$FORMAT" "$SUBTITLE" "$THUMBNAIL" "$DOWNLOADER" "$DOWNLOADEROPTIONS" "$REENCODEVIDEO" "$VIDEOFORMATMP4" "$CONFIG" "$(echo $URL)""
	fi

	echo $COMMANDSTRING
	youtube-dl $COMMANDSTRING
} # end function

function DownloadList ()
{
	echo "Please enter the complete path including the name of the file containing the list. [ex. ~/List.txt]"
	read LIST

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING="--netrc -a "$LIST" "$AUDIOFORMAT" "$DOWNLOADER" "$DOWNLOADEROPTIONS" "$EXTRACTAUDIO" "$AUDIOFORMATWAV" "$EMBEDTHUMBNAIL""
	else
		COMMANDSTRING="--netrc -a "$(echo $LIST)" "$FORMAT" "$SUBTITLE" "$THUMBNAIL" "$DOWNLOADER" "$DOWNLOADEROPTIONS" "$REENCODEVIDEO" "$VIDEOFORMATMP4" "$CONFIG""
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


