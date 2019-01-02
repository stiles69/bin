#!/bin/bash
#====================================================
#
#          FILE:  send-message.sh
#
#         USAGE:  ./send-message.sh
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
#====================================================
#---------- SOURCED ---------

#----------------------------

#---------- GLOBAL VARIABLES ---------
HOST=10.0.0.11
USAGE="send-message.sh APPNAME ICON TITLE MSG"
PARAM1="$1"
PARAM2="$2"
PARAM3="$3"
PARAM4="$4"
#-------------------------------------
function SendMessage ()
{
	local APPNAME="'$1'"
	local ICON="'$2'"
	local TITLE="'$3'"
	local MSG="'$4'"
	
	# Need sshpass installed and dunstify on machine sending message to.
	sshpass -p "Samsung#2013" ssh brettsalemink@$HOST dunstify --appname=$APPNAME --icon=$ICON $TITLE $MSG

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
}	# end

function Main ()
{
 	if [ "$#" -ne 4 ] then;
		echo "Function is missing parameters. $USAGE. Exiting."
	 	exit 0
 	else
		APPNAME="$PARAM1"
		ICON="$PARAM2"
		TITLE="$PARAM3"
		MSG="$PARAM4"
	fi
	
	SendMessage $APPNAME $ICON $TITLE $MSG 
}

Main

exit 0
