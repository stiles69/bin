#!/bin/bash  
#====================================================
#
#          FILE: Upload-Media-Movies.sh
# 
#         USAGE: ./Upload-Media-Movies.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/15/2018 07:28
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=/mnt/Media/Movies
DIR2=/media/Movies
MEGADIR=/Media/
#-------------------------------------
function Main ()
{
    echo "Beginning upload of $DIR1"
    mega-put "$DIR1" "$MEGADIR"
    echo "Completed $DIR1"
    echo "Beginning upload of $DIR2"
    mega-put "$DIR2" "$MEGADIR"
    echo "Completed $DIR2"
    $HOME/bin/Send-Message.sh 'Manjaro' 'Done Uploading to Mega'
}	# end Main

Main

#===EXIT===
exit 0

