#!/bin/bash  
#====================================================
#
#          FILE: Move-Torrent.sh
# 
#         USAGE: ./Move-Torrent.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/18/2018 19:26
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
TORRENTDIR='/torrents/slave3/'
DESTITNATION="brettsalemink@slave3.roguedesigns.us:/torrents/watch"
#-------------------------------------
function Main ()
{
	echo "Move-Torrent Started" > /torrents/Status.txt
	rsync -rvz "$TORRENTDIR/" "$DESTITNATION"
	find "$TORRENTDIR" -name "*.torrent" -delete
}	# end Main

Main

#===EXIT===
exit 0

