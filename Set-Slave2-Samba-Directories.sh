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
DIR1=/mnt/sandisk
DIR2=/media
PERM=774
SAMBAUSER=emby
SAMBAGROUP=emby
MEDIAGROUP=groupmedia
#-------------------------------------
function Main ()
{
	sudo chown -R "$SAMBAUSER:$SAMBAGROUP" "$DIR1"
	sudo chmod -R "$PERM" "$DIR1"

	ls -l "$DIR1"
}	# end Main

Main

#===EXIT===
exit 0

