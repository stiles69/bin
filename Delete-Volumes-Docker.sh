#!/bin/bash  
#====================================================
#
#          FILE: Delete-Volumes-Docker.sh
# 
#         USAGE: ./Delete-Volumes-Docker.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/25/2018 08:41
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	# see: https://github.com/chadoe/docker-cleanup-volumes
	docker volume rm $(docker volume ls -qf dangling=true)
	wait
	docker volume ls -qf dangling=true | xargs -r docker volume rm
	wait
	
	echo 'Volumes removed'


}	# end Main

Main

#===EXIT===
exit 0

