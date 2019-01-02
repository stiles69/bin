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
PARAM1="$1"
PARAM2="$2"
PARAM3="$3"
#----------------------------

#---------- GLOBAL VARIABLES ---------
#-------------------------------------
function Main ()
{
	echo $(SendMessage "$PARAM1" "$PARAM2" "$PARAM3")
	# HOST=$1
	# TITLE="'$2'"
	# MSG="'$3'"
}
Main

exit 0
