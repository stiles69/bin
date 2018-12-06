#!/bin/bash  
#====================================================
#
#          FILE: Delete-Network-Docker.sh
# 
#         USAGE: ./Delete-Network-Docker.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 08:54
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	docker network ls
	wait

	docker network ls | grep "bridge"
	wait

	docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')
	wait
}	# end Main

Main

#===EXIT===
exit 0

