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
KODIPORT=8088
USAGE="The correct usage is Send-Kodi-Message.sh MESSAGE"
#-------------------------------------
function Main ()
{
    if [ ! "$1" ]
    then
        echo "Please enter message to send:"
        read MSG
    else
        MSG="$1"
    fi

    curl http://$KODIHOST:$KODIPORT/xbmcCmds/xbmcHttp?command=ExecBuiltIn;Notification(Information!,$MSG)
}	# end Main

Main

#===EXIT===
exit 0

