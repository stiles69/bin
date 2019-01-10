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
KODIHOST=10.0.0.3
KODIPORT=8080
MESSAGEICONPATH=/home/brettsalemink/Pictures/Icons/Tom-Girlfriend-Icon-256x256.png
MESSAGEALERTTYPE="ALERT!"
MESSAGETIME=6000
USAGE="The correct usage is Send-Kodi-Message.sh MESSAGE"
#-------------------------------------
function Main ()
{
#    echo "Please enter message to send:"
#    read MSG    
#    MESSAGE="${MSG// /\\ }"
#    echo "$MESSAGE"
    
#    WGETCOMMAND="http://$KODIHOST:$KODIPORT/xbmcCmds/xbmcHttp?command=ExecBuiltIn(Notification($MESSAGEALERTTYPE,$MESSAGE,$MESSAGETIME,$MESSAGEICONPATH))"
#    wget "$WGETCOMMAND"

curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"GUI.ShowNotification","params":{"title":"This is the title of the message","message":"This is the body of the message"},"id":1}' http://10.0.0.3:8080/jsonrpc {"id":1,"jsonrpc":"2.0","result":"OK"}%





}	# end Main

Main

#===EXIT===
exit 0

