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
source $HOME/lib/sh/funcSendMessage.sh
PARAM1="SABNZBD Master"
PARAM2="Complete"
USAGE="The correct usage is send-message.sh $SUMMARY $BODY"
#----------------------------

#---------- GLOBAL VARIABLES ---------
#-------------------------------------
function Main ()
{
	echo $(SendMessage "$PARAM1" "$PARAM2")
	# APP="'$1'"
	# SUMMARY='"$2'"
	# BODY="'$3'"
	# ICON="'$4'"
	# URG="'$5"
}
Main

exit 0
