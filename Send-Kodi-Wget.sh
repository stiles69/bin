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
ICON="https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png"
USAGE="The correct usage is Send-Kodi-Message.sh MESSAGE"
#-------------------------------------
function Main ()
{
#	echo "Please enter the title of the message to send:"
#	read TITLE
#	URLREQUEST='{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":"{"title":"LOVE"","message":"I LOVEEEE YOU!","image":"https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png","displaytime":9000},"id":1}'
	
	URLREQUEST=%7B%22jsonrpc%22%3A%222.0%22%2C%22method%22%3A%22GUI.ShowNotification%22%2C%22params%22%3A%22%7B%22title%22%3A%22LOVE%22%22%2C%22message%22%3A%22I%20LOVEEEE%20YOU%2C%22image%22%3A%22https%3A%2F%2Fstorage.googleapis.com%2Fstiles-images%2FTom-Girlfriend-Icon-200x200.png%22%2C%22displaytime%22%3A9000%7D%2C%22id%22%3A1%7D
	wget http://10.0.0.3:8080/jsonrpc?request=$URLREQUEST
}	# end Main

Main

#===EXIT===
exit 0

