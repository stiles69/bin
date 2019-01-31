#!/bin/bash  
#====================================================
#
#          FILE: 1-MegaCopy-Sync.sh
# 
#         USAGE: ./1-MegaCopy-Sync.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 01/31/2019 16:41
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
LDIR=/media/Videos/Adult
RDIR=/Root/Media/Adult
#-------------------------------------
function Main ()
{
	megacopy -l "$LDIR" -r "$RDIR" --disable-previews -d
}	# end Main

Main

#===EXIT===
exit 0

