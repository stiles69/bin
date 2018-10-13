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
TYPE='$1'
TITLE='$2'
MSG='$3'
#-------------------------------------
function Main ()
{
	
	ssh brettsalemink@salemink.duckdns.org:58134 export Display=:0;notify-send "$TYPE" "$MSG"
	curl https://xdroid.net/api/message -X POST -d "k=u-440890b42fee" -d "t=$TYPE" -d "c=$MSG" -d "u=http://roguedesigns.us"
}	# end Main

Main

#===EXIT===
exit 0
