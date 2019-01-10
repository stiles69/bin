#!/bin/bash  
#====================================================
#
#          FILE: Send-Kodi-Websocket.sh
# 
#         USAGE: ./Send-Kodi-Websocket.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/09/2019 23:27
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	websocat ws://10.0.0.11:9090/jsonrpc
}	# end Main

Main

#===EXIT===
exit 0

