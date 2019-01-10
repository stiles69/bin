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
source $HOME/lib/sh/funcURLEncode.sh
#-------------------------------------
#---------- GLOBAL VARIABLES ---------
KODIPORT=8080
KODIHOST=http://10.0.0.11:$KODIPORT/jsonrpc
COMMAND="{"jsonrpc": "2.0", "method": "Player.GetActivePlayers", "id": 1}"
#-------------------------------------
function Main ()
{
#	URL="$(urlencode {"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"$TITLE","message":"$MSG","image":"$ICON"},"id":1,"displaytime":$DTIME})"
#	echo $URL
	curl -X POST -H "Content-Type: application/json" -d '$COMMAND' $KODIHOST
	wget $KODIHOST 
#	ICON="https://storage.googleapis.com/stiles-images/Tom-Girlfriend-Icon-200x200.png"
#	curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"'$TITLE'","message":"I Love You So Much Tom!","image":"'$ICON'"},"id":1,"displaytime":"9000"}' $KODIHOST #{"id":1,"jsonrpc":"2.0","result":"OK"}
#	CURLLINE=`'{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"'$TITLE'","message":"'$MSG'","image":"'$ICON'"},"id":1,"displaytime":$DTIME}'` 
#	curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"'$TITLE'","message":"'$MSG'","image":"'$ICON'"},"id":1,"displaytime":"$DTIME"}' $KODIHOST #{"id":1,"jsonrpc":"2.0","result":"OK"}
#	echo "The curline is curl -X POST -H "Content-Type: application/json" -d $CURLLINE"
}	# end Main

Main

#===EXIT===
exit 0

