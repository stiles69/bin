#!/bin/bash 
#====================================================
#
#          FILE: Send-Message.sh
# 
#         USAGE: ./Send-Message.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/08/2018 00:58
#      REVISION:  ---
#====================================================

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
#-------------------------------------
function SendMessage ()
{
	local URGENCY="$1"
	local ICONPATH="$2"
	local TITLE="$3"
	local MSG="$4"
	
	ssh brettsalemink@173.29.176.138 -p 60001 "export Display=:0;notify-send '$TITLE' '$MSG' -t 15000 --icon='$ICONPATH'"
	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
}	# end

function Main ()
{
	#Check $1
	if [ -z "$PARAM1" ]
	then
		TITLE="MANJARO"
	else
		TITLE="$PARAM1"
	fi

	#Check $2
	if [ -z "$PARAM2" ]
	then
		MSG="FFMPEG Completed"
	else
		MSG="$PARAM2"
	fi


	URGENCY='normal'		# Array OPTIONAL (low normal critical)
#	EXPIRETIME=6000			# Time in Milliseconds OPTIONAL
	ICONPATH='dialog-information'	# Path to ICON OPTIONAL or Name of Icon ex. --icon=dialog-information
#	TITLE				# Title or Summary MANDATORY
#	MSG				# Actual Message OPTIONAL
	
	SendMessage $URGENCY $ICONPATH $TITLE $MSG 
}
Main

#===EXIT===
exit 0
