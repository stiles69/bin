#!/bin/bash  
#====================================================
#
#          FILE: Set-Http-Server.sh
# 
#         USAGE: ./Set-Http-Server.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 06:45
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR="$1"
DESTDIR="/srv/http"
#-------------------------------------
function Main ()
{
	local RSYNCDIR=$1
	sudo rsync -rvz "$RSYNCDIR/" "$DESTDIR"
	sudo chown -R http:http "$DESTDIR"
	sudo chmod -R 774 "$DESTDIR"

}	# end Main

Main "$1"

#===EXIT===
exit 0

