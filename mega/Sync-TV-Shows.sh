#!/bin/bash 
#====================================================
#
#          FILE: Sync-TV-Shows.sh
# 
#         USAGE: ./Sync-TV-Shows.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/12/2018 10:42
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
SYNCFROMDIR1=/mnt/Media/TV-Shows/
SYNCFROMDIR2=/media/TV-Shows/
SYNCTODIR=/Media/TV-Shows/
#-------------------------------------
function Main ()
{
	mega-login brett.salemink@gmail.com
	wait
	mega-sync "$SYNCFROMDIR1" "$SYNCTODIR"
	wait
	mega-sync "$SYNCFROMDIR2" "$SYNCTODIR"
	wait
	mega-logout
}	# end Main

Main

#===EXIT===
exit 0

