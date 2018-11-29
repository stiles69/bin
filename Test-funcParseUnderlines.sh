#!/bin/bash  
#====================================================
#
#          FILE: Test-funcParseUnderlines.sh
# 
#         USAGE: ./Test-funcParseUnderlines.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/29/2018 03:35
#      REVISION:  ---
#====================================================

set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------
. /home/brettsalemink/lib/sh/funcParseUnderlines.sh
#-------------------------------------
#---------- GLOBAL VARIABLES ---------

OLDVAR=$1
#-------------------------------------
function Main ()
{
	NEWVAR=$(ParseUnderlines $OLDVAR)
	echo $NEWVAR
}	# end Main

Main

#===EXIT===
exit 0

