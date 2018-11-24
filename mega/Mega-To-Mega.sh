#!/bin/bash  
#====================================================
#
#          FILE: Mega-To-Mega.sh
# 
#         USAGE: ./Mega-To-Mega.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/24/2018 05:21
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
HOMEDIR=/home/brettsalemink/MEGASync-Upload/
MEGADIR=/MEGAsync\ Uploads/
#-------------------------------------
function Main ()
{
	mega-sync "$HOMEDIR" "$MEGADIR"
	wait
	mega-transfers --show-syncs --path-display-size=60 --limit=5
	wait
	mega-transfers --show-syncs --path-display-size=60 --limit=5
	wait
	mega-transfers --show-syncs --path-display-size=60 --limit=5
	wait
}	# end Main

Main

#===EXIT===
exit 0
