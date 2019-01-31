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
HOMEDIR=/home/brettsalemink/MEGAsync
MEGADIR=/Root/MEGAsync
#-------------------------------------
function Main ()
{
	megacopy -l "$HOMEDIR" -r "$MEGADIR" --disable-previews -d
	wait
}	# end Main

Main

#===EXIT===
exit 0
