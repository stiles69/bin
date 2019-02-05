#!/bin/bash  
#====================================================
#
#          FILE: Test-Send-Pushover-Message.sh
# 
#         USAGE: ./Test-Send-Pushover-Message.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 02/05/2019 01:48
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	node /home/brettsalemink/lib/node/pushover-convert-completed index.js 'Conversion Complete' 'Manjaro'
}	# end Main

Main

#===EXIT===
exit 0

