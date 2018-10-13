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
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
TITLE=''
MSG=''
#-------------------------------------
function Main ()
{
	
	ssh brettsalemink@10.0.0.11 export Display=:0;notify-send "$TITLE" "$MSG"
	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t=$TITLE" -d "c=$MSG" -d "u=http://roguedesigns.us"
}	# end Main

Main

#===EXIT===
exit 0
