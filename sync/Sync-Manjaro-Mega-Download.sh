#!/bin/bash  
#====================================================
#
#          FILE: Sync-Manjaro-Adult-Mega-Adult.sh
# 
#         USAGE: ./Sync-Manjaro-Adult-Mega-Adult.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/05/2019 18:10
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
LOCALDIR=
REMOTEDIR=
#-------------------------------------
function SendMessage ()
{
	node /home/brettsalemink/lib/node/sync-completed index.js
}

function Main ()
{
	megacopy --disable-previews -l "$LOCALDIR" -r "$REMOTEDIR" -d
	wait
	SendMessage
}	# end Main

Main

#===EXIT===
exit 0

