#!/bin/bash  
#====================================================
#
#          FILE: Send-Kodi-Message.sh
# 
#         USAGE: ./Send-Kodi-Message.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/09/2019 21:37
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
KODIPORT=8080
KODIHOST=http://10.0.0.3:$KODIPORT/jsonrpc?request=
MESSAGEICONPATH=/home/brettsalemink/Pictures/Icons/Tom-Girlfriend-Icon-256x256.png
MESSAGEALERTTYPE="ALERT!"
ICON=https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png
USAGE="The correct usage is Send-Kodi-Message.sh MESSAGE"
#-------------------------------------
function Main ()
{
	echo "Please enter the title of the message to send:"
	read TITLE
#	echo "Please enter message to send:"
#    	read MSG
	URLREQUEST={"jsonrpc":"2.0","method":"GUI.ShowNotification","params":"{"title":"'$TITLE'","message":"I LOVEEEE YOU!","image":"'$ICON'","displaytime":9000},"id":1}
	ICON="https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png"
#	curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"'$TITLE'","message":"I Love You So Much Tom!","image":"'$ICON'"},"id":2,"displaytime":"9000"}' $KODIHOST {"id":2,"jsonrpc":"2.0","result":"OK"}
	wget $KODIHOST$URLREQUEST
}	# end Main

Main

#===EXIT===
exit 0

