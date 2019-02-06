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
LOCALDIR=/data/Images
REMOTEDIR=/Root/Data/Images
#-------------------------------------
function SendMessage ()
{
	$HOME/bin/manjaro/Pushover-Send-Message-Manjaro-Mega-Sync.sh
}

function Main ()
{
	megacopy --disable-previews -l "$LOCALDIR" -r "$REMOTEDIR"
	wait
	SendMessage
}	# end Main

Main

#===EXIT===
exit 0

