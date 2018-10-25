#!/bin/bash  
#====================================================
#
#          FILE: Docker-Swarm-Join.sh
# 
#         USAGE: ./Docker-Swarm-Join.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 08:58
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	docker swarm join --token SWMTKN-1-0298x2h55x5bu70b682y6xj2mlc1ohrmzgpu49sozodgehmyvp-c9cxt29bej8llx1cwuevpp1dj 10.0.0.5:2377
}	# end Main

Main

#===EXIT===
exit 0

