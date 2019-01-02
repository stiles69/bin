#!/bin/bash
#====================================================
#
#          FILE:  deluge-send-message.sh 
#         USAGE:  ./deluge-send-message.sh 
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
#-------------------------------------
function SendMessage ()
{
	sshpass -p "Samsung#2013" ssh brettsalemink@$HOST 'dunstify --icon=/usr/share/icons/roguedesigns/slave-icon-256x256.png "Slave1" "Download Completed"'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
}	# end

function Main ()
{
	SendMessage

}	# end Main

Main

#===EXIT===
exit 0
