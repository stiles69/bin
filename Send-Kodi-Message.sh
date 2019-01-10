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
KODIHOST=http://10.0.0.3:$KODIPORT/jsonrpc
MESSAGEICONPATH=/home/brettsalemink/Pictures/Icons/Tom-Girlfriend-Icon-256x256.png
MESSAGEALERTTYPE="ALERT!"
ICON=https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png
USAGE="The correct usage is Send-Kodi-Message.sh MESSAGE"
#-------------------------------------
function Main ()
{
#    	QUOTATIONMARK='"'	
	echo "Please enter the title of the message to send:"
	read TITLE
#	echo "Please enter message to send:"
#    	read MSG
#	MSG=$QUOTATIONMARK$MSG$QUOTATIONMARK
#	echo "MSG is $MSG"
#	MESSAGE=$(echo ${MSG})
#    	MESSAGE="${MSG}"
#    	echo "Message is $MESSAGE"

	
	DTIME='9000'
	ICON="https://storage.googleapis.com/stiles-images/Clit.png"
#	ICON="https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png"
	curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"'$TITLE'","message":"I Love You So Much Tom!","image":"'$ICON'"},"id":2,"displaytime":"9000"}' $KODIHOST {"id":2,"jsonrpc":"2.0","result":"OK"}
#	CURLLINE1="-X POST -H 'Content-Type: application/json' -d "0
#	CURLLINE2="'{'jsonrpc':'2.0','method':'GUI.ShowNotification','params':"
#	CURLLINE3="{'title':'"$TITLE"',"
#	CURLLINE4="'message':'"$MESSAGE"',"
#	CURLLINE5="'image':'"$ICON"'},"
#	CURLLINE6="'id':1}' "
#	CURLLINE7="http://10.0.0.11:8080/jsonrpc {'id':1,'jsonrpc':'2.0','result':'OK'}"
#	CURLLINECOMPLETE="curl $CURLLINE1$CURLLINE2$CURLLINE3$CURLLINE4$CURLLINE5$CURLLINE6$CURLLINE7"
#	echo "The line is $CURLLINECOMPLETE"
#	curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"type":"info","displaytime":"9000","title":"'$TITLE'","message":"$MSG","image":"'$ICON'"},"id":1}' http://10.0.0.11:8080/jsonrpc {"id":1,"jsonrpc":"2.0","result":"OK"}


}	# end Main

Main

#===EXIT===
exit 0

