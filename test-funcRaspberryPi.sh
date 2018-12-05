#!/bin/bash
#====================================================
#
#          FILE: test-funcRaspberryPi.sh
# 
#         USAGE: ./test-funcRaspberryPi.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 12/05/2018 14:25
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------
. /home/brettsalemink/lib/sh/funcRaspberryPi.sh
#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	echo ${funcRaspberryPi}
}	# end Main

Main

#===EXIT===
exit 0

