#!/bin/bash - 
#===============================================================================
#
#          FILE: tester.sh
# 
#         USAGE: ./tester.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/07/2018 17:45
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	ssh brettsalemink@slave1.roguedesigns.us "date && hostname"
}	# end Main

Main

#===EXIT===
exit 0

