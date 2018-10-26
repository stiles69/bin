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
	docker swarm join --token SWMTKN-1-177qjrk2jurisx5u7l99zadsk58lk14sudbhnuqye1gvf9ntep-e2jnhzcet9jjkl9qi24ryczx1 10.0.0.5:2377
}	# end Main

Main

#===EXIT===
exit 0

