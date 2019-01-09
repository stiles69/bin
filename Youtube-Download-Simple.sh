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
EXTRACTAUDIO="--extract-audio"
AUDIOFORMAT="--audio-format"
AUDITOFORMATM4A="--audio-format m4a"
AUDIOFORMATWAV="--audio-format wav"
EMBEDTHUMBNAIL="--embed-thumbnail"
REENCODEVIDEOMP4="--recode-video mp4"
VIDEOFORMATMP4="-f mp4"
BESTVIDEOFORMAT="-f bestvideo"
BESTAUDIOFORMAT="-f bestaudio[ext=m4a]"
LOGIN="--username 'brett.salemink@gmail.com' --password 'Samsung#2013'"
#--------------------------
function GetVideoAudio ()
{
	echo "Do you want to download [1. best, 2. bestvideo, 3. bestaudio, 4. m4a, 5. mp3, 6. wav, 7. webm, 8. mp4, 9. ogg]"
	read DOWNLOADFORMAT

	case $DOWNLOADFORMAT in
		1)
		FORMAT='bestvideo'
		AUDIOONLY='N'
		;;
		2)
		FORMAT='bestvideo'
		AUDIOONLY='N'
		;;
		3)
		FORMAT='bestaudio'
		AUDIOONLY='Y'
		;;
		4)
		FORMAT='m4a'
		AUDIOONLY='YES'
		;;
		5)
		FORMAT='mp3'
		AUDIOONLY='Yes'
		;;
		6)
		FORMAT='wav'
		AUDIOONLY='Yes';
		;;
		7)
		FORMAT='webm'
		AUDIOONLY='N'
		;;
		8)
		FORMAT='mp4'
		AUDIOONLY='N'
		;;
		9)
		FORMAT='ogg'
		AUDIOONLY='N'
		;;
		*)
		echo "Invalid Selection exiting."
		exit 0
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
		CONVERTFORMAT='wav'
	else
		CONVERTFORMAT=$FORMAT
	fi	

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING="--netrc "$BESTAUDIOFORMAT" "$EMBEDTHUMBNAIL" "$CONFIG" "$EXTRACTAUDIO" "$AUDIOFORMATWAV" "$(echo $URL)""
	else
		COMMANDSTRING="--netrc "$FORMAT" "$SUBTITLE" "$REENCODEVIDEO" "$THUMBNAIL" "$CONFIG" "$(echo $URL)""
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
		CONVERTFORMAT='wav'
	else
		CONVERTFORMAT='m4a'
	fi	

	if [ $AUDIOONLY = 'Y' ]
	then
		COMMANDSTRING="-a $(echo $LIST) $(echo $FORMAT) "$EXTRACTAUDIO" "$AUDIOFORMAT" "$CONVERTFORMAT""
	else
		COMMANDSTRING="-a "$(echo $LIST)" "$VIDEOFORMATMP4" "$SUBTITLE" "$REENCODEVIDEOMP4" "$EMBEDTHUMBNAIL" "$CONFIG""
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


