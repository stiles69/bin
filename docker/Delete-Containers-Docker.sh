#!/bin/bash  
#====================================================
#
#          FILE: Delete-Containers-Docker.sh
# 
#         USAGE: ./Delete-Containers-Docker.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 08:49
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	docker ps
	wait

	docker ps -a
	wait

	docker rm $(docker ps -qa --no-trunc --filter "status=exited")
	wait
}	# end Main

Main

#===EXIT===
exit 0

