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
HOST=10.0.0.11
USAGE="Usage is funcSendMessage MSG TITLE"
ICON="/usr/share/icons/roguedesigns/slave-icon-256x256.png"
#TITLE="SLAVE1 Deluge"
#MSG="Torrent Completed"
PATHFROM="$1"
PATHTO="$2"
#-------------------------------------
function SendMessage ()
{

	sshpass -p "Samsung#2013" ssh brettsalemink@10.0.0.11 'dunstify --icon=/usr/share/icons/roguedesigns/slave-icon-256x256.png "'$TITLE'" "'$MSG'"'

	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t='$TITLE'" -d "c='$MSG'" -d "u=http://roguedesigns.us"
   

}	

function RSync ()
{
     rsync -rvz --ignore-existing --progress "$PATHFROM" "$PATHTO"
}

function Main ()
{
	TITLE="RSYNC"
	MSG="$PATHFROM $PATHTO Completed."
	RSync
	SendMessage
}
Main

#===EXIT===
exit 0
