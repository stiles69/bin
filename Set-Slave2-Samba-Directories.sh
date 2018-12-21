#!/bin/bash 
#====================================================
#
#          FILE: Set-Slave2-Samba-Directories.sh
# 
#         USAGE: ./Set-Slave2-Samba-Directories.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 09/15/2018 04:23
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error
#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=/mnt/Media
DIR2=/media
PERM=770
SAMBAUSER=nobody
MEDIAGROUP=mediagrp
#-------------------------------------
function Main ()
{
	sudo chgrp -R "$MEDIAGROUP" "$DIR1"
	sudo chmod -R 774 "$DIR1"
	sudo chgrp -R "$MEDIAGROUP" "$DIR2"
	sudo chmod -R 774 "$DIR2"
}	# end Main

Main

#===EXIT===
exit 0

