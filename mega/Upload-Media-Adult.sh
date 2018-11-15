#!/bin/bash  
#====================================================
#
#          FILE: Upload-Media-Adult.sh
# 
#         USAGE: ./Upload-Media-Adult.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/15/2018 05:09
#      REVISION:  ---
#=====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=/mnt/Media/Adult
DIR2=/media/Adult
MEGADIR=/Adult
#-------------------------------------
function Main ()
{
    echo "Beginning upload of $DIR1"
    mega-put "$DIR1" "$MEGADIR"
    echo "Completed $DIR1"
    echo "Beginning upload of $DIR2"
    mega-put "$DIR2" "$MEGADIR"
    echo "Completed $DIR2"
}	# end Main

Main

#===EXIT===
exit 0

