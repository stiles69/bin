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
#       CREATED: 10/25/2018 08:45
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	docker images
	wait
	docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
	wait
	docker images | grep "none" $ docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
	wait

	echo 'Removed Docker Images'
} #end Main

Main

#===EXIT===
exit 0

