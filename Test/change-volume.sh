#!/bin/bash  
#====================================================
#
#          FILE: change-volume.sh
# 
#         USAGE: ./change-volume.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/16/2019 02:00
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	
	#changeVolume
	# Arbitrary but unique message id
	msgId="991049" 	
	
	# Change the volume using alsa(might differ if you use pulseaudio))   
	amixer -c 0 set Master "$@" > /dev/null 
	
	# Query amixer for the current volume and whether or not the speaker is muted ther 
	volume="$(amixer -c 0 get Master | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"]} mute="$(amixer -c 0 get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"]} 
	if [[ $volume == 0 || "$mute" == "off" ]]; 
	then
		# Show the sound muted notification
		dunstify -a "changeVolume" -u low -i audio-volume-muted -r "$msgId" \
		"Volume: ${volume}%" "$(getProgressString 10 "<b> </b>" " " $volume)"
	fi
	
	# Play the volume changed sound
	canberra-gtk-play -i audio-volume-change -d "changeVolume"
}
Main

#===EXIT===
exit 0

